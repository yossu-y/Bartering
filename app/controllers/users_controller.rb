class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_guest_user, only: [:edit]

  def show
  end

  def index
  end

  def edit
  end

  def guest_sign_in
    user = User.guest
    sign_in user
    redirect_to root_path, notice: 'guestuserでログインしました。'
  end

  private

  def ensure_guest_user
    @user = User.find(params[:id])
    if @user.name == "guestuser"
      redirect_to user_path(current_user), notice: 'ゲストユーザーはプロフィール編集画面へ遷移できません。'
    end
  end
end
