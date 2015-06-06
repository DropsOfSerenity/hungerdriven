class SignupsController < ApplicationController
  def new
    @signup = Signup.new
    @signups = []
    Signup.all.each do |s|
      if not s.lat.blank? and not s.lon.blank?
        @signups << [s.lat.to_f, s.lon.to_f]
      end
    end
  end

  def create
    @signup = Signup.new(signup_params)
    if @signup.save
      redirect_to new_signup_path
    else
      render 'new'
    end
  end

  def index
  end

  private

  def signup_params
    params.require(:signup).permit(:email, :lat, :lon)
  end
end
