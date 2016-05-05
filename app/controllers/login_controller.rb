class LoginController < ApplicationController
  layout 'master'
  def index
    render('index')
  end
  def sign_up
    render('sing_up')
  end
  def create
    @user=User.new(params[:user])
    if @user.save
      redirect_to(:action => 'index')
    else
      render('sing_up')
    end
  end
end
