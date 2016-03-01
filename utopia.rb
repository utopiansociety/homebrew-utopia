require 'formula'

class Utopia < Formula
  homepage 'http://www.utopianapp.com'

  
  stable do
    version '0.11.18'
    @@file = "utopia_#{version}_darwin_amd64"
    url "https://s3.amazonaws.com/aetna-utopia/#{version}/utopia_#{version}_darwin_amd64.tar.gz"
    sha1 'e5c6bc75470455d889ec3e5076e0e2313956a01b'
  end

  devel do
    version 'devel-02262016-234724'
    url "https://s3.amazonaws.com/aetna-utopia/devel/utopia_#{version}_darwin_amd64.tar.gz"
    sha1 '326f81a2c59ec05c74c92fade5a664e967fb5983'
  end

  depends_on :arch => :intel

  def install
    bin.install "utopia_#{version}_darwin_amd64"
    system "mv", bin/"utopia_#{version}_darwin_amd64", bin/"utopia"
  end
end