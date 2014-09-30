class ProfileController < ApplicationController

  # GET /profiles
  def index
    @profile = Profile.new
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # POST /profiles
  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      redirect_to action: 'index', notice: 'profile was successfully created.'
    else
      render action: 'new', alert: 'profile could not be created' 
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:Profile).permit(:name, :avatar, :surname, :age)
    end
end