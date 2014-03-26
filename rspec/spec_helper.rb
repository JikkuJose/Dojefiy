require 'spec_helper'

describe Dojefiy do
  subject { Dojefiy.new }

  describe "#process" do
    let (:input) { 'My grandma gave me a sweater for Christmas.' }
    let (:output) { subject.process(input) }

    it 'converts to lowercase' do
      expect( output.downcase ).eq to output
    end

  end
end
