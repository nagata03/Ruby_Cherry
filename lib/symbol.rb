puts "-----（%sでシンボルを作成する）"
p %s!ruby is fun!
p %s(apple)
puts ""


puts "-----（%iでシンボルの配列を作成する）"
name = 'Alice'
# %iでは改行文字や式展開の構文がそのままシンボルになる
p %i(hello\ngood-bye #{name.upcase})
# %Iでは改行文字や式展開が有効になってシンボルが作られる
p %I(hello\ngood-bye #{name.upcase})
puts ""
