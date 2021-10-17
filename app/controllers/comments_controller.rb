class CommentsController < ApplicationController
  def create
    museum = Museum.find(params[:museum_id])
    comment = museum.comments.new(comment_params)
    comment.user = current_user
    comment.save!
    redirect_to museum_path(museum)
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:body)
  end
end
