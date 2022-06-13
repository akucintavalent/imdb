class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def edit
  end

  def create
    @company = Company.new(company_params)
  end

  def update
  end

  def destroy
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end
end
