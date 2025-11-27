class ZshConfig < Formula
  desc "Professional ZSH configuration with modular structure and lazy-loading secrets"
  homepage "https://github.com/vish288/zsh-config"
  url "https://github.com/vish288/zsh-config/archive/refs/tags/v1.4.0-beta.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  head "https://github.com/vish288/zsh-config.git", branch: "main"

  depends_on "zsh"
  depends_on "mise"
  depends_on "fzf"
  depends_on "zoxide"

  def install
    # Install configuration files to share directory
    (share/"zsh-config").install Dir["*"]
  end

  def post_install
    ohai "zsh-config installed to #{share}/zsh-config"
    ohai "Run 'zsh-config-install' to set up your configuration"
  end

  def caveats
    <<~EOS
      To complete installation, run:
        zsh-config-install

      Or manually:
        cd #{share}/zsh-config && ./install.zsh

      This will:
        - Back up existing zsh configuration
        - Create symlinks for .zshrc, .zprofile, .p10k.zsh
        - Install Oh My Zsh and plugins if missing

      To uninstall:
        cd #{share}/zsh-config && ./uninstall.zsh
    EOS
  end

  test do
    assert_predicate share/"zsh-config/zshrc", :exist?
    assert_predicate share/"zsh-config/install.zsh", :executable?
  end
end
