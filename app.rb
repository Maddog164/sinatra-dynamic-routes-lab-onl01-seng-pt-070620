require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    rev_name = params[:name].reverse
    # binding.pry
    "#{rev_name}"
  end

  get "/square/:number" do
    num_squared = params[:number].to_i * params[:number].to_i
    # binding.pry
    "#{num_squared}"
  end

  get "/say/:number/:phrase" do
    num_times = params[:number].to_i
    phrase = params[:phrase]
    i = 0
    phrase_array=[]
    while i<num_times do
      phrase_array<<phrase
      i+=1
    end
    phrase_array
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      answer = params[:number1].to_i+params[:number2].to_i
      "#{answer}"
    elsif params[:operation] == "subtract"
      answer = params[:number1].to_i-params[:number2].to_i
      "#{answer}"
    elsif params[:operation] == "multiply"
      answer = params[:number1].to_i*params[:number2].to_i
      "#{answer}"
    elsif params[:operation] == "divide"
      answer = params[:number1].to_i/params[:number2].to_i
      "#{answer}"
    end #if
  end


end