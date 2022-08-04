module Api
  module V1
    class AuthorsController < ApplicationController
      def index
        @authors = Author.all
        render json: @authors
      end
    
      def show
        @author = Author.find(params[:id])
        render json: @author
      end
    
      def new
        @author = Author.new
      end
    
      def create
        @author = Author.new(author_params)
    
        respond_to do |format|
          if @author.save
            format.json { render :show, status: :created, location: @author }
          else
            format.json { render json: @author.errors, status: :unprocessable_entity }
          end
        end
      end
    
      private
      def author_params 
        params.require(:author).permit(:username, :email)
      end
    
    end
  end
end
