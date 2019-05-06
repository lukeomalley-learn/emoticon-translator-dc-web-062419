require "yaml"

def load_library(file_path)
  return YAML.load_file(file_path)
end

def get_japanese_emoticon(file, english_emoticon)
  emoticons = load_library(file)
  emoticons.each do |key, value|
    if value.include?(english_emoticon)
      return value[1]
    end
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