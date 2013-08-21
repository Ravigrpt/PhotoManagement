module PhotosHelper
	def photo_name(photo, size)
		if photo
			image_tag photo.photo.url(size)
		end
	end
end
