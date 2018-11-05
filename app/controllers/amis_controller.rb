class AmisController < ApplicationController
    
  def show
    @ami = Ami.find_by(id:params[:id])
  end
  
  def index
    @amis = Ami.all
  end
 
  def new
    @ami = Ami.new
  end

  def create
  end

  def destroy
    @ami = Ami.find_by(id:params[:id])
    @ami.destroy
  end

end
