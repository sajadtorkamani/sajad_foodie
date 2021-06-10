require 'active_support/inflector'

module SajadFoodie
  class Food
    def self.portray(food)
      case food.downcase
      when 'broccoli'
        'Gross!'
      when 'apple'
        'Meh.'
      else
        'Delicious!'
      end
    end

    def self.pluralize(word)
      word.pluralize
    end
  end
end