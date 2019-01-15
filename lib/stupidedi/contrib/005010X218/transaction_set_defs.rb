# frozen_string_literal: true
module Stupidedi
  module Contrib
    module FiftyTenXTwoEighteen
      module TransactionSetDefs

        SegmentReqs = Versions::FunctionalGroups::FiftyTen::SegmentReqs
        SegmentDefs = Versions::FunctionalGroups::FiftyTen::SegmentDefs

        autoload :RA820, # Premium Payment
          "stupidedi/contrib/005010X218/transaction_set_defs/RA820"

      end
    end
  end
end
