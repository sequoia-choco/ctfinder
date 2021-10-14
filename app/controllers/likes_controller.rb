class LikesController < ApplicationController

    def create
        liked_user = User.find(params[:liked_id])
        if current_user.nil?
            flash[:login_need] = 'ログインしてください'
            redirect_to login_url
            return
        end
        like = Like.new(liker: current_user, liked: liked_user)
        if like.save
            flash[:like_success] = "Likeしました！"
            unless Like.find_by(liker: liked_user, liked: current_user).nil?
                Matching.create!(user1: current_user, user2: liked_user)
                flash[:matching_success] = "マッチングしました！"
            end
        else
            flash[:danger] = "Likeに失敗しました"
        end
        redirect_to liked_user
    end

end
