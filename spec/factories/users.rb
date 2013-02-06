# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    uid 1
    name "Yoshiori SHOJI"
    nickname "yoshiori"
    image "https://secure.gravatar.com/avatar/17eb0c1a9d70a94ce95401d046375e3c?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png"

    after(:create) do |user|
       FactoryGirl.create(:task, user: user)
       FactoryGirl.create(:active_task, user: user)
       FactoryGirl.create(:finished_task, user: user)
    end
  end
end
