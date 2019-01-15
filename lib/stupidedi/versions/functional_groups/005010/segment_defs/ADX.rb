module Stupidedi
  module Versions
    module FunctionalGroups
      module FiftyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          ADX = s::SegmentDef.build(:ADX, "Monetary Amount Adjustment Reason",
            "To convey accounts-payable adjustment information",
            e::E782 .simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E426 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E128 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E127 .simple_use(r::Optional,   s::RepeatCount.bounded(1)))

        end
      end
    end
  end
end
