class CreatePerfomanceInstituicaoCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :perfomance_instituicao_cursos do |t|
      t.references :instituicao, foreign_key: true
      t.references :curso, foreign_key: true
      t.float :nota
      t.float :media_notas

      t.timestamps
    end
  end
end
