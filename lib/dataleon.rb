# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "dataleon/version"
require_relative "dataleon/internal/util"
require_relative "dataleon/internal/type/converter"
require_relative "dataleon/internal/type/unknown"
require_relative "dataleon/internal/type/boolean"
require_relative "dataleon/internal/type/file_input"
require_relative "dataleon/internal/type/enum"
require_relative "dataleon/internal/type/union"
require_relative "dataleon/internal/type/array_of"
require_relative "dataleon/internal/type/hash_of"
require_relative "dataleon/internal/type/base_model"
require_relative "dataleon/internal/type/base_page"
require_relative "dataleon/internal/type/request_parameters"
require_relative "dataleon/internal"
require_relative "dataleon/request_options"
require_relative "dataleon/file_part"
require_relative "dataleon/errors"
require_relative "dataleon/internal/transport/base_client"
require_relative "dataleon/internal/transport/pooled_net_requester"
require_relative "dataleon/client"
require_relative "dataleon/models/check"
require_relative "dataleon/models/companies/document_list_params"
require_relative "dataleon/models/companies/document_upload_params"
require_relative "dataleon/models/company_create_params"
require_relative "dataleon/models/company_delete_params"
require_relative "dataleon/models/company_list_params"
require_relative "dataleon/models/company_list_response"
require_relative "dataleon/models/company_registration"
require_relative "dataleon/models/company_retrieve_params"
require_relative "dataleon/models/company_update_params"
require_relative "dataleon/models/individual"
require_relative "dataleon/models/individual_create_params"
require_relative "dataleon/models/individual_delete_params"
require_relative "dataleon/models/individual_list_params"
require_relative "dataleon/models/individual_list_response"
require_relative "dataleon/models/individual_retrieve_params"
require_relative "dataleon/models/individuals/document_list_params"
require_relative "dataleon/models/individuals/document_response"
require_relative "dataleon/models/individuals/document_upload_params"
require_relative "dataleon/models/individuals/generic_document"
require_relative "dataleon/models/individuals/kbis"
require_relative "dataleon/models/individual_update_params"
require_relative "dataleon/models"
require_relative "dataleon/resources/companies"
require_relative "dataleon/resources/companies/documents"
require_relative "dataleon/resources/individuals"
require_relative "dataleon/resources/individuals/documents"
