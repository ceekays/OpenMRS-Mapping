class SearchController < ApplicationController
  def new_drugs
    @drugs = NewDrug.get_drugs_by_name(params[:name].to_s)
  end

  def new_concepts
    @concepts = NewConcept.get_concepts_by_name(params[:name].to_s)
  end
end
