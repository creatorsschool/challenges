class Transaction
  def initialize(amount)
    @amount = amount
    @time = Time.now
  end

  def to_s
    "#{@amount} #{@time.strftime("on %d/%m/%y at %l:%M:%S%P")}"
  end
end
