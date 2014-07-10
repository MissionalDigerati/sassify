require 'spec_helper'

describe "Sassify" do

  before(:all) do
    @test_css_dir = File.join(File.dirname(__FILE__), '..', 'support', 'test_css_files')
    @bash_script = File.join(File.dirname(__FILE__), '..', '..', 'lib', 'sassify.sh')
  end

  after(:each) do
    # Delete all the created SASS files
    #
    Dir.glob(File.join(@test_css_dir, '**', '*.css.scss')).each { |f| File.delete(f) }
  end
    
  it "should create a SASS file with the appropriate extension" do
    expected_file = File.join(@test_css_dir, 'no_quotes_or_path.css.scss')
    test_file = File.join(@test_css_dir, 'no_quotes_or_path.css')
    expect(File.exists?(expected_file)).to eq(false)
    system("#{@bash_script} img test #{test_file}")
    expect(File.exists?(expected_file)).to eq(true)
  end

end