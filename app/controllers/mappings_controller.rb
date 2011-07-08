class MappingsController < ApplicationController
  def drugs
    @old_items = OldDrug.get_all_drug_names_and_ids
    @mapping = {:title => "Drug Mapping",
                :update_link => "/create/new/drug_map",
                :search_link => "/search/new/drugs"
              }

    render :layout => "/layouts/mapping", :template => "/mappings/show"
  end

  def concepts
    @old_items = OldConcept.get_all_concept_names_and_ids
    @mapping = {:title => "Concept Mapping",
                :update_link => "/create/new/concept_map",
                :search_link => "/search/new/concepts"
              }

    render :layout => "/layouts/mapping", :template => "/mappings/show"
  end

  def create_drug_map
    DrugMap.update_records(params[:old_name], params[:new_name])
    render :template => "/mappings/create"
  end

  def create_concept_map
    ConceptMap.update_records(params[:old_name], params[:new_name])
    render :template => "/mappings/create"
  end
end
