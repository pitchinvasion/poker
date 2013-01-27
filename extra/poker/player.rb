class Poker::Player
  def initialize(ai_code)
    @ai_code = ai_code
    @stack = Game::START_STACK
  end

  def decide(hand)
    @ai_code.decide(hand)
  end

  def <<(amount)
    @stack += amount
  end

  def -(amount)
    @stack -= amount

    throw new Exception "Negative stack!" unless amount >= 0
  end

  def all_in
    @stack
  end

  def bust?
    @stack == 0
  end
end