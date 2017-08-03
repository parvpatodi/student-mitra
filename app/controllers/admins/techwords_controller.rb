class Admins::TechwordsController < ApplicationController
  before_action :set_techword, only: [:show, :edit, :update, :destroy]

  # GET /techwords
  # GET /techwords.json
  def index
    # @techwords = Techword.all
    @q = Techword.ransack(params[:q])
    @techwords = @q.result(distinct: true)
  end

  # GET /techwords/1
  # GET /techwords/1.json
  def show
  end

  # GET /techwords/new
  def new
    @techword = Techword.new
  end

  # GET /techwords/1/edit
  def edit
  end

  # POST /techwords
  # POST /techwords.json
  def create
    @techword = Techword.new(techword_params)

    respond_to do |format|
      if @techword.save
        format.html { redirect_to admins_techword_path(@techword), notice: 'Techword was successfully created.' }
        format.json { render :show, status: :created, location: @techword }
      else
        format.html { render :new }
        format.json { render json: @techword.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /techwords/1
  # PATCH/PUT /techwords/1.json
  def update
    respond_to do |format|
      if @techword.update(techword_params)
        format.html { redirect_to admins_techword_path(@techword), notice: 'Techword was successfully updated.' }
        format.json { render :show, status: :ok, location: @techword }
      else
        format.html { render :edit }
        format.json { render json: @techword.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /techwords/1
  # DELETE /techwords/1.json
  def destroy
    @techword.destroy
    respond_to do |format|
      format.html { redirect_to admins_techwords_url, notice: 'Techword was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_techword
      @techword = Techword.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def techword_params
      params.require(:techword).permit(:name, :definition)
    end
end
