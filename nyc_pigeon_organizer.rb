def nyc_pigeon_organizer(data)
  pigeons = {}

  data[:color].values.flatten.each do |name|
    pigeons[name] = {}
  end
  
  pigeons.each do |k, v|
    pigeons[k][:color] = []
    data[:color].each do |(key, value)|
     pigeons[k][:color] << key.to_s if value.include?(k)
    end
  end

  pigeons.each do |k, v|
    pigeons[k][:gender] = []
    data[:gender].each do |(key, value)|
     pigeons[k][:gender] << key.to_s if value.include?(k)
    end
  end

  pigeons.each do |k, v|
    pigeons[k][:lives] = []
    data[:lives].each do |(key, value)|
     pigeons[k][:lives] << key if value.include?(k)
    end
  end

 pp pigeons
end


pigeon_data = {
    :color => {
      :purple => ["Theo", "Peter Jr.", "Lucky"],
      :grey => ["Theo", "Peter Jr.", "Ms. K"],
      :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
      :brown => ["Queenie", "Alex"]
    },
    :gender => {
      :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
      :female => ["Queenie", "Ms. K"]
    },
    :lives => {
      "Subway" => ["Theo", "Queenie"],
      "Central Park" => ["Alex", "Ms. K", "Lucky"],
      "Library" => ["Peter Jr."],
      "City Hall" => ["Andrew"]
    }
  }

  nyc_pigeon_organizer(pigeon_data)