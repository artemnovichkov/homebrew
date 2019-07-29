class Carting < Formula
  desc "🚘 Simple tool for updating Carthage scripts"
  homepage "https://github.com/artemnovichkov/Carting"
  url "https://github.com/artemnovichkov/Carting/archive/2.0.2.tar.gz"
  sha256 "491787b605feb66ce4796c8756e0e64cc2e0a73a25c09b49b4072ea2a24126db"
  head "https://github.com/artemnovichkov/Carting.git"

  depends_on :xcode => ["10.2", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"carting", "version"
  end
end
