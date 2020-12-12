class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC") # 一番目のレコードを@postに代入
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end
