require 'ex1'

describe Note do
  subject(:note) { described_class.new("greeting", "hi", formatter)}
  let(:formatter) {double :formatter, format: "Title: greeting\nhi"}
  
  describe "#display" do
    it 'formats the note' do
      expect(note.display).to eq("Title: greeting\nhi")
    end
  end
end
