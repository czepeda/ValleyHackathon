require 'web_viewer_service'
class WebviewController < ApplicationController
  def view
  	wvs = WebviewerService.new()
  	str = wvs.read_url('http://www.cesarzepeda.net/index.html')
  	      wvs.emit_p(str)

  	render :text => str
  end
end
