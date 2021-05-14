# frozen_string_literal: true

class Player
  attr_reader :name, :lives

  DEFAULT_LIVES = 12

  def initialize(name, lives = DEFAULT_LIVES)
    @name = name
    @lives = lives
  end

  def method_name; end
end
