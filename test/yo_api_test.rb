require 'test_helper'

# @author iranakam
class YoApiTest < Minitest::Test
  def setup
    @client = Yo::Client.new(api_token: 'test')
  end

  def test_set_host
    assert_equal Yo.host, 'http://api.justyo.co'
  end

  def test_yo_to_request_succeed
    assert_instance_of Hash, @client.yo
  end

  def test_yoall_to_request_succeed
    assert_instance_of Hash, @client.yoall
  end

  def test_accounts_to_request_succeed
    assert_instance_of Hash, @client.accounts
  end

  def test_check_username_to_request_succeed
    assert_instance_of Hash, @client.check_username
  end

  def test_subscribers_to_request_succeed
    assert_instance_of Hash, @client.subscribers_count
  end
end
