require 'formula'

class Utopia < Formula
  homepage 'http://www.utopianapp.com'

  stable do
    version '0.11.14'
    @@file = "utopia_#{version}_darwin_amd64"
    url "https://s3.amazonaws.com/aetna-utopia/#{version}/utopia_#{version}_darwin_amd64.tar.gz"
    sha1 '968813e76e46ebc002a67728b558374444128219'
  end

  
  devel do
    version 'devel-01222016-182810'
    url "https://s3.amazonaws.com/aetna-utopia/devel/utopia_#{version}_darwin_amd64.tar.gz"
    sha1 '592ddcc68a335b7de88744e30ab05f8c49d19361'
  end

  depends_on :arch => :intel

  def install
    bin.install "utopia_#{version}_darwin_amd64"
    system "mv", bin/"utopia_#{version}_darwin_amd64", bin/"utopia"
  end
end