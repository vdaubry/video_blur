require "spec_helper"

describe VideoBlur::Video do
  context "sample mp4" do
    subject { VideoBlur::Video.new(input: "spec/resources/sample.mp4", output: "spec/resources/output/result.mp4") }
    
    describe "width" do
      it { expect(subject.width).to eq(560) }
    end
    
     describe "height" do
      it { expect(subject.height).to eq(320) }
    end
  end
  
  context "screenflow mp4" do
    subject { VideoBlur::Video.new(input: "spec/resources/screenflow\ vid.mp4", output: "spec/resources/output/result.mp4") }
    
    describe "width" do
      it { expect(subject.width).to eq(2880) }
    end
    
     describe "height" do
      it { expect(subject.height).to eq(1800) }
    end
  end
end