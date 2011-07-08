ActionController::Routing::Routes.draw do |map|
  map.search    '/search/new/drugs',          :controller => 'search',    :action => 'new_drugs'
  map.search    '/search/new/concepts',       :controller => 'search',    :action => 'new_concepts'
  map.drug_map  '/map/drugs',                 :controller => 'mappings',  :action => 'drugs'
  map.drug_map  '/create/new/drug_map',       :controller => 'mappings',  :action => 'create_drug_map'
  map.concept_map  '/map/concepts',           :controller => 'mappings',  :action => 'concepts'
  map.concept_map  '/create/new/concept_map', :controller => 'mappings',  :action => 'create_concept_map'

  map.root :controller => "mappings", :action=>"index"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
