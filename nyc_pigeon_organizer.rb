def nyc_pigeon_organizer(data)
  result = {}
  data.each do |attributes, data_items|
    data_items.each do |item, names|
      names.each do |name|
        result[name] ||= {}
        result[name][attributes] ||= []
        result[name][attributes] << item.to_s
      end
    end
  end

  result
end
