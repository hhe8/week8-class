class Movie < ActiveRecord::Base

  belongs_to :director
  has_many :roles
  has_many :actors, :through => :roles

  # validates_presence_of :title
  validates :title, presence: true, uniqueness: true

  # General form:
  # belongs_to :director, class_name: 'Director', foreign_key: :director_id

  # def director
  #   Director.find_by(id: self.director_id)
  # end

  # def roles
  #   Role.where(movie_id: self.id)
  # end

  # def actors
  #   roles.collect do |role|
  #     role.actor
  #   end
  # end

end
