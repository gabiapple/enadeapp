class ChangeInstituicaosToInstituicoes < ActiveRecord::Migration[5.2]
  def change
    rename_table :instituicaos, :instituicoes
  end
end
