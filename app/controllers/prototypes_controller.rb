class PrototypesController < ApplicationController
  def index
  end


  private

  def prototype_params
    params.require(:Prototype).permit(:content, :image).merge(user_id: current_user.id)
  end
end
