require "capybara/rspec"
require_relative "../../app"

feature "User inputs data" do
  scenario "page loads successfully" do
    visit("/")
    expect(page.status_code).to eq(200)
  end

  scenario "user can input" do
    visit("/")
    expect(page).to have_field('name')
  end
end
