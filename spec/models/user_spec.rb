# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id          :uuid             not null, primary key
#  first_name  :string           not null
#  last_name   :string           not null
#  email       :string           not null
#  external_id :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_users_on_email        (email) UNIQUE
#  index_users_on_external_id  (external_id) UNIQUE
#

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build :user }

  describe 'instance attributes' do
    subject { user }

    expected_attributes = %i[id first_name last_name email external_id created_at updated_at]

    expected_attributes.each do |attribute|
      it { is_expected.to respond_to attribute }
    end

    describe 'first_name' do
      context 'when nil' do
        before { subject.first_name = nil }

        it { is_expected.to_not be_valid }
      end

      context 'when an empty string' do
        before { subject.first_name = '' }

        it { is_expected.to_not be_valid }
      end
    end

    describe 'email' do
      context 'when nil' do
        before { subject.email = nil }

        it { is_expected.to_not be_valid }
      end

      context 'when an empty string' do
        before { subject.email = '' }

        it { is_expected.to_not be_valid }
      end

      context 'when already in use' do
        context 'and the same case' do
          before { create :user, email: subject.email }

          it { is_expected.to_not be_valid }
        end

        context 'and a different case' do
          before { create :user, email: subject.email.swapcase }

          it { is_expected.to_not be_valid }
        end
      end
    end
  end
end
