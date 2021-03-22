module Api
  module V1
    class YearsController < ApplicationController
      protect_from_forgery with: :null_session

      def index
        years = Year.all

        render json: YearSerializer.new(years, options).serialized_json
      end

      def show
        year = Year.find_by(name: params[:name])

        render json: YearSerializer.new(year, options).serialized_json
      end

      def create
        year = Year.new(year_params)

        if year.save
          render json: YearSerializer.new(year).serialized_json
        else
          render json: { error: year.errors.messages }, status: 422  
        end
      end
      
      def update
        year = Year.find_by(name: params[:name])

        if year.update(year_params)
          render json: YearSerializer.new(year, options).serialized_json
        else
          render json: { error: year.errors.messages }, status: 422  
        end
      end
      
      def destroy
        year = Year.find_by(name: params[:name])

        if year.destroy
          head :no_content
        else
          render json: { error: year.errors.messages }, status: 422  
        end
      end

      private

      def year_params
        params.require(:year).permit(:name)
      end

      def options
        @options ||= { include: %i[subjects] }
      end
    end
  end
end