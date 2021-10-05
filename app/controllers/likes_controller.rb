class LikesController < ApplicationController

    def create
        liked_user = User.find(params[:liked_id])
        if current_user.nil? || liked_user.nil? || current_user == liked_user
            flash[:login_need] = 'ログインしてください'
            redirect_to login_url
            return
        end
        like = Like.new(liker: current_user, liked: liked_user)
        if like.save
            unless Like.find_by(liker: liked_user, liked: current_user).nil?
                Matching.create!(user1: current_user, user2: liked_user)
                flash[:matching_success] = "マッチングしました！"
                redirect_to "/users/#{params[:liked_id]}/"
            end
        else
            flash[:danger] = "failed to save Like model."
        end
    end

end
