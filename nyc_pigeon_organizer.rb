def nyc_pigeon_organizer(data)
  pigeons = {}
  
  #att = "attribute" (so here attkey means like color/gender/lives and attvalue is the value)
  
  data.each do |attkey, attvalue|
    attvalue.each do |call, names|
      names.each do |name|
        pigeons[name] ||= {}
        pigeons[name][attkey] ||= []
        pigeons[name][attkey].push(call.to_s)
 
  #to_s is basically turning the integers into strings! 
  
      end
    end
  end
  pigeons
end