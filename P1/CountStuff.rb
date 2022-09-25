# def count_stuff(massive)
#   text = ""
#   word_counter = {}
#   massive.each do |word|
#     if word_counter.include? word
#       word_counter[word] += 1
#     else
#       word_counter[word] = 1
#     end
#   end
#   word_counter.each_pair do |key, value|
#     text += "#{value} #{key}, "
#   end
#   text
# end
#
# arr = ["Стол", "Сапог", "Стол", "Ручка", "Сапог", "Сапог", "Сапог", "Сапог"]
# res = count_stuff(arr)
# puts res

# Счёт предметов
# Функция возвращает ключ, в котором хранится нужная форма слова для переданного количества
def plural_key(n)
  if n % 10 == 1 && n % 100 != 11
    :one
  elsif [2, 3, 4].include?(n % 10) && ![12, 13, 14].include?(n % 100)
    :few
  else
    :many
  end
end

# функция растовляет правильные склонения
def counted_words_sentence(words)
  # Сохраняем в хэш формы слов с ключами из верхней функции
  plurals = {
    Стол: {
      one: 'Стол',
      few: 'Стола',
      many: 'Столов'
    },
    Сапог: {
      one: 'Сапог',
      few: 'Сапога',
      many: 'Сапог'
    },
    Ручка: {
      one: 'Ручка',
      few: 'Ручки',
      many: 'Ручек'
    }
  }
  # tally -- возвращает хэш с уже подсчитанным количеством вхождений каждого элемента
  word_counts = words.tally

  counted_words = []
  word_counts.each_pair do |key, value|
    # Достаём нужную форму слова из хэша, тут будет что-то типа plurals[:Стол][:one]
    plural_value = plurals[key.to_sym][plural_key(value)]
    # << -- ещё один вариант, как можно добавить элемент в конец массива
    counted_words << [value, plural_value].join(' ')
  end

  counted_words.join(', ')
end

str = %w[Стол Сапог Стол Ручка Сапог Сапог Сапог Сапог]
puts str.class
# res = plural_key(str)
# puts res