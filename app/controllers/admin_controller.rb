class AdminController < ApplicationController
  def index
  end

  def create
    upload = params[:file]
    File.open(Rails.root.join('public', 'uploads', 'resume'),
      'wb') do |file|
        file.write(upload.read)
      end
  end
end
