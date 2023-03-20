require "swagger_helper"

RSpec.describe "api/user", type: :request do
  path "/api/user" do
    let(:user_instance) { User.create(email: "thebestemail2@gmail.com", password: "123456") }

    get "User show" do
      tags "User"
      consumes "application/json"
      produces "application/json"
      security [Token: []]
      response "200", "user" do
        let(:Authorization) { "Token #{user_instance.generate_jwt}" }
        run_test!
      end

      response "401", "unauthorized" do
        let(:Authorization) { "Token" }
        run_test!
      end
    end

    patch "User update" do
      tags "User"
      consumes "application/json"
      produces "application/json"
      security [Token: []]
      parameter name: :user, in: :body,
        schema: {
          type: "object",
          properties: {
            name: {type: "string", optional: true},
            email: {type: "string", optional: true},
            image: {type: "string", optional: true}
          }
        },
        required: true
      let(:user) { {user: {name: "elchoro"}} }
      response "200", "user" do
        let(:Authorization) { "Token #{user_instance.generate_jwt}" }

        run_test!
      end

      response "401", "unauthorized" do
        let(:Authorization) { "Token" }
        run_test!
      end
    end
  end
end
