class InstagramApi

  def get_pictures(location)
    coordinates = Geocoder.coordinates("#{location}")

    x = coordinates[0]
    y = coordinates[1]

    loc = Instagram.media_search("#{x}","#{y}")
    #loc_top = Instagram.media_search("#{x + 0.012}","#{y}", options = {:count => 100})
    #loc_bottom = Instagram.media_search("#{x - 0.012}","#{y}", options = {:count => 100})
    #loc_right = Instagram.media_search("#{x}","#{y - 0.012}", options = {:count => 100})
    #loc_left = Instagram.media_search("#{x}","#{y + 0.012}", options = {:count => 100})

    results = loc # + loc_top + loc_bottom + loc_left + loc_right
  end
  end

end
