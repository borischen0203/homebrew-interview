# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Interview < Formula
  desc "A tool to generate interview question!"
  homepage "https://github.com/borischen0203/interview"
  version "0.0.4"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/borischen0203/interview/releases/download/v0.0.4/interview_0.0.4_macOS-64bit.tar.gz"
      sha256 "9d7a3d73349064ef0697272144607726aede31cbe66b8b46e57a42de7d0ec5de"
    end
    if Hardware::CPU.arm?
      url "https://github.com/borischen0203/interview/releases/download/v0.0.4/interview_0.0.4_macOS-ARM64.tar.gz"
      sha256 "131e3c2a65b29696d7124e504ae1b4ad90e30063ba79f4b436dbd4ed68706b41"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/borischen0203/interview/releases/download/v0.0.4/interview_0.0.4_Linux-64bit.tar.gz"
      sha256 "bc521f1887c805b88273cca95bf6da1278bd2dd7547f088b1947236665be0939"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/borischen0203/interview/releases/download/v0.0.4/interview_0.0.4_Linux-ARM64.tar.gz"
      sha256 "dc9bcc170bca07a3a503e9f87adfbdeee02ec76a1afe2580587c55295f8445df"
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  def install
    bin.install "interview"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
