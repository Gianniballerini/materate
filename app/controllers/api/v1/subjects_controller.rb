module Api
  module V1
    class SubjectsController < ApplicationController
      protect_from_forgery with: :null_session
      def index
        subjects = Subject.all

        render json: SubjectSerializer.new(subjects, options).serialized_json
      end

      def show
        subject = Subject.find_by(slug: params[:slug])

        render json: SubjectSerializer.new(subject, options).serialized_json
      end

      def get_by_year
        subjects = year.subjects
        render json: SubjectSerializer.new(subjects, options).serialized_json
      end

      def create
        subject = Subject.new(subject_params)

        if subject.save
          render json: SubjectSerializer.new(subject).serialized_json
        else
          render json: { error: subject.errors.messages }, status: 422  
        end
      end
      
      def update
        if subject.update(subject_params)
          render json: SubjectSerializer.new(subject, options).serialized_json
        else
          render json: { error: subject.errors.messages }, status: 422  
        end
      end
      
      def destroy
        if subject.destroy
          head :no_content
        else
          render json: { error: subject.errors.messages }, status: 422  
        end
      end

      private

      def subject_params
        params.require(:subject).permit(:name, :image_url, :description, :year_id)
      end

      def options 
        @options ||= { include: %i[reviews] }
      end

      # get specific subject
      def subject
        @subject ||= Subject.find_by(slug: params[:slug])
      end

      # get specific year
      def year
        @year = Year.find(params[:year_id])
      end
    end
  end
end