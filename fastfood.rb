class Fastfood < Formula
  desc "🍔🍟 Share Fastfile between projects"
  homepage "https://github.com/artemnovichkov/fastfood"
  version "1.4.2"
  url "https://github.com/artemnovichkov/fastfood/releases/download/#{version}/fastfood.zip"

  depends_on :xcode => ["10.2", :build]

  def install
    bin.install Dir["bin/*"]
    include.install Dir["include/*"]
  end

  test do
    system bin/"fastfood", "-version"
  end

end
