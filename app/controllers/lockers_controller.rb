class LockersController < ApplicationController
  include ApplicationHelper

  def index
    @lockers = Locker.all
  end

  def get
  end

  def show
    @locker = Locker.find(params[:id])
  end

end