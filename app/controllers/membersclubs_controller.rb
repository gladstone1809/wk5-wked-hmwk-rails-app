class MembersclubsController < ApplicationController

  def index
    @membersclubs = Membersclub.all.order('created_at DESC')
  end

  def new
    @membersclub = Membersclub.new
  end

  def create
    membersclub = Membersclub.new(membersclub_params)
    
    if membersclub.save
      flash[:notice] = 'Membersclub created successfully!'
      redirect_to membersclub
    else
      flash.now[:error] = "Error: #{membersclub.errors.full_messages}"
      render :new
    end
  end

  def show
    @membersclub = Membersclub.find(params[:id])
  end

  def edit
    @membersclub = Membersclub.find(params[:id])
  end

  def update
    membersclub = Membersclub.find(params[:id])

    if membersclub.update(membersclub_params)
      redirect_to membersclub
    else
      render :edit
    end
  end

  def destroy
    membersclub = Membersclub.find(params[:id]).destroy

    redirect_to root_path
  end

end

