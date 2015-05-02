require "spec_helper"

describe VideoBlur::Blur do
  describe "perform" do
    it "blurs a file and saves to output directory" do
      video = VideoBlur::Video.new(input: "spec/resources/sample.mp4", output: "spec/resources/output/out.mp4")
      box = VideoBlur::Box.new(x: 5, y: 5, width: 20, height: 20)
      VideoBlur::Blur.new(video: video, box: box).perform
      expect(File.exists?("spec/resources/output/out.mp4")).to eq(true)
    end
    
    it "blurs a file with space in name" do
      video = VideoBlur::Video.new(input: "spec/resources/screenflow\ vid.mp4", output: "spec/resources/output/out\ vid.mp4")
      box = VideoBlur::Box.new(x: 5, y: 5, width: 20, height: 20)
      VideoBlur::Blur.new(video: video, box: box).perform
      expect(File.exists?("spec/resources/output/out\ vid.mp4")).to eq(true)
    end
  end
end