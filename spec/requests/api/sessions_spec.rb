require "swagger_helper"

RSpec.describe "api/sessions", type: :request do
  path "/api/users/login" do
    post "login" do
      tags "User"
      consumes "application/json"
      produces "application/json"
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          email: {type: :string},
          password: {type: :string}
        }
      }
      response "200", "session" do
        let(:user_instance) { User.create(password: "password", email: "thebestemail3@gmail.com") }
        let(:user) { {user: {email: user_instance.email, password: "password"}} }

        run_test!
      end
    end
  end
end
