require 'formula'

class Utopia < Formula
  homepage 'http://www.utopianapp.com'

  stable do
	version '0.11.13'
	@@file = "utopia_#{version}_darwin_amd64"
	url "https://s3.amazonaws.com/aetna-utopia/#{version}/utopia_#{version}_darwin_amd64.tar.gz"
	sha1 '133e704ffc5b4ccfb5752b15e1c458dacb411988'
  end

  
  devel do
    version 'devel-01132016-202650'
    url "https://s3.amazonaws.com/aetna-utopia/devel/utopia_#{version}_darwin_amd64.tar.gz"
    sha1 '413a01b52f74490f72922b5d943e4768f5dd25dc'
  end

  depends_on :arch => :intel

  def install
    bin.install "utopia_#{version}_darwin_amd64"
    system "mv", bin/"utopia_#{version}_darwin_amd64", bin/"utopia"
  end
end