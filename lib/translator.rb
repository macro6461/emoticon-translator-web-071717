# require modules here
require "yaml"

def load_library(file_path)
  # code goes here
  library_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(file_path).each do |meaning, emoticons|
    english, japanese = emoticons

    library_hash["get_meaning"][japanese] = meaning
    library_hash["get_emoticon"][english] = japanese
  end
  library_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  library_hash = load_library(file_path)
  japanese = library_hash["get_emoticon"][emoticon]
  if japanese
    japanese
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  american = library["get_meaning"][emoticon]
  if american
    american
  else
    "Sorry, that emoticon was not found"
  end
end
