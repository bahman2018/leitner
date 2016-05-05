class LoginController < ApplicationController
  layout 'master'
  def index
    render('index')
  end
  def sign_up
    render('sing_up')
  end
  def create

  end
end
