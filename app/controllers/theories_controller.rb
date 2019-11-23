class TheoriesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @theories = Theory.all
  end

  def new
    @theory = Theory.new
  end

  def create
    @theory = current_user.theories.create(theory_params)
    if @theory.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @theory = Theory.find(params[:id])
  end

  def edit
    @theory = Theory.find(params[:id])

    if @theory.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end
  end

  def update
    @theory = Theory.find(params[:id])
    if @theory.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end

    @theory.update_attributes(theory_params)
    if @theory.valid?
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @theory = Theory.find(params[:id])
    if @theory.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end

    @theory.destroy
    redirect_to root_path
  end

  private

  def theory_params
    params.require(:theory).permit(:title, :explanation, :writer)
  end

end
