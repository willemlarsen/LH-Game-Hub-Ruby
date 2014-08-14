require 'rspec'
require 'approvals/rspec'
require 'language'
require 'language_page'

describe 'LapSearch' do
  subject { Approvals::Reporters::FileLauncherReporter.instance }
  ::RSpec.configuration.diff_on_approval_failure = true
  it 'displays all the languages' do
    verify :format => :html do
      english = Language.new('English')
      hungarian = Language.new('Magyar', 'english' => 'Hungarian')
      french = Language.new('Français', 'english' => 'French')
      chinuk_wawa = Language.new('Chinuk Wawa')
      languages = [hungarian, french, english, chinuk_wawa]
      LanguagePage.new.search('english', lambda { languages } )
    end
  end
end
