class TheoriesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @theories = Theory.all
  end

  def new
    @theory = Theory.new
  end

  def create
    current_user.theory.create(theory_params)
    redirect_to root_path
  end

  private

  def theory_params
    params.require(:theory).permit(:title, :explanation, :writer)
  end

end
