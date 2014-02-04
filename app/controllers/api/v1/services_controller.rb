class Api::V1::ServicesController < ApplicationController
  skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }

  # Just skip the authentication for now
  before_filter :authenticate_user!

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
end