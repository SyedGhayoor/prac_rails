class AuthorsController < ApplicationController

    before_action :find_author, only: [:view, :show, :edit, :update, :destroy]

    def index
        @authors = Author.all.order("created_at DESC")
    end

    def new
        @author = Author.new
    end

    def create
        @author = Author.new(author_params)
        if @author.save
            redirect_to authors_path, :notice => "New Post sucessfully Created "
        else
            render 'new' , status: :unprocessable_entity
        end

    end

       
    def show 
    end
  
    def edit
    end
  
    def view
    end

    def update
        if @author.update(author_params)
          redirect_to root_path, :notice => "New Author sucessfully Created "
          else
            render 'edit'
          end
      end
    
      def destroy
        @author.destroy
        redirect_to root_path,status: :see_other
      end
  
    

    private
    def find_author
        @author = Author.find(params[:id])
      end

    def author_params
        params.require(:author).permit(:f_name, :l_name, :email)
    end
end
