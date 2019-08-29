def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |key, val|
    val.each do |prop, name_list|
      name_list.each do |name|
        pigeon_list[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  
  pigeon_list.length.times do |i|
    data[:color].each do |color_key, name_list|
      if name_list.include?(pigeon_list[i])
        pigeon_list[i][:color].push(color_key.to_s)
      end
    end
  end
  
  puts pigeon_list
end
