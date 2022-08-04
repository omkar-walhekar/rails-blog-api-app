module Api
  module V1
    class BlogsController < ApplicationController

      before_action :find_blog, only: %i[show get_comments get_likes]
    
      def index
        @blogs = Blog.all
        render json: @blogs
      end
    
      def show
        render json: @blog
      end
    
      def create
        @blog = Blog.new(blog_params)
    
        respond_to do |format|
          if @blog.save
            format.json { render :show, status: :created, location: @blog }
          else
            format.json {render json: @blog.errors, status: :unprocessable_entity}
          end
        end
      end
    
      def get_comments
       render json: @blog.comments
      end
    
      def get_likes
        render json: @blog.likes
      end
    
      private
      def find_blog
        @blog = Blog.find(params[:id])
        raise 'Blog Id not found' if @blog.blank?
      end
    
      def blog_params
        params.require(:blog).permit(:title, :content, :author_id)
      end
    end
  end
end


