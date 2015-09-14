class MembershipsController < ApplicationController

  def index
    @memberships = Membership.all.order('created_at DESC')
  end

  def new
    @membership = Membership.new
  end

  def create
    membership = Membership.new(membership_params)
    
    if membership.save
      flash[:notice] = 'Membership created successfully!'
      redirect_to membership
    else
      flash.now[:error] = "Error: #{membership.errors.full_messages}"
      render :new
    end
  end

  def show
    @membership = Membership.find(params[:id])
  end

  def edit
    @membership = Membership.find(params[:id])
  end

  def update
    membership = Membership.find(params[:id])

    if membership.update(membership_params)
      redirect_to membership
    else
      render :edit
    end
  end

  def destroy
    membership = Membership.find(params[:id]).destroy

    redirect_to root_path
  end

end

