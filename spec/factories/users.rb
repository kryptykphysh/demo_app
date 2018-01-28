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

FactoryBot.define do
  factory :user do
    first_name 'FirstName'
    last_name 'LastName'
    sequence(:email) { |n| "user_#{n}@example.com" }
    sequence(:external_id) { |n| "external_id_#{n}" }
  end
end
