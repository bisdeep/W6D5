class CatRentalRequestsController < ApplicationController

    def new
        @cats = Cat.all
        render :new
    end
  
    def create
        @cat = Cat.find_by(id: rental_request_params[:cat_id])
        @rental_request = CatRentalRequest.new(rental_request_params)
  
        if @rental_request.save
        # show user the rental_request show page
            redirect_to cat_rental_requests_url(@rental_request)
        else
        # show user the new rental_request form
            render :new
        end
    end
  
    private
    def rental_request_params
      params.require(:cat_rental_requests).permit(:cat_id, :start_date, :end_date, :status)
    end
  
end