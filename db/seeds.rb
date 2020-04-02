require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'rate.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Post.new

  t.email = row['Email']
  #puts "#{row['Email']} and #{row['name']}"
  t.name = row['name']
  t.room = row['Room']
  t.rating = row['Rating']
  t.desc = row['Desc']
  t.save
  puts "#{t.name}, #{t.room} saved"
end

puts "There are now #{Post.count} rows in the transactions table"
