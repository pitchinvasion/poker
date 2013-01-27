class Poker::Deck

  SUITS = {:hearts => 'H', :spades => 'S', :diamonds => 'D', :clubs => 'C'}

  # Note this is ordered, so array key has a meaning here of the hand rank (although ace can be low it rarely is)
  RANK = {
    :two => '2',
    :three => '3',
    :four => '4',
    :five => '5',
    :six => '6',
    :seven => '7',
    :eight => '8',
    :nine => '9',
    :ten => 'T',
    :jack => 'J',
    :queen => 'Q',
    :king => 'K',
    :ace => 'A'
  }

  def initialize
    add_cards
  end

  private

  def add_cards
    @cards = []

    SUITS.each do |suit, suit_code|
      RANK.each do |rank, rank_code|
        # This is the Card library from ruby-poker
        @cards << Card.new(rank_code, suit_code)
      end
    end

    @cards.shuffle!
  end
end
