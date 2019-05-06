require "yaml"

def load_library(file_path)
  return YAML.load_file(file_path)
end

def get_japanese_emoticon(english_emoticon)
  emoticons = load_library('./emoticons.yml')
  emoticons.each do |key, value|
    puts key
  end
end

def get_english_meaning
  # code goes here
end

get_japanese_emoticon(:))