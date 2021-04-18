class HomesPage < SitePrism::Page
  set_url '/home'

  element :navbar, '#navbar'
  element :footer, 'footer'
end
