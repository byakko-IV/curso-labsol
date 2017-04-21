class CommetsController < ApplicationController
  before_action :set_post, only: [:create, :destroy]
  before_action :set_commet, only: [:show, :edit, :update]

  def index
    @commets = Commet.all
  end

  def show
  end

  def new
    @commet = Commet.new
  end

  def edit
  end

  def create
    @commet = Commet.new(commet_params)

    respond_to do |format|
      if @commet.save
        format.html { redirect_to @post, notice: 'Commet was successfully created.' }
        format.json { render :show, status: :created, location: @commet }
      else
        format.html { render :new }
        format.json { render json: @commet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @commet.update(commet_params)
        format.html { redirect_to @commet, notice: 'Commet was successfully updated.' }
        format.json { render :show, status: :ok, location: @commet }
      else
        format.html { render :edit }
        format.json { render json: @commet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Commet.find(params[:comment_id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @post, notice: 'Commet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_commet
      @commet = Commet.find(params[:id])
    end

    def set_post
      @post = Post.find(params[:post_id])
    end

    def commet_params
      params.require(:commet).permit(:content, :post_id)
    end
end
