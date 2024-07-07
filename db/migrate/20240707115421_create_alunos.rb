class CreateAlunos < ActiveRecord::Migration[7.1]
  def change
    create_table :alunos do |t|
      t.string :name
      t.string :classe
      t.string :rm

      t.timestamps
    end
  end
end
