# じゃんけんスタート
puts "じゃんけん..."

# じゃんけんの処理
def janken
puts "0（グー）1（チョキ）2（パー）3（戦わない）"    # どれ（グーチョキパー、やめる）を出すか選択
my_hand = gets.to_i                                  # 自分の手札
rival_hand = rand(3)                                 # 相手の手札

jankens = ["グー","チョキ","パー"]


if my_hand == rival_hand
  puts "あなた：#{jankens[my_hand]},相手：#{jankens[rival_hand]}"
  puts "あいこです。あいこで..."
  return true
elsif my_hand ==3
  puts "じゃんけんを終了します"
  exit
elsif my_hand > 3
  puts "正しい数値を入力してください"
  return true
elsif(my_hand == 0 && rival_hand == 1)||(my_hand == 1 && rival_hand == 2)||(my_hand == 2 && rival_hand == 0)
  puts "ホイ！"
  puts "--------------------------"
  puts "あなた：#{jankens[my_hand]},相手：#{jankens[rival_hand]}"
  puts "--------------------------"
  puts "あなたの勝ちです。あっち向いて..."
  return false
else
  puts "ホイ！"
  puts "--------------------------"
  puts "あなた：#{jankens[my_hand]},相手：#{jankens[rival_hand]}"
  puts "--------------------------"
  puts "あなたの負けです。あっち向いて..."
  return false
end
end # def jankenのend


# あっち向いてホイの処理(自分が勝った場合)
def acchimuite_hoi
  puts "0（上）1（下）2（左）3（右）"
  my_finger = gets.to_i
  rival_face = rand(4)
  
  acchimuite_hoies = ["上","下","左","右"]
  
if my_finger == rival_face
  puts "ホイ！"
  puts "--------------------------"
  puts "あなた；#{acchimuite_hoies[my_finger]},相手：#{acchimuite_hoies[rival_face]}"
  puts "--------------------------"
  puts "あなたの勝ちです。"
  return false
else
  puts "ホイ！"
  puts "--------------------------"
  puts "あなた；#{acchimuite_hoies[my_finger]},相手：#{acchimuite_hoies[rival_face]}"
  puts "--------------------------"
  puts "セーフ。じゃんけん..."
  return true
end
end # accimuite_hoinのend


# あっち向いてホイの処理（自分が負けた場合）
def acchimuite_hoi2
  puts "0（上）1（下）2（左）3（右）"
  my_face = gets.to_i
  rival_finger = rand(4)
  
  acchimuite_hoies2 = ["上","下","左","右"]
  
if my_face == rival_finger
  puts "ホイ！"
  puts "--------------------------"
  puts "あなた；#{acchimuite_hoies2[my_face]},相手：#{acchimuite_hoies2[rival_finger]}"
  puts "--------------------------"
  puts "あなたの負けです。"
  return false
else
  puts "ホイ！"
  puts "--------------------------"
  puts "あなた；#{acchimuite_hoies2[my_face]},相手：#{acchimuite_hoies2[rival_finger]}"
  puts "--------------------------"
  puts "セーフ。じゃんけん..."
  return true
end
end # accimuite_hoi2のend


next_game = true

while next_game
  if next_game = janken
    return true
  else
    break
  end
    
  if next_game = acchimuite_hoi
    return true
  else
    break
  end
  
  if next_game = acchimuite_hoi2
    return true
  else
    break
  end
end


