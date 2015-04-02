  class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :center_name
      t.string :center_address
      t.integer :center_zipcode
      t.string :center_state
      t.string :center_city
      t.string :center_country
      t.integer :center_number
      t.integer :center_fax
      t.string :center_email
      t.string :contact_person_name
      t.integer :contact_mobile_number 
      t.integer :contact_telephone
      t.string :tech_person
      t.integer :tech_mobile
      t.integer :tech_telephone
      t.integer :contact_fax
      t.string :contact_email
      t.string :infra_dialer_name
      t.string :infra_predictive
      t.integer :infra_seat
      t.integer :infra_primary_isp
      t.integer :infra_secondary_isp
      t.string :infra_voip_gateway
      t.integer :infra_countries_dialing
      t.integer :infra_server_ip
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end

