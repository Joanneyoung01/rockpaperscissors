require "capybara/rspec"
require_relative "../../app"

feature "load the infrastructure" do
  scenario "page loads successfully" do
    visit("/")
    expect(page.status_code).to eq(200)
  end

  scenario "page loads infrascture message" do
      visit("/")
      expect(page).to have_content("testing infrastructure")
  end

end