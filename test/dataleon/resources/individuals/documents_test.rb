# frozen_string_literal: true

require_relative "../../test_helper"

class Dataleon::Test::Resources::Individuals::DocumentsTest < Dataleon::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @dataleon.individuals.documents.list("individual_id")

    assert_pattern do
      response => Dataleon::Individuals::DocumentResponse
    end

    assert_pattern do
      response => {
        documents: ^(Dataleon::Internal::Type::ArrayOf[Dataleon::Individuals::DocumentResponse::Document]) | nil,
        total_document: Integer | nil
      }
    end
  end

  def test_upload_required_params
    skip("Prism tests are disabled")

    response = @dataleon.individuals.documents.upload("individual_id", document_type: :bank_statements)

    assert_pattern do
      response => Dataleon::Individuals::GenericDocument
    end

    assert_pattern do
      response => {
        id: String | nil,
        checks: ^(Dataleon::Internal::Type::ArrayOf[Dataleon::Check]) | nil,
        created_at: Time | nil,
        document_type: String | nil,
        name: String | nil,
        signed_url: String | nil,
        state: String | nil,
        status: String | nil,
        tables: ^(Dataleon::Internal::Type::ArrayOf[Dataleon::Individuals::GenericDocument::Table]) | nil,
        values: ^(Dataleon::Internal::Type::ArrayOf[Dataleon::Individuals::GenericDocument::Value]) | nil
      }
    end
  end
end
