class Player < ApplicationRecord
	def self.get_champions 
		p_ar = self.arel_table
    champions = []
    max_age_precedent = 0
    self.order(p_ar[:age].asc).pluck(:age).uniq.each_with_index do |age, i|
      max_age_actuel = self.where(age: age).maximum(:elo)
      max_age_precedent = max_age_actuel if i == 0
      if max_age_precedent < max_age_actuel || i == 0
        champions << self.where(age: age, elo: max_age_actuel).all
        max_age_precedent = max_age_actuel
      end
    end
    champions.flatten
	end

  def self.get_max_elo_by_age
    p_ar = self.arel_table
    all_high_score_by_age = []
    self.order(p_ar[:age].asc).pluck(:age).uniq.map do |age|
      max = self.where(age: age).maximum(:elo)
      all_high_score_by_age << self.where(age: age, elo: max).all.pluck(:id)
    end
    self.where(id: all_high_score_by_age.flatten).order(:age)
  end
end
