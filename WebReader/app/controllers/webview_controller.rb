require 'web_viewer_service'
class WebviewController < ApplicationController
  def view
  	render :text => WebviewerService.new().read_url('http://www.cesarzepeda.net/index.html')
  end
end
