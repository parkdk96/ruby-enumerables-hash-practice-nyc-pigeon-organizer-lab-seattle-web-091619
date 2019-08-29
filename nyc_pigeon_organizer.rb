def nyc_pigeon_organizer(data)
  # write your code here!
  list_of_names = []
  pigeon_list = {}
    data.each do |key, val|
      val.each do |prop, name_list|
        name_list.each do |name|
          pigeon_list[name] = {:color => [], :gender => [], :lives => []}
          list_of_names.push(name)
        end
      end
    end
  
  # Making this list in order to avoid additional hash navigation while writing the conditional statements
  list_of_names = list_of_names.uniq
  
  data[:color].each do |key, val|
    val.length.times do |i| #this val is the array of names for each color
      if list_of_names.include?(val[i])
        pigeon_list[val[i]][:color].push(key.to_s)
      end
    end
  end
  
  data[:gender].each do |key, val|
    val.length.times do |i|
      if list_of_names.include?(val[i])
      pigeon_list[val[i]][:gender].push(key.to_s)
      end
    end
  end
  
  data[:lives].each do |key, val|
    val.length.times do |i|
      if list_of_names.include?(val[i])
      pigeon_list[val[i]][:lives].push(key.to_s)
      end
    end
  end
  
  return pigeon_list
end
