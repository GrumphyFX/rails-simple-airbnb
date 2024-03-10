    class FlatsController < ApplicationController
        def index
            @query = params[:query]
            @flats = Flat.all
            @flats = @flats.where("name ILIKE ? OR address ILIKE ? OR description ILIKE ?", "%#{@query}%", "%#{@query}%", "%#{@query}%") if @query.present?
        end
      
        def show
          @flat = Flat.find(params[:id])
        end
      
        def new
          @flat = Flat.new
        end
      
        def create
          @flat = Flat.new(flat_params)
          if @flat.save
            redirect_to @flat, notice: 'Flat was successfully created.'
          else
            render :new
          end
        end
      
        def edit
          @flat = Flat.find(params[:id])
        end
      
        def update
          @flat = Flat.find(params[:id])
          if @flat.update(flat_params)
            redirect_to @flat, notice: 'Flat was successfully updated.'
          else
            render :edit
          end
        end
      
        def destroy
          @flat = Flat.find(params[:id])
          @flat.destroy
          redirect_to flats_url, notice: 'Flat was successfully destroyed.'
        end
      
        private
      
        def flat_params
          params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
        end
    end
