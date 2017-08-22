class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create_article_comments, :create_techword_comments]

  def create_article_comments
    @article = Article.find(params[:create_article_comments][:article_id])
    @comment = @article.comments.create(article_comment_params)
    redirect_to article_path(@article)
  end

  def create_techword_comments
    @techword = Techword.find(params[:create_techword_comments][:techword_id])
    @comment = @techword.comments.create(techword_comment_params)
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
