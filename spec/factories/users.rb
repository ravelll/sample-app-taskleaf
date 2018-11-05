FactoryBot.define do
  # ファクトリ名とクラス名が違うときは
  # factory :admin_user, class: User do のようにする
  factory :user do
    name { 'テストユーザー' }
    email { 'test1@example.com' }
    password { 'password' }
  end
end
