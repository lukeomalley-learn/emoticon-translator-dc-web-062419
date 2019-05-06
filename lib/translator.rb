require "yaml"

def load_library(file_path)
  lib = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(file_path).each do |meaning, emoticons|
    lib["get_meaning"][emoticons[1]] = meaning
    lib["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  lib
end

def get_japanese_emoticon(file, english_emoticon)
  emoticons = load_library(file)
  puts emoticons["get_emoticon"]
  end
  return 'Sorry, that emoticon was not found'
end

def get_english_meaning(file, japanese_emoticon)
  emoticons = load_library(file)
  emoticons.each do |key, value|
    if value.include?(japanese_emoticon)
      return key
    end
  end
  return 'Sorry, that emoticon was not found'
end

puts get_japanese_emoticon('./emoticons.yml', ":)")