class Instituicao < ApplicationRecord
    self.table_name = "instituicoes"
    has_many :perfomance_instituicao_cursos
end
