class CommentsController < ApplicationController

  def create
    @quote = Quote.find(params[:quote_id])
    @comment = @quote.comments.create(comment_params)
    redirect_to quote_path(@quote)
  end

  def destroy
    @quote = Quote.find(params[:quote_id])
    @comment = @quote.comments.find(params[:id])
    @comment.destroy
    redirect_to quote_path(@quote)
  end

  private def comment_params
    params.require(:comment).permit(:nick, :body)
  end

end
