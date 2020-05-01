require "capybara/rspec"
require_relative "../../app"

feature "User inputs data" do
  scenario "page loads successfully" do
    visit("/")
    expect(page.status_code).to eq(200)
  end

  scenario "the page has a date field" do
    visit("/")
    expect(page).to have_field('date')
  end

  scenario "the page has a month field" do
    visit("/")
    expect(page).to have_field('month')
  end

  scenario "the page has a submit button" do
    visit("/")
    expect(page).to have_button('submit')
  end
end