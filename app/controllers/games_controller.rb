require 'open-uri'
require 'json'

class GamesController < ApplicationController

  def new
    alphabet = [*('a'..'z')]
    @letters = alphabet.sample(10)
  end

  def score
    search = params[:word]
    @letters = params[:letters].split(' ')
    @sorry = 'Try again'
    @ok = 'ok'
    @teste = search.split("").all? { |letter| @letters.include? letter } ? @ok : @sorry

  end

  # def check_api(word)
  #   response = open("https://wagon-dictionary.herokuapp.com/#{word}")
  #   json = JSON.parse(response)
  #   json[:found]
  # end

  # def check_valid(word)
  #   if check_api(word) && search.split("").all? { |letter| @letters.include? letter }
  #     @ok
  #    else
  #    @sorry = 'Try again'
  #   end
  # end
end
