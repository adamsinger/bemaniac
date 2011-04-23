class MixesController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create, :update, :edit, :destroy]
  before_filter :find_mix, :only => [:download, :send_download, :update, :destroy, :show]
  
  def download
    render layout: "manage"
  end
  
  def send_download
    if @mix and @mix.downloads.create(campaign: params[:c] || "unknown")
      send_file @mix.file.path, disposition: "attachment"
    end
  end

  def index
    @mixes = Mix.all
  end

  def show
  end

  def new
    @mix = Mix.new
    render layout: "manage"
  end

  def edit
    render layout: "manage"
  end

  def create
    if @mix = current_user.mixes.create(params[:mix])
      flash[:notice] = "Mix was successfully created."
      redirect_to @mix
    else
      render action: "new" 
    end
  end

  def update
    if @mix.update_attributes(params[:mix])
      redirect_to mixes_url, notice: "Mix was successfully updated!"
    else
      render action: "edit"
    end
  end

  def destroy
    @mix.destroy
    redirect_to mixes_url
  end
  
  private
  
  def find_mix
    @mix = Mix.find(params[:id])
  end
end
