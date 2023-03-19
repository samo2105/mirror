require "swagger_helper"

RSpec.describe "api/user", type: :request do
  path "/api/user" do
    let(:user) { create(:user) }
    let(:Authorization) { "Token #{user.generate_jwt}" }

    get "User show" do
      tags "User"
      consumes "application/json"
      produces "application/json"
      security [Token: []]
      response "200", "user" do
        run_test!
      end

      response "401", "unauthorized" do
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
      response "200", "user" do
        run_test!
      end

      response "401", "unauthorized" do
        run_test!
      end
    end
  end
end
