class ShipmentsController < ApplicationController
  before_filter :authenticate_user_from_token!
  before_filter :authenticate_user!
  before_action :set_shipment, only: [:show, :edit, :update, :destroy]
  
  GET /shipments
   # GET /shipments.json
   def index
     @shipments = Shipment.all
   end

   # GET /shipments/1
   # GET /shipments/1.json
   def show
     @shipment = Shipment.find(params[:id])
   

         respond_to do |format|
           format.html # show.html.erb
           format.json { 
               render :json => @shipment.to_json(:methods => [:polyline],:only => [:shipment]) 
             }
         end
   end

   # GET /shipments/new
   def new
     @shipment = Shipment.new
     @shipment.vehicles.build
   end

   # GET /shipments/1/edit
   def edit
    
   end

   # POST /shipments
   # POST /shipments.json
   def create
     @shipment = Shipment.new(shipment_params)

     respond_to do |format|
       if @shipment.save
         format.html { redirect_to @shipment, notice: 'Shipment was successfully created.' }
         format.json { render action: 'show', status: :created, location: @shipment }
       else
         format.html { render action: 'new' }
         format.json { render json: @shipment.errors, status: :unprocessable_entity }
       end
     end
   end

   # PATCH/PUT /shipments/1
   # PATCH/PUT /shipments/1.json
   def update
     respond_to do |format|
       if @shipment.update(shipment_params)
         format.html { redirect_to @shipment, notice: 'Shipment was successfully updated.' }
         format.json { head :no_content }
       else
         format.html { render action: 'edit' }
         format.json { render json: @shipment.errors, status: :unprocessable_entity }
       end
     end
   end

   # DELETE /shipments/1
   # DELETE /shipments/1.json
   def destroy
     @shipment.destroy
     respond_to do |format|
       format.html { redirect_to shipments_url }
       format.json { head :no_content }
     end
   end

   private
     # Use callbacks to share common setup or constraints between actions.
     def set_shipment
       @shipment = Shipment.find(params[:id])
     end

     # Never trust parameters from the scary internet, only allow the white list through.
     def shipment_params
       params.require(:shipment).permit(:shipment, :service_id,
                                       vehicles_attributes:[:plate,:economic,:container_type,:color,:features,:brand,:year,:vehicle_type],
                                       shipment_attributes:[:shipment,:service_id])
     end                                                                                                                                                                                                                       
     def authenticate_user_from_token!                                                                                                                                                                                         
         user_token = params[:user_token].presence                                                                                                                                                                             
         user       = user_token && User.find_by_authentication_token(user_token.to_s)                                                                                                                                         
                                                                                                                                                                                                                              
         if user                                                                                                                                                                                                               
           # Notice we are passing store false, so the user is not                                                                                                                                                              
           # actually stored in the session and a token is needed
           # for every request. If you want the token to work as a
           # sign in token, you can simply remove store: false.
           sign_in user, store: false
       end
     end
 end
  
end
