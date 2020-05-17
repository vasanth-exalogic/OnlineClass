class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def registrations
  end

  def academy
  end
end
