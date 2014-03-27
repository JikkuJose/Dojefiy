require 'spec_helper'

describe Dojefiy do
  subject { Dojefiy.new }

  describe "#process" do
    let (:input) { 'My grandma gave me a sweater for Christmas.' }
    let (:output) { subject.process(input) }

    it 'converts to lowercase' do
      expect( output.downcase ).to eq output
    end

    it 'combines nouns with doje adjectives' do
      expect(output).to match /(so|very|much|such|many) grandma\./i
      expect(output).to match /(so|very|much|such|many) sweater\./i
      expect(output).to match /(so|very|much|such|many) christmas\./i
    end

    it "always appends 'wow.'" do
      expect(output).to end_with 'wow.'
    end

  end
end
