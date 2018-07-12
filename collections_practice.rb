
def begins_with_r(words)
  checker = true
  words.each do |word|
    if word[0] != "r"
      checker = false
    end
  end
  checker
end

def contain_a(words)
  words_with_a = []
  words.each do |word|
    if word.include? "a"
      words_with_a << word
    end
  end
  words_with_a
end

def first_wa(words)
  words.each do |word|
    if word[0] == "w" && word[1] == "a"
      return word
    end
  end
end

def remove_non_strings(arr)
  arr.delete_if{|element| !element.kind_of?(String)}
  return arr
end

def find_cool(cool_data)
  found_cool_arr = []
  cool_data.each do |element|
    if element[:temperature] == "cool"
      found_cool_arr << element 
    end
  end
  found_cool_arr
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end
  return array.uniq
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def organize_schools(schools)
end

