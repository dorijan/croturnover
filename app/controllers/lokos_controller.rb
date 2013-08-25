class LokosController < ApplicationController
  def index
    @lokos = Loko.order("poc_broj")
  end

  def show
    @loko = Loko.find(params[:id])
  end

  def new
    @loko = Loko.new
  end

  def create
    @loko = Loko.new(params[:loko])
    if @loko.save
      redirect_to @loko, :notice => "Successfully created loko."
    else
      render :action => 'new'
    end
  end

  def edit
    @loko = Loko.find(params[:id])
  end

  def update
    @loko = Loko.find(params[:id])
    if @loko.update_attributes(params[:loko])
      redirect_to @loko, :notice  => "Successfully updated loko."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @loko = Loko.find(params[:id])
    @loko.destroy
    redirect_to lokos_url, :notice => "Successfully destroyed loko."
  end
end
