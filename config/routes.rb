Rails.application.routes.draw do
  get "/" => "site#home"
  post "/" => "site#sendmail"
end
