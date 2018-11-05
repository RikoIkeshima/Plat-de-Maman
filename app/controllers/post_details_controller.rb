class PostDetailsController < ApplicationController
    
  def show
    @post_detail = Post_detail.find_by(id: params[:id])
  end

  def new
    @post_detail = Post_detail.new
  end

  def create
    @post_detail = Post_detail.new(
      content: params[:content],
      
    )
    if @post_detail.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end

  def edit
    @post_detail = Post_detail.find_by(id: params[:id])
  end

  def update
    @post_detail = Post_detail.find_by(id: params[:id])
  end

  def destroy
    @post_detail = Post_detail.find_by(id: params[:id])
    @post_detail.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/posts/index")
  end
end
