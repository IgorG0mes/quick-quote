class CreateComissions < ActiveRecord::Migration[7.0]
  def change
    create_table :comissions do |t|
      t.references :order, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :amount
      t.boolean :payed

      t.timestamps
    end
  end
end
