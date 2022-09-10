class PostsController < ApplicationController
  def index
    puts "i am index===================" 
    @posts = Post.all
  end

  def update
    puts "i am update==================="
    puts params[:id]
    puts params[:title]
    puts params[:body]
    puts "end  update==================="
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save
    redirect_to("/")
  end

  def create
    puts "i am create==================="
    puts params[:title]
    puts params[:body]
    puts "end  create==================="
    @post = Post.new(title: params[:title], body: params[:body])
    if @post.save
      redirect_to("/")
    else
      render "index"
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id]) 
    @post.destroy
    redirect_to("/")
  end
end
