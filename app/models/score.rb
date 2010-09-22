class Score
  include Mongoid::Document
  field :title, :type => String
  field :type, :type => String
end
