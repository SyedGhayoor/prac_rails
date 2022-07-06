class EnginesController < ApplicationController

    before_action :find_engine, only: [:view, :show, :edit, :update, :destroy]


    def index
        @engines = Engine.all.order("created_at DESC")
    end

    def new
        @engines = Engine.new
    end

    def create
        @engine = Engine.new(engine_params)
        if @engine.save
            redirect_to engines_path
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
        if @engine.update(engine_params)
            redirect_to root_path
        else
            render 'edit'
        end
    end

    def destroy
        @engine.destroy
        redirect_to root_path
    end



    private
    
    def find_engine
        @engine = Engine.find(params[:id])
    end

    def engine_params
        params.require(:engine).permit(:runable_id, :runable_type)
    end


end
