class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    @questions = [
        Question.new(user_id: params[:id], text: 'Как дела?', created_at: Date.parse('21.05.2020')),
        Question.new(user_id: params[:id], text: 'Какова твоя профессия?', created_at: Date.parse('21.05.2020'))
    ]
    @new_question = Question.new
  end
end
