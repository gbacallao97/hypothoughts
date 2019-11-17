class TheoriesController < ApplicationController
  def index
    @theories = Theory.all
  end

end
