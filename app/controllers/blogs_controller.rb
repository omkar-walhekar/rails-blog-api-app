class BlogsController < ApplicationController
  def index
    puts request.format
    @blogs = Blog.order(updated_at: :desc).limit(100)
  end
end
