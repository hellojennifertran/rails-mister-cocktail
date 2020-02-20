class DosesController < ApplicationController
  before_action :dose_params only %i[create]
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end
  def create
    @dose = Dose.new(dose_params)
    @dose.save
  end

  private

  def dose_params
    require(:dose).permit(:description, :ingredient)
  end
end
