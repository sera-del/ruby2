# じゃんけんスタート
puts "じゃんけん..."

def janken
puts "0（グー）1（チョキ）2（パー）3（戦わない）"# どれ（グーチョキパー、やめる）を出すか選択
my_hand = gets.to_i                # 自分の手札

array = ["グー","チョキ","パー"]   # 相手の手札の設定（ランダムで出すためにグーチョキパーを引数に入れた）
1.times do                         # 1回だけdo~endまでの処理を行う
  rival_hand = array[rand(3)]      # グーチョキパーをランダムで1回出す


# パターンの定義
case_pattern = ""                  # case文で比較するオブジェクトの変数を用意

# 相手の手札別のパターンの定義
if rival_hand == array[0]          # 相手グー
  case_pattern = "パターンA"
elsif rival_hand == array[1]       # 相手チョキ
  case_pattern = "パターンB"
else                               # 相手パー
  case_pattern = "パターンC"
end

# 0（グー）1（チョキ）2（パー）3（戦わない）の選択で条件分岐
if my_hand == 0
  puts "ホイ！"
  puts "-----------------------"
  puts "あなた：グー"
  puts "対戦相手：#{rival_hand}"
  puts "-----------------------"

case case_pattern
when "パターンA"
  puts "あいこです。"
  puts "あいこで..."
  janken
when "パターンB"
  puts "あなたの勝ちです。あっち向いて..."
  you_win
when "パターンC"
  puts "あなたの負けです。あっち向いて..."
  you_lose
end
end

if my_hand == 1
  puts "ホイ！"
  puts "-----------------------"
  puts "あなた：チョキ"
  puts "対戦相手：#{rival_hand}"
  puts "-----------------------"

case case_pattern
when "パターンA"
  puts "あなたの負けです。あっち向いて..."
  you_lose
when "パターンB"
  puts "あいこです。"
  puts "あいこで..."
  janken
when "パターンC"
  puts "あなたの勝ちです。あっち向いて..."
  you_win
end
end

if my_hand == 2
  puts "ホイ！"
  puts "-----------------------"
  puts "あなた：パー"
  puts "対戦相手：#{rival_hand}"
  puts "-----------------------"

case case_pattern
when "パターンA"
  puts "あなたの勝ちです。あっち向いて..."
  you_win
when "パターンB"
  puts "あなたの負けです。あっち向いて..."
when "パターンC"
  puts "あいこです。"
  puts "あいこで..."
  janken
end
end
end # 1.times doのend

# 戦わない場合
if my_hand == 3
  puts "じゃんけんを終了します"
  exit
elsif my_hand > 3
  puts "正しい数値数値を入力してください"
  janken
end
end # def jankenのend


# あなたが勝った場合
def you_win
  puts "0（上）1（下）2（左）3（右）"
  my_finger = gets.to_i
  
  array2 = ["上","下","左","右"]
  1.times do
    rival_face = array2[rand(4)]

# パターンの定義
case_pattern2 = ""                    # case文で比較するオブジェクトの変数を用意

# 相手の顔方向のパターンの定義
if rival_face == array2[0]              # 相手が上を選択
  case_pattern2 = "パターンA"
elsif rival_face == array2[1]           # 相手が下を選択
  case_pattern2 = "パターンB"
elsif rival_face == array2[2]           # 相手が左を選択
  case_pattern2 = "パターンC"
else                                  # 相手が右を選択
  case_pattern2 = "パターンD"
end

# 0（上）1（下）2（左）3（右）の選択で条件分岐
if my_finger == 0
  puts "ホイ！"
  puts "-------------------"
  puts "あなた：上"
  puts "対戦相手：#{rival_face}"
  puts "-------------------"

case case_pattern2
when "パターンA"
  puts "あなたの勝ちです"
  exit
when "パターンB"
  puts "セーフ。じゃんけん..."
  janken                                
when "パターンC"
  puts "セーフ。じゃんけん..."
  janken
when "パターンD"
  puts "セーフ。じゃんけん..."
  janken
end
end

if my_finger == 1
  puts "ホイ！"
  puts "-------------------"
  puts "あなた：下"
  puts "対戦相手：#{rival_face}"
  puts "-------------------"

case case_pattern2
when "パターンA"
  puts "セーフ。じゃんけん..."
  janken
