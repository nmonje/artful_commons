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
						
Location.create(:lat => 42.356496,
								:lng => -71.067679,
								:title => "Active.",
								:user_id => User.find_by_username("Taylor Waylor").id,
								:is_active => true)
Location.create(:lat => 42.357496,
								:lng => -71.067779,
								:title => "Inactive.",
								:user_id => User.find_by_username("Taylor Waylor").id,
								:is_active => false)

Work.create(:title => "El Diablo",
						:description => "It's the devil, getit?",
						:sketch => "http://i.imgur.com/tTn2Z.jpg",
						:artist_id => Artist.find_by_name("Pablo Picasso").id,
						:is_real => false,
						:location_id => Location.find_by_title("Active.").id)
