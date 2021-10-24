class CommentsController < ApplicationController
  def create
    museum = Museum.find(params[:museum_id])
    comment = museum.comments.new(comment_params)
    comment.user = current_user
    comment.save!
    @comments = museum.comments.order(id: :desc)
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:body)
  end
end
