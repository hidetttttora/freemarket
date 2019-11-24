class SignupController < ApplicationController

  def step2
    @user = User.new
  end

  def step3
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:password_confirmation] = user_params[:password_confirmation]
    @user = User.new
  end

  def step4
    @user = User.new
  end

  def step5
    session[:firstname] = user_params[:firstname]
    session[:lastname] = user_params[:lastname]
    session[:firstname_kana] = user_params[:firstname_kana]
    session[:lastname_kana] = user_params[:lastname_kana]
    session[:postalcode] = user_params[:postalcode]
    session[:prefecture_id] = user_params[:prefecture_id]
    session[:city] = user_params[:city]
    session[:address] = user_params[:address]
    session[:building] = user_params[:building]
    session[:phonenumber] = user_params[:phonenumber]
    @user = User.new
  end

  def create
    
  end
end
