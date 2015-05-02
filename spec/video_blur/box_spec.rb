require "spec_helper"

describe VideoBlur::Box do
  subject { VideoBlur::Box.new(x: 10, y: 20, width: 50, height: 60, ratio: 2.151) }
  
  describe "x" do
    it { expect(subject.x).to eq(21) }
  end
  
  describe "y" do
    it { expect(subject.y).to eq(43) }
  end
  
  describe "width" do
    it { expect(subject.width).to eq(107) }
  end
  
  describe "height" do
    it { expect(subject.height).to eq(129) }
  end
end