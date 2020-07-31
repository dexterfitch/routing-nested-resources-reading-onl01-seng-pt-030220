class AuthorsController < ApplicationController

  def show
    @author = get_author_by_id
  end

private
  def get_author_by_id
    Author.find(params[:id])
  end

end
