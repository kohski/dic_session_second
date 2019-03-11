class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    if params[:back]
      @blog = Blog.new(params.require(:blog).permit(:title,:content))
    else
      @blog = Blog.new
    end
  end

  def create
    @blog = Blog.new(params.require(:blog).permit(:title,:content))
    if @blog.save
      redirect_to blogs_path
    else
      render 'new'
    end
  end


  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(params.require(:blog).permit(:title,:content))
      redirect_to blogs_path
    else
      render 'edit'
    end
  end


  def confirm
    @blog = Blog.new(params.require(:blog).permit(:title,:content))
  end

  def delete
    @blog = Blog.find(paramas[:id])
    @blog.destroy
  end


end