when "パターンB"
  puts "あなたの勝ちです"
  exit
when "パターンC"
  puts "セーフ。じゃんけん..."
  janken
when "パターンD"
  puts "セーフ。じゃんけん..."
  janken
end
end

if my_finger == 2
  puts "ホイ！"
  puts "-------------------"
  puts "あなた：左"
  puts "対戦相手：#{rival_face}"
  puts "-------------------"

case case_pattern2
when "パターンA"
  puts "セーフ。じゃんけん..."
  janken
when "パターンB"
  puts "セーフ。じゃんけん..."
  janken
when "パターンC"
  puts "あなたの勝ちです"
  exit
when "パターンD"
  puts "セーフ。じゃんけん..."
  janken
end
end

if my_finger == 3
  puts "ホイ！"
  puts "-------------------"
  puts "あなた：右"
  puts "対戦相手：#{rival_face}"
  puts "-------------------"

case case_pattern2
when "パターンA"
  puts "セーフ。じゃんけん..."
  janken
when "パターンB"
  puts "セーフ。じゃんけん..."
  janken
when "パターンC"
  puts "セーフ。じゃんけん..."
  janken
when "パターンD"
  puts "あなたの勝ちです"
  exit
end
end
  
end # 1.times doのend
end # def you_winのend


# 自分が負けた場合
def you_lose
  puts "0（上）1（下）2（左）3（右）"
  my_face = gets.to_i
  
  array3 = ["上","下","左","右"]
  1.times do
    rival_finger = array3[rand(4)]

# パターンの定義
case_pattern3 = ""                    # case文で比較するオブジェクトの変数を用意

# 相手の顔方向のパターンの定義
if rival_finger == array3[0]              # 相手が上を選択
  case_pattern3 = "パターンA"
elsif rival_finger == array3[1]           # 相手が下を選択
  case_pattern3 = "パターンB"
elsif rival_finger == array3[2]           # 相手が左を選択
  case_pattern3 = "パターンC"
else                                  # 相手が右を選択
  case_pattern3 = "パターンD"
end

# 0（上）1（下）2（左）3（右）の選択で条件分岐
if my_face == 0
  puts "ホイ！"
  puts "-------------------"
  puts "あなた：上"
  puts "対戦相手：#{rival_finger}"
  puts "-------------------"

case case_pattern3
when "パターンA"
  puts "あなたの負けです"
  exit
when "パターンB"
  puts "セーフ。じゃんけん..."
  janken
when "パターンC"
  puts "セーフ。じゃんけん..."
  janken
when "パターンD"
  puts "セーフ。じゃんけん..."
  janken
end
end

if my_face == 1
  puts "ホイ！"
  puts "-------------------"
  puts "あなた：下"
  puts "対戦相手：#{rival_finger}"
  puts "-------------------"

case case_pattern3
when "パターンA"
  puts "セーフ。じゃんけん..."
  janken
when "パターンB"
  puts "あなたの負けです"
  exit
when "パターンC"
  puts "セーフ。じゃんけん..."
  janken
when "パターンD"
  puts "セーフ。じゃんけん..."
  janken
end
end

if my_face == 2
  puts "ホイ！"
  puts "-------------------"
  puts "あなた：左"
  puts "対戦相手：#{rival_finger}"
  puts "-------------------"

case case_pattern3
when "パターンA"
  puts "セーフ。じゃんけん..."
  janken
when "パターンB"
  puts "セーフ。じゃんけん..."
  janken
when "パターンC"
  puts "あなたの負けです"
  exit
when "パターンD"
  puts "セーフ。じゃんけん..."
  janken
end
end

if my_face == 3
  puts "ホイ！"
  puts "-------------------"
  puts "あなた：右"
  puts "対戦相手：#{rival_finger}"
  puts "-------------------"

case case_pattern3
when "パターンA"
  puts "セーフ。じゃんけん..."
  janken
when "パターンB"
  puts "セーフ。じゃんけん..."
  janken
when "パターンC"
  puts "セーフ。じゃんけん..."
  janken
when "パターンD"
  puts "あなたの負けです"
  exit
end
end

end # 1.times doのend
end # def you_winのend


janken() #jankenメソッドを呼ぶ
you_win() # you_winメソッドを呼ぶ
you_lose() # you_winメソッドを呼ぶ
