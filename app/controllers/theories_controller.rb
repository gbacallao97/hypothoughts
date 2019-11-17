class TheoriesController < ApplicationController
  def index
    @theories = Theory.all
  end

  def new
    @theory = Theory.new
  end

  def create
    Theory.create(theory_params)
    redirect_to root_path
  end

  private

  def theory_params
    params.require(:theory).permit(:title, :explanation, :writer)
  end

end
