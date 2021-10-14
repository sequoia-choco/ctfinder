class UsersController < ApplicationController
  
  @@searched_users = nil
  @@skills_query = nil

  def index
    if @@searched_users.nil?
      users = User.all
    else
      users = @@searched_users
      @@searched_users = nil
    end
    user_ids = users.map{ |user| user.id }
    recent_actions = RecentAction.includes(:user).where(user_id: user_ids).order(created_at: "desc")
    rau_ids = recent_actions.map{ |action| action.user.id }
    @user_and_actions = recent_actions.map{ |ra| { user: ra.user, action: generate_action(ra, Time.current) } } 
    noaction_users = User.includes(:participants).where(id: user_ids).where.not(id: rau_ids)
    @user_and_actions += noaction_users.map{ |nau| { user: nau, action: nil } }
    @user_and_actions = Kaminari.paginate_array(@user_and_actions).page(params[:page]).per(10)
    @skills_query = @@skills_query
    @@skills_query = nil
  end

  def generate_action(recent_action, current_time)
    time_dif = (current_time - recent_action.created_at).to_i
    if time_dif >= 3600 * 24
      content = " #{time_dif / (3600 * 24)} 日前に"
    elsif time_dif >= 3600
      content = " #{time_dif / 3600} 時間前に"
    elsif time_dif >= 60
      content = " #{time_dif / 60} 分前に"
    else
      content = " #{time_dif} 秒前に"
    end
    if recent_action.action == 1
      content += " #{recent_action.tournament.name} に投稿"
    else
      content += " #{recent_action.tournament.name} にエントリー"
    end
    return content
  end

  def search
    web = params[:web].to_i
    crypto = params[:crypto].to_i
    reversing = params[:reversing].to_i
    pwn = params[:pwn].to_i
    misc = params[:misc].to_i
    begin
      users = User.where("web > ?", web - 1).where("crypto > ?", crypto - 1).where("reversing > ?", reversing - 1).where("pwn > ?", pwn - 1).where("misc > ?", misc - 1)
      @@searched_users = users
      @user_and_actions = users.map { |user| { user: user, action: nil } }
      @@skills_query = {:web => web, :crypto => crypto, :reversing => reversing, :pwn => pwn, :misc => misc }
      redirect_to users_url
    rescue
      flash.now[:danger] = "検索に失敗しました"
      render 'index'
    end
  end

  def new
    @user = User.new()
  end

  def edit
  end
  
  def show
    @user = User.find(params[:id])
  end
  

  def create
    user = User.new(user_params)
    if user.save
      login user
      flash[:success] = "CtFinderへようこそ！"
    else
      flash[:danger] = "アカウント作成に失敗しました"
    end
    redirect_to root_url
  end

  def destroy
    user = current_user
    unless user.nil?
      user.destroy
      redirect_to root_url, success: "さようなら！！"
    else
      flash[:danger] = "ログインしていません"
      redirect_to root_url
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :web, :crypto, :reversing, :pwn, :misc, :self_introduction, :image)
    end

end
