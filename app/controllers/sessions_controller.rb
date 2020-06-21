class SessionsController < ApplicationController
  def new
  end

  def create
    # используем метод authenticate, который мы уже писали
    # Передаём ему параметры email и password
    @user = User.authenticate(params[:email], params[:password])

    # Если юзер есть, записываем id этого юзера в объект session
    # Перенаправляем на главную с сообщением
    if @user.present?
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'вы успешно залогинились'
    # Если что-то не так – сообщаем и рендерим шаблон снова
    else
      flash.now.alert = 'Неправильный мэйл или пароль'
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_path, notice: 'Вы разлогинились! Приходите еще!'
  end
end
