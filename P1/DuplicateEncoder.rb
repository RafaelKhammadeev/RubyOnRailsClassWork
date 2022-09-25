# # def duplicate encoder = если есть одинаковые элементы, то ставим ')', иначе '('
# # додумать эту фигню
# def duplicate_encoder(text)
#   all_symbol = text.downcase.chars
#   size_all_symbol = all_symbol.size
#   new_text = ''
#   (0..size_all_symbol - 2).each do |_|
#     symbol = all_symbol.shift
#     if all_symbol.include? symbol
#       new_text += ')'
#     else
#       new_text += '('
#     end
#   end
#
#   text = text.chomp(all_symbol[0])
#   if text.include? all_symbol[0]
#     new_text += ')'
#   else
#     new_text += '('
#   end
#
#   new_text
# end
#
# str = ""
# res = duplicate_encoder(str)
# puts res


# Duplicate Encoder
def duplicate_encode(word)
  downcast_word = word.downcase # без восклицательного знака, чтобы не поменять значение у оригинала
  downcast_word
    .chars # получаем массив символов "abc" => ["a", "b", "c"]
    .map { |char| downcast_word.count(char) > 1 ? ')' : '(' } # пробегаемся по массиву и, если этот символ встречается в строке больше одного раза, заменяем на ")", иначе на "("
    .join # про тернарный оператор можете посмотреть здесь: https://ruby-doc.org/core-3.0.1/doc/syntax/control_expressions_rdoc.html#label-Ternary+if
  # соединяем получившийся массив обратно в строку
end

