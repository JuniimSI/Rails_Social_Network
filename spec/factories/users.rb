FactoryBot.define do
    factory :user do
        name { "Junior" }
        email { "user#{rand(1..1000)}@email.com" } 
        phone { "9988888888" }
        avatar { Rack::Test::UploadedFile.new(Rails.root.join("spec", "support", "test-avatar.png"), "image/png") }
        password { "123456" }
    end
end