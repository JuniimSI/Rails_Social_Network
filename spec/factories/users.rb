FactoryBot.define do
    factory :user do
        name { "Junior" }
        email { "jrfernandes@email.com" } 
        phone { "9988888888" }
        avatar { Rack::Test::UploadedFile.new(Rails.root.join("spec", "support", "test-avatar.png"), "image/png") }
        password { "123456" }
    end
end