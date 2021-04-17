require 'rails_helper'

RSpec.describe 'Home Page', type: :feature do
  let(:home_page) { HomesPage.new }
  let(:navbar) { home_page.navbar }
  let(:footer) { home_page.footer }

  before { home_page.load }

  it 'has correct nav menu' do
    expect(navbar).to have_content(I18n.t('generic.home'))
    expect(navbar).to have_content(I18n.t('generic.shop'))
    expect(navbar).to have_content(I18n.t('nav.my_account'))
  end

  it 'hidden menu is shown after click' do
    home_page.navbar.click

    expect(navbar).to have_content(I18n.t('nav.mobile_development'))
    expect(navbar).to have_content(I18n.t('nav.photo'))
    expect(navbar).to have_content(I18n.t('nav.web_design'))
  end

  it 'footer contains lints' do
    home_page.footer.click

    expect(footer).to have_content(I18n.t('generic.shop'))
    expect(footer).to have_content(I18n.t('generic.home'))
    expect(footer).to have_content(I18n.t('footer.orders'))
    expect(footer).to have_content(I18n.t('footer.settings'))
  end
end
