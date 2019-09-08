if  Rails.env.development? 
	Geography.create("latitude"=>"0", "longitude"=>"0")
	Geography.create("latitude"=>"10", "longitude"=>"10")
	Geography.create("latitude"=>"20", "longitude"=>"20")
	Geography.create("latitude"=>"30", "longitude"=>"30")
	Geography.create("latitude"=>"40", "longitude"=>"40")
	Geography.create("latitude"=>"50", "longitude"=>"50")
end