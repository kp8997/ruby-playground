class ExercisesController < ApplicationController
  def fetch
    # @exercise_fetch = Exercise.find(params[:id])
    @exercise_id = params[:id]
    @exercise_data = Exercise.find(params[:id])
  end

  def show
    
  end
end
