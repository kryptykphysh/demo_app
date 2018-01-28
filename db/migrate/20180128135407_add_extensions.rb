# frozen_string_literal: true

# Add pgcrypto and citext extensions to database
class AddExtensions < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'pgcrypto'
    enable_extension 'citext'
  end
end
