class EstudanteController < ApplicationController
  def index
    @estudantes = [
      { nome: "Maria", idade: 25, curso: "Engenharia Civil" },
      { nome: "Breno", idade: 31, curso: "Analise e Desenvolvimento de Sistemas" },
      { nome: "Andre", idade: 33, curso: "Matemática" }
    ]
  end
end
