class HomeController < ApplicationController
  def index
    @q = Techword.ransack(params[:q])
    @techwords = @q.result(distinct: true)
  end
end
