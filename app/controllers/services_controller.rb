class ServicesController < ApplicationController
  before_filter :authenticate_user_from_token!
  before_filter :authenticate_user!
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  # GET /services
  # GET /services.json
  def index
    @services = Service.all
  end

  # GET /services/1
  # GET /services/1.json
  def show
    @service = Service.find(params[:id])
   

        respond_to do |format|
          format.html # show.html.erb
          format.json { 
              render :json => @service.to_json(:methods => [:polyline],:only => [:shipment]) 
            }
        end
  end

  # GET /services/new
  def new
    @service = Service.new
    @service.vehicles.build
  end

  # GET /services/1/edit
  def edit
    
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service }
      else
        format.html { render action: 'new' }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:shipment, :departure_date, :arrival_date, :release_date, :status, :latitude, :longitude,:latitude_dest, :longitude_dest, :location_id, :departure_id, :arrival_id,:completed,:user_id,:service_type,vehicles_attributes:[:plate,:economic,:container_type,:color,:features,:brand,:year,:vehicle_type])
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
