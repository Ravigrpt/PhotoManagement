
class PhotosController < ApplicationController

	def index
		@photos = Photo.all
	end

	def new
		@photo = Photo.new
		@photo.album_id = params[:album_id]
	end

	def create
		@photo = Photo.new(params[:photo])
		@photo.save
		redirect_to album_path(@photo.album_id)
	end

	def show
		@photo = Photo.find_by_id(params[:id])
	end

	def edit
		@photo = Photo.find_by_id(params[:id])
	end

	def update
		@photo = Photo.find_by_id(params[:id])
		if @photo.update_attributes(params[:photo])
			redirect_to @photo
		end
	end

	def destroy
		@photo = Photo.find_by_id(params[:id])
		@photo.destroy
		redirect_to photos_path
	end

end
