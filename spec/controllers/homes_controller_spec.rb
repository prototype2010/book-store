require 'rails_helper'

RSpec.describe HomesController, type: :controller do
  describe '#index' do
    before { get :index }

    it 'page responce successful' do
      expect(response).to be_successful
    end

    it 'correct template rendered' do
      expect(response).to render_template(:index)
    end
  end
end
