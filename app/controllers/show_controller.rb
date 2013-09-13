class ShowController < ApplicationController

  def html_tag_iphone
  end
  
  def html_tag_pc
  end
  
  def simulate_phone
    require "open-uri" 
    uri = params[:url]
    html_response = nil 
    open(uri,"User-Agent" => "Mozilla/5.0 (iPhone; CPU iPhone OS 5_0 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9A334 Safari/7534.48.3",) do |http|  
      html_response = http.read  
    end 
    render :text => html_response
  end
end