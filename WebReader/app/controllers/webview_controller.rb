require 'web_viewer_service'
require 'html_emitter'
class WebviewController < ApplicationController
  def view
  	he = HtmlEmitter.new()
  	pl = ParaListener.new()
  	he.addListener(pl)
  	he.parse('http://www.cesarzepeda.net/index.html')

  	render :text => pl.data
  end
end
