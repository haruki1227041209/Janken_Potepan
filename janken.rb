hand_player ="0"
hand_computer ="1"

while hand_player != hand_computer do
  puts "じゃんけん・・・ \n0(グー)1(チョキ)2(パー)3(戦わない)"
  janken_player = gets.to_i #プレイヤーが出した手
  janken_player == 3 ? break : janken_player = janken_player #戦わない場合
  puts "ホイ！ \n------------------------------"

  janken_array = [0,1,2,]
  janken_computer = janken_array[rand(3)] #コンピュータが出した手


  if janken_player == 0
    hand_player = "グー"
  elsif janken_player == 1
    hand_player = "チョキ"
  elsif janken_player == 2
    hand_player = "パー"
  end

  if janken_computer == 0
    hand_computer = "グー"
  elsif janken_computer == 1
    hand_computer = "チョキ"
  elsif janken_computer == 2
    hand_computer = "パー"
  end

  puts "あなた：#{hand_player}を出しました \n相手：#{hand_computer}を出しました \n------------------------------"

  while janken_player == janken_computer do
    puts "あいこで・・・ \n0(グー)1(チョキ)2(パー)3(戦わない)"
    janken_player = gets.to_i
    janken_player == 3 ? break : janken_player = janken_player
    puts "ショ! \n------------------------------"
    janken_computer = janken_array[rand(3)]

    if janken_player == 0
      hand_player = "グー"
    elsif janken_player == 1
      hand_player = "チョキ"
    elsif janken_player == 2
      hand_player = "パー"
    end
    
    if janken_computer == 0
      hand_computer = "グー"
    elsif janken_computer == 1
      hand_computer = "チョキ"
    elsif janken_computer == 2
      hand_computer = "パー"
    end
    puts "あなた：#{hand_player}を出しました \n相手：#{hand_computer}を出しました \n------------------------------"

  end

  janken_player == 3 ? break : janken_player = janken_player #あいこで３を選んだ場合

  puts "あっち向いて〜 \n0(上)1(下)2(左)3(右)"
  attimuite_player = gets.to_i
  puts "ホイ！ \n------------------------------"

  attimuite_array = [0,1,2,3]
  attimuite_computer = attimuite_array[rand(4)] #コンピュータが出した手

  if attimuite_player == 0
    hand_player = "上"
  elsif attimuite_player == 1
    hand_player = "下"
  elsif attimuite_player == 2
    hand_player = "左"
  elsif attimuite_player == 3
    hand_player = "右"
  end

  if attimuite_computer == 0
    hand_computer = "上"
  elsif attimuite_computer == 1
    hand_computer = "下"
  elsif attimuite_computer == 2
    hand_computer = "左"
  elsif attimuite_computer == 3
    hand_computer = "右"
  end

  puts "あなた：#{hand_player} \n相手：#{hand_computer} \n------------------------------"
end

if janken_player == 0 && janken_computer == 1
  puts "YOU WIN！！！ \n------------------------------"
elsif janken_player == 0 && janken_computer == 2
  puts "YOU LOSE・・・ \n------------------------------"
elsif janken_player == 1 && janken_computer == 2
  puts "YOU WIN！！！ \n------------------------------"
elsif janken_player == 1 && janken_computer == 0
  puts "YOU LOSE・・・ \n------------------------------"
elsif janken_player == 2 && janken_computer == 0
  puts "YOU WIN！！！ \n------------------------------"
elsif janken_player == 2 && janken_computer == 1
  puts "YOU LOSE・・・ \n------------------------------"
end