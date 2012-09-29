class Card < ActiveRecord::Base
  attr_accessible :answer, :question, :category
end
