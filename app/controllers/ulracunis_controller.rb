class UlracunisController < ApplicationController
  def index
    @ulracunis = Ulracuni.all
  end

  def show
    @ulracuni = Ulracuni.find(params[:id])
  end

  def new
    @ulracuni = Ulracuni.new
  end

  def create
    @ulracuni = Ulracuni.new(params[:ulracuni])
    if @ulracuni.save
      redirect_to @ulracuni, :notice => "Successfully created ulracuni."
    else
      render :action => 'new'
    end
  end

  def edit
    @ulracuni = Ulracuni.find(params[:id])
  end

  def update
    @ulracuni = Ulracuni.find(params[:id])
    if @ulracuni.update_attributes(params[:ulracuni])
      redirect_to @ulracuni, :notice  => "Successfully updated ulracuni."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @ulracuni = Ulracuni.find(params[:id])
    @ulracuni.destroy
    redirect_to ulracunis_url, :notice => "Successfully destroyed ulracuni."
  end
end
