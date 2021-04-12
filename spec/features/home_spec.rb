require 'rails_helper'

RSpec.describe 'Home Page', type: :feature do
  let(:home_page) { HomePage.new }
  let(:navbar) { home_page.navbar }

  before { home_page.load }

  it 'has correct nav menu' do
    expect(navbar).to have_content('Home')
    expect(navbar).to have_content('Shop')
    expect(navbar).to have_content('My account')
  end

  it 'hidden menu is shown after click' do
    home_page.navbar.click

    expect(navbar).to have_content('Mobile development')
    expect(navbar).to have_content('Photo')
    expect(navbar).to have_content('Web design')
  end
end
