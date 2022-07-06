class NovalsController < ApplicationController

    before_action :find_noval, only: [:view, :show, :edit, :update, :destroy]


    def index
        @novals = Noval.all.order("created_at DESC")
    end

    def new
        @novals = Noval.new
    end

    def create
        @noval = Noval.new(noval_params)
        if @noval.save
            redirect_to novals_path
        else
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def view
    end

    def update
        if @noval.update(noval_params)
            redirect_to root_path
        else
            render 'edit'
        end
    end

    def destroy
        @noval.destroy
        redirect_to root_path
    end



    private
    
    def find_noval
        @noval = Noval.find(params[:id])
    end

    def noval_params
        params.require(:noval).permit(:writeable_id, :writeable_type)
    end


end
