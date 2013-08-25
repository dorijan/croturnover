class DashController < ApplicationController
  before_filter :login_required, :except => [:mlin]
  def show
	@ukupno=0
	racun = Racun.where("placeno=1")
	racun.each do |r|
		stav=Racstavka.where("racun_id=?",r.id)
		stav.each do |s|
			@ukupnored=((s.stavka.cijena*s.kolicina)*(100-s.rabat)/100)
			@ukupno=@ukupno+@ukupnored
		end
		
	end
	
	@lokoukupno=0
	lokov=Loko.all
	lokov.each do |loko|
		@lokoukupno=@lokoukupno+2*(loko.kraj_broj-loko.poc_broj)+loko.dodcijena
	end
	
	@ulracu=0
	ulrac=Ulracuni.all
	ulrac.each do |ur|
		@ulracu=@ulracu+ur.priznos
	end
	
  end
  
  def mlin
	logger.debug params
	if params[:sender].nil?
		params[:sender]="unknown"
	end
	render :text => "Hvala vam na koristenju mlina! Kada bude gotovo dobiti cete obavijest na "+params[:sender]
  
  end

end
