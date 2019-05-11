class CreateSummaries < ActiveRecord::Migration[5.2]
  def change
    create_table :summaries do |t|
      t.references :movie, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
