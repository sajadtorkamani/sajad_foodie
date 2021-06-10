require 'thor'
require 'sajad_foodie'

module SajadFoodie
  class CLI < Thor
    desc 'portray ITEM', 'Determines if a piece of food is gross or delicious'
    def portray(name)
      puts SajadFoodie::Food.portray(name)
    end

    desc 'pluralize', 'Pluralizes a word'
    method_option :word, aliases: '-w'
    def pluralize
      puts SajadFoodie::Food.pluralize(options[:word])
    end
  end
end