require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra/base'
require 'erb'

# Language page
class LanguagePage
  def search(user_language, lap_language_loader)
    @languages = lap_language_loader.call
    @user_language = user_language

    ERB.new(File.new(
                    'lib/views/languages.erb'
                    ).read).result(binding)
  end
end
