# def shortest_word(text)
#   text_words = text.split(' ')
#   text_words.min { |a, b| a.length <=> b.length }.length
# end
#
# # <=> штука для сравнения, прикольная
#
# str = 'bitcoin take over the world maybe who knows perhaps'
# res = shortest_word(str)
# puts res

# Shortest Word
# split -- режет строку по знаку пробела и возвращает массив
# map(&:size) -- проходимся по массиву и заменяем строки на их длину
# Как говорил на паре, это сокращённая запись для map { |string| string.size }
# min -- возвращает минимальный элемент массива
def find_short(s)
  s.split.map(&:size).min
end

