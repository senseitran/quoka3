class HomeController < ApplicationController
  def index
  	  if params[:search]
      @nearby_locations = Space.near(params[:search], 4)
    end
  end

#def gmap
#	if params[:search]
#	@json = @nearby_locations.to_gmaps4rails do |space, marker|
 # 	marker.json({ :id => space.id, :foo => space.bar })
  #end
#end

#def map 
	#@space = Space.to_gmaps4rails do |marker|
    #marker.infowindow render_to_string(:partial => @nearby_locations)
	#end
#end

end
