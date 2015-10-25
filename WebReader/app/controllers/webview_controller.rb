require 'web_viewer_service'
class WebviewController < ApplicationController
  def view
  	page_url = 'http://www.cesarzepeda.net/index.html'
  	he = HtmlEmitter.new()
  	pl = ParaListener.new()
  	il = ImageListener.new()
  	he.addListener(pl)
  	he.addListener(il)
  	he.parse(page_url)
  	@page_url = page_url
  	@text = pl.data.html_safe
  	@images = il.images
  end

  def update_page_position
  	line = params[:line_number]
  	url = params[:url]
  	view = Webview.find_by_url(url)
  	if !view
  		view = Webview.new
  		view.url = url
  	end
    puts("~~~~~~~~~~~~~~~~~~~~~ #{line}: #{url}")
  	view.line_number = line
  	if(!view.save!()) 
      puts "ERROR!!!"
    end
    puts("~~~~~~~~~~~~~~~~~~~~~ #{view.line_number}: #{view.url}")
    
  	render json: {:view => view}
  end
end
