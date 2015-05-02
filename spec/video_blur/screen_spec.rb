require "spec_helper"

describe VideoBlur::Screen do
  describe "ratio" do
    let(:video) { VideoBlur::Video.new(input: "spec/resources/sample.mp4", output: nil) }
    
    context "video is the same size as the screen" do
      before(:each) do
        allow(video).to receive(:size).and_return("1440x815")
      end
      
      it "returns 1.0" do
        expect(VideoBlur::Screen.new(width: 1440, height: 815).ratio(video: video)).to eq(1.0)
      end
    end
    
    context "video is wider than the screen" do
      before(:each) do
        allow(video).to receive(:size).and_return("2880x815")
      end
      
      it "returns 2.0" do
        expect(VideoBlur::Screen.new(width: 1440, height: 815).ratio(video: video)).to eq(2.0)
      end
    end
    
    context "video is taller than the screen" do
      before(:each) do
        allow(video).to receive(:size).and_return("1440x1630")
      end
      
      it "returns 2.0" do
        expect(VideoBlur::Screen.new(width: 1440, height: 815).ratio(video: video)).to eq(2.0)
      end
    end
    
    context "video is smaller than the screen" do
      before(:each) do
        allow(video).to receive(:size).and_return("720x407")
      end
      
      it "returns 1.0" do
        expect(VideoBlur::Screen.new(width: 1440, height: 815).ratio(video: video)).to eq(1.0)
      end
    end
    
    context "nil values" do
      it "sets default values" do
        screen = VideoBlur::Screen.new(width: nil, height: nil)
        expect(screen.ratio(video: video)).to eq(1.0)
      end
    end
    
    context "missing values" do
      it "sets default values" do
        screen = VideoBlur::Screen.new
        expect(screen.ratio(video: video)).to eq(1.0)
      end
    end
  end
end