class StudentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @students = User.with_role :student
  end

  def new
    @student = User.new
  end

  def create
    @student = User.new(user_params)
    if @student.save
      @student.add_role :student
      redirect_to student_path(@student)
    else
      render new
    end
  end

  def show
    @student = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:id,:fname,:lname,:email,:password,:password_confirmation,:contact,:address,:is_female)
  end
end
