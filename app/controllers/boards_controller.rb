class BoardsController < ApplicationController
  def index
    @boards = Board.all.order(created_at: :desc)
  end
    
  def show
    @board = Board.find_by(id: params[:id])
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(
      content: params[:content],
      
    )
    if @board.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/post_details/")
    else
      render("posts/new")
    end
  end

  def edit
    @board = Board_detail.find_by(id: params[:id])
  end

  def update
    @post_detail = Board_detail.find_by(id: params[:id])
  end

  def destroy
    @post_detail = Board_detail.find_by(id: params[:id])
    @post_detail.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/posts/index")
  end
end
