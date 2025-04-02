class RecommendationsController < ApplicationController
  def index
    @recommendations = Recommendation.all
  end

  def new
    @recommendation = Recommendation.new
  end

  def create
    @recommendation = Recommendation.new(recommendation_params)
    generate_recommendations
  end


  private
  def recommendation_params
    params.require(:recommendation).permit(:type)
  end
end
