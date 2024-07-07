class AlunosController < ApplicationController
  before_action :fetch_aluno, only: [:edit, :update, :show, :destroy]

  def index
    @alunos = Aluno.all.order(created_at: :asc)
  end

  def new
    @aluno = Aluno.new
  end
  
  def create
    @aluno = Aluno.new(aluno_params)
    return redirect_to alunos_path(@aluno) if @aluno.save
    
    render :new
  end

  def show; end

  def edit; end

  def update 
    return redirect_to aluno_path(@aluno) if @aluno.update (aluno_params)

    render :edit
  end

  def destroy  
    @aluno.destroy 

    redirect_to alunos_path
  end

  def fetch_aluno
    @aluno = Aluno.find(params[:id])
  end 

  private 

  def aluno_params
    params.require(:aluno).permit(:name, :classe, :rm)
  end
end
