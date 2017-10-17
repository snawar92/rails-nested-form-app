class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :title
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
