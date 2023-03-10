class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :type
      t.string :description
      t.string :qualifications
      t.string :company

      t.timestamps
    end
  end
end
