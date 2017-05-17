class RmrmsController < ApplicationController
  def create
    @property = Property.find params[:property_id]
    @rmrm = @property.rmrms.build rmrm_params

    if @rmrm.save
      redirect_to @property, notice: "File was successfully uploaded."
    else
      redirect_to @property, alert: "File was not uploaded."
    end
  end

  protected

  def rmrm_params
    params.require(:rmrm).permit(:file,:property_id)
  end
end
