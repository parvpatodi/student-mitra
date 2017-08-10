class Admins::ArticleNotesController < ApplicationController
  before_action :set_article_note, only: [:show, :edit, :update, :destroy]

  def create
    @article = Article.find(params[:article_id])
    @article_note = @article.article_notes.create(article_note_params)
    redirect_to admins_article_path(@article)
  end

  def destroy
    @article_note = ArticleNote.find(params[:id])
    @article_note.destroy
    redirect_to admins_article_path(@article)
  end



  # # GET /article_notes
  # # GET /article_notes.json
  # def index
  #   @article_notes = ArticleNote.all
  # end

  # # GET /article_notes/1
  # # GET /article_notes/1.json
  # def show
  # end

  # # GET /article_notes/new
  # def new
  #   @article_note = ArticleNote.new
  # end

  # # GET /article_notes/1/edit
  # def edit
  # end

  # # POST /article_notes
  # # POST /article_notes.json
  # def create
  #   @article_note = ArticleNote.new(article_note_params)

  #   respond_to do |format|
  #     if @article_note.save
  #       format.html { redirect_to admins_article_note (@article_note), notice: 'Article note was successfully created.' }
  #       format.json { render :show, status: :created, location: @article_note }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @article_note.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /article_notes/1
  # # PATCH/PUT /article_notes/1.json
  # def update
  #   respond_to do |format|
  #     if @article_note.update(article_note_params)
  #       format.html { redirect_to admins_article_note_path (@article_note), notice: 'Article note was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @article_note }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @article_note.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /article_notes/1
  # # DELETE /article_notes/1.json
  # def destroy
  #   @article_note.destroy
  #   respond_to do |format|
  #     format.html { redirect_to admins_article_notes_url, notice: 'Article note was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private

  def set_article_note
      @article = Article.find(params[:article_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_note_params
      params.require(:article_note).permit(:question, :answer)
    end
end