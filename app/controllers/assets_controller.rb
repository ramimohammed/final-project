class AssetsController < ApplicationController
  def create
    @property = Property.find params[:property_id]
    @asset = @property.assets.build asset_params

    if @asset.save
      redirect_to @property, notice: "File was successfully uploaded."
    else
      redirect_to @property, alert: "File was not uploaded."
    end
  end

  protected

  def asset_params
    params.require(:asset).permit(:file)
  end
end



