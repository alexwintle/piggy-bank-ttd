require './lib/piggy_bank.rb'

describe PiggyBank do
  describe '#add_money' do
    it 'adds money' do
      expect(subject.add_money(1)).to eq 1
    end

    # it 'cannot add money if bank is broken'
    #   bank = subject
    #   total = bank.add_money(1)
    #   bank.break

    #   expect()
    # end
  end

  describe '#shake' do
    it 'makes noise if there is money' do
      bank = subject
      bank.add_money(1)

      expect(bank.shake).to eq "cling"
    end

    it 'makes no noise if there is no money' do
      expect(subject.shake).to eq "silence"
    end
  end

  describe '#break' do
    it 'returns number of coins when broken' do
      bank = subject
      total = bank.add_money(1)

      expect(bank.break).to eq 1
    end

    it 'cannot be broken more than once' do
      bank = subject
      total = bank.add_money(1)
      bank.break

      expect { bank.break }.to raise_error "You broke your bank already"
    end
  end
end

# As a user,
# So that I can save money
# I can put coins in my piggy bank

# As a user,
# So that I know whether there are coins in my piggy bank
# I can shake it, and it will "cling" if there is money in it

# As a user,
# So I can enjoy my hard earned savings
# I can break my piggy bank and get back the number or coins that I had put in

