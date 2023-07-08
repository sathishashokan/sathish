class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.integer :amount
      t.string :type
      t.date :date_of_submission
      t.string :submitted_by
      t.string :department

      t.timestamps
    end
  end
end
