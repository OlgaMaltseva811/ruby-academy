require 'rspec'
require_relative 'greeting' # Подключаем файл с функцией greeting

RSpec.describe 'greeting' do
  it 'greets a user under 18' do
    allow(STDIN).to receive(:gets).and_return("Иван\n", "Иванов\n", "17\n")
    expect { greeting }.to output(
      "Введите ваше имя:\n" \
      "Введите вашу фамилию:\n" \
      "Введите ваш возраст:\n" \
      "Привет, Иван Иванов. Тебе меньше 18 лет, но начать учиться программировать никогда не рано.\n"
    ).to_stdout
  end

  it 'greets a user 18 or older' do
    allow(STDIN).to receive(:gets).and_return("Мария\n", "Петрова\n", "18\n")
    expect { greeting }.to output(
      "Введите ваше имя:\n" \
      "Введите вашу фамилию:\n" \
      "Введите ваш возраст:\n" \
      "Привет, Мария Петрова. Самое время заняться делом!\n"
    ).to_stdout
  end
end