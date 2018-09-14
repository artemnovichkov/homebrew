class Sasha < Formula
  
  desc "👨‍💼Reduce daily routine with sasha"
  homepage "https://github.com/artemnovichkov/Sasha"
  url "https://github.com/artemnovichkov/sasha/archive/2.3.tar.gz"
  sha256 "f37fd4130fcda139e7fb4bfeff9d7d19139d136a9302bb9cf32bb22e622ce0ea"

  head 'https://github.com/artemnovichkov/Sasha.git', :branch => 'master'

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"sasha"
  end

end
