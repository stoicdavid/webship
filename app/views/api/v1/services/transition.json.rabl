object false
node (:success) { true }
node (:info) { 'Status cambiado' }
child :data do
  child @service do
    attribute :id,:status
  end
end