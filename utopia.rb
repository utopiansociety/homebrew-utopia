require 'formula'

class Utopia < Formula
  homepage 'http://www.utopianapp.com'

  stable do
    version '0.11.16'
    @@file = "utopia_#{version}_darwin_amd64"
    url "https://s3.amazonaws.com/aetna-utopia/#{version}/utopia_#{version}_darwin_amd64.tar.gz"
    sha1 '749a4d36eb5fa89e0a4eff8523c259364c73b6d3'
  end

  
  devel do
    version 'devel-02122016-222356'
    url "https://s3.amazonaws.com/aetna-utopia/devel/utopia_#{version}_darwin_amd64.tar.gz"
    sha1 'b6e76540f9fbb027a2f3c8fa4eeb9a0cb75917e2'
  end

  depends_on :arch => :intel

  def install
    bin.install "utopia_#{version}_darwin_amd64"
    system "mv", bin/"utopia_#{version}_darwin_amd64", bin/"utopia"
  end
end