# frozen_string_literal: true

module Stupidedi
  module Contrib
    module FiftyTenXTwoEighteen
      module TransactionSetDefs

        d = Schema
        r = SegmentReqs
        s = SegmentDefs

        RA820 = d::TransactionSetDef.build("RA", "820", "Payment Order/Remittance Advice",

          d::TableDef.header("Table 1 - Header",
            s:: ST.use( 10, r::Mandatory, d::RepeatCount.bounded(1)),
            s::BPR.use( 20, r::Mandatory, d::RepeatCount.bounded(1)),
            s::TRN.use( 20, r::Mandatory, d::RepeatCount.bounded(1)),
            s::REF.use( 50, r::Mandatory, d::RepeatCount.bounded(5)),
            s::DTM.use( 60, r::Mandatory,  d::RepeatCount.bounded(1)),
            d::LoopDef.build("N1", d::RepeatCount.bounded(1),
              s:: N1.use(  70, r::Optional, d::RepeatCount.bounded(1)),
              s:: N1.use(  70, r::Optional, d::RepeatCount.bounded(1)))),

          d::TableDef.detail("Table 2 - Detail",
            s:: ENT.use(  10, r::Mandatory, d::RepeatCount.bounded(1)),
            s:: NM1.use(  20, r::Mandatory, d::RepeatCount.bounded(1)),
            s:: RMR.use(  30, r::Mandatory, d::RepeatCount.bounded(1)),
            s:: DTM.use(  40, r::Mandatory, d::RepeatCount.bounded(1)),
            s:: ADX.use(  50, r::Mandatory, d::RepeatCount.bounded(1)),

            # d::LoopDef.build("N1", d::RepeatCount.bounded(10000),
            #   s:: N1.use(  20, r::Mandatory, d::RepeatCount.bounded(1)),
            #   d::LoopDef.build("RMT", d::RepeatCount.unbounded,
            #     s::RMT.use(  30, r::Optional,  d::RepeatCount.bounded(1)),
            #     s::REF.use(  50, r::Optional,  d::RepeatCount.unbounded),
            #     s::DTM.use(  60, r::Optional,  d::RepeatCount.bounded(10)))),

            s:: LE.use(  70, r::Mandatory, d::RepeatCount.bounded(1))),

          d::TableDef.summary("Table 3 - Summary",
            s:: SE.use( 10, r::Mandatory, d::RepeatCount.bounded(1))))

      end
    end
  end
end
