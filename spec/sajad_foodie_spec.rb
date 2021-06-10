require 'sajad_foodie'

describe SajadFoodie::Food do
  it "broccoli is gross" do
    expect(SajadFoodie::Food.portray("Broccoli")).to eql("Gross!")
  end

  it "anything else is delicious" do
    expect(SajadFoodie::Food.portray("Not Broccoli")).to eql("Delicious!")
  end

  it 'pluralizes a word' do
    expect(SajadFoodie::Food.pluralize('Tomato')).to eql 'Tomatoes'
  end
end