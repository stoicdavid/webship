namespace :search_suggestions do
  desc "Generate search suggestions from vehicles"
  task :index => :environment do
    SearchSuggestion.index_vehicles
  end
end