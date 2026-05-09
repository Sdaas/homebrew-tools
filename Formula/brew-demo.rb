class BrewDemo < Formula
  include Language::Python::Virtualenv

  desc "Demo CLI apps: REST server, Python client, and shell client"
  homepage "https://github.com/Sdaas/hello-brew"
  url "https://github.com/Sdaas/hello-brew/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  license "MIT"

  depends_on "python@3.12"
  depends_on "rust" => :build  # required for pydantic-core
  depends_on "jq"              # required by demo-shell-client

  # ── demo-server dependencies ──────────────────────────────────────────────

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/19/14/2c5dd9f512b66549ae92767a9c7b330ae88e1932ca57876909410251fe13/anyio-4.13.0.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/bb/63/f9e1ea081ce35720d8b92acde70daaedace594dc93b693c869e0d5910718/click-8.3.3.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/5d/45/c130091c2dfa061bbfe3150f2a5091ef1adf149f2a8d2ae769ecaf6e99a2/fastapi-0.136.1.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/18/a5/b60d21ac674192f8ab0ba4e9fd860690f9b4a6e51ca5df118733b487d8d6/pydantic-2.13.4.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/9d/56/921726b776ace8d8f5db44c4ef961006580d91dc52b803c489fafd1aa249/pydantic_core-2.46.4.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/81/69/17425771797c36cded50b7fe44e850315d039f28b15901ab44839e70b593/starlette-1.0.0.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/55/e3/70399cb7dd41c10ac53367ae42139cf4b1ca5f36bb3dc6c9d33acdb43655/typing_inspection-0.4.2.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/1f/93/041fca8274050e40e6791f267d82e0e2e27dd165627bd640d3e0e378d877/uvicorn-0.46.0.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  # ── demo-python-client dependencies ──────────────────────────────────────

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/25/ee/6caf7a40c36a1220410afe15a1cc64993a1f864871f698c0f93acb72842a/certifi-2026.4.22.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e7/a1/67fe25fac3c7642725500a3f6cfe5821ad557c3abb11c9d20d12c7008d3e/charset_normalizer-3.4.7.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ce/cc/762dfb036166873f0059f3b7de4565e1b5bc3d6f28a414c13da27e442f99/idna-3.13.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/5f/a4/98b9c7c6428a668bf7e42ebb7c79d576a1c3c1e3ae2d47e674b468388871/requests-2.33.1.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/53/0c/06f8b233b8fd13b9e5ee11424ef85419ba0d8ba0b3138bf360be2ff56953/urllib3-2.7.0.tar.gz"
    sha256 "e8300d93340887b40a19ad0335a619bfd7991b951b486cf226ce79c87c3e6441"
  end

  def install
    # Install both Python apps into a shared virtualenv
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install resources
    venv.pip_install_and_link buildpath/"apps/server"
    venv.pip_install_and_link buildpath/"apps/python-client"

    # Install the shell client directly
    bin.install "apps/shell-client/bin/demo-shell-client"

    # Stamp the version into the shell client
    inreplace bin/"demo-shell-client", "0.0.1", version

    # Install a default config file that users can edit to change the port
    # write_unless_exists preserves user edits across brew upgrades
    (etc/"demo-server.conf").write_unless_exists <<~EOS
      # demo-server configuration
      # Edit this file and run: brew services restart brew-demo
      PORT=8100
    EOS
  end

  service do
    # Port is read from #{etc}/demo-server.conf at startup
    run opt_bin/"demo-server"
    keep_alive true
    environment_variables HOMEBREW_PREFIX: HOMEBREW_PREFIX
    log_path var/"log/demo-server.log"
    error_log_path var/"log/demo-server.log"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/demo-server --version")
    assert_match version.to_s, shell_output("#{bin}/demo-python-client --version")
    assert_match version.to_s, shell_output("#{bin}/demo-shell-client --version")
  end
end
