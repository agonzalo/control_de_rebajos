class Concepto < ActiveRecord::Base
  belongs_to :colaborador
  belongs_to :rebajo
end
