class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show], admin: :all

  # GET /galleries
  def index
    @galleries = Gallery.all.where(published: true)
  end

  def admin_index
    @galleries = Gallery.all
  end

  # GET /galleries/1
  def show
    @photos=Photo.where(:gallery_id => @gallery.id)
  end

  # GET /galleries/new
  def new
    @gallery = Gallery.new
    @number_of_galleries = Gallery.all.count+1
  end

  # GET /galleries/1/edit
  def edit
    @number_of_galleries = Gallery.all.count+1
  end

  # POST /galleries
  def create
    @gallery = Gallery.new(gallery_params)

    if @gallery.save
      redirect_to @gallery, notice: 'Gallery was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /galleries/1
  def update
    if @gallery.update(gallery_params)
      redirect_to @gallery, notice: 'Gallery was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /galleries/1
  def destroy
    @gallery.destroy
    redirect_to galleries_url, notice: 'Gallery was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gallery_params
      params.require(:gallery).permit(:title, :description, :published, :position, :cover_image)
    end
end
