class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]

    if @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question.include?("I am going to work right now!")
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end



# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!

# @members = @members.select { |member| member.start_with?(params[:member]) }
