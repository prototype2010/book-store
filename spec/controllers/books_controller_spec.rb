require 'rails_helper'

RSpec.describe 'Books', type: :request do
  describe '#index' do
    before { get books_path }

    it 'books responce successful' do
      expect(response).to be_successful
    end

    it 'correct template rendered' do
      expect(response).to render_template(:index)
    end
  end

  describe '#show' do
    let(:book) { FactoryBot.create(:book) }

    before { get book_path(book) }

    it 'books responce successful' do
      expect(response).to be_successful
    end

    it 'correct template rendered' do
      expect(response).to render_template(:show)
    end
  end
end
