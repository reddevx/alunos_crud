class Aluno < ApplicationRecord
  validates :name, :classe, :rm, presence: true
end
