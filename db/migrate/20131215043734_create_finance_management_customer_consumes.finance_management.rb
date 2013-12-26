# This migration comes from finance_management (originally 20131215043714)
class CreateFinanceManagementCustomerConsumes < ActiveRecord::Migration
  def change
    create_table :finance_management_customer_consumes do |t|
      t.string :user_id
      t.string :customer_name
      t.string :consume
      t.string :consume_type
      t.string :consume_value
      t.string :consume_describe


      t.timestamps
    end
  end
end
