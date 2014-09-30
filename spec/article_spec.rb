require 'rspec'
require_relative '../lib/vending_machine'

describe 'handla' do


  before do
    @Choklad = 10
    @Festis = 8
    @placeholder = 'Choklad'
  end

  it 'should take a number and price as argument'  do
    expect { handla() }.to raise_error ArgumentError
    expect { handla(1) }.to raise_error ArgumentError
    expect { handla(vara:1,kronor:5) }.not_to raise_error
  end

  it 'should give you Choklad' do
    expect(handla(vara:1,kronor:10)).to match "Choklad"
    expect(handla(vara:1,kronor:11)).to match "Choklad Tack,Tack"

  end

  it 'should give you Festis' do
    expect(handla(vara:2,kronor:8)).to match "Festis"
    expect(handla(vara:2,kronor:9)).to match "Festis Tack,Tack"
  end


  it 'should cancel if not enough money ' do

    expect(handla(vara:1,kronor:9)).to match "Tyvörr för lite pengar"
    expect(handla(vara:2,kronor:7)).to match "Tyvörr för lite pengar"
  end

end