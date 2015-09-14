class GuestsController < ApplicationController

  def index
    @guests = Guest.all.order('created_at DESC')
  end

  def new
    @guest = Guest.new
  end

  def create
    guest = Guest.new(guest_params)
    
    if guest.save
      flash[:notice] = 'Guest created successfully!'
      redirect_to guest
    else
      flash.now[:error] = "Error: #{guest.errors.full_messages}"
      render :new
    end
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    guest = Guest.find(params[:id])

    if guest.update(guest_params)
      redirect_to guest
    else
      render :edit
    end
  end

  def destroy
    guest = Guest.find(params[:id]).destroy

    redirect_to root_path
  end

end

