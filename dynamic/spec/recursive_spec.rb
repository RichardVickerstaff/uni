require './lib/recursive'

describe Recursive do
  describe '#cut' do
    it 'returns 0 for a length of 0' do
      expect(subject.cut 0).to eq 0
    end

    it 'returns 5 for a length of 2' do
      expect(subject.cut 2).to eq 5
    end

    it 'returns 10 for a length of 4' do
      expect(subject.cut 4).to eq 10
    end
  end
end
