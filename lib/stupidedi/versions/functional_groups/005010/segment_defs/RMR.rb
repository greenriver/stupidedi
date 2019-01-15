# frozen_string_literal: true
module Stupidedi
  module Versions
    module FunctionalGroups
      module FiftyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          RMR = s::SegmentDef.build(:RMR, "Remittance Advice Accounts Receivable",
            "To identify remittance delivery when remittance is separate from payment",
            e::E128 .simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E142 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E306 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E782 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E782 .simple_use(r::Optional,   s::RepeatCount.bounded(1)))

        end
      end
    end
  end
end
