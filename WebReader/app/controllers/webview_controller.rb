class WebviewController < ApplicationController
  def view
  	render :text =>  	WebviewHelper.read_url(nil)
  end
end
