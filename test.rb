# require modules here
require 'yaml'
require 'pry'

def load_library(file)
  emote_dict = YAML.load_file(file)
  binding.pry
  
  emote_dict.each_with_object({}) do |(key, array), final|
    final[key] = {
      :english => array[0],
      :japanese => array[1]
    }
  end 
end