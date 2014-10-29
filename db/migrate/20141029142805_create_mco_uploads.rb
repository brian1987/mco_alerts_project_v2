class CreateMcoUploads < ActiveRecord::Migration
  def change
    create_table :mco_uploads do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :medicaid_id
      t.text :alert

      t.timestamps
    end
  end
end
