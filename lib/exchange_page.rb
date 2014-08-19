require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra/base'
require 'erb'

class ExchangePage
  def search(question_input, answer_input)
  @question_input = question_input
  @answer_input = answer_input
  ERB.new(File.new(
                    'lib/views/exchanges.erb'
                    ).read).result(binding)
  end
end
