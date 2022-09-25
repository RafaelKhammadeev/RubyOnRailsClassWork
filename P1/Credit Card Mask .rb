# # def hide - шифрует все символы кроме последних четырех
# def hide(text)
#   text = text.to_s
#   text_len = text.length
#   if text_len > 4
#     hide_size = text_len - 4
#     hide_symbol = '#' * hide_size
#     return hide_symbol + text.slice(-4, 4)
#   end
#   text
# end
#
# str = 'Nananananananananananananananana Batman!'
# res = hide(str)
# puts res

# Credit Card Mask
# gsub заменяет все вхождения переданного паттерна (регулярка или строка) (можете почитать тут: https://apidock.com/ruby/String/gsub);
# Как говорил на паре, регулярки пишутся внутри слешей ("/");
# /.(?=.{4})/ -- означает, что нас интересуют первые n-4 символов у строки размером больше 4 (можете проверить на сайте https://rubular.com/), которые мы заменяем на знак "#".
def maskify(cc)
  cc.gsub(/.(?=.{4})/, "#")
end

