class FirmasController < ApplicationController
  def index
    @firmas = Firma.all
  end

  def show
    @firma = Firma.find(params[:id])
  end

  def new
    @firma = Firma.new
  end

  def create
    @firma = Firma.new(params[:firma])
    if @firma.save
      redirect_to @firma, :notice => "Successfully created firma."
    else
      render :action => 'new'
    end
  end

  def edit
    @firma = Firma.find(params[:id])
  end

  def update
    @firma = Firma.find(params[:id])
    if @firma.update_attributes(params[:firma])
      redirect_to @firma, :notice  => "Successfully updated firma."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @firma = Firma.find(params[:id])
    @firma.destroy
    redirect_to firmas_url, :notice => "Successfully destroyed firma."
  end
end
