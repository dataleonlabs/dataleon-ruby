# frozen_string_literal: true

require_relative "../test_helper"

class Dataleon::Test::Resources::CompaniesTest < Dataleon::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response = @dataleon.companies.create(company: {name: "ACME Corp"}, workspace_id: "wk_123")

    assert_pattern do
      response => Dataleon::CompanyRegistration
    end

    assert_pattern do
      response => {
        aml_suspicions: ^(Dataleon::Internal::Type::ArrayOf[Dataleon::CompanyRegistration::AmlSuspicion]) | nil,
        certificat: Dataleon::CompanyRegistration::Certificat | nil,
        checks: ^(Dataleon::Internal::Type::ArrayOf[Dataleon::Check]) | nil,
        company: Dataleon::CompanyRegistration::Company | nil,
        documents: ^(Dataleon::Internal::Type::ArrayOf[Dataleon::Individuals::GenericDocument]) | nil,
        members: ^(Dataleon::Internal::Type::ArrayOf[Dataleon::CompanyRegistration::Member]) | nil,
        portal_url: String | nil,
        properties: ^(Dataleon::Internal::Type::ArrayOf[Dataleon::CompanyRegistration::Property]) | nil,
        risk: Dataleon::CompanyRegistration::Risk | nil,
        source_id: String | nil,
        technical_data: Dataleon::CompanyRegistration::TechnicalData | nil,
        webview_url: String | nil
      }
    end
  end

  def test_list
    skip("skipped: tests are disabled for the time being")

    response = @dataleon.companies.list

    assert_pattern do
      response => ^(Dataleon::Internal::Type::ArrayOf[Dataleon::CompanyRegistration])
    end
  end
end
