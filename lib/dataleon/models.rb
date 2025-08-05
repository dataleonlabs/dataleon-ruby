# frozen_string_literal: true

module Dataleon
  [Dataleon::Internal::Type::BaseModel, *Dataleon::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Dataleon::Internal::AnyHash) } }
  end

  Dataleon::Internal::Util.walk_namespaces(Dataleon::Models).each do |mod|
    case mod
    in Dataleon::Internal::Type::Enum | Dataleon::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Dataleon::Internal::Util.walk_namespaces(Dataleon::Models)
                          .lazy
                          .grep(Dataleon::Internal::Type::Union)
                          .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Check = Dataleon::Models::Check

  CompanyCreateParams = Dataleon::Models::CompanyCreateParams

  CompanyListParams = Dataleon::Models::CompanyListParams

  CompanyRegistration = Dataleon::Models::CompanyRegistration

  Individual = Dataleon::Models::Individual

  IndividualCreateParams = Dataleon::Models::IndividualCreateParams

  IndividualListParams = Dataleon::Models::IndividualListParams

  Individuals = Dataleon::Models::Individuals
end
