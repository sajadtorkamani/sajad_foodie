require 'thor'
require 'sajad_foodie'
require 'sajad_foodie/generators/recipe'

module SajadFoodie
  class CLI < Thor
    desc 'portray ITEM', 'Determines if a piece of food is gross, delicious, or meh'
    def portray(name)
      puts SajadFoodie::Food.portray(name)
    end

    desc 'pluralize', 'Pluralizes a word'
    method_option :word, aliases: '-w'
    def pluralize
      puts SajadFoodie::Food.pluralize(options[:word])
    end

    desc 'recipe', 'Generates a recipe scaffold'
    def recipe(group, name)
      SajadFoodie::Generators::Recipe.start([group, name])
    end
  end
end
