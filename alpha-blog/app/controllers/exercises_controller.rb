class ExercisesController < ApplicationController
  def fetch
    # @exercise_fetch = Exercise.find(params[:id])
    @exercise_id = params[:id]
    @exercise_data = Exercise.find(params[:id])
  end

  # GET methods
  def show
    @exercise = Exercise.find(params[:id])
  end

  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
    puts @exercise.errors.full_messages
  end

  def edit
    # byebug
    @exercise = Exercise.find(params[:id])
  end
  # --- end GET methods ---

  # POST methods
  def create
    # params[:exercise]
    # render plain: params['exercise']
    # @exercise = Exercise.new(params[:exercise])
    @exercise = Exercise.new(params.require(:exercise).permit(:question, :answer, :create_at, :update_at))
    if @exercise.save
      flash[:notice] = 'Exercise was created successfully'
      redirect_to exercise_path(@exercise)
    else
      puts @exercise.errors.full_messages
      render 'new'
      # redirect_to new_exercise_path
      # render 'new', status: :unprocessable_entity
    end

    # render plain: @exercise.inspect
  end
  # --- end POST methods ---

  # PATCH | PUT methods
  def update
    @exercise = Exercise.find(params[:id])
    if @exercise.update(params.require(:exercise).permit(:question, :answer, :update_at))
      flash[:notice] = 'Exercise was updated successfully'
      redirect_to exercises_path(@exercise)
    else
      render 'edit', status: :ok
    end
    # @exercise[:question] = params[:question]
    # @exercise[:answer] = params[:answer]
    # if @exercise.save
    #   redirect_to exercises_path(@exercise)
    # else
    #   # redirect_to edit_exercise_path(@exercise)
    #   render 'edit', status: :ok
    # end
  end
  # --- end PATCH | PUT methods ---

  # DELETE methods
  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    redirect_to exercises_path
  end
  # --- end DELETE methods ---
end
