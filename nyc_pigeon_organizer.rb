require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  pigeon_names = data[:gender][:male] + (data[:gender][:female])
  counter = 0
  pigeon_names.each do |name|
    # binding.pry
    pigeon_list[name] = {color: [], gender: [], lives: []}
    # binding.pry
  end
  # pigeon_list.each do |(key, value)|
  #   pigeon_list[key] = key.to_s
  # end
  puts data
  data.each do |(type, option)|
    option.each do |(option_2, value)|
      value.each do |name|
        # puts "#{name}, #{type}, #{option_2}"
        # puts type
        # puts option_2
        pigeon_list[name][type] << option_2.to_s
        # binding.pry
      end
    end
  end
  # binding.pry
  pigeon_list
end
