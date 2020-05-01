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
    fill_in('date', with: '12')
    fill_in('month', with: '07')
    click_button("submit")
    expect(page).to have_content("Jo\n12\n07")
  end

end