categories = ['Mobile','Photo','Web design', 'Web development']
  .map { |category| Category.create(name: category) }

categories.each do |category|
  50.times do
    FactoryBot.create(:book, category: category)
  end
end
