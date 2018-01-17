class Sasha < Formula
  
  desc "👨‍💼Reduce daily routine with sasha"
  homepage "https://github.com/artemnovichkov/Sasha"
  url "https://github.com/artemnovichkov/sasha/archive/2.1.tar.gz"
  sha256 "b72699c82ac50965faaea091c6ff7752f5afb0b85de968ad250ea2ca3682b596"

  head 'https://github.com/artemnovichkov/Sasha.git', :branch => 'master'

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"sasha"
  end

end
