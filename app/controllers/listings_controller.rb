class ListingsController < ApplicationController
	def index
	   @listings=Listing.all

    end 

    def new
    	@listing=Listing.new
    end

    def show
      @listing=Listing.find(params[:id])
    end

   def create 
    @listing=Listing.new(listing_params)

    if @listing.save
    	redirect_to listings_path
    else
    	render :new
    end 
   end 


   def edit
	    @listing=Listing.find(params[:id])

   end 

   def update
    @listing=Listing.find(params[:id])
    if @listing.update(listing_params)
      redirect_to listings_path
    end
   end

   def destroy
    
     @listing=Listing.find(params[:id])

     @listing.destroy

     redirect_to listings_path
   end 

   private

   def listing_params

   	params.require(:listing).permit(:description)
   end

end 