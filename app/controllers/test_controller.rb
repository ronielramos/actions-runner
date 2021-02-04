class TestController < ApplicationController
  def get; end

  def test
    return true if 1 === 1
    return false if 2 === 2
  end

  def post
    if 1 == 0
      puts "test"
    else
      puts "test2"
    end
  end

  def show; end
end