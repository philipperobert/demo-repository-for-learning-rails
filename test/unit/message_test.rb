require File.dirname(__FILE__) + '/../test_helper'

class MessageTest < ActiveSupport::TestCase
  # Setup can be used to create things needed in each test. It is run before each test is run
  def setup
	@message = Message.create( :name => 'Bob', :email => 'bob@example.com', :company => 'ACME', :phone => '123.456.7890', :subject => 'test subject', :body => 'text goes here')
  end

  def test_valid_model_truth
    assert_valid @message
  end

  def test_missing_acquired_attributes
    assert_valid @message
  end

  def test_requires_name
    @message.name = nil
    assert_equal false, @message.valid?
    assert_equal "can't be blank", @message.errors[:name]
  end

  def test_requires_subject
    @message.subject = nil
    assert_equal false, @message.valid?
    assert_equal "can't be blank", @message.errors[:subject]
  end

  def test_requires_body
    @message.body = nil
    assert_equal false, @message.valid?
    assert_equal "can't be blank", @message.errors[:body]
  end

  def test_does_not_require_phone
    @message.phone = nil
    assert_valid @message
  end

  def test_poor_email_formatting
    @message.email = 'spammer-no-domain'
    assert_equal false, @message.valid?
    assert_equal "is invalid", @message.errors[:email]
  end

end
