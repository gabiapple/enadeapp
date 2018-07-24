class PerfomanceInstituicaoCurso < ApplicationRecord
  belongs_to :instituicao, :class_name => 'Instituicao'
  belongs_to :curso, :class_name => 'Curso'
end
