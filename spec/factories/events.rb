FactoryBot.define do
  factory :event do
    start { DateTime.now.to_s }
    title { 'event title' }
    user
  end
end
