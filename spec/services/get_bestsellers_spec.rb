require 'rails_helper'

describe GetBestsellers, :vcr => true do
  it "returns a 200 success header when the API call is made" do
    response = GetBestsellers.get_bestseller_list
    expect(response["status"]).to(eq("OK"))
  end

  it "returns books when the API call is made" do
    response = GetBestsellers.get_bestseller_list
    expect(response["results"]["books"]).to_not(eq(nil))
  end
end