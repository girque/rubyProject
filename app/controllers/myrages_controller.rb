class MyragesController < ApplicationController
  before_action :set_myrage, only: [:show, :edit, :update, :destroy]

  # GET /myrages
  # GET /myrages.json
  def index
    if current_user
      @rages = Rage.where(user_id: current_user.id)
      @user = User.find(current_user.id)
      if @rages.nil?
       @rages = Array.new
      end
    else
      @rages = Rage.all
    end
  end
end

