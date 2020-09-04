class V1::AccountsController < ApplicationController
  def index
    accounts = Account.all
    render json: {status: 'SUCCESS', message: 'Loaded students info', data: accounts},
    status: :ok
  end
  
  def create
    account = Account.new(account_params)
    
    if account.save
      render json: {status: 'SUCCESS', message: 'Added new account', data: account}, status: :ok
    else
      render json: {status: 'ERROR', message: 'Failed adding new account', data: account.error},
    status: :unprocessable_entity
    end
  end
  
  def show
    account = Account.find(params[:id])
    render json: {status: 'SUCCESS', message: 'Loaded student info', data: account},
    status: :ok
  end

  def destroy
    account = Account.where(id: params[:id]).first
    if account.destroy
      render json: {status: 'SUCCESS', message: 'Successfully deleted account', data: account},
    status: :ok
    else
      render json: {status: 'ERROR', message: 'Failed delete account', data: account},
    status: :unprocessable_entity
    end
  end

  def update
    article = Article.find(params[:id])

    if account.update_attributes(account_params)
      render json: {status: 'SUCCESS', message: 'Updated student info', data: account}, status: :ok
    else
      render json: {status: 'ERROR', message: 'Account Update Failed', data: account},
    status: :unprocessable_entity
    end
  end

  private 
  def account_params
    params.require(:account).permit(:first_name, :last_name, :email, :program, :department)
  end  
end

