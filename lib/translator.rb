require "yaml"

def load_library(file_path)
  return YAML.load_file(file_path)
end

def get_japanese_emoticon(english_emoticon)
  load_library('./emoticons.yml')
  
end

def get_english_meaning
  # code goes here
end