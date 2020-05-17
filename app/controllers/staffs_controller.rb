class StaffsController < ApplicationController
  before_action :authenticate_user!

  def index
    @staffs = User.with_role :staff
  end

  def new
    @staff = User.new
  end

  def create
    @staff = User.new(user_params)
    if @staff.save
      @staff.add_role :staff
      redirect_to staff_path(@staff)
    else
      render new
    end
  end

  def show
    @staff = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:id,:fname,:lname,:email,:password,:password_confirmation,:contact,:address,:is_female)
  end
end
