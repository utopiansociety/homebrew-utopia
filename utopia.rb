require 'formula'

class Utopia < Formula
  homepage 'http://www.utopianapp.com'

  
  stable do
    version '0.11.17'
    @@file = "utopia_#{version}_darwin_amd64"
    url "https://s3.amazonaws.com/aetna-utopia/#{version}/utopia_#{version}_darwin_amd64.tar.gz"
    sha1 'c26ed68a9bb3957a27ceeeb19138a1de6fefbbff'
  end

  devel do
    version 'devel-02252016-181303'
    url "https://s3.amazonaws.com/aetna-utopia/devel/utopia_#{version}_darwin_amd64.tar.gz"
    sha1 '060475dbc5734dcfb8977abe6ea7b369460d752a'
  end

  depends_on :arch => :intel

  def install
    bin.install "utopia_#{version}_darwin_amd64"
    system "mv", bin/"utopia_#{version}_darwin_amd64", bin/"utopia"
  end
end