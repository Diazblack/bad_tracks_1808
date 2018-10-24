FactoryBot.define do
  factory :artist do
    sequence(:name) {|n| "Elwe Von Esse #{n}"}
  end
end
