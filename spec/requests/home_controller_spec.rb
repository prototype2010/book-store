require 'rails_helper'

RSpec.describe HomeController, type: :request do
  before do
    get :index
  end

  it 'page responce successful' do
    expect(response).to be_successful
  end

  it 'page responce successful' do
    expect(response).to render_template(:index)
  end
end

