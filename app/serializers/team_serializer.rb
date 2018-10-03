class TeamSerializer < ActiveModel::Serializer
  attributes :id, :team_name, :user_id, :players

  has_many :players
  belongs_to :user
end
