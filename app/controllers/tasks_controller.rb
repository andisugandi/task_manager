class TasksController < ApplicationController
  def index
    @page = params[:page].to_i
    @tasks = ['Jemur cucian baju', 'Sapu teras rumah', 'Cuci piring', 'Memotong rumput']
  end

  def new
  end

  def edit
  end
end
