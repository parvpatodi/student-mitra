class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create_article_comments, :create_techword_comments]

  def create_article_comments
    @article = Article.find(params[:create_article_comments][:article_id])
    @comment = @article.comments.create(article_comment_params)
    @author = User.find(@article.user_id)
    CommentMailer.comment_notification_email_for_article(@author, @comment.user).deliver
    redirect_to article_path(@article)
  end

  def create_techword_comments
    @techword = Techword.find(params[:create_techword_comments][:techword_id])
    @comment = @techword.comments.create(techword_comment_params)
    @author = User.find(@techword.user_id)
    CommentMailer.comment_notification_email_for_techword(@author, @comment.user).deliver
    redirect_to techword_path(@techword)
  end

  private

    def article_comment_params
      params.require(:create_article_comments).permit(:user_id, :comment_text)
    end

    def techword_comment_params
      params.require(:create_techword_comments).permit(:user_id, :comment_text)
    end

end
