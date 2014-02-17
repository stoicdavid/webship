class SearchSuggestion < ActiveRecord::Base
  def self.terms_for(prefix)
    Rails.cache.fetch(["search-terms", prefix]) do
      suggestions = where("term like ?","#{prefix}_%")
      suggestions.order("popularity desc").limit(10).pluck(:term)
    end
  end
  
  def self.index_vehicles
      Vehicle.find_each do |v|
        index_term(v.plate)
        v.plate.split.each { |t| index_term(t) }
      end
  end
    
  def self.index_term(term)
      where(term: term.to_s.downcase).first_or_initialize.tap do |suggestion|
        suggestion.increment! :popularity
      end
  end
    
end
