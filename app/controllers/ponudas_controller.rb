class PonudasController < ApplicationController
  def index
    @ponudas = Ponuda.all
  end

  def show
#    @ponuda = Ponuda.find(params[:id])
    @racun = Ponuda.find(params[:id])
	@stav=Ponstavka.where("ponuda_id=?",params[:id])
	@rb=1
	@ukupnored=0
	@ukupno=0	
	@brojrabata=Ponstavka.where("ponuda_id=? AND (rabat>0)",params[:id]).count	    
  end

  def new
    @ponuda = Ponuda.new
  end

  def create
    @ponuda = Ponuda.new(params[:ponuda])
    if @ponuda.save
      redirect_to @ponuda, :notice => "Successfully created ponuda."
    else
      render :action => 'new'
    end
  end

  def edit
    @ponuda = Ponuda.find(params[:id])
  end

  def update
    @ponuda = Ponuda.find(params[:id])
    if @ponuda.update_attributes(params[:ponuda])
      redirect_to @ponuda, :notice  => "Successfully updated ponuda."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @ponuda = Ponuda.find(params[:id])
    @ponuda.destroy
    redirect_to ponudas_url, :notice => "Successfully destroyed ponuda."
  end
end
