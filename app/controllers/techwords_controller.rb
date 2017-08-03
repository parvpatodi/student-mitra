class TechwordsController < ApplicationController
  before_action :set_techword, only: [:show, :edit, :update, :destroy]

  def index
    @q = Techword.ransack(params[:q])
    @techwords = @q.result(distinct: true)
  end

  def show
  end

  private

    def set_techword
      @techword = Techword.find(params[:id])
    end

end
