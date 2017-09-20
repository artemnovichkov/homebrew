class Sasha < Formula
  
  desc "👨‍💼Reduce daily routine with sasha"
  homepage "https://github.com/artemnovichkov/Sasha"
  url "https://github.com/artemnovichkov/sasha/archive/2.0.2.tar.gz"
  sha256 "dd6270837bb225fafca7e65eaca44dbd81767ae60b41ce4db71f9346096d1f5a"

  head 'https://github.com/artemnovichkov/Sasha.git', :branch => 'master'

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"sasha"
  end

end
