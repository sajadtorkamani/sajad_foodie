module SajadFoodie
  class Food
    def self.portray(food)
      if food.downcase === 'broccoli'
        'Gross!'
      else
        'Delicious!'
      end
    end
  end
end