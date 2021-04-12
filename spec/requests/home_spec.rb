require 'rails_helper'

RSpec.describe 'Home', type: :request do
  before do
    get root_path
  end

  it 'page responce successful' do
    expect(response).to be_successful
  end

  it 'correct template rendered' do
    expect(response).to render_template(:index)
  end
end
