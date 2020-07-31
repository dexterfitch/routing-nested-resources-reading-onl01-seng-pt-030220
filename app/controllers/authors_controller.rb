class AuthorsController < ApplicationController

  def show
    @author = get_author_by_id
  end

  def posts_index
    @author = get_author_by_id
    @posts = @author.posts
    render template: 'posts/index'
  end

  def posts
    @author = get_author_by_id
    @post = Post.find(params[:post_id])
    render template: 'posts/show'
  end

private
  def get_author_by_id
    Author.find(params[:id])
  end

end
