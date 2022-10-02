require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

if memo_type == 1
 puts "拡張子を除いたファイルを入力してください"
 file_name = gets.to_s
 puts "メモしたい内容を記入してください"
 puts "完了したらCtrl + Dをおします"
 file1 = File.open("#{file_name}.csv", "w") do |csv|
 file_content = gets.to_s
 csv << file_content
 end
elsif memo_type == 2
 puts "編集したいfile名を入力してください、存在しない場合は新規で作成されます。"
 file_name2 = gets.to_s
 file2 = File.open("#{file_name2}.csv", "a") do |csv|
 file_content2 = gets.to_s
 csv << file_content2
 end
else
 puts "1か2を入力してください"
end