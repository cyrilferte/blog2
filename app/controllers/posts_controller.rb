class PostsController < ApplicationController

  # Index action to render all posts
  def index
    @posts = Post.all.reverse
  end

  # New action for creating post
  def new
    @post = Post.new
  end

  # Create action saves the post into database
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  # Edit action retrives the post and renders the edit page
  def edit
  end

  # Update action updates the post with the new information
  def update
    if @post.update_attributes(post_params)
      
      redirect_to post_path(@posts)
    else
     
      render :edit
    end
  end

  # The show action renders the individual post after retrieving the the id
  def show
        @post = Post.find(params[:id])
  end

  # The destroy action removes the post permanently from the database
  def destroy
    if @post.destroy
      
      redirect_to posts_path
    else
     
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :photo, :category, :author)
  end


end