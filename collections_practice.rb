require "pry"

def begins_with_r(tools)
	for tool in tools
		if !tool.start_with?('r') 
			return false
		end
	end
	return true
end

def contain_a(arr)
	new_arr = []
	for i in arr
		if i.include?("a")
			new_arr.push(i)
		end
	end
	new_arr
end

def first_wa(arr)
	for i in arr 
		x = i.to_s
		if x.start_with?("wa")
			return i
		end
	end
end

def remove_non_strings(arr)
	new_arr = []
	arr.each do |item|
		if item.is_a? String
			new_arr.push(item)
		end
	end
	new_arr
end

def count_elements(arr)
	arr.each_with_index do |value, index|
		value[:count] = 1
		other_arr = arr.drop(index+1)
		for e in other_arr
			if e[:name] == value[:name]
				value[:count] += 1
				arr.delete(e)
			end
		end
	end
	arr
end

def find_cool(arr)
	new_arr = []
	arr.each do |item|
		if item[:temperature] == "cool"
			new_arr.push(item)
		end
	end
	new_arr
end

def merge_data(keys, data)
	arr = []
	for i in keys
		data.each do |e|
			e.each do |name, qualities|
				if name == i[:first_name]
					dict = {}
					dict[:first_name] = i[:first_name]
					dict[:motto] = i[:motto]
					dict[:awesomeness] = qualities[:awesomeness]
					dict[:height] = qualities[:height]
					dict[:last_name] = qualities[:last_name]
					arr.push(dict)
				end
			end
		end
	end
	arr
end

def organize_schools(schools)
	dict = {}
	schools.each do |school, place|
		place.each do |k,v|
			if !dict[v]
				dict[v] = [school]
			else
				dict[v].push(school)
			end
		end
	end
	dict
end






	schools = {
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
    }

    organize_schools(schools)

