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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun |##_System._tuple#7._#Make7| () T@U)
(declare-fun Tagclass._System.Tuple7 () T@U)
(declare-fun Tagclass._module.lowercase () T@U)
(declare-fun Tagclass._module.BV10 () T@U)
(declare-fun Tagclass._module.Yes () T@U)
(declare-fun Tagclass._module.nByte () T@U)
(declare-fun Tagclass._module.nShort () T@U)
(declare-fun Tagclass._module.nInt () T@U)
(declare-fun Tagclass._module.nLong () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_tuple#7| () T@U)
(declare-fun tytagFamily$lowercase () T@U)
(declare-fun tytagFamily$BV10 () T@U)
(declare-fun tytagFamily$Yes () T@U)
(declare-fun tytagFamily$nByte () T@U)
(declare-fun tytagFamily$nShort () T@U)
(declare-fun tytagFamily$nInt () T@U)
(declare-fun tytagFamily$nLong () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun SetType () T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Tclass._module.lowercase () T@U)
(declare-fun bv10Type () T@T)
(declare-fun Tclass._module.BV10 () T@U)
(declare-fun bv10_2_U ((_ BitVec 10)) T@U)
(declare-fun U_2_bv10 (T@U) (_ BitVec 10))
(declare-fun Tclass._module.Yes () T@U)
(declare-fun Tclass._module.nByte () T@U)
(declare-fun Tclass._module.nShort () T@U)
(declare-fun Tclass._module.nInt () T@U)
(declare-fun Tclass._module.nLong () T@U)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun _System.Tuple7.___hMake7_q (T@U) Bool)
(declare-fun |#_System._tuple#7._#Make7| (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple7 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun _System.Tuple7._0 (T@U) T@U)
(declare-fun _System.Tuple7._1 (T@U) T@U)
(declare-fun _System.Tuple7._2 (T@U) T@U)
(declare-fun _System.Tuple7._3 (T@U) T@U)
(declare-fun _System.Tuple7._4 (T@U) T@U)
(declare-fun _System.Tuple7._5 (T@U) T@U)
(declare-fun _System.Tuple7._6 (T@U) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |lambda#7| (Bool) T@U)
(declare-fun |lambda#9| (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun |lambda#6| (T@U Int Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun Tclass._System.Tuple7_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple7_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple7_2 (T@U) T@U)
(declare-fun Tclass._System.Tuple7_3 (T@U) T@U)
(declare-fun Tclass._System.Tuple7_4 (T@U) T@U)
(declare-fun Tclass._System.Tuple7_5 (T@U) T@U)
(declare-fun Tclass._System.Tuple7_6 (T@U) T@U)
(declare-fun |lambda#8| (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._System.___hFunc1 |##_System._tuple#7._#Make7| Tagclass._System.Tuple7 Tagclass._module.lowercase Tagclass._module.BV10 Tagclass._module.Yes Tagclass._module.nByte Tagclass._module.nShort Tagclass._module.nInt Tagclass._module.nLong tytagFamily$object tytagFamily$array |tytagFamily$_#Func1| |tytagFamily$_tuple#7| tytagFamily$lowercase tytagFamily$BV10 tytagFamily$Yes tytagFamily$nByte tytagFamily$nShort tytagFamily$nInt tytagFamily$nLong)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 3)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (= (Ctor SetType) 7)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |7141|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |7128|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((|ch#0| T@U) ($h T@U) ) (! ($IsAlloc charType |ch#0| Tclass._module.lowercase $h)
 :qid |unknown.0:0|
 :skolemid |7618|
 :pattern ( ($IsAlloc charType |ch#0| Tclass._module.lowercase $h))
)))
(assert  (and (and (= (Ctor bv10Type) 9) (forall ((arg0@@5 (_ BitVec 10)) ) (! (= (U_2_bv10 (bv10_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_bv10|
 :pattern ( (bv10_2_U arg0@@5))
))) (forall ((x@@2 T@U) ) (! (= (bv10_2_U (U_2_bv10 x@@2)) x@@2)
 :qid |cast:U_2_bv10|
 :pattern ( (U_2_bv10 x@@2))
))))
(assert (forall ((|x#0| T@U) ($h@@0 T@U) ) (! ($IsAlloc bv10Type |x#0| Tclass._module.BV10 $h@@0)
 :qid |unknown.0:0|
 :skolemid |7620|
 :pattern ( ($IsAlloc bv10Type |x#0| Tclass._module.BV10 $h@@0))
)))
(assert (forall ((|b#0| T@U) ($h@@1 T@U) ) (! ($IsAlloc boolType |b#0| Tclass._module.Yes $h@@1)
 :qid |unknown.0:0|
 :skolemid |7622|
 :pattern ( ($IsAlloc boolType |b#0| Tclass._module.Yes $h@@1))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@2 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass._module.nByte $h@@2)
 :qid |unknown.0:0|
 :skolemid |7624|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass._module.nByte $h@@2))
)))
(assert (forall ((|x#0@@1| T@U) ($h@@3 T@U) ) (! ($IsAlloc intType |x#0@@1| Tclass._module.nShort $h@@3)
 :qid |unknown.0:0|
 :skolemid |7626|
 :pattern ( ($IsAlloc intType |x#0@@1| Tclass._module.nShort $h@@3))
)))
(assert (forall ((|x#0@@2| T@U) ($h@@4 T@U) ) (! ($IsAlloc intType |x#0@@2| Tclass._module.nInt $h@@4)
 :qid |unknown.0:0|
 :skolemid |7628|
 :pattern ( ($IsAlloc intType |x#0@@2| Tclass._module.nInt $h@@4))
)))
(assert (forall ((|x#0@@3| T@U) ($h@@5 T@U) ) (! ($IsAlloc intType |x#0@@3| Tclass._module.nLong $h@@5)
 :qid |unknown.0:0|
 :skolemid |7630|
 :pattern ( ($IsAlloc intType |x#0@@3| Tclass._module.nLong $h@@5))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@6) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@6))
 :qid |unknown.0:0|
 :skolemid |7134|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@6))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@6))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |6878|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor HandleTypeType) 10))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |7158|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |7159|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |7160|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@7) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@7))
 :qid |unknown.0:0|
 :skolemid |7120|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@7))
)))
(assert (forall ((d T@U) ) (!  (=> (_System.Tuple7.___hMake7_q d) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) (|a#13#3#0| T@U) (|a#13#4#0| T@U) (|a#13#5#0| T@U) (|a#13#6#0| T@U) ) (! (= d (|#_System._tuple#7._#Make7| |a#13#0#0| |a#13#1#0| |a#13#2#0| |a#13#3#0| |a#13#4#0| |a#13#5#0| |a#13#6#0|))
 :qid |unknown.0:0|
 :skolemid |7391|
)))
 :qid |unknown.0:0|
 :skolemid |7392|
 :pattern ( (_System.Tuple7.___hMake7_q d))
)))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@8)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7127|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@8))
)))
(assert (forall (($o@@1 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@9)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@9 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7117|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@9))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |6871|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |6872|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |6770|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |6768|
 :pattern ( (Lit T x@@4))
)))
(assert (= (Ctor SeqType) 11))
(assert (forall ((s T@U) (bx@@2 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx@@2 t)) ($Is SeqType (|Seq#Build| s bx@@2) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |7011|
 :pattern ( ($Is SeqType (|Seq#Build| s bx@@2) (TSeq t)))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |7154|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@10 T@U) ($o@@2 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@2)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@10 $o@@2) alloc)))) ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@10 $o@@2) (IndexField $i0)) _System.array$arg@@2 $h@@10))
 :qid |unknown.0:0|
 :skolemid |7125|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@10 $o@@2) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple7.___hMake7_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#7._#Make7|))
 :qid |unknown.0:0|
 :skolemid |7390|
 :pattern ( (_System.Tuple7.___hMake7_q d@@0))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |6779|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((|x#0@@4| T@U) ) (! (= ($Is bv10Type |x#0@@4| Tclass._module.BV10)  (or (not (= (U_2_bv10 |x#0@@4|) #b1111100111)) (not true)))
 :qid |unknown.0:0|
 :skolemid |7619|
 :pattern ( ($Is bv10Type |x#0@@4| Tclass._module.BV10))
)))
(assert (= (Ctor DatatypeTypeType) 12))
(assert (forall ((|_System._tuple#7$T0| T@U) (|_System._tuple#7$T1| T@U) (|_System._tuple#7$T2| T@U) (|_System._tuple#7$T3| T@U) (|_System._tuple#7$T4| T@U) (|_System._tuple#7$T5| T@U) (|_System._tuple#7$T6| T@U) (d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple7 |_System._tuple#7$T0| |_System._tuple#7$T1| |_System._tuple#7$T2| |_System._tuple#7$T3| |_System._tuple#7$T4| |_System._tuple#7$T5| |_System._tuple#7$T6|)) (_System.Tuple7.___hMake7_q d@@1))
 :qid |unknown.0:0|
 :skolemid |7434|
 :pattern ( (_System.Tuple7.___hMake7_q d@@1) ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple7 |_System._tuple#7$T0| |_System._tuple#7$T1| |_System._tuple#7$T2| |_System._tuple#7$T3| |_System._tuple#7$T4| |_System._tuple#7$T5| |_System._tuple#7$T6|)))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |7146|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |7147|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |7148|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |7149|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v bx@@3) ($IsBox bx@@3 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |6799|
 :pattern ( (|Set#IsMember| v bx@@3))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |6800|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 13))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |6854|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#i#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#5| |l#0|) |$l#0#heap#0| |$l#0#i#0|) ($Box charType ($Unbox charType (|Seq#Index| |l#0| (U_2_int ($Unbox intType |$l#0#i#0|))))))
 :qid |Arraysdfy.87:7|
 :skolemid |7824|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#5| |l#0|) |$l#0#heap#0| |$l#0#i#0|))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |6977|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((|x#0@@5| T@U) ) (! (= ($Is intType |x#0@@5| Tclass._module.nLong)  (and (<= (LitInt (- 0 10)) (U_2_int |x#0@@5|)) (< (U_2_int |x#0@@5|) 72057594037927936)))
 :qid |unknown.0:0|
 :skolemid |7629|
 :pattern ( ($Is intType |x#0@@5| Tclass._module.nLong))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7133|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@1) ($IsAlloc T@@1 v@@1 t@@0 h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |6792|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@4 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@4 t@@1 h@@2) ($IsAllocBox bx@@4 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |6864|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@4 t@@1 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@2 h@@3) ($IsAlloc T@@2 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |6863|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@2 t@@2 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |7142|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |7143|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |7144|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |7145|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |7150|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |7151|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |7152|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |7153|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |7121|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |7130|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((s@@1 T@U) (bx@@5 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s@@1) bx@@5) (U_2_bool (MapType1Select refType boolType s@@1 ($Unbox refType bx@@5))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |6835|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s@@1) bx@@5))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |7139|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |7115|
 :pattern ( ($IsBox bx@@6 Tclass._System.object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |7118|
 :pattern ( ($IsBox bx@@7 Tclass._System.object))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.lowercase) (and (= ($Box charType ($Unbox charType bx@@8)) bx@@8) ($Is charType ($Unbox charType bx@@8) Tclass._module.lowercase)))
 :qid |unknown.0:0|
 :skolemid |7502|
 :pattern ( ($IsBox bx@@8 Tclass._module.lowercase))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.BV10) (and (= ($Box bv10Type ($Unbox bv10Type bx@@9)) bx@@9) ($Is bv10Type ($Unbox bv10Type bx@@9) Tclass._module.BV10)))
 :qid |unknown.0:0|
 :skolemid |7539|
 :pattern ( ($IsBox bx@@9 Tclass._module.BV10))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Yes) (and (= ($Box boolType ($Unbox boolType bx@@10)) bx@@10) ($Is boolType ($Unbox boolType bx@@10) Tclass._module.Yes)))
 :qid |unknown.0:0|
 :skolemid |7553|
 :pattern ( ($IsBox bx@@10 Tclass._module.Yes))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.nByte) (and (= ($Box intType ($Unbox intType bx@@11)) bx@@11) ($Is intType ($Unbox intType bx@@11) Tclass._module.nByte)))
 :qid |unknown.0:0|
 :skolemid |7555|
 :pattern ( ($IsBox bx@@11 Tclass._module.nByte))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.nShort) (and (= ($Box intType ($Unbox intType bx@@12)) bx@@12) ($Is intType ($Unbox intType bx@@12) Tclass._module.nShort)))
 :qid |unknown.0:0|
 :skolemid |7557|
 :pattern ( ($IsBox bx@@12 Tclass._module.nShort))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.nInt) (and (= ($Box intType ($Unbox intType bx@@13)) bx@@13) ($Is intType ($Unbox intType bx@@13) Tclass._module.nInt)))
 :qid |unknown.0:0|
 :skolemid |7559|
 :pattern ( ($IsBox bx@@13 Tclass._module.nInt))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.nLong) (and (= ($Box intType ($Unbox intType bx@@14)) bx@@14) ($Is intType ($Unbox intType bx@@14) Tclass._module.nLong)))
 :qid |unknown.0:0|
 :skolemid |7561|
 :pattern ( ($IsBox bx@@14 Tclass._module.nLong))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |7126|
 :pattern ( ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7119|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((s@@2 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i) (|Seq#Index| s@@2 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |6978|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@3) i))
)))
(assert (forall ((d@@2 T@U) (|_System._tuple#7$T0@@0| T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_System.Tuple7.___hMake7_q d@@2) (exists ((|_System._tuple#7$T1@@0| T@U) (|_System._tuple#7$T2@@0| T@U) (|_System._tuple#7$T3@@0| T@U) (|_System._tuple#7$T4@@0| T@U) (|_System._tuple#7$T5@@0| T@U) (|_System._tuple#7$T6@@0| T@U) ) (! ($IsAlloc DatatypeTypeType d@@2 (Tclass._System.Tuple7 |_System._tuple#7$T0@@0| |_System._tuple#7$T1@@0| |_System._tuple#7$T2@@0| |_System._tuple#7$T3@@0| |_System._tuple#7$T4@@0| |_System._tuple#7$T5@@0| |_System._tuple#7$T6@@0|) $h@@11)
 :qid |unknown.0:0|
 :skolemid |7404|
 :pattern ( ($IsAlloc DatatypeTypeType d@@2 (Tclass._System.Tuple7 |_System._tuple#7$T0@@0| |_System._tuple#7$T1@@0| |_System._tuple#7$T2@@0| |_System._tuple#7$T3@@0| |_System._tuple#7$T4@@0| |_System._tuple#7$T5@@0| |_System._tuple#7$T6@@0|) $h@@11))
)))) ($IsAllocBox (_System.Tuple7._0 d@@2) |_System._tuple#7$T0@@0| $h@@11))
 :qid |unknown.0:0|
 :skolemid |7405|
 :pattern ( ($IsAllocBox (_System.Tuple7._0 d@@2) |_System._tuple#7$T0@@0| $h@@11))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#7$T1@@1| T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_System.Tuple7.___hMake7_q d@@3) (exists ((|_System._tuple#7$T0@@1| T@U) (|_System._tuple#7$T2@@1| T@U) (|_System._tuple#7$T3@@1| T@U) (|_System._tuple#7$T4@@1| T@U) (|_System._tuple#7$T5@@1| T@U) (|_System._tuple#7$T6@@1| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple7 |_System._tuple#7$T0@@1| |_System._tuple#7$T1@@1| |_System._tuple#7$T2@@1| |_System._tuple#7$T3@@1| |_System._tuple#7$T4@@1| |_System._tuple#7$T5@@1| |_System._tuple#7$T6@@1|) $h@@12)
 :qid |unknown.0:0|
 :skolemid |7406|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple7 |_System._tuple#7$T0@@1| |_System._tuple#7$T1@@1| |_System._tuple#7$T2@@1| |_System._tuple#7$T3@@1| |_System._tuple#7$T4@@1| |_System._tuple#7$T5@@1| |_System._tuple#7$T6@@1|) $h@@12))
)))) ($IsAllocBox (_System.Tuple7._1 d@@3) |_System._tuple#7$T1@@1| $h@@12))
 :qid |unknown.0:0|
 :skolemid |7407|
 :pattern ( ($IsAllocBox (_System.Tuple7._1 d@@3) |_System._tuple#7$T1@@1| $h@@12))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#7$T2@@2| T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_System.Tuple7.___hMake7_q d@@4) (exists ((|_System._tuple#7$T0@@2| T@U) (|_System._tuple#7$T1@@2| T@U) (|_System._tuple#7$T3@@2| T@U) (|_System._tuple#7$T4@@2| T@U) (|_System._tuple#7$T5@@2| T@U) (|_System._tuple#7$T6@@2| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple7 |_System._tuple#7$T0@@2| |_System._tuple#7$T1@@2| |_System._tuple#7$T2@@2| |_System._tuple#7$T3@@2| |_System._tuple#7$T4@@2| |_System._tuple#7$T5@@2| |_System._tuple#7$T6@@2|) $h@@13)
 :qid |unknown.0:0|
 :skolemid |7408|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple7 |_System._tuple#7$T0@@2| |_System._tuple#7$T1@@2| |_System._tuple#7$T2@@2| |_System._tuple#7$T3@@2| |_System._tuple#7$T4@@2| |_System._tuple#7$T5@@2| |_System._tuple#7$T6@@2|) $h@@13))
)))) ($IsAllocBox (_System.Tuple7._2 d@@4) |_System._tuple#7$T2@@2| $h@@13))
 :qid |unknown.0:0|
 :skolemid |7409|
 :pattern ( ($IsAllocBox (_System.Tuple7._2 d@@4) |_System._tuple#7$T2@@2| $h@@13))
)))
(assert (forall ((d@@5 T@U) (|_System._tuple#7$T3@@3| T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_System.Tuple7.___hMake7_q d@@5) (exists ((|_System._tuple#7$T0@@3| T@U) (|_System._tuple#7$T1@@3| T@U) (|_System._tuple#7$T2@@3| T@U) (|_System._tuple#7$T4@@3| T@U) (|_System._tuple#7$T5@@3| T@U) (|_System._tuple#7$T6@@3| T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple7 |_System._tuple#7$T0@@3| |_System._tuple#7$T1@@3| |_System._tuple#7$T2@@3| |_System._tuple#7$T3@@3| |_System._tuple#7$T4@@3| |_System._tuple#7$T5@@3| |_System._tuple#7$T6@@3|) $h@@14)
 :qid |unknown.0:0|
 :skolemid |7410|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple7 |_System._tuple#7$T0@@3| |_System._tuple#7$T1@@3| |_System._tuple#7$T2@@3| |_System._tuple#7$T3@@3| |_System._tuple#7$T4@@3| |_System._tuple#7$T5@@3| |_System._tuple#7$T6@@3|) $h@@14))
)))) ($IsAllocBox (_System.Tuple7._3 d@@5) |_System._tuple#7$T3@@3| $h@@14))
 :qid |unknown.0:0|
 :skolemid |7411|
 :pattern ( ($IsAllocBox (_System.Tuple7._3 d@@5) |_System._tuple#7$T3@@3| $h@@14))
)))
(assert (forall ((d@@6 T@U) (|_System._tuple#7$T4@@4| T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_System.Tuple7.___hMake7_q d@@6) (exists ((|_System._tuple#7$T0@@4| T@U) (|_System._tuple#7$T1@@4| T@U) (|_System._tuple#7$T2@@4| T@U) (|_System._tuple#7$T3@@4| T@U) (|_System._tuple#7$T5@@4| T@U) (|_System._tuple#7$T6@@4| T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple7 |_System._tuple#7$T0@@4| |_System._tuple#7$T1@@4| |_System._tuple#7$T2@@4| |_System._tuple#7$T3@@4| |_System._tuple#7$T4@@4| |_System._tuple#7$T5@@4| |_System._tuple#7$T6@@4|) $h@@15)
 :qid |unknown.0:0|
 :skolemid |7412|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple7 |_System._tuple#7$T0@@4| |_System._tuple#7$T1@@4| |_System._tuple#7$T2@@4| |_System._tuple#7$T3@@4| |_System._tuple#7$T4@@4| |_System._tuple#7$T5@@4| |_System._tuple#7$T6@@4|) $h@@15))
)))) ($IsAllocBox (_System.Tuple7._4 d@@6) |_System._tuple#7$T4@@4| $h@@15))
 :qid |unknown.0:0|
 :skolemid |7413|
 :pattern ( ($IsAllocBox (_System.Tuple7._4 d@@6) |_System._tuple#7$T4@@4| $h@@15))
)))
(assert (forall ((d@@7 T@U) (|_System._tuple#7$T5@@5| T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (_System.Tuple7.___hMake7_q d@@7) (exists ((|_System._tuple#7$T0@@5| T@U) (|_System._tuple#7$T1@@5| T@U) (|_System._tuple#7$T2@@5| T@U) (|_System._tuple#7$T3@@5| T@U) (|_System._tuple#7$T4@@5| T@U) (|_System._tuple#7$T6@@5| T@U) ) (! ($IsAlloc DatatypeTypeType d@@7 (Tclass._System.Tuple7 |_System._tuple#7$T0@@5| |_System._tuple#7$T1@@5| |_System._tuple#7$T2@@5| |_System._tuple#7$T3@@5| |_System._tuple#7$T4@@5| |_System._tuple#7$T5@@5| |_System._tuple#7$T6@@5|) $h@@16)
 :qid |unknown.0:0|
 :skolemid |7414|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 (Tclass._System.Tuple7 |_System._tuple#7$T0@@5| |_System._tuple#7$T1@@5| |_System._tuple#7$T2@@5| |_System._tuple#7$T3@@5| |_System._tuple#7$T4@@5| |_System._tuple#7$T5@@5| |_System._tuple#7$T6@@5|) $h@@16))
)))) ($IsAllocBox (_System.Tuple7._5 d@@7) |_System._tuple#7$T5@@5| $h@@16))
 :qid |unknown.0:0|
 :skolemid |7415|
 :pattern ( ($IsAllocBox (_System.Tuple7._5 d@@7) |_System._tuple#7$T5@@5| $h@@16))
)))
(assert (forall ((d@@8 T@U) (|_System._tuple#7$T6@@6| T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (_System.Tuple7.___hMake7_q d@@8) (exists ((|_System._tuple#7$T0@@6| T@U) (|_System._tuple#7$T1@@6| T@U) (|_System._tuple#7$T2@@6| T@U) (|_System._tuple#7$T3@@6| T@U) (|_System._tuple#7$T4@@6| T@U) (|_System._tuple#7$T5@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple7 |_System._tuple#7$T0@@6| |_System._tuple#7$T1@@6| |_System._tuple#7$T2@@6| |_System._tuple#7$T3@@6| |_System._tuple#7$T4@@6| |_System._tuple#7$T5@@6| |_System._tuple#7$T6@@6|) $h@@17)
 :qid |unknown.0:0|
 :skolemid |7416|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple7 |_System._tuple#7$T0@@6| |_System._tuple#7$T1@@6| |_System._tuple#7$T2@@6| |_System._tuple#7$T3@@6| |_System._tuple#7$T4@@6| |_System._tuple#7$T5@@6| |_System._tuple#7$T6@@6|) $h@@17))
)))) ($IsAllocBox (_System.Tuple7._6 d@@8) |_System._tuple#7$T6@@6| $h@@17))
 :qid |unknown.0:0|
 :skolemid |7417|
 :pattern ( ($IsAllocBox (_System.Tuple7._6 d@@8) |_System._tuple#7$T6@@6| $h@@17))
)))
(assert (forall ((|ch#0@@0| T@U) ) (! (= ($Is charType |ch#0@@0| Tclass._module.lowercase)  (and (<= (|char#ToInt| (Lit charType (|char#FromInt| 97))) (|char#ToInt| |ch#0@@0|)) (<= (|char#ToInt| |ch#0@@0|) (|char#ToInt| (Lit charType (|char#FromInt| 122))))))
 :qid |unknown.0:0|
 :skolemid |7617|
 :pattern ( ($Is charType |ch#0@@0| Tclass._module.lowercase))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |7164|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |7165|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall ((|_System._tuple#7$T0@@7| T@U) (|_System._tuple#7$T1@@7| T@U) (|_System._tuple#7$T2@@7| T@U) (|_System._tuple#7$T3@@7| T@U) (|_System._tuple#7$T4@@7| T@U) (|_System._tuple#7$T5@@7| T@U) (|_System._tuple#7$T6@@7| T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) (|a#14#3#0| T@U) (|a#14#4#0| T@U) (|a#14#5#0| T@U) (|a#14#6#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#7._#Make7| |a#14#0#0| |a#14#1#0| |a#14#2#0| |a#14#3#0| |a#14#4#0| |a#14#5#0| |a#14#6#0|) (Tclass._System.Tuple7 |_System._tuple#7$T0@@7| |_System._tuple#7$T1@@7| |_System._tuple#7$T2@@7| |_System._tuple#7$T3@@7| |_System._tuple#7$T4@@7| |_System._tuple#7$T5@@7| |_System._tuple#7$T6@@7|))  (and (and (and (and (and (and ($IsBox |a#14#0#0| |_System._tuple#7$T0@@7|) ($IsBox |a#14#1#0| |_System._tuple#7$T1@@7|)) ($IsBox |a#14#2#0| |_System._tuple#7$T2@@7|)) ($IsBox |a#14#3#0| |_System._tuple#7$T3@@7|)) ($IsBox |a#14#4#0| |_System._tuple#7$T4@@7|)) ($IsBox |a#14#5#0| |_System._tuple#7$T5@@7|)) ($IsBox |a#14#6#0| |_System._tuple#7$T6@@7|)))
 :qid |unknown.0:0|
 :skolemid |7402|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#7._#Make7| |a#14#0#0| |a#14#1#0| |a#14#2#0| |a#14#3#0| |a#14#4#0| |a#14#5#0| |a#14#6#0|) (Tclass._System.Tuple7 |_System._tuple#7$T0@@7| |_System._tuple#7$T1@@7| |_System._tuple#7$T2@@7| |_System._tuple#7$T3@@7| |_System._tuple#7$T4@@7| |_System._tuple#7$T5@@7| |_System._tuple#7$T6@@7|)))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) (|a#17#3#0| T@U) (|a#17#4#0| T@U) (|a#17#5#0| T@U) (|a#17#6#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#_System._tuple#7._#Make7| |a#17#0#0| |a#17#1#0| |a#17#2#0| |a#17#3#0| |a#17#4#0| |a#17#5#0| |a#17#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7420|
 :pattern ( (|#_System._tuple#7._#Make7| |a#17#0#0| |a#17#1#0| |a#17#2#0| |a#17#3#0| |a#17#4#0| |a#17#5#0| |a#17#6#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) (|a#19#3#0| T@U) (|a#19#4#0| T@U) (|a#19#5#0| T@U) (|a#19#6#0| T@U) ) (! (< (BoxRank |a#19#1#0|) (DtRank (|#_System._tuple#7._#Make7| |a#19#0#0| |a#19#1#0| |a#19#2#0| |a#19#3#0| |a#19#4#0| |a#19#5#0| |a#19#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7422|
 :pattern ( (|#_System._tuple#7._#Make7| |a#19#0#0| |a#19#1#0| |a#19#2#0| |a#19#3#0| |a#19#4#0| |a#19#5#0| |a#19#6#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) (|a#21#3#0| T@U) (|a#21#4#0| T@U) (|a#21#5#0| T@U) (|a#21#6#0| T@U) ) (! (< (BoxRank |a#21#2#0|) (DtRank (|#_System._tuple#7._#Make7| |a#21#0#0| |a#21#1#0| |a#21#2#0| |a#21#3#0| |a#21#4#0| |a#21#5#0| |a#21#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7424|
 :pattern ( (|#_System._tuple#7._#Make7| |a#21#0#0| |a#21#1#0| |a#21#2#0| |a#21#3#0| |a#21#4#0| |a#21#5#0| |a#21#6#0|))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) (|a#23#2#0| T@U) (|a#23#3#0| T@U) (|a#23#4#0| T@U) (|a#23#5#0| T@U) (|a#23#6#0| T@U) ) (! (< (BoxRank |a#23#3#0|) (DtRank (|#_System._tuple#7._#Make7| |a#23#0#0| |a#23#1#0| |a#23#2#0| |a#23#3#0| |a#23#4#0| |a#23#5#0| |a#23#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7426|
 :pattern ( (|#_System._tuple#7._#Make7| |a#23#0#0| |a#23#1#0| |a#23#2#0| |a#23#3#0| |a#23#4#0| |a#23#5#0| |a#23#6#0|))
)))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) (|a#25#2#0| T@U) (|a#25#3#0| T@U) (|a#25#4#0| T@U) (|a#25#5#0| T@U) (|a#25#6#0| T@U) ) (! (< (BoxRank |a#25#4#0|) (DtRank (|#_System._tuple#7._#Make7| |a#25#0#0| |a#25#1#0| |a#25#2#0| |a#25#3#0| |a#25#4#0| |a#25#5#0| |a#25#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7428|
 :pattern ( (|#_System._tuple#7._#Make7| |a#25#0#0| |a#25#1#0| |a#25#2#0| |a#25#3#0| |a#25#4#0| |a#25#5#0| |a#25#6#0|))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) (|a#27#2#0| T@U) (|a#27#3#0| T@U) (|a#27#4#0| T@U) (|a#27#5#0| T@U) (|a#27#6#0| T@U) ) (! (< (BoxRank |a#27#5#0|) (DtRank (|#_System._tuple#7._#Make7| |a#27#0#0| |a#27#1#0| |a#27#2#0| |a#27#3#0| |a#27#4#0| |a#27#5#0| |a#27#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7430|
 :pattern ( (|#_System._tuple#7._#Make7| |a#27#0#0| |a#27#1#0| |a#27#2#0| |a#27#3#0| |a#27#4#0| |a#27#5#0| |a#27#6#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (|a#29#1#0| T@U) (|a#29#2#0| T@U) (|a#29#3#0| T@U) (|a#29#4#0| T@U) (|a#29#5#0| T@U) (|a#29#6#0| T@U) ) (! (< (BoxRank |a#29#6#0|) (DtRank (|#_System._tuple#7._#Make7| |a#29#0#0| |a#29#1#0| |a#29#2#0| |a#29#3#0| |a#29#4#0| |a#29#5#0| |a#29#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7432|
 :pattern ( (|#_System._tuple#7._#Make7| |a#29#0#0| |a#29#1#0| |a#29#2#0| |a#29#3#0| |a#29#4#0| |a#29#5#0| |a#29#6#0|))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#7| |l#0@@0|) |$l#0#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |7826|
 :pattern ( (MapType1Select refType boolType (|lambda#7| |l#0@@0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#9| |l#0@@1|) |$l#0#ly#0|) |l#0@@1|)
 :qid |Arraysdfy.88:28|
 :skolemid |7828|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#9| |l#0@@1|) |$l#0#ly#0|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |6903|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |6870|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((|_System._tuple#7$T0@@8| T@U) (|_System._tuple#7$T1@@8| T@U) (|_System._tuple#7$T2@@8| T@U) (|_System._tuple#7$T3@@8| T@U) (|_System._tuple#7$T4@@8| T@U) (|_System._tuple#7$T5@@8| T@U) (|_System._tuple#7$T6@@8| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple7 |_System._tuple#7$T0@@8| |_System._tuple#7$T1@@8| |_System._tuple#7$T2@@8| |_System._tuple#7$T3@@8| |_System._tuple#7$T4@@8| |_System._tuple#7$T5@@8| |_System._tuple#7$T6@@8|)) Tagclass._System.Tuple7) (= (TagFamily (Tclass._System.Tuple7 |_System._tuple#7$T0@@8| |_System._tuple#7$T1@@8| |_System._tuple#7$T2@@8| |_System._tuple#7$T3@@8| |_System._tuple#7$T4@@8| |_System._tuple#7$T5@@8| |_System._tuple#7$T6@@8|)) |tytagFamily$_tuple#7|))
 :qid |unknown.0:0|
 :skolemid |7393|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@8| |_System._tuple#7$T1@@8| |_System._tuple#7$T2@@8| |_System._tuple#7$T3@@8| |_System._tuple#7$T4@@8| |_System._tuple#7$T5@@8| |_System._tuple#7$T6@@8|))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |7156|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |7157|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((|b#0@@0| T@U) ) (! (= ($Is boolType |b#0@@0| Tclass._module.Yes) (U_2_bool |b#0@@0|))
 :qid |unknown.0:0|
 :skolemid |7621|
 :pattern ( ($Is boolType |b#0@@0| Tclass._module.Yes))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 TInt) (and (= ($Box intType ($Unbox intType bx@@15)) bx@@15) ($Is intType ($Unbox intType bx@@15) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |6780|
 :pattern ( ($IsBox bx@@15 TInt))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 TChar) (and (= ($Box charType ($Unbox charType bx@@16)) bx@@16) ($Is charType ($Unbox charType bx@@16) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |6783|
 :pattern ( ($IsBox bx@@16 TChar))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |6791|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((|_System._tuple#7$T0@@9| T@U) (|_System._tuple#7$T1@@9| T@U) (|_System._tuple#7$T2@@9| T@U) (|_System._tuple#7$T3@@9| T@U) (|_System._tuple#7$T4@@9| T@U) (|_System._tuple#7$T5@@9| T@U) (|_System._tuple#7$T6@@9| T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) (|a#14#2#0@@0| T@U) (|a#14#3#0@@0| T@U) (|a#14#4#0@@0| T@U) (|a#14#5#0@@0| T@U) (|a#14#6#0@@0| T@U) ($h@@18 T@U) ) (!  (=> ($IsGoodHeap $h@@18) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#7._#Make7| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0| |a#14#3#0@@0| |a#14#4#0@@0| |a#14#5#0@@0| |a#14#6#0@@0|) (Tclass._System.Tuple7 |_System._tuple#7$T0@@9| |_System._tuple#7$T1@@9| |_System._tuple#7$T2@@9| |_System._tuple#7$T3@@9| |_System._tuple#7$T4@@9| |_System._tuple#7$T5@@9| |_System._tuple#7$T6@@9|) $h@@18)  (and (and (and (and (and (and ($IsAllocBox |a#14#0#0@@0| |_System._tuple#7$T0@@9| $h@@18) ($IsAllocBox |a#14#1#0@@0| |_System._tuple#7$T1@@9| $h@@18)) ($IsAllocBox |a#14#2#0@@0| |_System._tuple#7$T2@@9| $h@@18)) ($IsAllocBox |a#14#3#0@@0| |_System._tuple#7$T3@@9| $h@@18)) ($IsAllocBox |a#14#4#0@@0| |_System._tuple#7$T4@@9| $h@@18)) ($IsAllocBox |a#14#5#0@@0| |_System._tuple#7$T5@@9| $h@@18)) ($IsAllocBox |a#14#6#0@@0| |_System._tuple#7$T6@@9| $h@@18))))
 :qid |unknown.0:0|
 :skolemid |7403|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#7._#Make7| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0| |a#14#3#0@@0| |a#14#4#0@@0| |a#14#5#0@@0| |a#14#6#0@@0|) (Tclass._System.Tuple7 |_System._tuple#7$T0@@9| |_System._tuple#7$T1@@9| |_System._tuple#7$T2@@9| |_System._tuple#7$T3@@9| |_System._tuple#7$T4@@9| |_System._tuple#7$T5@@9| |_System._tuple#7$T6@@9|) $h@@18))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |7140|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) (|a#15#2#0| T@U) (|a#15#3#0| T@U) (|a#15#4#0| T@U) (|a#15#5#0| T@U) (|a#15#6#0| T@U) ) (! (= (|#_System._tuple#7._#Make7| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|) (Lit BoxType |a#15#3#0|) (Lit BoxType |a#15#4#0|) (Lit BoxType |a#15#5#0|) (Lit BoxType |a#15#6#0|)) (Lit DatatypeTypeType (|#_System._tuple#7._#Make7| |a#15#0#0| |a#15#1#0| |a#15#2#0| |a#15#3#0| |a#15#4#0| |a#15#5#0| |a#15#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7418|
 :pattern ( (|#_System._tuple#7._#Make7| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|) (Lit BoxType |a#15#3#0|) (Lit BoxType |a#15#4#0|) (Lit BoxType |a#15#5#0|) (Lit BoxType |a#15#6#0|)))
)))
(assert (forall ((o@@7 T@U) ) (! (<= 0 (_System.array.Length o@@7))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |6865|
 :pattern ( (_System.array.Length o@@7))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Seq#Length| s@@3))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |6974|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((v@@5 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@15) h@@8) (forall ((bx@@17 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@17) ($IsAllocBox bx@@17 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |6820|
 :pattern ( (|Set#IsMember| v@@5 bx@@17))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |6821|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@15) h@@8))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |7136|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |7137|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall (($o@@4 T@U) ) (! ($Is refType $o@@4 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |7116|
 :pattern ( ($Is refType $o@@4 Tclass._System.object?))
)))
(assert (forall ((v@@6 T@U) (t0@@16 T@U) (h@@9 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@16) h@@9) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@0) t0@@16 h@@9))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |6826|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |6827|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@16) h@@9))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1| Int) (|l#2| Int) (|$l#0#heap#0@@0| T@U) (|$l#0#i#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#6| |l#0@@2| |l#1| |l#2|) |$l#0#heap#0@@0| |$l#0#i#0@@0|))  (and ($IsBox |$l#0#i#0@@0| |l#0@@2|) (and (<= |l#1| (U_2_int ($Unbox intType |$l#0#i#0@@0|))) (< (U_2_int ($Unbox intType |$l#0#i#0@@0|)) |l#2|))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |7825|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#6| |l#0@@2| |l#1| |l#2|) |$l#0#heap#0@@0| |$l#0#i#0@@0|))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |6754|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |6755|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |6760|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |6761|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((i@@1 Int) ) (! (= (FDim (IndexField i@@1)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |6856|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((i@@2 Int) ) (! (= (IndexField_Inverse (IndexField i@@2)) i@@2)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |6857|
 :pattern ( (IndexField i@@2))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |7122|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |7131|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |6778|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@19 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@19 $o@@5) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@5)) TInt $h@@19))
 :qid |unknown.0:0|
 :skolemid |7129|
 :pattern ( (_System.array.Length $o@@5) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@19 $o@@5) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@20 T@U) ($o@@6 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@6)))) ($IsBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@20 $o@@6) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |7124|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@20 $o@@6) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |6855|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |6774|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((f@@11 T@U) (t0@@17 T@U) (t1@@14 T@U) (h@@10 T@U) ) (!  (=> ($IsGoodHeap h@@10) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@17 t1@@14) h@@10) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@17) ($IsAllocBox bx0@@11 t0@@17 h@@10)) (Requires1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@10 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |7161|
 :pattern ( (|Set#IsMember| (Reads1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |7162|
 :pattern ( (Apply1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |7163|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@17 t1@@14) h@@10))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@18)) bx@@18) ($Is HandleTypeType ($Unbox HandleTypeType bx@@18) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |7138|
 :pattern ( ($IsBox bx@@18 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@0| |l#2@@0| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0@@3|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@0| $o@@7) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7823|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@0| |l#2@@0| |l#3|) $o@@7 $f))
)))
(assert (forall ((s@@4 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@4 val@@4)) s@@4) (= (|Seq#Build_inv1| (|Seq#Build| s@@4 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |6976|
 :pattern ( (|Seq#Build| s@@4 val@@4))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |7135|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((t0@@18 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@18) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@18 t1@@15)))) (|Set#Equal| (Reads1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@18 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |7155|
 :pattern ( (Requires1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@18 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |6837|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((bx@@19 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@19 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@19)) bx@@19) ($Is SetType ($Unbox SetType bx@@19) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |6785|
 :pattern ( ($IsBox bx@@19 (TSet t@@8)))
)))
(assert (forall ((bx@@20 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@20 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@20)) bx@@20) ($Is SeqType ($Unbox SeqType bx@@20) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |6788|
 :pattern ( ($IsBox bx@@20 (TSeq t@@9)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@21)) bx@@21) ($Is refType ($Unbox refType bx@@21) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |7123|
 :pattern ( ($IsBox bx@@21 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@22)) bx@@22) ($Is refType ($Unbox refType bx@@22) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |7132|
 :pattern ( ($IsBox bx@@22 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((|_System._tuple#7$T0@@10| T@U) (|_System._tuple#7$T1@@10| T@U) (|_System._tuple#7$T2@@10| T@U) (|_System._tuple#7$T3@@10| T@U) (|_System._tuple#7$T4@@10| T@U) (|_System._tuple#7$T5@@10| T@U) (|_System._tuple#7$T6@@10| T@U) (bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 (Tclass._System.Tuple7 |_System._tuple#7$T0@@10| |_System._tuple#7$T1@@10| |_System._tuple#7$T2@@10| |_System._tuple#7$T3@@10| |_System._tuple#7$T4@@10| |_System._tuple#7$T5@@10| |_System._tuple#7$T6@@10|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@23)) bx@@23) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@23) (Tclass._System.Tuple7 |_System._tuple#7$T0@@10| |_System._tuple#7$T1@@10| |_System._tuple#7$T2@@10| |_System._tuple#7$T3@@10| |_System._tuple#7$T4@@10| |_System._tuple#7$T5@@10| |_System._tuple#7$T6@@10|))))
 :qid |unknown.0:0|
 :skolemid |7401|
 :pattern ( ($IsBox bx@@23 (Tclass._System.Tuple7 |_System._tuple#7$T0@@10| |_System._tuple#7$T1@@10| |_System._tuple#7$T2@@10| |_System._tuple#7$T3@@10| |_System._tuple#7$T4@@10| |_System._tuple#7$T5@@10| |_System._tuple#7$T6@@10|)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |6775|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((h@@11 T@U) (r@@3 T@U) (f@@13 T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType1Store refType (MapType1Type FieldType BoxType) h@@11 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@11 r@@3) f@@13 x@@7))) ($HeapSucc h@@11 (MapType1Store refType (MapType1Type FieldType BoxType) h@@11 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@11 r@@3) f@@13 x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |6869|
 :pattern ( (MapType1Store refType (MapType1Type FieldType BoxType) h@@11 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@11 r@@3) f@@13 x@@7)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.lowercase) Tagclass._module.lowercase))
(assert (= (TagFamily Tclass._module.lowercase) tytagFamily$lowercase))
(assert (= (Tag Tclass._module.BV10) Tagclass._module.BV10))
(assert (= (TagFamily Tclass._module.BV10) tytagFamily$BV10))
(assert (= (Tag Tclass._module.Yes) Tagclass._module.Yes))
(assert (= (TagFamily Tclass._module.Yes) tytagFamily$Yes))
(assert (= (Tag Tclass._module.nByte) Tagclass._module.nByte))
(assert (= (TagFamily Tclass._module.nByte) tytagFamily$nByte))
(assert (= (Tag Tclass._module.nShort) Tagclass._module.nShort))
(assert (= (TagFamily Tclass._module.nShort) tytagFamily$nShort))
(assert (= (Tag Tclass._module.nInt) Tagclass._module.nInt))
(assert (= (TagFamily Tclass._module.nInt) tytagFamily$nInt))
(assert (= (Tag Tclass._module.nLong) Tagclass._module.nLong))
(assert (= (TagFamily Tclass._module.nLong) tytagFamily$nLong))
(assert (forall ((s@@5 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@5) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |6836|
 :pattern ( (SetRef_to_SetBox s@@5))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@8 T@U) ) (! (= (|Set#IsMember| a@@1 o@@8) (|Set#IsMember| b@@1 o@@8))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |6901|
 :pattern ( (|Set#IsMember| a@@1 o@@8))
 :pattern ( (|Set#IsMember| b@@1 o@@8))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |6902|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((|x#0@@6| T@U) ) (! (= ($Is intType |x#0@@6| Tclass._module.nByte)  (and (<= (LitInt (- 0 10)) (U_2_int |x#0@@6|)) (< (U_2_int |x#0@@6|) 100)))
 :qid |unknown.0:0|
 :skolemid |7623|
 :pattern ( ($Is intType |x#0@@6| Tclass._module.nByte))
)))
(assert (forall ((|x#0@@7| T@U) ) (! (= ($Is intType |x#0@@7| Tclass._module.nShort)  (and (<= (LitInt (- 0 10)) (U_2_int |x#0@@7|)) (< (U_2_int |x#0@@7|) 1000)))
 :qid |unknown.0:0|
 :skolemid |7625|
 :pattern ( ($Is intType |x#0@@7| Tclass._module.nShort))
)))
(assert (forall ((|x#0@@8| T@U) ) (! (= ($Is intType |x#0@@8| Tclass._module.nInt)  (and (<= (LitInt (- 0 10)) (U_2_int |x#0@@8|)) (< (U_2_int |x#0@@8|) 1000000)))
 :qid |unknown.0:0|
 :skolemid |7627|
 :pattern ( ($Is intType |x#0@@8| Tclass._module.nInt))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |6771|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |6769|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |6975|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) (|a#12#3#0| T@U) (|a#12#4#0| T@U) (|a#12#5#0| T@U) (|a#12#6#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#7._#Make7| |a#12#0#0| |a#12#1#0| |a#12#2#0| |a#12#3#0| |a#12#4#0| |a#12#5#0| |a#12#6#0|)) |##_System._tuple#7._#Make7|)
 :qid |unknown.0:0|
 :skolemid |7389|
 :pattern ( (|#_System._tuple#7._#Make7| |a#12#0#0| |a#12#1#0| |a#12#2#0| |a#12#3#0| |a#12#4#0| |a#12#5#0| |a#12#6#0|))
)))
(assert (forall ((|_System._tuple#7$T0@@11| T@U) (|_System._tuple#7$T1@@11| T@U) (|_System._tuple#7$T2@@11| T@U) (|_System._tuple#7$T3@@11| T@U) (|_System._tuple#7$T4@@11| T@U) (|_System._tuple#7$T5@@11| T@U) (|_System._tuple#7$T6@@11| T@U) ) (! (= (Tclass._System.Tuple7_0 (Tclass._System.Tuple7 |_System._tuple#7$T0@@11| |_System._tuple#7$T1@@11| |_System._tuple#7$T2@@11| |_System._tuple#7$T3@@11| |_System._tuple#7$T4@@11| |_System._tuple#7$T5@@11| |_System._tuple#7$T6@@11|)) |_System._tuple#7$T0@@11|)
 :qid |unknown.0:0|
 :skolemid |7394|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@11| |_System._tuple#7$T1@@11| |_System._tuple#7$T2@@11| |_System._tuple#7$T3@@11| |_System._tuple#7$T4@@11| |_System._tuple#7$T5@@11| |_System._tuple#7$T6@@11|))
)))
(assert (forall ((|_System._tuple#7$T0@@12| T@U) (|_System._tuple#7$T1@@12| T@U) (|_System._tuple#7$T2@@12| T@U) (|_System._tuple#7$T3@@12| T@U) (|_System._tuple#7$T4@@12| T@U) (|_System._tuple#7$T5@@12| T@U) (|_System._tuple#7$T6@@12| T@U) ) (! (= (Tclass._System.Tuple7_1 (Tclass._System.Tuple7 |_System._tuple#7$T0@@12| |_System._tuple#7$T1@@12| |_System._tuple#7$T2@@12| |_System._tuple#7$T3@@12| |_System._tuple#7$T4@@12| |_System._tuple#7$T5@@12| |_System._tuple#7$T6@@12|)) |_System._tuple#7$T1@@12|)
 :qid |unknown.0:0|
 :skolemid |7395|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@12| |_System._tuple#7$T1@@12| |_System._tuple#7$T2@@12| |_System._tuple#7$T3@@12| |_System._tuple#7$T4@@12| |_System._tuple#7$T5@@12| |_System._tuple#7$T6@@12|))
)))
(assert (forall ((|_System._tuple#7$T0@@13| T@U) (|_System._tuple#7$T1@@13| T@U) (|_System._tuple#7$T2@@13| T@U) (|_System._tuple#7$T3@@13| T@U) (|_System._tuple#7$T4@@13| T@U) (|_System._tuple#7$T5@@13| T@U) (|_System._tuple#7$T6@@13| T@U) ) (! (= (Tclass._System.Tuple7_2 (Tclass._System.Tuple7 |_System._tuple#7$T0@@13| |_System._tuple#7$T1@@13| |_System._tuple#7$T2@@13| |_System._tuple#7$T3@@13| |_System._tuple#7$T4@@13| |_System._tuple#7$T5@@13| |_System._tuple#7$T6@@13|)) |_System._tuple#7$T2@@13|)
 :qid |unknown.0:0|
 :skolemid |7396|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@13| |_System._tuple#7$T1@@13| |_System._tuple#7$T2@@13| |_System._tuple#7$T3@@13| |_System._tuple#7$T4@@13| |_System._tuple#7$T5@@13| |_System._tuple#7$T6@@13|))
)))
(assert (forall ((|_System._tuple#7$T0@@14| T@U) (|_System._tuple#7$T1@@14| T@U) (|_System._tuple#7$T2@@14| T@U) (|_System._tuple#7$T3@@14| T@U) (|_System._tuple#7$T4@@14| T@U) (|_System._tuple#7$T5@@14| T@U) (|_System._tuple#7$T6@@14| T@U) ) (! (= (Tclass._System.Tuple7_3 (Tclass._System.Tuple7 |_System._tuple#7$T0@@14| |_System._tuple#7$T1@@14| |_System._tuple#7$T2@@14| |_System._tuple#7$T3@@14| |_System._tuple#7$T4@@14| |_System._tuple#7$T5@@14| |_System._tuple#7$T6@@14|)) |_System._tuple#7$T3@@14|)
 :qid |unknown.0:0|
 :skolemid |7397|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@14| |_System._tuple#7$T1@@14| |_System._tuple#7$T2@@14| |_System._tuple#7$T3@@14| |_System._tuple#7$T4@@14| |_System._tuple#7$T5@@14| |_System._tuple#7$T6@@14|))
)))
(assert (forall ((|_System._tuple#7$T0@@15| T@U) (|_System._tuple#7$T1@@15| T@U) (|_System._tuple#7$T2@@15| T@U) (|_System._tuple#7$T3@@15| T@U) (|_System._tuple#7$T4@@15| T@U) (|_System._tuple#7$T5@@15| T@U) (|_System._tuple#7$T6@@15| T@U) ) (! (= (Tclass._System.Tuple7_4 (Tclass._System.Tuple7 |_System._tuple#7$T0@@15| |_System._tuple#7$T1@@15| |_System._tuple#7$T2@@15| |_System._tuple#7$T3@@15| |_System._tuple#7$T4@@15| |_System._tuple#7$T5@@15| |_System._tuple#7$T6@@15|)) |_System._tuple#7$T4@@15|)
 :qid |unknown.0:0|
 :skolemid |7398|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@15| |_System._tuple#7$T1@@15| |_System._tuple#7$T2@@15| |_System._tuple#7$T3@@15| |_System._tuple#7$T4@@15| |_System._tuple#7$T5@@15| |_System._tuple#7$T6@@15|))
)))
(assert (forall ((|_System._tuple#7$T0@@16| T@U) (|_System._tuple#7$T1@@16| T@U) (|_System._tuple#7$T2@@16| T@U) (|_System._tuple#7$T3@@16| T@U) (|_System._tuple#7$T4@@16| T@U) (|_System._tuple#7$T5@@16| T@U) (|_System._tuple#7$T6@@16| T@U) ) (! (= (Tclass._System.Tuple7_5 (Tclass._System.Tuple7 |_System._tuple#7$T0@@16| |_System._tuple#7$T1@@16| |_System._tuple#7$T2@@16| |_System._tuple#7$T3@@16| |_System._tuple#7$T4@@16| |_System._tuple#7$T5@@16| |_System._tuple#7$T6@@16|)) |_System._tuple#7$T5@@16|)
 :qid |unknown.0:0|
 :skolemid |7399|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@16| |_System._tuple#7$T1@@16| |_System._tuple#7$T2@@16| |_System._tuple#7$T3@@16| |_System._tuple#7$T4@@16| |_System._tuple#7$T5@@16| |_System._tuple#7$T6@@16|))
)))
(assert (forall ((|_System._tuple#7$T0@@17| T@U) (|_System._tuple#7$T1@@17| T@U) (|_System._tuple#7$T2@@17| T@U) (|_System._tuple#7$T3@@17| T@U) (|_System._tuple#7$T4@@17| T@U) (|_System._tuple#7$T5@@17| T@U) (|_System._tuple#7$T6@@17| T@U) ) (! (= (Tclass._System.Tuple7_6 (Tclass._System.Tuple7 |_System._tuple#7$T0@@17| |_System._tuple#7$T1@@17| |_System._tuple#7$T2@@17| |_System._tuple#7$T3@@17| |_System._tuple#7$T4@@17| |_System._tuple#7$T5@@17| |_System._tuple#7$T6@@17|)) |_System._tuple#7$T6@@17|)
 :qid |unknown.0:0|
 :skolemid |7400|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@17| |_System._tuple#7$T1@@17| |_System._tuple#7$T2@@17| |_System._tuple#7$T3@@17| |_System._tuple#7$T4@@17| |_System._tuple#7$T5@@17| |_System._tuple#7$T6@@17|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) (|a#16#3#0| T@U) (|a#16#4#0| T@U) (|a#16#5#0| T@U) (|a#16#6#0| T@U) ) (! (= (_System.Tuple7._0 (|#_System._tuple#7._#Make7| |a#16#0#0| |a#16#1#0| |a#16#2#0| |a#16#3#0| |a#16#4#0| |a#16#5#0| |a#16#6#0|)) |a#16#0#0|)
 :qid |unknown.0:0|
 :skolemid |7419|
 :pattern ( (|#_System._tuple#7._#Make7| |a#16#0#0| |a#16#1#0| |a#16#2#0| |a#16#3#0| |a#16#4#0| |a#16#5#0| |a#16#6#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) (|a#18#3#0| T@U) (|a#18#4#0| T@U) (|a#18#5#0| T@U) (|a#18#6#0| T@U) ) (! (= (_System.Tuple7._1 (|#_System._tuple#7._#Make7| |a#18#0#0| |a#18#1#0| |a#18#2#0| |a#18#3#0| |a#18#4#0| |a#18#5#0| |a#18#6#0|)) |a#18#1#0|)
 :qid |unknown.0:0|
 :skolemid |7421|
 :pattern ( (|#_System._tuple#7._#Make7| |a#18#0#0| |a#18#1#0| |a#18#2#0| |a#18#3#0| |a#18#4#0| |a#18#5#0| |a#18#6#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) (|a#20#3#0| T@U) (|a#20#4#0| T@U) (|a#20#5#0| T@U) (|a#20#6#0| T@U) ) (! (= (_System.Tuple7._2 (|#_System._tuple#7._#Make7| |a#20#0#0| |a#20#1#0| |a#20#2#0| |a#20#3#0| |a#20#4#0| |a#20#5#0| |a#20#6#0|)) |a#20#2#0|)
 :qid |unknown.0:0|
 :skolemid |7423|
 :pattern ( (|#_System._tuple#7._#Make7| |a#20#0#0| |a#20#1#0| |a#20#2#0| |a#20#3#0| |a#20#4#0| |a#20#5#0| |a#20#6#0|))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) (|a#22#2#0| T@U) (|a#22#3#0| T@U) (|a#22#4#0| T@U) (|a#22#5#0| T@U) (|a#22#6#0| T@U) ) (! (= (_System.Tuple7._3 (|#_System._tuple#7._#Make7| |a#22#0#0| |a#22#1#0| |a#22#2#0| |a#22#3#0| |a#22#4#0| |a#22#5#0| |a#22#6#0|)) |a#22#3#0|)
 :qid |unknown.0:0|
 :skolemid |7425|
 :pattern ( (|#_System._tuple#7._#Make7| |a#22#0#0| |a#22#1#0| |a#22#2#0| |a#22#3#0| |a#22#4#0| |a#22#5#0| |a#22#6#0|))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) (|a#24#2#0| T@U) (|a#24#3#0| T@U) (|a#24#4#0| T@U) (|a#24#5#0| T@U) (|a#24#6#0| T@U) ) (! (= (_System.Tuple7._4 (|#_System._tuple#7._#Make7| |a#24#0#0| |a#24#1#0| |a#24#2#0| |a#24#3#0| |a#24#4#0| |a#24#5#0| |a#24#6#0|)) |a#24#4#0|)
 :qid |unknown.0:0|
 :skolemid |7427|
 :pattern ( (|#_System._tuple#7._#Make7| |a#24#0#0| |a#24#1#0| |a#24#2#0| |a#24#3#0| |a#24#4#0| |a#24#5#0| |a#24#6#0|))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) (|a#26#2#0| T@U) (|a#26#3#0| T@U) (|a#26#4#0| T@U) (|a#26#5#0| T@U) (|a#26#6#0| T@U) ) (! (= (_System.Tuple7._5 (|#_System._tuple#7._#Make7| |a#26#0#0| |a#26#1#0| |a#26#2#0| |a#26#3#0| |a#26#4#0| |a#26#5#0| |a#26#6#0|)) |a#26#5#0|)
 :qid |unknown.0:0|
 :skolemid |7429|
 :pattern ( (|#_System._tuple#7._#Make7| |a#26#0#0| |a#26#1#0| |a#26#2#0| |a#26#3#0| |a#26#4#0| |a#26#5#0| |a#26#6#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) (|a#28#2#0| T@U) (|a#28#3#0| T@U) (|a#28#4#0| T@U) (|a#28#5#0| T@U) (|a#28#6#0| T@U) ) (! (= (_System.Tuple7._6 (|#_System._tuple#7._#Make7| |a#28#0#0| |a#28#1#0| |a#28#2#0| |a#28#3#0| |a#28#4#0| |a#28#5#0| |a#28#6#0|)) |a#28#6#0|)
 :qid |unknown.0:0|
 :skolemid |7431|
 :pattern ( (|#_System._tuple#7._#Make7| |a#28#0#0| |a#28#1#0| |a#28#2#0| |a#28#3#0| |a#28#4#0| |a#28#5#0| |a#28#6#0|))
)))
(assert (forall ((h@@12 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@12)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |6814|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@12))
)))
(assert (forall ((h@@13 T@U) (v@@8 T@U) ) (! ($IsAlloc charType v@@8 TChar h@@13)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |6817|
 :pattern ( ($IsAlloc charType v@@8 TChar h@@13))
)))
(assert (forall ((v@@9 T@U) (t0@@19 T@U) ) (! (= ($Is SeqType v@@9 (TSeq t0@@19)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@9))) ($IsBox (|Seq#Index| v@@9 i@@3) t0@@19))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |6806|
 :pattern ( (|Seq#Index| v@@9 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |6807|
 :pattern ( ($Is SeqType v@@9 (TSeq t0@@19)))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#i#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#8| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#i#0@@1|) |l#0@@4|)
 :qid |Arraysdfy.88:28|
 :skolemid |7827|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#8| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#i#0@@1|))
)))
(assert (forall ((s@@7 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@7))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@7 i@@4))) (|Seq#Rank| s@@7)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |7020|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@7 i@@4))))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is intType v@@10 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |6793|
 :pattern ( ($Is intType v@@10 TInt))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is charType v@@11 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |6796|
 :pattern ( ($Is charType v@@11 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0_1@0| () Int)
(declare-fun $nw@0 () T@U)
(declare-fun |i#0_0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |lambdaResult#0| () T@U)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |kitchenSink#0@0| () T@U)
(declare-fun |let#1_0#0#0| () T@U)
(declare-fun |dt_update_tmp#0#Z#1_0@0| () T@U)
(declare-fun |let#1_1#0#0| () T@U)
(declare-fun |dt_update#0#0#Z#1_0@0| () T@U)
(declare-fun |kitchenSink#0@1| () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $LZ () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call0formal@_module._default.PrintArray$A@0 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $nw@2 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun call0formal@_module._default.PrintArray$A@0@@0 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $nw@3 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun call0formal@_module._default.PrintArray$A@0@@1 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun $nw@4 () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun call0formal@_module._default.PrintArray$A@0@@2 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun $nw@5 () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun call0formal@_module._default.PrintArray$A@0@@3 () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun $nw@6 () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun call0formal@_module._default.PrintArray$A@0@@4 () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun $nw@7 () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun call0formal@_module._default.PrintArray$A@0@@5 () T@U)
(declare-fun $Heap@16 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call0formal@_module._default.PrintArray$A@0@@6 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |aa#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |vv#0| () T@U)
(declare-fun |yy#0| () T@U)
(declare-fun |a0#0| () T@U)
(declare-fun |a1#0| () T@U)
(declare-fun |a2#0| () T@U)
(declare-fun |a3#0| () T@U)
(declare-fun |kitchenSink#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.More)
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
 (=> (= (ControlFlow 0 0) 43) (let ((anon6_correct  (=> (and (and (<= (LitInt 0) |i#0_1@0|) (< |i#0_1@0| (_System.array.Length $nw@0))) (and (or (not (= |i#0_0@0| |i#0_1@0|)) (not true)) (= (ControlFlow 0 26) (- 0 25)))) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (IndexField |i#0_0@0|) (IndexField |i#0_1@0|))) (not true))) (= (ite (= ($Unbox charType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#0_0@0|))) (Lit charType (|char#FromInt| 0))) (|char#FromInt| 97) ($Unbox charType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#0_0@0|)))) (ite (= ($Unbox charType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#0_1@0|))) (Lit charType (|char#FromInt| 0))) (|char#FromInt| 97) ($Unbox charType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#0_1@0|)))))))))
(let ((anon21_Else_correct  (=> (or (not (= ($Unbox charType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#0_0@0|))) (Lit charType (|char#FromInt| 0)))) (not true)) (and (=> (= (ControlFlow 0 28) (- 0 30)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array.Length $nw@0)))) (=> (= (ControlFlow 0 28) 26) anon6_correct)))))))
(let ((anon21_Then_correct  (=> (and (= ($Unbox charType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#0_0@0|))) (Lit charType (|char#FromInt| 0))) (= (ControlFlow 0 27) 26)) anon6_correct)))
(let ((anon3_correct  (=> (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 31) (- 0 36)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 31) (- 0 35)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 31) (- 0 34)) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |i#0_0@0|)))) (=> (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |i#0_0@0|))) (and (=> (= (ControlFlow 0 31) (- 0 33)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 31) 27) anon21_Then_correct) (=> (= (ControlFlow 0 31) 28) anon21_Else_correct)))))))))))))
(let ((anon20_Else_correct  (=> (and (< |i#0_0@0| (LitInt 0)) (= (ControlFlow 0 39) 31)) anon3_correct)))
(let ((anon20_Then_correct  (=> (<= (LitInt 0) |i#0_0@0|) (and (=> (= (ControlFlow 0 37) (- 0 38)) (or (not (= $nw@0 null)) (not true))) (=> (= (ControlFlow 0 37) 31) anon3_correct)))))
(let ((anon19_Then_correct  (and (=> (= (ControlFlow 0 40) 37) anon20_Then_correct) (=> (= (ControlFlow 0 40) 39) anon20_Else_correct))))
(let ((anon14_correct true))
(let ((anon25_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| (|Seq#Length| |s#0@0|)))) (= (ControlFlow 0 18) 15)) anon14_correct)))
(let ((anon25_Then_correct  (=> (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| (|Seq#Length| |s#0@0|))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |s#0@0|)))) (=> (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |s#0@0|))) (=> (= |lambdaResult#0| ($Unbox charType (|Seq#Index| |s#0@0| |i#0@0|))) (=> (and ($Is charType |lambdaResult#0| TChar) (= (ControlFlow 0 16) 15)) anon14_correct)))))))
(let ((anon24_Else_correct  (=> (< |i#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 20) 16) anon25_Then_correct) (=> (= (ControlFlow 0 20) 18) anon25_Else_correct)))))
(let ((anon24_Then_correct  (=> (<= (LitInt 0) |i#0@0|) (and (=> (= (ControlFlow 0 19) 16) anon25_Then_correct) (=> (= (ControlFlow 0 19) 18) anon25_Else_correct)))))
(let ((anon23_Then_correct  (=> (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false)) (and (=> (= (ControlFlow 0 21) 19) anon24_Then_correct) (=> (= (ControlFlow 0 21) 20) anon24_Else_correct)))))
(let ((anon23_Else_correct true))
(let ((anon22_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@2 |$lambdaHeap#0@0|) ($HeapSucc $Heap@2 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 22) 21) anon23_Then_correct) (=> (= (ControlFlow 0 22) 14) anon23_Else_correct)))))
(let ((anon18_correct true))
(let ((anon26_Else_correct  (=> (and (or (not (= ($Unbox charType (_System.Tuple7._0 |kitchenSink#0@0|)) (Lit charType (|char#FromInt| 0)))) (not true)) (= (ControlFlow 0 4) 1)) anon18_correct)))
(let ((anon26_Then_correct  (=> (and (and (= ($Unbox charType (_System.Tuple7._0 |kitchenSink#0@0|)) (Lit charType (|char#FromInt| 0))) (= |let#1_0#0#0| |kitchenSink#0@0|)) (and ($Is DatatypeTypeType |let#1_0#0#0| (Tclass._System.Tuple7 Tclass._module.lowercase Tclass._module.BV10 Tclass._module.Yes Tclass._module.nByte Tclass._module.nShort Tclass._module.nInt Tclass._module.nLong)) (= |dt_update_tmp#0#Z#1_0@0| |let#1_0#0#0|))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is charType (Lit charType (|char#FromInt| 97)) Tclass._module.lowercase)) (=> ($Is charType (Lit charType (|char#FromInt| 97)) Tclass._module.lowercase) (=> (and (and (= |let#1_1#0#0| (Lit charType (|char#FromInt| 97))) ($Is charType |let#1_1#0#0| Tclass._module.lowercase)) (and (= |dt_update#0#0#Z#1_0@0| |let#1_1#0#0|) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#Z#1_0@0|))) (=> (and (and (and (_System.Tuple7.___hMake7_q |dt_update_tmp#0#Z#1_0@0|) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#Z#1_0@0|)) (and (_System.Tuple7.___hMake7_q |dt_update_tmp#0#Z#1_0@0|) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#Z#1_0@0|))) (and (and (_System.Tuple7.___hMake7_q |dt_update_tmp#0#Z#1_0@0|) (let ((|dt_update_tmp#0#1_0| |kitchenSink#0@0|))
 (and (and (and (and (and (_System.Tuple7.___hMake7_q |dt_update_tmp#0#1_0|) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#1_0|)) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#1_0|)) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#1_0|)) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#1_0|)) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#1_0|)))) (and (= |kitchenSink#0@1| (let ((|dt_update_tmp#0#1_0@@0| |kitchenSink#0@0|))
(let ((|dt_update#0#0#1_0| (Lit charType (|char#FromInt| 97))))
(|#_System._tuple#7._#Make7| ($Box charType |dt_update#0#0#1_0|) (_System.Tuple7._1 |dt_update_tmp#0#1_0@@0|) (_System.Tuple7._2 |dt_update_tmp#0#1_0@@0|) (_System.Tuple7._3 |dt_update_tmp#0#1_0@@0|) (_System.Tuple7._4 |dt_update_tmp#0#1_0@@0|) (_System.Tuple7._5 |dt_update_tmp#0#1_0@@0|) (_System.Tuple7._6 |dt_update_tmp#0#1_0@@0|))))) (= (ControlFlow 0 2) 1)))) anon18_correct)))))))
(let ((anon22_Else_correct  (=> (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array? Tclass._module.lowercase))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $nw@1) alloc)))) (= (_System.array.Length $nw@1) (|Seq#Length| |s#0@0|)))) (and (=> (= (ControlFlow 0 5) (- 0 13)) (forall ((|arrayinit#0#i0#0| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0|) (< |arrayinit#0#i0#0| (|Seq#Length| |s#0@0|))) (Requires1 TInt TChar $Heap@2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#9| (Handle1 (|lambda#5| |s#0@0|) (|lambda#6| TInt (LitInt 0) (|Seq#Length| |s#0@0|)) (|lambda#8| (SetRef_to_SetBox (|lambda#7| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0|))))
 :qid |Arraysdfy.189:9|
 :skolemid |7548|
))) (and (=> (= (ControlFlow 0 5) (- 0 12)) (forall ((|arrayinit#0#i0#0@@0| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0@@0|) (< |arrayinit#0#i0#0@@0| (|Seq#Length| |s#0@0|))) ($Is charType ($Unbox charType (Apply1 TInt TChar $Heap@2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#9| (Handle1 (|lambda#5| |s#0@0|) (|lambda#6| TInt (LitInt 0) (|Seq#Length| |s#0@0|)) (|lambda#8| (SetRef_to_SetBox (|lambda#7| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0@@0|)))) Tclass._module.lowercase))
 :qid |Arraysdfy.189:9|
 :skolemid |7549|
))) (=> (forall ((|arrayinit#0#i0#0@@1| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0@@1|) (< |arrayinit#0#i0#0@@1| (|Seq#Length| |s#0@0|))) (= ($Unbox charType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $nw@1) (IndexField |arrayinit#0#i0#0@@1|))) ($Unbox charType (Apply1 TInt TChar $Heap@2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#9| (Handle1 (|lambda#5| |s#0@0|) (|lambda#6| TInt (LitInt 0) (|Seq#Length| |s#0@0|)) (|lambda#8| (SetRef_to_SetBox (|lambda#7| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0@@1|))))))
 :qid |Arraysdfy.189:9|
 :skolemid |7550|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $nw@1) (IndexField |arrayinit#0#i0#0@@1|)))
)) (=> (and (and (and (= $Heap@3 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@2 $nw@1 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $nw@1) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@3)) (and ($IsHeapAnchor $Heap@3) (= call0formal@_module._default.PrintArray$A@0 Tclass._module.lowercase))) (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@8) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $o@@8) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@8)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $o@@8))
)) ($HeapSucc $Heap@3 $Heap@4)))) (and (=> (= (ControlFlow 0 5) (- 0 11)) (<= 0 (LitInt 4))) (=> (<= 0 (LitInt 4)) (=> (and (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 (Tclass._System.array? Tclass._module.BV10))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $nw@2) alloc)))) (= (_System.array.Length $nw@2) (LitInt 4)))) (=> (and (and (and (= $Heap@5 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@4 $nw@2 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $nw@2) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@5)) (and ($IsHeapAnchor $Heap@5) (= call0formal@_module._default.PrintArray$A@0@@0 Tclass._module.BV10))) (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@9) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@9) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@9)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@9))
)) ($HeapSucc $Heap@5 $Heap@6)))) (and (=> (= (ControlFlow 0 5) (- 0 10)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (=> (and (and (or (not (= $nw@3 null)) (not true)) ($Is refType $nw@3 (Tclass._System.array? Tclass._module.Yes))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $nw@3) alloc)))) (= (_System.array.Length $nw@3) (LitInt 3)))) (=> (and (and (and (= $Heap@7 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@6 $nw@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $nw@3) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@7)) (and ($IsHeapAnchor $Heap@7) (= call0formal@_module._default.PrintArray$A@0@@1 Tclass._module.Yes))) (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $o@@10) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@8 $o@@10) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $o@@10)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@8 $o@@10))
)) ($HeapSucc $Heap@7 $Heap@8)))) (and (=> (= (ControlFlow 0 5) (- 0 9)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (=> (and (and (or (not (= $nw@4 null)) (not true)) ($Is refType $nw@4 (Tclass._System.array? Tclass._module.nByte))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@8 $nw@4) alloc)))) (= (_System.array.Length $nw@4) (LitInt 5)))) (=> (and (and (and (= $Heap@9 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@8 $nw@4 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@8 $nw@4) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@9)) (and ($IsHeapAnchor $Heap@9) (= call0formal@_module._default.PrintArray$A@0@@2 Tclass._module.nByte))) (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@9 $o@@11) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@10 $o@@11) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@9 $o@@11)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@10 $o@@11))
)) ($HeapSucc $Heap@9 $Heap@10)))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (=> (and (and (or (not (= $nw@5 null)) (not true)) ($Is refType $nw@5 (Tclass._System.array? Tclass._module.nShort))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@10 $nw@5) alloc)))) (= (_System.array.Length $nw@5) (LitInt 5)))) (=> (and (and (and (= $Heap@11 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@10 $nw@5 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@10 $nw@5) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@11)) (and ($IsHeapAnchor $Heap@11) (= call0formal@_module._default.PrintArray$A@0@@3 Tclass._module.nShort))) (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@11 $o@@12) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@12 $o@@12) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@11 $o@@12)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@12 $o@@12))
)) ($HeapSucc $Heap@11 $Heap@12)))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (=> (and (and (or (not (= $nw@6 null)) (not true)) ($Is refType $nw@6 (Tclass._System.array? Tclass._module.nInt))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@12 $nw@6) alloc)))) (= (_System.array.Length $nw@6) (LitInt 5)))) (=> (and (and (and (= $Heap@13 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@12 $nw@6 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@12 $nw@6) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@13)) (and ($IsHeapAnchor $Heap@13) (= call0formal@_module._default.PrintArray$A@0@@4 Tclass._module.nInt))) (and (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14)) (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@13 $o@@13) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@14 $o@@13) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@13 $o@@13)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@14 $o@@13))
)) ($HeapSucc $Heap@13 $Heap@14)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (=> (and (and (and (and (or (not (= $nw@7 null)) (not true)) ($Is refType $nw@7 (Tclass._System.array? Tclass._module.nLong))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@14 $nw@7) alloc)))) (= (_System.array.Length $nw@7) (LitInt 5)))) (and (and (= $Heap@15 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@14 $nw@7 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@14 $nw@7) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@15)) (and ($IsHeapAnchor $Heap@15) (= call0formal@_module._default.PrintArray$A@0@@5 Tclass._module.nLong)))) (and (and (and ($IsGoodHeap $Heap@16) ($IsHeapAnchor $Heap@16)) (and (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@15 $o@@14) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@16 $o@@14) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@15 $o@@14)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@16 $o@@14))
)) ($HeapSucc $Heap@15 $Heap@16))) (and (and ($Is DatatypeTypeType |kitchenSink#0@0| (Tclass._System.Tuple7 Tclass._module.lowercase Tclass._module.BV10 Tclass._module.Yes Tclass._module.nByte Tclass._module.nShort Tclass._module.nInt Tclass._module.nLong)) ($IsAlloc DatatypeTypeType |kitchenSink#0@0| (Tclass._System.Tuple7 Tclass._module.lowercase Tclass._module.BV10 Tclass._module.Yes Tclass._module.nByte Tclass._module.nShort Tclass._module.nInt Tclass._module.nLong) $Heap@16)) (and (_System.Tuple7.___hMake7_q |kitchenSink#0@0|) (_System.Tuple7.___hMake7_q |kitchenSink#0@0|))))) (and (=> (= (ControlFlow 0 5) 2) anon26_Then_correct) (=> (= (ControlFlow 0 5) 4) anon26_Else_correct))))))))))))))))))))))))))))))))
(let ((anon19_Else_correct  (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and ($HeapSucc $Heap@0 $Heap@1) (forall (($o@@15 T@U) ($f@@0 T@U) ) (!  (or (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@15) $f@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@15) $f@@0)) (exists ((|i#0_2| Int) ) (!  (and (and (and (<= (LitInt 0) |i#0_2|) (< |i#0_2| (_System.array.Length $nw@0))) (= $o@@15 $nw@0)) (= $f@@0 (IndexField |i#0_2|)))
 :qid |Arraysdfy.181:10|
 :skolemid |7544|
)))
 :qid |Arraysdfy.181:3|
 :skolemid |7545|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@15) $f@@0))
))) (and (forall ((|i#inv#0_0| Int) ) (!  (=> (and (<= (LitInt 0) |i#inv#0_0|) (< |i#inv#0_0| (_System.array.Length $nw@0))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#inv#0_0|)) ($Box charType (ite (= ($Unbox charType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#inv#0_0|))) (Lit charType (|char#FromInt| 0))) (|char#FromInt| 97) ($Unbox charType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#inv#0_0|)))))))
 :qid |Arraysdfy.181:10|
 :skolemid |7546|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#inv#0_0|)))
)) (= call0formal@_module._default.PrintArray$A@0@@6 Tclass._module.lowercase))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@16) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@16) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@16)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@16))
))) (and ($HeapSucc $Heap@1 $Heap@2) (= |s#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 111))))))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (<= 0 (|Seq#Length| |s#0@0|))) (=> (<= 0 (|Seq#Length| |s#0@0|)) (and (=> (= (ControlFlow 0 23) 22) anon22_Then_correct) (=> (= (ControlFlow 0 23) 5) anon22_Else_correct)))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? Tclass._module.lowercase))) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (LitInt 3)) (= $Heap@0 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap $nw@0 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 41) 40) anon19_Then_correct) (=> (= (ControlFlow 0 41) 23) anon19_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is refType |aa#0| (Tclass._System.array Tclass._module.lowercase)) ($IsAlloc refType |aa#0| (Tclass._System.array Tclass._module.lowercase) $Heap)) true) (and (and ($Is SeqType |s#0| (TSeq TChar)) ($IsAlloc SeqType |s#0| (TSeq TChar) $Heap)) true)) (=> (and (and (and (and (and ($Is refType |vv#0| (Tclass._System.array Tclass._module.BV10)) ($IsAlloc refType |vv#0| (Tclass._System.array Tclass._module.BV10) $Heap)) true) (and (and ($Is refType |yy#0| (Tclass._System.array Tclass._module.Yes)) ($IsAlloc refType |yy#0| (Tclass._System.array Tclass._module.Yes) $Heap)) true)) (and (and (and ($Is refType |a0#0| (Tclass._System.array Tclass._module.nByte)) ($IsAlloc refType |a0#0| (Tclass._System.array Tclass._module.nByte) $Heap)) true) (and (and ($Is refType |a1#0| (Tclass._System.array Tclass._module.nShort)) ($IsAlloc refType |a1#0| (Tclass._System.array Tclass._module.nShort) $Heap)) true))) (and (and (and (and ($Is refType |a2#0| (Tclass._System.array Tclass._module.nInt)) ($IsAlloc refType |a2#0| (Tclass._System.array Tclass._module.nInt) $Heap)) true) (and (and ($Is refType |a3#0| (Tclass._System.array Tclass._module.nLong)) ($IsAlloc refType |a3#0| (Tclass._System.array Tclass._module.nLong) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |kitchenSink#0| (Tclass._System.Tuple7 Tclass._module.lowercase Tclass._module.BV10 Tclass._module.Yes Tclass._module.nByte Tclass._module.nShort Tclass._module.nInt Tclass._module.nLong)) ($IsAlloc DatatypeTypeType |kitchenSink#0| (Tclass._System.Tuple7 Tclass._module.lowercase Tclass._module.BV10 Tclass._module.Yes Tclass._module.nByte Tclass._module.nShort Tclass._module.nInt Tclass._module.nLong) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 43) 41))))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
