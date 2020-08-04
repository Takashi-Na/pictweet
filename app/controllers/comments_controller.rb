class CommentsController < ApplicationController
  def create
    coment = Comment.create(comment_params)
    redirect_to "/tweets/#{coment.tweet.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
end
