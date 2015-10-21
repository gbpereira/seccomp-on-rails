require 'rails_helper'

RSpec.describe Movie, type: :model do
  let(:movie) { FactoryGirl.build(:movie) }

  it 'valid' do
    # movie = FactoryGirl.build(:movie)
    expect(movie).to be_valid
  end

  context 'validations' do
    context 'name' do
      it 'presence' do
        movie.name = nil
        movie.valid?
        expect(movie.errors[:name].any?).to be_truthy
      end

      it 'unique' do
        dup = movie.dup
        dup.save
        movie.valid?
        expect(movie.errors[:name].any?).to be_truthy
      end
    end

    context 'year' do
      it 'numericality' do
        movie.year = 'a'
        movie.valid?
        expect(movie.errors[:year].any?).to be_truthy
      end

      it 'greater_than' do
        movie.year = 1895
        movie.valid?
        expect(movie.errors[:year].any?).to be_truthy
      end
    end
  end
end
