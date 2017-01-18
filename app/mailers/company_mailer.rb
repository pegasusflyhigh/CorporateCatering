class CompanyMailer < ApplicationMailer
	default :from =>'bbhuvnaprabhu@gmail.com'
	 def account_deletion(company)
    @user = company
    
    mail(:to=> @user.email, :subject=> 'ACCOUNT DELETION')
  end	
end
