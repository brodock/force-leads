require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ForceLeads::Lead do

  let(:credential) { ForceLeads::OauthCredential.new({instance_url: 'https://nax.salesforce.com'}) }

  subject { ForceLeads::Lead.new(credential) }
  it { should respond_to :create }

  describe '#initialize' do

    it 'expects a valid OauthCredential' do
      expect { ForceLeads::Lead.new(nil) }.to raise_error(ForceLeads::InvalidCredentialError)
      expect { ForceLeads::Lead.new(credential).to not_raise_error }
    end

  end

  describe '#create' do

    let(:attributes) do
      {
          FirstName: Faker::Name.first_name,
          LastName: Faker::Name.last_name,
          Email: Faker::Internet.email,
          Company: Faker::Company.name,
          Title: Faker::Lorem.sentence(3),
          Phone: Faker::PhoneNumber.phone_number,
          Website: Faker::Internet.url
      }
    end

    context 'when using valid attributes' do

      before do
        stub_api_request 'sobjects/Lead',
                         :method => :post,
                         :with_body => attributes.to_json,
                         :fixture => 'create_success_response'
      end

      it 'accepts a list of valid attributes' do
        subject.create(attributes).should == "some_id"
      end

    end

    context 'when attributes are invalid' do

      it 'should not accept empty attributes' do
        expect { ForceLeads::Lead.new(nil) }.to raise_error(ForceLeads::InvalidCredentialError)
        expect { ForceLeads::Lead.new({}) }.to raise_error(ForceLeads::InvalidCredentialError)
      end

      it 'should not accept missing essential attributes' do
        attributes = {Title: Faker::Lorem.sentence(3)}
        expect { ForceLeads::Lead.new(attributes) }.to raise_error(ForceLeads::InvalidCredentialError)
      end
    end

  end
end
