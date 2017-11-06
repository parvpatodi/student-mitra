class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :download_article_pdf]

  def index
    @articles=Article.all
  end

  def show

  end

  def download_article_pdf
  end

  private

    def set_article
      @article=Article.find(params[:id])
    end


 end
