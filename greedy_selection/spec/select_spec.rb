require './lib/select'

describe Select do
  let(:activity_1)  { Activity.new 1, 1, 4 }
  let(:activity_2)  { Activity.new 2, 3, 5 }
  let(:activity_3)  { Activity.new 3, 0, 6 }
  let(:activity_4)  { Activity.new 4, 5, 7 }
  let(:activity_5)  { Activity.new 5, 3, 9 }
  let(:activity_6)  { Activity.new 6, 5, 9 }
  let(:activity_7)  { Activity.new 7, 6, 10 }
  let(:activity_8)  { Activity.new 8, 8, 11 }
  let(:activity_9)  { Activity.new 9, 8, 12 }
  let(:activity_10) { Activity.new 10, 2, 14 }
  let(:activity_11) { Activity.new 11, 12, 16 }

  describe '#for' do
    it 'retuns the optimal set of activities' do
      activities = [activity_1]
      expect(subject.for activities).to eq [activity_1]
    end

    it 'retuns the optimal set of activities' do
      activities = [activity_4, activity_6]
      expect(subject.for activities).to eq [activity_4]
    end

    it 'retuns the optimal set of activities' do
      activities = [activity_4, activity_6, activity_8]
      expect(subject.for activities).to eq [activity_4, activity_8]
    end

    it 'retuns the optimal set of activities' do
      activities = [activity_1, activity_2, activity_3, activity_4, activity_5, activity_6,
                    activity_7, activity_8, activity_9, activity_10, activity_11]
      expect(subject.for activities).to eq [activity_1, activity_4, activity_8, activity_11]
    end
  end
end

