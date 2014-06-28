require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe ForceLeads::Lead do

  let(:credential) { ForceLeads::OauthCredential.new({instance_url: 'https://nax.salesforce.com'}) }

  subject { ForceLeads::Lead.new(credential) }
  it { should respond_to :create }

  describe '#initialize' do

    it 'expects a valid OauthCredential' do
      expect{ ForceLeads::Lead.new(nil) }.to raise_error(ForceLeads::InvalidCredentialError)
      expect{ ForceLeads::Lead.new(credential).to not_raise_error }
    end

  end
end
