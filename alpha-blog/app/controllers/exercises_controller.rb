class ExercisesController < ApplicationController
  def fetch
    # @exercise_fetch = Exercise.find(params[:id])
    @exercise_id = params[:id]
    @exercise_data = Exercise.find(params[:id])
  end

  def show
    
  end

  def index
    @exercises = Exercise.all()
  end

  def new
   
  end

  def create
    # params[:exercise]
    # render plain: params['exercise']
    # @exercise = Exercise.new(params[:exercise])
    @exercise = Exercise.new(params.require(:exercise).permit(:question, :answer, :create_at, :update_at))
    render plain: @exercise.inspect
  end
end
