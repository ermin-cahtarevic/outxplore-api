require 'test_helper'

class HostApplicationMailerTest < ActionMailer::TestCase
  test 'application' do
    mail = HostApplicationMailer.application
    assert_equal 'Application', mail.subject
    assert_equal ['to@example.org'], mail.to
    assert_equal ['from@example.com'], mail.from
    assert_match 'Hi', mail.body.encoded
  end
end
