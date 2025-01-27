(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :model_evaluator.completion true)
(set-option :model.completion true)
(set-option :model.compact false)
(set-option :smt.case_split 3)
(set-option :smt.mbqi false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-option :smt.arith.solver 2)
; done setting options


(set-info :category "industrial")
(declare-sort |T@U| 0)
(declare-sort |T@T| 0)
(declare-fun real_pow (Real Real) Real)
(declare-fun UOrdering2 (|T@U| |T@U|) Bool)
(declare-fun UOrdering3 (|T@T| |T@U| |T@U|) Bool)
(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun TInt () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagMultiSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.RegressionsSubsetElementTypes.Dt () T@U)
(declare-fun Tagclass.RegressionsSubsetElementTypes.byte () T@U)
(declare-fun |##RegressionsSubsetElementTypes.Dt.One| () T@U)
(declare-fun |##RegressionsSubsetElementTypes.Dt.Many| () T@U)
(declare-fun |##RegressionsSubsetElementTypes.Dt.Sany| () T@U)
(declare-fun |##RegressionsSubsetElementTypes.Dt.Bany| () T@U)
(declare-fun |##RegressionsSubsetElementTypes.Dt.Pany| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Dt () T@U)
(declare-fun tytagFamily$byte () T@U)
(declare-fun Ctor (T@T) Int)
(declare-fun boolType () T@T)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun int_2_U (Int) T@U)
(declare-fun U_2_int (T@U) Int)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun RegressionsSubsetElementTypes.Dt._h10 (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.RegressionsSubsetElementTypes.byte () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun RegressionsSubsetElementTypes.Dt.Pany_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.RegressionsSubsetElementTypes.Dt () T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#RegressionsSubsetElementTypes.Dt.Many| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun RegressionsSubsetElementTypes.Dt.One_q (T@U) Bool)
(declare-fun RegressionsSubsetElementTypes.Dt.Many_q (T@U) Bool)
(declare-fun RegressionsSubsetElementTypes.Dt.Sany_q (T@U) Bool)
(declare-fun RegressionsSubsetElementTypes.Dt.Bany_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |#RegressionsSubsetElementTypes.Dt.One| (Int) T@U)
(declare-fun |#RegressionsSubsetElementTypes.Dt.Sany| (T@U) T@U)
(declare-fun |#RegressionsSubsetElementTypes.Dt.Bany| (T@U) T@U)
(declare-fun |#RegressionsSubsetElementTypes.Dt.Pany| (T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun RegressionsSubsetElementTypes.Dt._h6 (T@U) Int)
(declare-fun RegressionsSubsetElementTypes.Dt._h7 (T@U) T@U)
(declare-fun RegressionsSubsetElementTypes.Dt._h8 (T@U) T@U)
(declare-fun RegressionsSubsetElementTypes.Dt._h9 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= (Ctor boolType) 0) (= (Ctor intType) 1)) (= (Ctor realType) 2)) (forall ((arg0 Bool) ) (! (= (U_2_bool (bool_2_U arg0)) arg0)
 :qid |typeInv:U_2_bool|
 :pattern ( (bool_2_U arg0))
))) (forall ((x T@U) ) (! (= (bool_2_U (U_2_bool x)) x)
 :qid |cast:U_2_bool|
 :pattern ( (U_2_bool x))
))) (forall ((arg0@@0 Int) ) (! (= (U_2_int (int_2_U arg0@@0)) arg0@@0)
 :qid |typeInv:U_2_int|
 :pattern ( (int_2_U arg0@@0))
))) (forall ((x@@0 T@U) ) (! (= (int_2_U (U_2_int x@@0)) x@@0)
 :qid |cast:U_2_int|
 :pattern ( (U_2_int x@@0))
))) (forall ((arg0@@1 Real) ) (! (= (U_2_real (real_2_U arg0@@1)) arg0@@1)
 :qid |typeInv:U_2_real|
 :pattern ( (real_2_U arg0@@1))
))) (forall ((x@@1 T@U) ) (! (= (real_2_U (U_2_real x@@1)) x@@1)
 :qid |cast:U_2_real|
 :pattern ( (U_2_real x@@1))
))))
(assert (distinct TInt TagInt TagSet TagMultiSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.RegressionsSubsetElementTypes.Dt Tagclass.RegressionsSubsetElementTypes.byte |##RegressionsSubsetElementTypes.Dt.One| |##RegressionsSubsetElementTypes.Dt.Many| |##RegressionsSubsetElementTypes.Dt.Sany| |##RegressionsSubsetElementTypes.Dt.Bany| |##RegressionsSubsetElementTypes.Dt.Pany| |tytagFamily$_tuple#2| tytagFamily$Dt tytagFamily$byte)
)
(assert  (and (= (Ctor MapType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (RegressionsSubsetElementTypes.Dt.Pany_q d) ($IsAlloc DatatypeTypeType d Tclass.RegressionsSubsetElementTypes.Dt $h))) ($IsAlloc MapType (RegressionsSubsetElementTypes.Dt._h10 d) (TMap Tclass.RegressionsSubsetElementTypes.byte Tclass.RegressionsSubsetElementTypes.byte) $h))
 :qid |unknown.0:0|
 :skolemid |4076|
 :pattern ( ($IsAlloc MapType (RegressionsSubsetElementTypes.Dt._h10 d) (TMap Tclass.RegressionsSubsetElementTypes.byte Tclass.RegressionsSubsetElementTypes.byte) $h))
)))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0| Tclass.RegressionsSubsetElementTypes.byte $h@@0)
 :qid |unknown.0:0|
 :skolemid |4034|
 :pattern ( ($IsAlloc intType |x#0| Tclass.RegressionsSubsetElementTypes.byte $h@@0))
)))
(assert (forall ((|a#10#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#10#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#10#0#0| i))) (DtRank (|#RegressionsSubsetElementTypes.Dt.Many| |a#10#0#0|))))
 :qid |SubsetTypesdfy.262:12|
 :skolemid |4051|
 :pattern ( (|Seq#Index| |a#10#0#0| i) (|#RegressionsSubsetElementTypes.Dt.Many| |a#10#0#0|))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@0))
 :qid |unknown.0:0|
 :skolemid |3997|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor MultiSetType) 5))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |3581|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |3985|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3546|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3544|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |3986|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@1) (= (DatatypeCtorId d@@1) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |3978|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (RegressionsSubsetElementTypes.Dt.One_q d@@2) (= (DatatypeCtorId d@@2) |##RegressionsSubsetElementTypes.Dt.One|))
 :qid |unknown.0:0|
 :skolemid |4036|
 :pattern ( (RegressionsSubsetElementTypes.Dt.One_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (RegressionsSubsetElementTypes.Dt.Many_q d@@3) (= (DatatypeCtorId d@@3) |##RegressionsSubsetElementTypes.Dt.Many|))
 :qid |unknown.0:0|
 :skolemid |4044|
 :pattern ( (RegressionsSubsetElementTypes.Dt.Many_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (RegressionsSubsetElementTypes.Dt.Sany_q d@@4) (= (DatatypeCtorId d@@4) |##RegressionsSubsetElementTypes.Dt.Sany|))
 :qid |unknown.0:0|
 :skolemid |4054|
 :pattern ( (RegressionsSubsetElementTypes.Dt.Sany_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (RegressionsSubsetElementTypes.Dt.Bany_q d@@5) (= (DatatypeCtorId d@@5) |##RegressionsSubsetElementTypes.Dt.Bany|))
 :qid |unknown.0:0|
 :skolemid |4063|
 :pattern ( (RegressionsSubsetElementTypes.Dt.Bany_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (RegressionsSubsetElementTypes.Dt.Pany_q d@@6) (= (DatatypeCtorId d@@6) |##RegressionsSubsetElementTypes.Dt.Pany|))
 :qid |unknown.0:0|
 :skolemid |4072|
 :pattern ( (RegressionsSubsetElementTypes.Dt.Pany_q d@@6))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3555|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@7) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@7 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |3979|
)))
 :qid |unknown.0:0|
 :skolemid |3980|
 :pattern ( (_System.Tuple2.___hMake2_q d@@7))
)))
(assert (= (Ctor SetType) 6))
(assert (forall ((v@@0 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v@@0 bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |3575|
 :pattern ( (|Set#IsMember| v@@0 bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |3576|
 :pattern ( ($Is SetType v@@0 (TSet t0@@0)))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (RegressionsSubsetElementTypes.Dt.One_q d@@8) (exists ((|a#1#0#0@@0| Int) ) (! (= d@@8 (|#RegressionsSubsetElementTypes.Dt.One| |a#1#0#0@@0|))
 :qid |SubsetTypesdfy.261:11|
 :skolemid |4037|
)))
 :qid |unknown.0:0|
 :skolemid |4038|
 :pattern ( (RegressionsSubsetElementTypes.Dt.One_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (RegressionsSubsetElementTypes.Dt.Many_q d@@9) (exists ((|a#6#0#0| T@U) ) (! (= d@@9 (|#RegressionsSubsetElementTypes.Dt.Many| |a#6#0#0|))
 :qid |SubsetTypesdfy.262:12|
 :skolemid |4045|
)))
 :qid |unknown.0:0|
 :skolemid |4046|
 :pattern ( (RegressionsSubsetElementTypes.Dt.Many_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (RegressionsSubsetElementTypes.Dt.Sany_q d@@10) (exists ((|a#13#0#0| T@U) ) (! (= d@@10 (|#RegressionsSubsetElementTypes.Dt.Sany| |a#13#0#0|))
 :qid |SubsetTypesdfy.263:12|
 :skolemid |4055|
)))
 :qid |unknown.0:0|
 :skolemid |4056|
 :pattern ( (RegressionsSubsetElementTypes.Dt.Sany_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (RegressionsSubsetElementTypes.Dt.Bany_q d@@11) (exists ((|a#19#0#0| T@U) ) (! (= d@@11 (|#RegressionsSubsetElementTypes.Dt.Bany| |a#19#0#0|))
 :qid |SubsetTypesdfy.264:12|
 :skolemid |4064|
)))
 :qid |unknown.0:0|
 :skolemid |4065|
 :pattern ( (RegressionsSubsetElementTypes.Dt.Bany_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (RegressionsSubsetElementTypes.Dt.Pany_q d@@12) (exists ((|a#25#0#0| T@U) ) (! (= d@@12 (|#RegressionsSubsetElementTypes.Dt.Pany| |a#25#0#0|))
 :qid |SubsetTypesdfy.265:12|
 :skolemid |4073|
)))
 :qid |unknown.0:0|
 :skolemid |4074|
 :pattern ( (RegressionsSubsetElementTypes.Dt.Pany_q d@@12))
)))
(assert (forall ((v@@1 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t h) ($IsAlloc T@@1 v@@1 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3568|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.RegressionsSubsetElementTypes.Dt) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass.RegressionsSubsetElementTypes.Dt)))
 :qid |unknown.0:0|
 :skolemid |4008|
 :pattern ( ($IsBox bx@@0 Tclass.RegressionsSubsetElementTypes.Dt))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.RegressionsSubsetElementTypes.byte) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass.RegressionsSubsetElementTypes.byte)))
 :qid |unknown.0:0|
 :skolemid |4012|
 :pattern ( ($IsBox bx@@1 Tclass.RegressionsSubsetElementTypes.byte))
)))
(assert (forall ((|a#2#0#0@@1| Int) ) (! (= ($Is DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.One| |a#2#0#0@@1|) Tclass.RegressionsSubsetElementTypes.Dt) ($Is intType (int_2_U |a#2#0#0@@1|) Tclass.RegressionsSubsetElementTypes.byte))
 :qid |SubsetTypesdfy.261:11|
 :skolemid |4039|
 :pattern ( ($Is DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.One| |a#2#0#0@@1|) Tclass.RegressionsSubsetElementTypes.Dt))
)))
(assert  (and (and (forall ((t0@@1 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@1 t1 (MapType0Store t0@@1 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)))
(assert (forall ((|a#30#0#0| T@U) (bx@@2 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#30#0#0|) bx@@2) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#30#0#0|) bx@@2))) (DtRank (|#RegressionsSubsetElementTypes.Dt.Pany| |a#30#0#0|))))
 :qid |SubsetTypesdfy.265:12|
 :skolemid |4080|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#30#0#0|) bx@@2) (|#RegressionsSubsetElementTypes.Dt.Pany| |a#30#0#0|))
)))
(assert (forall ((|a#23#0#0| T@U) (d@@13 T@U) ) (!  (=> (> (|MultiSet#Multiplicity| |a#23#0#0| ($Box DatatypeTypeType d@@13)) 0) (< (DtRank d@@13) (DtRank (|#RegressionsSubsetElementTypes.Dt.Bany| |a#23#0#0|))))
 :qid |SubsetTypesdfy.264:12|
 :skolemid |4070|
 :pattern ( (|MultiSet#Multiplicity| |a#23#0#0| ($Box DatatypeTypeType d@@13)) (|#RegressionsSubsetElementTypes.Dt.Bany| |a#23#0#0|))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall ((|a#7#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.Many| |a#7#0#0|) Tclass.RegressionsSubsetElementTypes.Dt) ($Is SeqType |a#7#0#0| (TSeq Tclass.RegressionsSubsetElementTypes.byte)))
 :qid |SubsetTypesdfy.262:12|
 :skolemid |4047|
 :pattern ( ($Is DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.Many| |a#7#0#0|) Tclass.RegressionsSubsetElementTypes.Dt))
)))
(assert (forall ((|a#14#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.Sany| |a#14#0#0|) Tclass.RegressionsSubsetElementTypes.Dt) ($Is SetType |a#14#0#0| (TSet Tclass.RegressionsSubsetElementTypes.byte)))
 :qid |SubsetTypesdfy.263:12|
 :skolemid |4057|
 :pattern ( ($Is DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.Sany| |a#14#0#0|) Tclass.RegressionsSubsetElementTypes.Dt))
)))
(assert (forall ((|a#20#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.Bany| |a#20#0#0|) Tclass.RegressionsSubsetElementTypes.Dt) ($Is MultiSetType |a#20#0#0| (TMultiSet Tclass.RegressionsSubsetElementTypes.byte)))
 :qid |SubsetTypesdfy.264:12|
 :skolemid |4066|
 :pattern ( ($Is DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.Bany| |a#20#0#0|) Tclass.RegressionsSubsetElementTypes.Dt))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) ) (! (= ($Is MultiSetType v@@2 (TMultiSet t0@@2)) (forall ((bx@@3 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@2 bx@@3)) ($IsBox bx@@3 t0@@2))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |3579|
 :pattern ( (|MultiSet#Multiplicity| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |3580|
 :pattern ( ($Is MultiSetType v@@2 (TMultiSet t0@@2)))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.Pany| |a#26#0#0|) Tclass.RegressionsSubsetElementTypes.Dt) ($Is MapType |a#26#0#0| (TMap Tclass.RegressionsSubsetElementTypes.byte Tclass.RegressionsSubsetElementTypes.byte)))
 :qid |SubsetTypesdfy.265:12|
 :skolemid |4075|
 :pattern ( ($Is DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.Pany| |a#26#0#0|) Tclass.RegressionsSubsetElementTypes.Dt))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |3556|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((v@@3 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@0) ($Is T@@2 v@@3 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3567|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@0))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@5 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@5)) (<= (|MultiSet#Multiplicity| ms bx@@5) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |3712|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@5))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |3713|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |3714|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3750|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@3) h@@0) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@6) ($IsAllocBox bx@@6 t0@@3 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |3596|
 :pattern ( (|Set#IsMember| v@@4 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |3597|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@3) h@@0))
)))
(assert (forall ((o T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |3716|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o))
)))
(assert (forall ((t@@1 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@1 u)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |3538|
 :pattern ( (TMap t@@1 u))
)))
(assert (forall ((t@@2 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |3539|
 :pattern ( (TMap t@@2 u@@0))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@3 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |3540|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |3977|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |3982|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |3983|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |3992|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |3994|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@4) h@@1) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@0) t0@@4 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |3602|
 :pattern ( (|Seq#Index| v@@5 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |3603|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@4) h@@1))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |3530|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |3531|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |3534|
 :pattern ( (TMultiSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TMultiSet t@@7)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |3535|
 :pattern ( (TMultiSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Inv0_TSeq (TSeq t@@8)) t@@8)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |3536|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Tag (TSeq t@@9)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |3537|
 :pattern ( (TSeq t@@9))
)))
(assert (forall ((|a#0#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#RegressionsSubsetElementTypes.Dt.One| |a#0#0#0@@0|)) |##RegressionsSubsetElementTypes.Dt.One|)
 :qid |SubsetTypesdfy.261:11|
 :skolemid |4035|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.One| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) ) (! (= (RegressionsSubsetElementTypes.Dt._h6 (|#RegressionsSubsetElementTypes.Dt.One| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |SubsetTypesdfy.261:11|
 :skolemid |4042|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.One| |a#4#0#0@@0|))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (= (DatatypeCtorId (|#RegressionsSubsetElementTypes.Dt.Many| |a#5#0#0|)) |##RegressionsSubsetElementTypes.Dt.Many|)
 :qid |SubsetTypesdfy.262:12|
 :skolemid |4043|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.Many| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (RegressionsSubsetElementTypes.Dt._h7 (|#RegressionsSubsetElementTypes.Dt.Many| |a#9#0#0|)) |a#9#0#0|)
 :qid |SubsetTypesdfy.262:12|
 :skolemid |4050|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.Many| |a#9#0#0|))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (= (DatatypeCtorId (|#RegressionsSubsetElementTypes.Dt.Sany| |a#12#0#0|)) |##RegressionsSubsetElementTypes.Dt.Sany|)
 :qid |SubsetTypesdfy.263:12|
 :skolemid |4053|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.Sany| |a#12#0#0|))
)))
(assert (forall ((|a#16#0#0| T@U) ) (! (= (RegressionsSubsetElementTypes.Dt._h8 (|#RegressionsSubsetElementTypes.Dt.Sany| |a#16#0#0|)) |a#16#0#0|)
 :qid |SubsetTypesdfy.263:12|
 :skolemid |4060|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.Sany| |a#16#0#0|))
)))
(assert (forall ((|a#18#0#0| T@U) ) (! (= (DatatypeCtorId (|#RegressionsSubsetElementTypes.Dt.Bany| |a#18#0#0|)) |##RegressionsSubsetElementTypes.Dt.Bany|)
 :qid |SubsetTypesdfy.264:12|
 :skolemid |4062|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.Bany| |a#18#0#0|))
)))
(assert (forall ((|a#22#0#0| T@U) ) (! (= (RegressionsSubsetElementTypes.Dt._h9 (|#RegressionsSubsetElementTypes.Dt.Bany| |a#22#0#0|)) |a#22#0#0|)
 :qid |SubsetTypesdfy.264:12|
 :skolemid |4069|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.Bany| |a#22#0#0|))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= (DatatypeCtorId (|#RegressionsSubsetElementTypes.Dt.Pany| |a#24#0#0|)) |##RegressionsSubsetElementTypes.Dt.Pany|)
 :qid |SubsetTypesdfy.265:12|
 :skolemid |4071|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.Pany| |a#24#0#0|))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (= (RegressionsSubsetElementTypes.Dt._h10 (|#RegressionsSubsetElementTypes.Dt.Pany| |a#28#0#0|)) |a#28#0#0|)
 :qid |SubsetTypesdfy.265:12|
 :skolemid |4078|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.Pany| |a#28#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3554|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((v@@6 T@U) (t0@@5 T@U) (t1@@0 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@6 (TMap t0@@5 t1@@0) h@@2) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@7) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@7) t1@@0 h@@2) ($IsAllocBox bx@@7 t0@@5 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |3604|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@7))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@7))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |3605|
 :pattern ( ($IsAlloc MapType v@@6 (TMap t0@@5 t1@@0) h@@2))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3993|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3995|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0|))
)))
(assert (forall ((s@@1 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@1) 0) (= s@@1 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@1) 0)) (not true)) (exists ((x@@6 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@1 x@@6))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |3717|
 :pattern ( (|MultiSet#Multiplicity| s@@1 x@@6))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |3718|
 :pattern ( (|MultiSet#Card| s@@1))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |3814|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@8 T@U) (s@@2 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@8 (TMap s@@2 t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@8)) bx@@8) ($Is MapType ($Unbox MapType bx@@8) (TMap s@@2 t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |3565|
 :pattern ( ($IsBox bx@@8 (TMap s@@2 t@@10)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |3984|
 :pattern ( ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (< (|Seq#Rank| |a#11#0#0|) (DtRank (|#RegressionsSubsetElementTypes.Dt.Many| |a#11#0#0|)))
 :qid |SubsetTypesdfy.262:12|
 :skolemid |4052|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.Many| |a#11#0#0|))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@6 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@1 t2 (MapType1Store t0@@6 t1@@1 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 9)) (= (Ctor FieldType) 10)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 11)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |9994|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |3981|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |3802|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |3803|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@7 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@7)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |3804|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |3805|
 :pattern ( (|Map#Values| m@@5))
)))
(assert (forall ((m@@6 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@6) item)  (and (|Set#IsMember| (|Map#Domain| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |3813|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@6) item))
)))
(assert (forall ((m@@7 T@U) (v@@8 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@8) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@3) (= v@@8 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |3811|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |3812|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@8))
)))
(assert (forall ((d@@14 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@14)) (DtRank d@@14))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |3613|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@14)))
)))
(assert (forall ((bx@@10 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |3561|
 :pattern ( ($IsBox bx@@10 (TSet t@@11)))
)))
(assert (forall ((bx@@11 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@11 (TMultiSet t@@12)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@11)) bx@@11) ($Is MultiSetType ($Unbox MultiSetType bx@@11) (TMultiSet t@@12))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |3563|
 :pattern ( ($IsBox bx@@11 (TMultiSet t@@12)))
)))
(assert (forall ((bx@@12 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@12 (TSeq t@@13)) (and (= ($Box SeqType ($Unbox SeqType bx@@12)) bx@@12) ($Is SeqType ($Unbox SeqType bx@@12) (TSeq t@@13))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |3564|
 :pattern ( ($IsBox bx@@12 (TSeq t@@13)))
)))
(assert (forall ((v@@9 T@U) (t0@@7 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@9 (TMap t0@@7 t1@@2)) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@9) bx@@13) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@13) t1@@2) ($IsBox bx@@13 t0@@7)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |3584|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@13))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@9) bx@@13))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |3585|
 :pattern ( ($Is MapType v@@9 (TMap t0@@7 t1@@2)))
)))
(assert (forall ((d@@15 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@15 Tclass.RegressionsSubsetElementTypes.Dt)) ($IsAlloc DatatypeTypeType d@@15 Tclass.RegressionsSubsetElementTypes.Dt $h@@2))
 :qid |unknown.0:0|
 :skolemid |4081|
 :pattern ( ($IsAlloc DatatypeTypeType d@@15 Tclass.RegressionsSubsetElementTypes.Dt $h@@2))
)))
(assert (= (Tag Tclass.RegressionsSubsetElementTypes.Dt) Tagclass.RegressionsSubsetElementTypes.Dt))
(assert (= (TagFamily Tclass.RegressionsSubsetElementTypes.Dt) tytagFamily$Dt))
(assert (= (Tag Tclass.RegressionsSubsetElementTypes.byte) Tagclass.RegressionsSubsetElementTypes.byte))
(assert (= (TagFamily Tclass.RegressionsSubsetElementTypes.byte) tytagFamily$byte))
(assert (forall ((d@@16 T@U) ) (!  (=> ($Is DatatypeTypeType d@@16 Tclass.RegressionsSubsetElementTypes.Dt) (or (or (or (or (RegressionsSubsetElementTypes.Dt.One_q d@@16) (RegressionsSubsetElementTypes.Dt.Many_q d@@16)) (RegressionsSubsetElementTypes.Dt.Sany_q d@@16)) (RegressionsSubsetElementTypes.Dt.Bany_q d@@16)) (RegressionsSubsetElementTypes.Dt.Pany_q d@@16)))
 :qid |unknown.0:0|
 :skolemid |4083|
 :pattern ( (RegressionsSubsetElementTypes.Dt.Pany_q d@@16) ($Is DatatypeTypeType d@@16 Tclass.RegressionsSubsetElementTypes.Dt))
 :pattern ( (RegressionsSubsetElementTypes.Dt.Bany_q d@@16) ($Is DatatypeTypeType d@@16 Tclass.RegressionsSubsetElementTypes.Dt))
 :pattern ( (RegressionsSubsetElementTypes.Dt.Sany_q d@@16) ($Is DatatypeTypeType d@@16 Tclass.RegressionsSubsetElementTypes.Dt))
 :pattern ( (RegressionsSubsetElementTypes.Dt.Many_q d@@16) ($Is DatatypeTypeType d@@16 Tclass.RegressionsSubsetElementTypes.Dt))
 :pattern ( (RegressionsSubsetElementTypes.Dt.One_q d@@16) ($Is DatatypeTypeType d@@16 Tclass.RegressionsSubsetElementTypes.Dt))
)))
(assert (forall ((|a#17#0#0| T@U) (d@@17 T@U) ) (!  (=> (|Set#IsMember| |a#17#0#0| ($Box DatatypeTypeType d@@17)) (< (DtRank d@@17) (DtRank (|#RegressionsSubsetElementTypes.Dt.Sany| |a#17#0#0|))))
 :qid |SubsetTypesdfy.263:12|
 :skolemid |4061|
 :pattern ( (|Set#IsMember| |a#17#0#0| ($Box DatatypeTypeType d@@17)) (|#RegressionsSubsetElementTypes.Dt.Sany| |a#17#0#0|))
)))
(assert (forall ((d@@18 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple2.___hMake2_q d@@18) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@18 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |3987|
 :pattern ( ($IsAlloc DatatypeTypeType d@@18 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@3))
)))) ($IsAllocBox (_System.Tuple2._0 d@@18) |_System._tuple#2$T0@@6| $h@@3))
 :qid |unknown.0:0|
 :skolemid |3988|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@18) |_System._tuple#2$T0@@6| $h@@3))
)))
(assert (forall ((d@@19 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@19) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@19 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |3989|
 :pattern ( ($IsAlloc DatatypeTypeType d@@19 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._1 d@@19) |_System._tuple#2$T1@@7| $h@@4))
 :qid |unknown.0:0|
 :skolemid |3990|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@19) |_System._tuple#2$T1@@7| $h@@4))
)))
(assert (forall ((d@@20 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (RegressionsSubsetElementTypes.Dt.One_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass.RegressionsSubsetElementTypes.Dt $h@@5))) ($IsAlloc intType (int_2_U (RegressionsSubsetElementTypes.Dt._h6 d@@20)) Tclass.RegressionsSubsetElementTypes.byte $h@@5))
 :qid |unknown.0:0|
 :skolemid |4040|
 :pattern ( ($IsAlloc intType (int_2_U (RegressionsSubsetElementTypes.Dt._h6 d@@20)) Tclass.RegressionsSubsetElementTypes.byte $h@@5))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.RegressionsSubsetElementTypes.byte)  (and (<= (LitInt 0) (U_2_int |x#0@@0|)) (< (U_2_int |x#0@@0|) 256)))
 :qid |unknown.0:0|
 :skolemid |4033|
 :pattern ( ($Is intType |x#0@@0| Tclass.RegressionsSubsetElementTypes.byte))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3991|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3547|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((|a#3#0#0@@0| Int) ) (! (= (|#RegressionsSubsetElementTypes.Dt.One| (LitInt |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.One| |a#3#0#0@@0|)))
 :qid |SubsetTypesdfy.261:11|
 :skolemid |4041|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.One| (LitInt |a#3#0#0@@0|)))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (|#RegressionsSubsetElementTypes.Dt.Many| (Lit SeqType |a#8#0#0|)) (Lit DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.Many| |a#8#0#0|)))
 :qid |SubsetTypesdfy.262:12|
 :skolemid |4049|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.Many| (Lit SeqType |a#8#0#0|)))
)))
(assert (forall ((|a#15#0#0| T@U) ) (! (= (|#RegressionsSubsetElementTypes.Dt.Sany| (Lit SetType |a#15#0#0|)) (Lit DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.Sany| |a#15#0#0|)))
 :qid |SubsetTypesdfy.263:12|
 :skolemid |4059|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.Sany| (Lit SetType |a#15#0#0|)))
)))
(assert (forall ((|a#21#0#0| T@U) ) (! (= (|#RegressionsSubsetElementTypes.Dt.Bany| (Lit MultiSetType |a#21#0#0|)) (Lit DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.Bany| |a#21#0#0|)))
 :qid |SubsetTypesdfy.264:12|
 :skolemid |4068|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.Bany| (Lit MultiSetType |a#21#0#0|)))
)))
(assert (forall ((|a#27#0#0| T@U) ) (! (= (|#RegressionsSubsetElementTypes.Dt.Pany| (Lit MapType |a#27#0#0|)) (Lit DatatypeTypeType (|#RegressionsSubsetElementTypes.Dt.Pany| |a#27#0#0|)))
 :qid |SubsetTypesdfy.265:12|
 :skolemid |4077|
 :pattern ( (|#RegressionsSubsetElementTypes.Dt.Pany| (Lit MapType |a#27#0#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3545|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((|a#29#0#0| T@U) (d@@21 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#29#0#0|) ($Box DatatypeTypeType d@@21)) (< (DtRank d@@21) (DtRank (|#RegressionsSubsetElementTypes.Dt.Pany| |a#29#0#0|))))
 :qid |SubsetTypesdfy.265:12|
 :skolemid |4079|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#29#0#0|) ($Box DatatypeTypeType d@@21)) (|#RegressionsSubsetElementTypes.Dt.Pany| |a#29#0#0|))
)))
(assert (forall ((s@@3 T@U) ) (!  (=> (= (|Seq#Length| s@@3) 0) (= s@@3 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3751|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((d@@22 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (RegressionsSubsetElementTypes.Dt.Many_q d@@22) ($IsAlloc DatatypeTypeType d@@22 Tclass.RegressionsSubsetElementTypes.Dt $h@@6))) ($IsAlloc SeqType (RegressionsSubsetElementTypes.Dt._h7 d@@22) (TSeq Tclass.RegressionsSubsetElementTypes.byte) $h@@6))
 :qid |unknown.0:0|
 :skolemid |4048|
 :pattern ( ($IsAlloc SeqType (RegressionsSubsetElementTypes.Dt._h7 d@@22) (TSeq Tclass.RegressionsSubsetElementTypes.byte) $h@@6))
)))
(assert (forall ((d@@23 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (RegressionsSubsetElementTypes.Dt.Sany_q d@@23) ($IsAlloc DatatypeTypeType d@@23 Tclass.RegressionsSubsetElementTypes.Dt $h@@7))) ($IsAlloc SetType (RegressionsSubsetElementTypes.Dt._h8 d@@23) (TSet Tclass.RegressionsSubsetElementTypes.byte) $h@@7))
 :qid |unknown.0:0|
 :skolemid |4058|
 :pattern ( ($IsAlloc SetType (RegressionsSubsetElementTypes.Dt._h8 d@@23) (TSet Tclass.RegressionsSubsetElementTypes.byte) $h@@7))
)))
(assert (forall ((d@@24 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (RegressionsSubsetElementTypes.Dt.Bany_q d@@24) ($IsAlloc DatatypeTypeType d@@24 Tclass.RegressionsSubsetElementTypes.Dt $h@@8))) ($IsAlloc MultiSetType (RegressionsSubsetElementTypes.Dt._h9 d@@24) (TMultiSet Tclass.RegressionsSubsetElementTypes.byte) $h@@8))
 :qid |unknown.0:0|
 :skolemid |4067|
 :pattern ( ($IsAlloc MultiSetType (RegressionsSubsetElementTypes.Dt._h9 d@@24) (TMultiSet Tclass.RegressionsSubsetElementTypes.byte) $h@@8))
)))
(assert (forall ((v@@10 T@U) (t0@@8 T@U) (h@@3 T@U) ) (! (= ($IsAlloc MultiSetType v@@10 (TMultiSet t0@@8) h@@3) (forall ((bx@@14 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@10 bx@@14)) ($IsAllocBox bx@@14 t0@@8 h@@3))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |3600|
 :pattern ( (|MultiSet#Multiplicity| v@@10 bx@@14))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |3601|
 :pattern ( ($IsAlloc MultiSetType v@@10 (TMultiSet t0@@8) h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@11 T@U) ) (! ($IsAlloc intType v@@11 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3590|
 :pattern ( ($IsAlloc intType v@@11 TInt h@@4))
)))
(assert (forall ((v@@12 T@U) (t0@@9 T@U) ) (! (= ($Is SeqType v@@12 (TSeq t0@@9)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@12))) ($IsBox (|Seq#Index| v@@12 i@@1) t0@@9))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |3582|
 :pattern ( (|Seq#Index| v@@12 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |3583|
 :pattern ( ($Is SeqType v@@12 (TSeq t0@@9)))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((k@@0 T@U) (v@@13 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@13)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |3806|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |3807|
 :pattern ( (|Map#Items| m@@8))
)))
(assert (forall ((s@@4 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@4))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@4 i@@2))) (|Seq#Rank| s@@4)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |3796|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@4 i@@2))))
)))
(assert (forall ((v@@14 T@U) (t0@@10 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@14 (TMap t0@@10 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@14) (TSet t0@@10)) ($Is SetType (|Map#Values| v@@14) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@14) (TSet (Tclass._System.Tuple2 t0@@10 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |3586|
 :pattern ( ($Is MapType v@@14 (TMap t0@@10 t1@@3)))
)))
(assert (forall ((v@@15 T@U) ) (! ($Is intType v@@15 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3569|
 :pattern ( ($Is intType v@@15 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |m#0| () T@U)
(declare-fun |x#0_0@0| () Int)
(declare-fun |u#0| () T@U)
(declare-fun |x#1_0@0| () Int)
(declare-fun |t#0| () T@U)
(declare-fun |x#2_0@0| () Int)
(declare-fun |s#0| () T@U)
(declare-fun |i#3_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |dt#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$RegressionsSubsetElementTypes.__default.M3)
(set-option :timeout 10000)
(set-option :rlimit 0)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :model_evaluator.completion true)
(set-option :model.completion true)
(set-option :model.compact false)
(set-option :smt.case_split 3)
(set-option :smt.mbqi false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-option :smt.arith.solver 2)
(assert (not
 (=> (= (ControlFlow 0 0) 47) (let ((anon26_correct  (=> (and (forall ((|x#2| T@U) ) (!  (and (and (and (=> (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType |x#2|)) (<= (LitInt 0) (U_2_int |x#2|))) (=> (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType |x#2|)) (< (U_2_int |x#2|) 256))) (=> (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType |x#2|)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |m#0|) ($Box intType |x#2|))))))) (=> (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType |x#2|)) (< (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |m#0|) ($Box intType |x#2|)))) 256)))
 :qid |SubsetTypesdfy.300:17|
 :skolemid |4026|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |m#0|) ($Box intType |x#2|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType |x#2|)))
)) (= (ControlFlow 0 34) (- 0 33))) ($Is MapType |m#0| (TMap Tclass.RegressionsSubsetElementTypes.byte Tclass.RegressionsSubsetElementTypes.byte)))))
(let ((anon47_Else_correct  (=> (and (< (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |m#0|) ($Box intType (int_2_U |x#0_0@0|))))) (LitInt 0)) (= (ControlFlow 0 39) 34)) anon26_correct)))
(let ((anon47_Then_correct  (=> (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |m#0|) ($Box intType (int_2_U |x#0_0@0|)))))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType (int_2_U |x#0_0@0|)))) (=> (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType (int_2_U |x#0_0@0|))) (=> (= (ControlFlow 0 37) 34) anon26_correct))))))
(let ((anon46_Then_correct  (=> (and (<= (LitInt 0) |x#0_0@0|) (< |x#0_0@0| 256)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType (int_2_U |x#0_0@0|)))) (=> (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType (int_2_U |x#0_0@0|))) (and (=> (= (ControlFlow 0 40) 37) anon47_Then_correct) (=> (= (ControlFlow 0 40) 39) anon47_Else_correct)))))))
(let ((anon46_Else_correct  (=> (and (not (and (<= (LitInt 0) |x#0_0@0|) (< |x#0_0@0| 256))) (= (ControlFlow 0 36) 34)) anon26_correct)))
(let ((anon45_Else_correct  (=> (< |x#0_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 43) 40) anon46_Then_correct) (=> (= (ControlFlow 0 43) 36) anon46_Else_correct)))))
(let ((anon45_Then_correct  (=> (<= (LitInt 0) |x#0_0@0|) (and (=> (= (ControlFlow 0 42) 40) anon46_Then_correct) (=> (= (ControlFlow 0 42) 36) anon46_Else_correct)))))
(let ((anon44_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType (int_2_U |x#0_0@0|))) (and (=> (= (ControlFlow 0 44) 42) anon45_Then_correct) (=> (= (ControlFlow 0 44) 43) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType (int_2_U |x#0_0@0|)))) (= (ControlFlow 0 35) 34)) anon26_correct)))
(let ((anon43_Then_correct  (and (=> (= (ControlFlow 0 45) 44) anon44_Then_correct) (=> (= (ControlFlow 0 45) 35) anon44_Else_correct))))
(let ((anon18_correct  (=> (and (forall ((|x#1| T@U) ) (!  (and (=> (> (|MultiSet#Multiplicity| |u#0| ($Box intType |x#1|)) 0) (<= (LitInt 0) (U_2_int |x#1|))) (=> (> (|MultiSet#Multiplicity| |u#0| ($Box intType |x#1|)) 0) (< (U_2_int |x#1|) 256)))
 :qid |SubsetTypesdfy.298:17|
 :skolemid |4027|
 :pattern ( (|MultiSet#Multiplicity| |u#0| ($Box intType |x#1|)))
)) (= (ControlFlow 0 27) (- 0 26))) ($Is MultiSetType |u#0| (TMultiSet Tclass.RegressionsSubsetElementTypes.byte)))))
(let ((anon41_Else_correct  (=> (and (< |x#1_0@0| (LitInt 0)) (= (ControlFlow 0 30) 27)) anon18_correct)))
(let ((anon41_Then_correct  (=> (and (<= (LitInt 0) |x#1_0@0|) (= (ControlFlow 0 29) 27)) anon18_correct)))
(let ((anon40_Then_correct  (=> (> (|MultiSet#Multiplicity| |u#0| ($Box intType (int_2_U |x#1_0@0|))) 0) (and (=> (= (ControlFlow 0 31) 29) anon41_Then_correct) (=> (= (ControlFlow 0 31) 30) anon41_Else_correct)))))
(let ((anon40_Else_correct  (=> (and (>= 0 (|MultiSet#Multiplicity| |u#0| ($Box intType (int_2_U |x#1_0@0|)))) (= (ControlFlow 0 28) 27)) anon18_correct)))
(let ((anon39_Then_correct  (and (=> (= (ControlFlow 0 32) 31) anon40_Then_correct) (=> (= (ControlFlow 0 32) 28) anon40_Else_correct))))
(let ((anon13_correct  (=> (and (forall ((|x#0@@1| T@U) ) (!  (and (=> (|Set#IsMember| |t#0| ($Box intType |x#0@@1|)) (<= (LitInt 0) (U_2_int |x#0@@1|))) (=> (|Set#IsMember| |t#0| ($Box intType |x#0@@1|)) (< (U_2_int |x#0@@1|) 256)))
 :qid |SubsetTypesdfy.296:17|
 :skolemid |4028|
 :pattern ( (|Set#IsMember| |t#0| ($Box intType |x#0@@1|)))
)) (= (ControlFlow 0 20) (- 0 19))) ($Is SetType |t#0| (TSet Tclass.RegressionsSubsetElementTypes.byte)))))
(let ((anon37_Else_correct  (=> (and (< |x#2_0@0| (LitInt 0)) (= (ControlFlow 0 23) 20)) anon13_correct)))
(let ((anon37_Then_correct  (=> (and (<= (LitInt 0) |x#2_0@0|) (= (ControlFlow 0 22) 20)) anon13_correct)))
(let ((anon36_Then_correct  (=> (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#2_0@0|))) (and (=> (= (ControlFlow 0 24) 22) anon37_Then_correct) (=> (= (ControlFlow 0 24) 23) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (not (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#2_0@0|)))) (= (ControlFlow 0 21) 20)) anon13_correct)))
(let ((anon35_Then_correct  (and (=> (= (ControlFlow 0 25) 24) anon36_Then_correct) (=> (= (ControlFlow 0 25) 21) anon36_Else_correct))))
(let ((anon8_correct  (=> (and (forall ((|i#0| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| |s#0|))) (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#0|))))) (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| |s#0|))) (< (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#0|))) 256)))
 :qid |SubsetTypesdfy.294:17|
 :skolemid |4029|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#0|)))
)) (= (ControlFlow 0 9) (- 0 8))) ($Is SeqType |s#0| (TSeq Tclass.RegressionsSubsetElementTypes.byte)))))
(let ((anon33_Else_correct  (=> (and (< (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#3_0@0|))) (LitInt 0)) (= (ControlFlow 0 13) 9)) anon8_correct)))
(let ((anon33_Then_correct  (=> (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#3_0@0|)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (<= 0 |i#3_0@0|) (< |i#3_0@0| (|Seq#Length| |s#0|)))) (=> (and (<= 0 |i#3_0@0|) (< |i#3_0@0| (|Seq#Length| |s#0|))) (=> (= (ControlFlow 0 11) 9) anon8_correct))))))
(let ((anon32_Then_correct  (=> (and (<= (LitInt 0) |i#3_0@0|) (< |i#3_0@0| (|Seq#Length| |s#0|))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (and (<= 0 |i#3_0@0|) (< |i#3_0@0| (|Seq#Length| |s#0|)))) (=> (and (<= 0 |i#3_0@0|) (< |i#3_0@0| (|Seq#Length| |s#0|))) (and (=> (= (ControlFlow 0 14) 11) anon33_Then_correct) (=> (= (ControlFlow 0 14) 13) anon33_Else_correct)))))))
(let ((anon32_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#3_0@0|) (< |i#3_0@0| (|Seq#Length| |s#0|)))) (= (ControlFlow 0 10) 9)) anon8_correct)))
(let ((anon31_Else_correct  (=> (< |i#3_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 17) 14) anon32_Then_correct) (=> (= (ControlFlow 0 17) 10) anon32_Else_correct)))))
(let ((anon31_Then_correct  (=> (<= (LitInt 0) |i#3_0@0|) (and (=> (= (ControlFlow 0 16) 14) anon32_Then_correct) (=> (= (ControlFlow 0 16) 10) anon32_Else_correct)))))
(let ((anon30_Then_correct  (and (=> (= (ControlFlow 0 18) 16) anon31_Then_correct) (=> (= (ControlFlow 0 18) 17) anon31_Else_correct))))
(let ((anon30_Else_correct true))
(let ((anon35_Else_correct true))
(let ((anon39_Else_correct true))
(let ((anon43_Else_correct true))
(let ((anon42_Else_correct  (=> (and (and (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (forall ((|i#0@@0| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| |s#0|))) (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#0@@0|))))) (=> (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| |s#0|))) (< (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#0@@0|))) 256)))
 :qid |SubsetTypesdfy.294:17|
 :skolemid |4022|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#0@@0|)))
)))) (not (forall ((|x#0@@2| Int) ) (!  (and (=> (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#0@@2|))) (<= (LitInt 0) |x#0@@2|)) (=> (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#0@@2|))) (< |x#0@@2| 256)))
 :qid |SubsetTypesdfy.296:17|
 :skolemid |4023|
 :pattern ( (|Set#IsMember| |t#0| ($Box intType (int_2_U |x#0@@2|))))
)))) (not (forall ((|x#1@@0| Int) ) (!  (and (=> (> (|MultiSet#Multiplicity| |u#0| ($Box intType (int_2_U |x#1@@0|))) 0) (<= (LitInt 0) |x#1@@0|)) (=> (> (|MultiSet#Multiplicity| |u#0| ($Box intType (int_2_U |x#1@@0|))) 0) (< |x#1@@0| 256)))
 :qid |SubsetTypesdfy.298:17|
 :skolemid |4024|
 :pattern ( (|MultiSet#Multiplicity| |u#0| ($Box intType (int_2_U |x#1@@0|))))
)))) (not (forall ((|x#2@@0| Int) ) (!  (and (and (and (=> (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType (int_2_U |x#2@@0|))) (<= (LitInt 0) |x#2@@0|)) (=> (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType (int_2_U |x#2@@0|))) (< |x#2@@0| 256))) (=> (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType (int_2_U |x#2@@0|))) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |m#0|) ($Box intType (int_2_U |x#2@@0|)))))))) (=> (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType (int_2_U |x#2@@0|))) (< (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |m#0|) ($Box intType (int_2_U |x#2@@0|))))) 256)))
 :qid |SubsetTypesdfy.300:17|
 :skolemid |4025|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |m#0|) ($Box intType (int_2_U |x#2@@0|)))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0|) ($Box intType (int_2_U |x#2@@0|))))
)))) (= (ControlFlow 0 3) (- 0 2))) false)))
(let ((anon28_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 46) 1) anon28_Then_correct) (=> (= (ControlFlow 0 46) 3) anon42_Else_correct)) (=> (= (ControlFlow 0 46) 45) anon43_Then_correct)) (=> (= (ControlFlow 0 46) 4) anon43_Else_correct)) (=> (= (ControlFlow 0 46) 32) anon39_Then_correct)) (=> (= (ControlFlow 0 46) 5) anon39_Else_correct)) (=> (= (ControlFlow 0 46) 25) anon35_Then_correct)) (=> (= (ControlFlow 0 46) 6) anon35_Else_correct)) (=> (= (ControlFlow 0 46) 18) anon30_Then_correct)) (=> (= (ControlFlow 0 46) 7) anon30_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SeqType |s#0| (TSeq TInt)) ($IsAlloc SeqType |s#0| (TSeq TInt) $Heap)) (and ($Is SetType |t#0| (TSet TInt)) ($IsAlloc SetType |t#0| (TSet TInt) $Heap))) (=> (and (and (and ($Is MultiSetType |u#0| (TMultiSet TInt)) ($IsAlloc MultiSetType |u#0| (TMultiSet TInt) $Heap)) (and ($Is MapType |m#0| (TMap TInt TInt)) ($IsAlloc MapType |m#0| (TMap TInt TInt) $Heap))) (and (and ($Is DatatypeTypeType |dt#0| Tclass.RegressionsSubsetElementTypes.Dt) ($IsAlloc DatatypeTypeType |dt#0| Tclass.RegressionsSubsetElementTypes.Dt $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 47) 46)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
