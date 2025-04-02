require 'rspec'

def foobar(num1, num2)
  if num1 == 20 || num2 == 20
    return num2
  else
    return num1 + num2
  end
end

RSpec.describe '#foobar' do
  it 'returns num2 when num1 is 20' do
    expect(foobar(20, 5)).to eq(5)
  end

  it 'returns num2 when num2 is 20' do
    expect(foobar(5, 20)).to eq(20)
  end

  it 'returns the sum of num1 and num2 when neither is 20' do
    expect(foobar(10, 15)).to eq(25)
    expect(foobar(10, 30)).to eq(40)
  end

  it 'returns the sum of num1 and num2 when both are less than 20' do
    expect(foobar(0, 0)).to eq(0)
    expect(foobar(-10, 10)).to eq(0)
  end
end
