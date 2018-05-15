class HonsController < ApplicationController
  def index
    @hons = Hon.all
    @hon = Hon.new
  end

  def show
    @hon = Hon.find(params[:id])
  end

  def new
  end

  def create
    hon = Hon.new(hon_params)
    hon.save

    redirect_to hons_path
  end

  def edit
    @hon = Hon.find(params[:id])
  end

  def update
    hon = Hon.find(params[:id])
    hon.update(hon_params)
    redirect_to hon_path(hon)
  end

  def destroy
    hon =Hon.find(params[:id])
    hon.destroy
    redirect_to hons_path
  end

  private
    def hon_params
      params.require(:hon).permit(:title, :body)
    end
end
