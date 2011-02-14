Artist.delete_all
User.delete_all
Comment.delete_all
Work.delete_all
Location.delete_all

Artist.create(:name => "Pablo Picasso",
							:website_url => "http://www.picasso.com")
Artist.create(:name => "Leonardo DaVinci",
							:website_url => "http://www.davinci.com")
							
User.create(:username => "Taylor Waylor",
						:type => :citizen)
User.create(:username => "Tommy Menino",
						:type => :admin)
						
Location.create(:x_coord => 42.356496,
								:y_coord => -71.067679,
								:description => "Active.",
								:user_id => User.find_by_username("Taylor Waylor").id,
								:is_active => true)
Location.create(:x_coord => 42.357496,
								:y_coord => -71.067779,
								:description => "Inactive.",
								:user_id => User.find_by_username("Taylor Waylor").id,
								:is_active => false)

Work.create(:title => "El Diablo",
						:description => "It's the devil, getit?",
						:sketch => "http://i.imgur.com/tTn2Z.jpg",
						:artist_id => Artist.find_by_name("Pablo Picasso").id,
						:is_real => false,
						:location_id => Location.find_by_description("Active.").id)
