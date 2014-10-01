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
  
  def edit
    if user_signed_in?
      @profile=Profile.find_by owner: current_user.id
    end
  end

  def update
    profile = Profile.find_by owner: current_user.id
    profile.update_attributes(profile_params)
    profile.save
    redirect_to root_path
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:name, :avatar, :surname, :age)
    end
end