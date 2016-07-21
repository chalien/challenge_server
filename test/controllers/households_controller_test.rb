require "test_helper"

describe HouseholdsController do
  let(:fake_time) { Time.parse("2016-04-07T19:51:57.918Z") }

  before do
    @request.headers['Content-Type'] = 'application/json'
  end

  describe "GET: index" do
    before do
      Time.stub :now, fake_time do
        FactoryGirl.create(:household, id: 1)
      end
    end

    it 'returns a list of household' do
      get :index
      response.shall_agree_upon('challenge.apib')
    end
  end

  describe "GET: show" do
    let(:placehold) { FactoryGirl.create(:household, id: 1) }

    it 'returns a household' do
      Time.stub :now, fake_time do
        get :show, { params: { id: placehold.id} }
      end
      response.shall_agree_upon('challenge.apib')
    end
  end

  describe "POST: create" do
    let(:params) { FactoryGirl.attributes_for :household }

    before do
      Household.any_instance.stubs(:id).returns(1)
    end

    it 'returns a household created'  do
      Time.stub :now, fake_time do
        post :create, { params: { household: params }}
      end
      response.shall_agree_upon('challenge.apib')
    end
  end
end
