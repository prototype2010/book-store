require 'rails_helper'

RSpec.describe HomeController, type: :system do
  let(:navbar) { find("#navbar") }

  it 'has correct nav menu' do
    visit home_path

    expect(navbar).to have_content('Home')
    expect(navbar).to have_content('Shop')
    expect(navbar).to have_content('My account')
  end

  it 'hidden menu is shown after click' do
    visit home_path

    navbar.find("li", text: 'Shop').click

    expect(navbar).to have_content('Mobile development')
    expect(navbar).to have_content('Photo')
    expect(navbar).to have_content('Web design')
  end
end