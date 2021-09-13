FactoryBot.define do
  factory :user do
    name {"太郎"}
    email {"ttt@com"}
    password = "12345a"
    password {password}
    password_confirmation {password}
  end
end
