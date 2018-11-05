FactoryBot.define do
  factory :task do
    name { 'テストを書く' }
    description { 'RSpec&Capybara&FactoryBotを準備する' }
    user
    # リレーションの名前とfactoryの名前が違うときは
    # association :user, factory: :admin_user のようになる
  end
end
