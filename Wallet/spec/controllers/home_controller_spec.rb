require 'rails_helper'

RSpec.describe HomeController, type: :controller do
#success
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  # fail

	describe "GET #foolaroo" do
		it "returns http failure" do
			get :follaroo
			expect(response).to have_http_status(:failure)
		end
	end



	describe "GET #contact" do
		it "returns text" do
			get :contact
			expect(response.body).to include(“Holla!!!!”)
		end
	end

# success

	describe "GET #contact"
	it "returns failure" do
		get :contact
		expect(response).to have_http_status(:success)
	end
end

end
