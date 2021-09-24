class PiggyBank

  def initialize
    @total = 0
    @bank = 1
  end

  def add_money(amount)
    @total += amount
  end

  def shake
    @total > 0 ? "cling" : "silence"
  end

  def break
    fail "You broke your bank already" if @bank == 0
    @bank = 0
    @total
  end

end
