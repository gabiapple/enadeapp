class CreateInstituicaos < ActiveRecord::Migration[5.2]
  def change
    create_table :instituicaos do |t|
      t.string :descricao
      t.string :sigla
      t.float :nota

      t.timestamps
    end
  end
end
