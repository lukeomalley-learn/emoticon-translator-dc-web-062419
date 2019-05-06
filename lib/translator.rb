require "yaml"

def load_library(file_path)
  return YAML.load_file(file_path)
end

def get_japanese_emoticon(english_emoticon)
  emoticons = load_library('./emoticons.yml')
  emoticons.each do |key, value|
    if value.include?(english_emoticon)
      return value[1]
    end
  end
end

def get_english_meaning(japanese_emoticon)
  emoticons = load_library('./emoticons.yml')
  emoticons.each do |key, value|
    if value.include?(japanese_emoticon)
      return value[0]
    end
  end
end

puts get_english_emoticon((＾ｖ＾)")
"(＾ｖ＾)"