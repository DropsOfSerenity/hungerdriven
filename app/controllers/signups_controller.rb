class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.new(signup_params)
    if @signup.save
      redirect_to 'welcome/map'
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
