class HomeController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.paginate(page: params[:page], per_page: 1).order('created_at DESC')
    respond_to do |format|
      format.html
      format.js
    end
  end
end
