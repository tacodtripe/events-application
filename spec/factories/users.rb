FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "user#{n}@example.com"
    end
    sequence :username do |n|
      "username#{n}"
    end
    password { 'password' }
  end
end
