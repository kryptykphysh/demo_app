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

# Model class for application users
class User < ApplicationRecord
  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
end
