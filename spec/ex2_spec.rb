require 'ex2'

describe Diary do
  let(:entry) { double :entry, title: "today", body: "DI" }
  let(:entry_class) {double :entry_class, new: entry}
  subject(:diary) { Diary.new(entry_class) }
  
  
  describe '#add' do
    it 'adds an entry' do
      diary.add("today", "DI")
      expect(diary.index).to eq ("today")
    end
  end
end
