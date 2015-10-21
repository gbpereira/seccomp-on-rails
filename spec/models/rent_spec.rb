require 'rails_helper'

RSpec.describe Rent, type: :model do
  let(:rent) { FactoryGirl.build(:rent) }

  context 'validations' do
    context 'movie' do
      it 'presence' do
        rent.movie = nil
        rent.valid?
        expect(rent.errors[:movie].any?).to be_truthy
      end
    end

    context 'status' do
      it 'presence' do
        rent.status = nil
        rent.valid?
        expect(rent.errors[:status].any?).to be_truthy
      end
    end

    context 'rent_at' do
      it 'presence' do
        rent.rent_at = nil
        rent.valid?
        expect(rent.errors[:rent_at].any?).to be_truthy
      end


    end
  end
end
