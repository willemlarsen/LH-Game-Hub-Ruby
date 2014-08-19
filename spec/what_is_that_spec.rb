require 'rspec'
require 'approvals/rspec'
require 'question'
require 'answer'
require 'exchange_page'

describe 'WhatIsThat' do
  subject { Approvals::Reporters::FileLauncherReporter.instance }
  ::RSpec.configuration.diff_on_approval_failure = true
  it 'shows the what is that exchange for hungarian' do
    verify :format => :html do
      question = Question.new('Mi ez?')
      answer = Answer.new('Ez egy csésze.')
      ExchangePage.new.search(question, answer)

    end
  end
end
