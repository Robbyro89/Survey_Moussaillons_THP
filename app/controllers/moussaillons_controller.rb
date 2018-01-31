class MoussaillonsController < ApplicationController
  def index
  end

  def index
  	@moussaillons = Moussaillon.all
  end

  def new
  	@moussaillon = Moussaillon.new
  end


  def create
  	@moussaillon = Moussaillon.new(corsair_params)
		if @moussaillon.save
			redirect_to @Moussaillon
			else render 'new'
		end
  end

  	def show
		@moussaillon = Moussaillon.find(params[:id])
	end

	def edit
		@moussaillon = Moussaillon.find(params[:id])
	end

	def update
	  @moussaillon = Moussaillon.find(params[:id])

		if @moussaillon.update(corsair_params)
		 redirect_to @moussaillon
		 else render 'edit'
		end
	end


	def destroy
		@moussaillon= Moussaillon.find(params[:id])
		@moussaillon.destroy
		redirect_to index_path
	end

  	private
	  def moussaillon_params
	    params.permit(:first_name, :age, :likeness)
	  end
end
