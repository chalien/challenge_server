require "test_helper"

describe PeopleController do
  let(:fake_time) { Time.parse("2016-04-07T19:51:57.918Z") }

  before do
    @request.headers['Content-Type'] = 'application/json'
  end

  describe "GET: index" do
    before do
      Time.stub :now, fake_time do
        FactoryGirl.create(:person, id: 1)
      end
    end

    it 'returns a list of person' do
      get :index
      response.shall_agree_upon('challenge.apib')
    end
  end

  describe "DELETE: destroy" do
    before do
      Time.stub :now, fake_time do
        @person = FactoryGirl.create(:person, id: 1)
      end
    end

    it 'removes a person' do
      delete :destroy, params: { id:  @person.id }
      response.status.must_equal(204)
    end
  end

  describe "GET: show" do
    let(:placehold) { FactoryGirl.create(:person, id: 1) }

    it 'returns a person' do
      Time.stub :now, fake_time do
        get :show, { params: { id: placehold.id} }
      end
      response.shall_agree_upon('challenge.apib')
    end
  end

  describe "POST: create" do
    let(:household) { FactoryGirl.create :household, id: 1 }
    let(:params) { FactoryGirl.attributes_for :person, household_id: household.id }


    before do
      Person.any_instance.stubs(:id).returns(1)
    end

    it 'returns a person created'  do
      Time.stub :now, fake_time do
        post :create, { params: { person: params }}
      end
      response.shall_agree_upon('challenge.apib')
    end
  end
end
