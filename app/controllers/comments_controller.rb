class CommentsController < ApplicationController
  before_filter :set_commentable
  
  def create
    @comment = @commentable.comments.build(comments_params)
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @commentable }
      else
        # Want to redirect_to @commentable with flash
        # Of comment wasn't saved
        format.html { redirect_to @commentable }
      end
    end
  end
  
  protected
  def set_commentable
    # Song = Class.camelize.constantize
    # id = commentable_id
    # Sing.find(id)

    @commentable = params[:commentable_type].camelize.constantize.find(params[:commentable_id])
  end

  def comments_params
    params.require(:comment).permit(:title, :comment)
  end

end