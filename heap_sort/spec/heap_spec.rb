require './lib/heap'

describe Heap do
  let(:subject) {Heap.new [4,2,1,3,5] }

  describe '#parent' do
    it 'returns i/2 (rounded doen)' do
      expect(subject.parent 5).to eq 2
    end
  end

  describe '#left' do
    it 'returns double i' do
      expect(subject.left 2).to eq 4
    end
  end

  describe '#right' do
    it 'returns double i plus 1' do
      expect(subject.right 2).to eq 5
    end
  end

  describe '#max_i_l_r' do
    it 'returns the largest of i, left and right' do
      expect(subject.max_i_l_r 2).to eq 4
      expect(subject.max_i_l_r 3).to eq 3
      expect(subject.max_i_l_r 5).to eq 5
    end
  end

  describe '#max_heapify' do
    it '' do
      expect(subject.max_heapify 2).to eq []
    end
  end
end

