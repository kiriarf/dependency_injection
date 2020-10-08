require 'ex2'

describe Diary do
  subject(:diary) { Diary.new }
  let(:entry) { double :entry, title: "today", body: "DI" }
  
  describe '#add' do
    it 'adds an entry' do
      diary.add("today", "DI")
      expect(diary.index).to eq ("today")
    end
  end
end
