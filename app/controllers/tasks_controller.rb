class TasksController < ApplicationController
  def index
    @tasks = ['Jemur cucian baju', 'Sapu teras rumah', 'Cuci piring', 'Memotong rumput']
  end

  def new
  end

  def edit
  end
end
