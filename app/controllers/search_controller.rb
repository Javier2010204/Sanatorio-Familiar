class SearchController < ApplicationController
  def create
  	palabra = "%#{params[:keyword]}%"
  	@patients = Patient.where("name LIKE ? OR last_name LIKE ?",palabra,palabra)
  end
end
