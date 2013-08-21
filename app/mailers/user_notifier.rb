class UserNotifier < ActionMailer::Base
  default from: "ranga.435@gmail.com"
  helper :photos
  def test_mail(email)
  	#subject "Hi this is test mail"
  	#to email
  	@photo = Photo.find_by_id("22")
  	puts @photo.name
  	mail(:from => "ranga.435@gmail.com", :to => "ramans465@gmail.com", :subject => "My Photo")
  end

end
