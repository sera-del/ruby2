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
elsif(my_hand == 0 && rival_hand == 1) || (my_hand == 1 && rival_hand == 2) || (my_hand == 2 && rival_hand == 0)
  puts "ホイ！"
  puts "--------------------------"
  puts "あなた：#{jankens[my_hand]},相手：#{jankens[rival_hand]}"
  puts "--------------------------"
  puts "あなたの勝ちです。あっち向いて..."
  @result_jankenA = "win"
  return acchimuite_hoi
else
  puts "ホイ！"
  puts "--------------------------"
  puts "あなた：#{jankens[my_hand]},相手：#{jankens[rival_hand]}"
  puts "--------------------------"
  puts "あなたの負けです。あっち向いて..."
  @result_jankenB = "lose"
  return acchimuite_hoi
end
end # def jankenのend


# あっち向いてホイの処理
def acchimuite_hoi
  puts "0（上）1（下）2（左）3（右）"
  my_finger = gets.to_i
  rival_finger = rand(4)
  
  directions = ["上","下","左","右"]
  
# あなたの勝ちの場合
if @result_jankenA && my_finger == rival_finger
  puts "ホイ！"
  puts "--------------------------"
  puts "あなた；#{directions[my_finger]},相手：#{directions[rival_finger]}"
  puts "--------------------------"
  puts "あなたの勝ちです。"
  return false

# あなたの負けの場合
elsif @result_jankenB && my_finger == rival_finger
  puts "ホイ！"
  puts "--------------------------"
  puts "あなた；#{directions[my_finger]},相手：#{directions[rival_finger]}"
  puts "--------------------------"
  puts "あなたの負けです。"
  return false

# あいこの場合
else
  puts "ホイ！"
  puts "--------------------------"
  puts "あなた；#{directions[my_finger]},相手：#{directions[rival_finger]}"
  puts "--------------------------"
  puts "セーフ。じゃんけん..."
  return janken
end
end # accimuite_hoiのend




next_game = true

while next_game
  next_game = janken
end

