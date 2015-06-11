class SeminarsController < ApplicationController
  before_action :set_seminar, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:show, :index]


  respond_to :html

  def index
    redirect_to dashboard_path
  end

  def show
    redirect_to dashboard_path
  end

  def new
    @seminar = Seminar.new
    respond_with(@seminar)
  end

  def edit
  end

  def create
    @seminar = Seminar.new(seminar_params)
    @seminar.user_id = current_user.id
    @seminar.save
    redirect_to dashboard_path
  end

  def update
    @seminar.update(seminar_params)
    respond_with(@seminar)
  end

  def destroy
    @seminar.destroy
    respond_with(@seminar)
  end

  private
    def set_seminar
      @seminar = Seminar.find(params[:id])
    end

    def seminar_params
      params.require(:seminar).permit(:user_id, 
                                      :headline, 
                                      :subline, 
                                      :description, 
                                      :duration, 
                                      :slot, 
                                      :confirmed, 
                                      :category, 
                                      :accepted, 
                                      :confirmed, 
                                      :track, 
                                      :date)
    end
end
