
class AlbumsController < ApplicationController

	def new
		@album = Album.new
	end

	def create
		@album = Album.new(params[:album])
		@album.save
		redirect_to albums_path
	end

	def index
		@albums = Album.all
	end

	def show
		@album = Album.find_by_id(params[:id])
	end

	def settings
		UserNotifier.test_mail("ranga.435@gmail.com").deliver
	end
end
