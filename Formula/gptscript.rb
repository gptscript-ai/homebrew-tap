# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gptscript < Formula
  desc "GPTScript CLI"
  homepage "https://github.com/gptscript-ai/gptscript"
  version "0.9.1"

  on_macos do
    url "https://github.com/gptscript-ai/gptscript/releases/download/v0.9.1/gptscript-v0.9.1-macOS-universal.tar.gz"
    sha256 "f7050e92e140f83f9e2909ddc7f5ac088c92c26b446a6a577dbba9dca64633ed"

    def install
      bin.install "gptscript"
      generate_completions_from_executable(bin/"gptscript", "completion", shells: [:bash, :zsh, :fish])
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gptscript-ai/gptscript/releases/download/v0.9.1/gptscript-v0.9.1-linux-arm64.tar.gz"
      sha256 "aae91e504174acd47fabb4412abf0e3b9ed5bd51347fb9580c79b526d4083bb5"

      def install
        bin.install "gptscript"
        generate_completions_from_executable(bin/"gptscript", "completion", shells: [:bash, :zsh, :fish])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gptscript-ai/gptscript/releases/download/v0.9.1/gptscript-v0.9.1-linux-amd64.tar.gz"
      sha256 "065a21c8bebe172f0a58a64f6c4ca76b9dab943bc5c05c26a3328b3d29d56362"

      def install
        bin.install "gptscript"
        generate_completions_from_executable(bin/"gptscript", "completion", shells: [:bash, :zsh, :fish])
      end
    end
  end
end
