# frozen_string_literal: true

require_relative "../test_helper"

class Dataleon::Test::Resources::IndividualsTest < Dataleon::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response = @dataleon.individuals.create(workspace_id: "wk_123")

    assert_pattern do
      response => Dataleon::Individual
    end

    assert_pattern do
      response => {
        id: String | nil,
        aml_suspicions: ^(Dataleon::Internal::Type::ArrayOf[Dataleon::Individual::AmlSuspicion]) | nil,
        auth_url: String | nil,
        certificat: Dataleon::Individual::Certificat | nil,
        checks: ^(Dataleon::Internal::Type::ArrayOf[Dataleon::Check]) | nil,
        created_at: Time | nil,
        documents: ^(Dataleon::Internal::Type::ArrayOf[Dataleon::Individuals::GenericDocument]) | nil,
        identity_card: Dataleon::Individual::IdentityCard | nil,
        number: Integer | nil,
        person: Dataleon::Individual::Person | nil,
        portal_url: String | nil,
        properties: ^(Dataleon::Internal::Type::ArrayOf[Dataleon::Individual::Property]) | nil,
        risk: Dataleon::Individual::Risk | nil,
        source_id: String | nil,
        state: String | nil,
        status: String | nil,
        tags: ^(Dataleon::Internal::Type::ArrayOf[Dataleon::Individual::Tag]) | nil,
        technical_data: Dataleon::Individual::TechnicalData | nil,
        webview_url: String | nil,
        workspace_id: String | nil
      }
    end
  end

  def test_list
    skip("skipped: tests are disabled for the time being")

    response = @dataleon.individuals.list

    assert_pattern do
      response => ^(Dataleon::Internal::Type::ArrayOf[Dataleon::Individual])
    end
  end
end
