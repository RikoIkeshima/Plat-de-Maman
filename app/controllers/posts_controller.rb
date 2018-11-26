class PostsController < ApplicationController
    
  def index
    @posts=Post.all.order(created_at: :desc)
  end
    
  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      
      content: params[:content],
      
    )
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/post_details/")
    else
      render("posts/new")
    end
  end

  def edit
    @post = Post_detail.find_by(id: params[:id])
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
