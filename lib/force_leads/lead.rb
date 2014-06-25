class ForceLeads::Lead

  def initialize(credential)
    raise ForceLeads::InvalidCredentialError.new('You should initialize with a valid credentials') unless credential.is_a?(ForceLeads::OauthCredential)

    @client = credential.build_client
  end

  def create(attributes = {})
    # TODO: use the client to create the remote data
  end

end
