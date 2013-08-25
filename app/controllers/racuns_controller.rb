class RacunsController < ApplicationController
  before_filter :login_required
    
  def index
    @racuns = Racun.all
  end

  def show
    @racun = Racun.find(params[:id])
	@stav=Racstavka.where("racun_id=?",params[:id])
	@rb=1
	@ukupnored=0
	@ukupno=0	
	@brojrabata=Racstavka.where("racun_id=? AND (rabat>0)",params[:id]).count	
  end

  def new
    @racun = Racun.new
  end

  def create
    @racun = Racun.new(params[:racun])
    if @racun.save
      redirect_to @racun, :notice => "Successfully created racun."
    else
      render :action => 'new'
    end
  end

  def edit
    @racun = Racun.find(params[:id])
  end

  def update
    @racun = Racun.find(params[:id])
    if @racun.update_attributes(params[:racun])
      redirect_to @racun, :notice  => "Successfully updated racun."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @racun = Racun.find(params[:id])
    @racun.destroy
    redirect_to racuns_url, :notice => "Successfully destroyed racun."
  end
end
