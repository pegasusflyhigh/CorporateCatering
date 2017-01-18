class CompaniesController < ApplicationController
	def new
		@company = Company.new
	end



  def create
  	
  	@company = Company.new(company_params)
  	if @company.valid?
  		@company.save
  		redirect_to companies_path
  	else
  		flash[:error]= 	@company.errors.messages
  		render :new 
  	end
  
  end

  def update
  	@company = Company.find(params[:id])
 
 	 if @company.update(company_params)
    	redirect_to companies_path
   else
   		flash[:error]= @company.errors.messages
   	  render :edit
 	 end
	end

	def edit

  	@company = Company.find(params[:id])
		
	end

	def destroy
    @company = Company.find(params[:id])
    @company.destroy
    CompanyMailer.registration_confirmation(@company).deliver_now
    redirect_to companies_path
  end




	def index
		@company = Company.all
	end 

	def show
		@company = Company.find(params[:id])

	end

	


	private
  def company_params
  	params.require(:company).permit(:id,:name,:email,:location,:phoneno)
  end
end
