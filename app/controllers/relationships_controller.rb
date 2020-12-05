class RelationshipsController < ApplicationController
  before_action :authenticate_user!
	def create
		current_user.follow(params[:user_id])
		redirect_to request.referer
	end

	def destroy
		current_user.unfollow(params[:user_id])
		redirect_to request.referer
	end
  def followings
  	# 自分を取得
		user = User.find(params[:user_id])
		# 自分がフォローしたユーザーを全て取得
		@users = user.followings
  end

  def followers
		user = User.find(params[:user_id])
		# 自分のフォロワーを全て取得
		@users = user.followers
  end
end
