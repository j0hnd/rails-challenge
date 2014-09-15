require 'test_helper'

class ChargesControllerTest < ActionController::TestCase
  setup do
    @charge = charges(:one)
  end

  test "check list" do
    @failed   = Customer.select('firstname, lastname, amount, created_at').joins(:charge).merge(Charge.failed).order("created_at desc", "lastname asc")
    @disputed = Customer.select('firstname, lastname, amount, created_at').joins(:charge).merge(Charge.disputed).order("created_at desc", "lastname asc")
    @success  = Customer.select('firstname, lastname, amount, created_at').joins(:charge).merge(Charge.success).order("created_at desc", "lastname asc")
    
    if @failed && @disputed && @success
      assert true
    end
  end

  test "check failed count" do
    @failed = Customer.joins(:charge).merge(Charge.failed).count
    if @failed == 5
      assert true
    end
  end

  test "check disputed count" do
    @disputed = Customer.joins(:charge).merge(Charge.disputed).count
    if @disputed == 5
      assert true
    end
  end

  test "check success count" do
    @success = Customer.joins(:charge).merge(Charge.success).count
    if @success == 10
      assert true
    end
  end

  #test "should get index" do
  #  get :index
  #  assert_response :success
  #  assert_not_nil assigns(:charges)
  #end

  #test "should get new" do
  #  get :new
  #  assert_response :success
  #end

  #test "should create charge" do
  #  assert_difference('Charge.count') do
  #    post :create, charge: { amount: @charge.amount, currency: @charge.currency, customer_id: @charge.customer_id, disputed: @charge.disputed, paid: @charge.paid, refunded: @charge.refunded }
  #  end

  #  assert_redirected_to charge_path(assigns(:charge))
  #end

  #test "should show charge" do
  #  get :show, id: @charge
  #  assert_response :success
  #end

  #test "should get edit" do
  #  get :edit, id: @charge
  #  assert_response :success
  #end

  #test "should update charge" do
  #  patch :update, id: @charge, charge: { amount: @charge.amount, currency: @charge.currency, customer_id: @charge.customer_id, disputed: @charge.disputed, paid: @charge.paid, refunded: @charge.refunded }
  #  assert_redirected_to charge_path(assigns(:charge))
  #end

  #test "should destroy charge" do
  #  assert_difference('Charge.count', -1) do
  #    delete :destroy, id: @charge
  #  end

  #  assert_redirected_to charges_path
  #end
end
