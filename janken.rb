#じゃんけん
puts "じゃんけん..."

def janken
 puts "0(グー)1(チョキ)2(パー)3(戦わない)"

 number_select = gets.to_i

 puts "ホイ！"
 puts "-------------------"

 if number_select == 0
    case_patten = "グー"
 elsif number_select == 1
    case_patten = "チョキ"
 elsif number_select == 2
    case_patten = "パー"
 elsif number_select ==3
    case_patten = "戦わない"
 else
    case_patten = "その他"
 end

 case case_patten
 when "グー" , "チョキ" , "パー"
    puts "あなた：#{case_patten}を出しました"
 when "戦わない"
    puts "ゲームを終了します。"
    exit
 when "その他"
    puts "エラーです。0〜3を入力してください。"
    return true
 end

 number_randam = rand(3)

 if number_randam == 0
    case_patten = "グー"
 elsif number_randam == 1
    case_patten = "チョキ"
 elsif number_randam == 2
    case_patten = "パー"
 elsif number_select ==3
 end

 case case_patten
 when "グー" , "チョキ" , "パー"
    puts "相手：#{case_patten}を出しました"
 end

 puts "-------------------"

 if number_select == number_randam
    puts "あいこで..."
    return true
 elsif (number_select == 0 && number_randam == 1) || (number_select == 1 && number_randam == 2) || (number_select == 2 && number_randam == 0)
    case_patten2 = "プレイヤー勝ち"
 else
    case_patten2 = "プレイヤー負け"
 end
 
 puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    
    number_select = gets.to_i
    
    puts "ホイ！"
    puts "-------------------"

    if number_select == 0
     case_patten3 = "上"
    elsif number_select == 1
     case_patten3 = "下"
    elsif number_select == 2
     case_patten3 = "左"
    elsif number_select == 3
     case_patten3 = "右"
    else
    case_patten3 = "その他"
    end

    case case_patten3
    when "上" , "下" , "左" , "右"
     puts "あなた：#{case_patten3}を出しました"
    when "その他"
     puts "エラーです。０〜３を入力してください。"
    end

 number_randam = rand(3)

 if number_randam == 0
    case_patten3 = "上"
 elsif number_randam == 1
    case_patten3 = "下"
 elsif number_randam == 2
    case_patten3 = "左"
 elsif number_select ==3
    case_patten3 = "右"
 end

 case case_patten3
 when "上" , "下" , "左" , "右"
    puts "相手：#{case_patten3}を出しました"
 end

#あっち向いてホイ
 case case_patten2
 when "プレイヤー勝ち"
    if number_select == number_randam
        puts "あなたの勝ちです！"
    else
        return true
        
    end
 when "プレイヤー負け"
    if number_select == number_randam
        puts "あなたの負けです！"
        puts "-------------------"
    else
        return true
        
    end
 end
end

next_game = true

while next_game do
    next_game = janken
end