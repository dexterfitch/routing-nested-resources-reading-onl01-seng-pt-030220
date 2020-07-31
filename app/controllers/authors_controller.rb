class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end

  def posts_index
  end

  def posts
  end

end
