class Api::ExamplePagesController < ApplicationController

  def fortune_method
    fortunes = ["The early bird gets the worm, but the second mouse gets the cheese.", "Your road to glory will be rocky, but fulfilling.", "Courage is not simply one of the virtues, but the form of every virtue at the testing point.", "Patience is your alley at the moment. Don’t worry!", " Nothing is impossible to a willing heart.", "Don’t worry about money. The best things in life are free.", "Don’t pursue happiness – create it."]

    @your_fortune = fortunes.shuffle.first
    render "fortune.json.jbuilder"
  end

  def lotto_method
    lotto_numbers = []
    6.times do
      input_number = rand(60)
      lotto_numbers << input_number
    end
    @your_number = lotto_numbers
    render "lotto.json.jbuilder"
  end

  def ninety_nine_bottles_method
    beer = []
    index = 99
    99.times do
      beer << "#{index} bottles of beer on the wall, #{index} bottles of beer. You take one down, pass it around, #{index - 1} bottles of beer on the wall!"
      index -= 1
    end
    @ninety_nine_bottles = beer
    render "99_bottles.json.jbuilder"
  end
end