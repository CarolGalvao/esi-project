FactoryBot.define do
  factory :teacher do
    name { 'MyString' }
    email { 'MyString@MyString.com' }
    password { 'MyString' }
    provider { 'email' }
  end
end
