require "capybara/rspec"
require_relative "../../app"

feature "User inputs data" do
  scenario "page loads successfully" do
    visit("/")
    expect(page.status_code).to eq(200)
  end

  scenario "User can input into the fields" do
    visit("/")
    fill_in('name', with: 'Jo')
    click_button("submit")
    expect(page).to have_content("Your name is Jo")
  end

end
