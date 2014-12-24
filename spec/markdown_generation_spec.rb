require 'tempfile'

describe Octodown::Renderer::GithubMarkdown do
  let(:dummy_path) { File.join(File.dirname(__FILE__), 'dummy', 'test.md') }
  let(:html) { Octodown::Renderer::GithubMarkdown.new(dummy_path).to_html }

  it 'create HTML from markdown file' do
    expect(html).to include '<h1>Hello world!</h1>'
    expect(html).to include '<p>You are now reading markdown. How lucky you are!</p>'
  end

  it 'highlights the code' do
    expect(html).to include 'highlight-ruby'
  end
end