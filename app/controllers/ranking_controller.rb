class RankingController < ApplicationController
  def index
    @perfomances = PerfomanceInstituicaoCurso.joins(:instituicao, :curso).order("instituicoes.nota")
  end
end
