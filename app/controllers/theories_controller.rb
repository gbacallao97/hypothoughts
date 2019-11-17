class TheoriesController < ApplicationController
  def index
    @theories = Theory.all
  end

  def new
    @theory = Theory.new
  end

end
