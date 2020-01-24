# frozen_string_literal: true

require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get login_path
    assert_response :success
  end

  test 'should get create' do
    post login_path, params: { session: { name: 'Bob' } }
    assert_redirected_to User.find(session[:id])
  end

  test 'should get delete' do
    post login_path, params: { session: { name: 'Bob' } }
    assert_not session[:id].nil?
    delete logout_path
    assert session[:id].nil?
  end
end
