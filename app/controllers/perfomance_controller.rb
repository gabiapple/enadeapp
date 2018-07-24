class PerfomanceController < ApplicationController
    def new
        @instituicoes = Instituicao.select("sigla, id")
        @cursos = Curso.select("descricao, id")
        @perfomance = PerfomanceInstituicaoCurso.new
      end
       
      def edit
        @perfomance = PerfomanceInstituicaoCurso.find(params[:id])
      end
       
      def create
        @perfomance = PerfomanceInstituicaoCurso.new(article_params)
        @instituicao = Instituicao.find(params[:instituicao][:id])
        @instituicao.nota = params[:instituicao][:nota]
       
        if @instituicao.save && @perfomance.save
          redirect_to @perfomance
        else
          render 'new'
        end
      end

    private
        def perfomance_params
            params.require(:perfomance).permit(:instituicao_id, :curso_id, :nota, :media_notas)
        end
        def instituicao_params
            params.require(:instituicao).permit(:id, :nota)
        end
end
