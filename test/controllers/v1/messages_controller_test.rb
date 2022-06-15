require 'test_helper'

class V1::MessagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get v1_messages_index_url
    assert_response :success
  end
end
