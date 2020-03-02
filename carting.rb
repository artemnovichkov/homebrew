class Carting < Formula
  desc "🚘 Simple tool for updating Carthage scripts"
  homepage "https://github.com/artemnovichkov/Carting"
  url "https://github.com/artemnovichkov/Carting/archive/2.1.2.tar.gz"
  sha256 "ccf9f135d6aa876bf8e35da7c2f7bdcccc2ed4fa006a5775dc54f44b36aa9853"
  head "https://github.com/artemnovichkov/Carting.git"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"carting", "version"
  end
end
