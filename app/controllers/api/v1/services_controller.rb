class Api::V1::ServicesController < ApplicationController
  skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }

  # Just skip the authentication for now
  
  #before_filter :authenticate_with_http_token

  #before_filter :authenticate_user!

  respond_to :json

  def index
    @services = Service.all
  end
  
  def show
    respond_with Service.find(params[:id])
  end

  def create
    respond_with Service.create(params[:service])
  end

  def update
    respond_with Service.update(params[:id], params[:service])
  end

  def destroy
    respond_with Service.destroy(params[:id])
  end

  def transition
    @service = Service.find(params['id'])
    @service.send(@service.aasm.events(@service.aasm.current_state).join)
    @service.save    
  rescue ActiveRecord::RecordNotFound
    render :status => 404,
           :json => { :success => false,
                      :info => 'Not Found',
                      :data => {} }

  end
  
  def authenticate_with_http_token
    auth_header = request.headers['Authorization'].to_s
    token = auth_header[/token="(.*?)"/,1]
    return unless token

    user = User.find_by_authentication_token(token)
    sign_in user if user
  end
end