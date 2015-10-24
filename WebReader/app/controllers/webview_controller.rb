require 'web_viewer_service'
class WebviewController < ApplicationController
  def view
  	page_url = 'http://www.cesarzepeda.net/index.html'
  	he = HtmlEmitter.new()
  	pl = ParaListener.new()
  	he.addListener(pl)
  	he.parse(page_url)
  	@page_url = page_url
  	@text = pl.data.html_safe
  end

  def update_page_position
  	line = params[:line_number]
  	url = params[:url]
  	view = WebView.find_by_url(url)
  	if !view
  		view = WebView.new
  		view.url = url
  	end
  	view.line_number = line
  	view.save
  	render json: {:view => view}
  end
end
