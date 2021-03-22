module Api
  module V1
    class ReviewsController < ApplicationController
      protect_from_forgery with: :null_session

      def get_by_subject
        subject = Subject.find_by(slug: params[:slug])
        reviews = subject.reviews
        render json: ReviewSerializer.new(reviews).serialized_json
      end

      def create
        review = subject.reviews.new(review_params)

        if review.save
          render json: ReviewSerializer.new(review).serialized_json
        else
          render json: { error: review.errors.messages }, status: 422
        end
      end

      def destroy
        review = Review.find(params[:id])

        if review.destroy
          head :no_content
        else
          render json: { error: review.errors.messages }, status: 422
        end
      end

      private

      # find specific subject
      def subject
        @subject ||= Subject.find(params[:subject_id])
      end

      def review_params
        params.require(:review).permit(:title, :description, :score1, :score2, :score3, :score4, :subject_id, :user_id)
      end
    end
  end
end