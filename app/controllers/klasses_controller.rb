class KlassesController < ApplicationController
    
    def index
        @klasses = Klass.all
        render json: @klasses
    end

    def show
        @klass = Klass.find(params[:id])
        render json: @klass
    end

    def create
        @klass = Klass.create(klass_params)

        if @klass.valid?
            render json: @klass
        else
            render json: {errors: @klass.errors.full_messages}
        end

    end

    def update
        @klass = Klass.find(params[:id])
        @klass.taken = true
        @klass.save
        render json: @klass
    end

    

    private
    
    def klass_params
        params.require(:klass).permit(:studio_id, :user_id, :session, :time, :cost, :instructor)
    end

end

