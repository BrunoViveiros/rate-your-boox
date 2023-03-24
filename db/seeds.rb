# frozen_string_literal: true

FactoryBot.create(:user, email: 'test@test.com', password: '123456')

10.times do
  author = FactoryBot.create(:author)
  FactoryBot.create_list(:book, 10, author:)
end

FactoryBot.create_list(:user, 10)

10.times do
  FactoryBot.create_list(:comment, 10, :for_book, commentable: Book.all.sample, user: User.all.sample)
  FactoryBot.create_list(:comment, 10, :for_author, commentable: Author.all.sample, user: User.all.sample)
  FactoryBot.create_list(:comment, 10, :for_user, commentable: User.all.sample, user: User.all.sample)
end
