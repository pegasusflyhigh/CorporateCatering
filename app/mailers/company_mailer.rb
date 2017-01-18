class CompanyMailer < ApplicationMailer
	default :from =>'bbhuvnaprabhu@gmail.com'
	 def registration_confirmation(company)
    @user = company
    
    mail(:to=> @user.email, :subject=> 'Hi!')
  end
end
