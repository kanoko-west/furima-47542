class AddPhoneNumberToAddresses < ActiveRecord::Migration[7.1]
  def change
    add_column :addresses, :phone_number, :string, null: false
  end
end
