class BoardDetailsController < ApplicationController
    
  def show
    @board_detail = Board_detail.find_by(id: params[:id])
    
  end

  def new
    @board_detail = Board_detail.new
  end

  def create
  end

  def edit
    @board_detail = Board_detail.find_by(id: params[:id])
  end

  def update
    @board_detail = Board_detail.find_by(id: params[:id])
  end

  def destroy
    @board_detail = Board_detail.find_by(id: params[:id])
    @board_detail.destroy
    flash[:notice] = "lessonを削除しました"
    redirect_to("/boards/index")
  end
  
end
