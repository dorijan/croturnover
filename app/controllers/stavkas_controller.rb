class StavkasController < ApplicationController
  def index
    @stavkas = Stavka.all
  end

  def show
    @stavka = Stavka.find(params[:id])
  end

  def new
    @stavka = Stavka.new
  end

  def create
    @stavka = Stavka.new(params[:stavka])
    if @stavka.save
      redirect_to @stavka, :notice => "Successfully created stavka."
    else
      render :action => 'new'
    end
  end

  def edit
    @stavka = Stavka.find(params[:id])
  end

  def update
    @stavka = Stavka.find(params[:id])
    if @stavka.update_attributes(params[:stavka])
      redirect_to @stavka, :notice  => "Successfully updated stavka."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @stavka = Stavka.find(params[:id])
    @stavka.destroy
    redirect_to stavkas_url, :notice => "Successfully destroyed stavka."
  end
end
