module ForceLeads
  class Lead

    def initialize(credential)
      raise InvalidCredentialError.new('You should initialize with a valid credentials') unless credential.is_a?(OauthCredential)

      @client = credential.build_client
    end

    def create(attributes = {})
      raise ArgumentError.new 'Please specify a hash of attributes' if attributes.nil? || attributes.empty?
      @client.create!('Lead', attributes)
    end

  end
end
