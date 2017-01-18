class CompanyMailer < ApplicationMailer
	default :from =>'bbhuvnaprabhu@gmail.com'
	 def welcome_email(company)
    @user = company
    
    mail(:to=> @user.email, :subject=> 'Hi!')
  end
end
