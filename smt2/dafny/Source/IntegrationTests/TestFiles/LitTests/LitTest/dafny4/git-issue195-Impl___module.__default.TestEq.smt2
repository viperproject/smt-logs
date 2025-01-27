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
(declare-fun TBool () T@U)
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TReal () T@U)
(declare-fun TORDINAL () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagORDINAL () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagMultiSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.nt () T@U)
(declare-fun Tagclass._module.ntNative () T@U)
(declare-fun Tagclass._module.MyClass () T@U)
(declare-fun Tagclass._module.MyClass? () T@U)
(declare-fun Tagclass._module.X () T@U)
(declare-fun |##_module.X.X| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$nt () T@U)
(declare-fun tytagFamily$ntNative () T@U)
(declare-fun tytagFamily$MyClass () T@U)
(declare-fun tytagFamily$X () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun TBitvector (Int) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun bv8Type () T@T)
(declare-fun bv8_2_U ((_ BitVec 8)) T@U)
(declare-fun U_2_bv8 (T@U) (_ BitVec 8))
(declare-fun bv167Type () T@T)
(declare-fun bv167_2_U ((_ BitVec 167)) T@U)
(declare-fun U_2_bv167 (T@U) (_ BitVec 167))
(declare-fun Tclass._module.nt () T@U)
(declare-fun Tclass._module.ntNative () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.MyClass? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.MyClass () T@U)
(declare-fun _module.X.X_q (T@U) Bool)
(declare-fun Tclass._module.X () T@U)
(declare-fun |#_module.X.X| (Bool T@U Int Real Int Int (_ BitVec 8) (_ BitVec 167) T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun charType () T@T)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun BoxType () T@T)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.X._h0 (T@U) Bool)
(declare-fun _module.X._h1 (T@U) T@U)
(declare-fun _module.X._h2 (T@U) Int)
(declare-fun _module.X._h3 (T@U) Real)
(declare-fun _module.X._h8 (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun _module.X._h6 (T@U) (_ BitVec 8))
(declare-fun _module.X._h7 (T@U) (_ BitVec 167))
(declare-fun _module.X._h4 (T@U) Int)
(declare-fun _module.X._h5 (T@U) Int)
(declare-fun _module.X._h9 (T@U) T@U)
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
(assert (distinct TBool TChar TInt TReal TORDINAL TagBool TagChar TagInt TagReal TagORDINAL TagSet TagMultiSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.nt Tagclass._module.ntNative Tagclass._module.MyClass Tagclass._module.MyClass? Tagclass._module.X |##_module.X.X| |tytagFamily$_tuple#2| tytagFamily$nt tytagFamily$ntNative tytagFamily$MyClass tytagFamily$X)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (Tag TORDINAL) TagORDINAL))
(assert (forall ((v T@U) (h T@U) ) (! ($IsAlloc intType v (TBitvector 0) h)
 :qid |DafnyPreludebpl.295:15|
 :skolemid |66|
 :pattern ( ($IsAlloc intType v (TBitvector 0) h))
)))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (and (and (= (Ctor bv8Type) 3) (forall ((arg0@@2 (_ BitVec 8)) ) (! (= (U_2_bv8 (bv8_2_U arg0@@2)) arg0@@2)
 :qid |typeInv:U_2_bv8|
 :pattern ( (bv8_2_U arg0@@2))
))) (forall ((x@@3 T@U) ) (! (= (bv8_2_U (U_2_bv8 x@@3)) x@@3)
 :qid |cast:U_2_bv8|
 :pattern ( (U_2_bv8 x@@3))
))))
(assert (forall ((v@@0 T@U) (heap T@U) ) (! ($IsAlloc bv8Type v@@0 (TBitvector 8) heap)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc bv8Type v@@0 (TBitvector 8) heap))
)))
(assert  (and (and (= (Ctor bv167Type) 4) (forall ((arg0@@3 (_ BitVec 167)) ) (! (= (U_2_bv167 (bv167_2_U arg0@@3)) arg0@@3)
 :qid |typeInv:U_2_bv167|
 :pattern ( (bv167_2_U arg0@@3))
))) (forall ((x@@4 T@U) ) (! (= (bv167_2_U (U_2_bv167 x@@4)) x@@4)
 :qid |cast:U_2_bv167|
 :pattern ( (U_2_bv167 x@@4))
))))
(assert (forall ((v@@1 T@U) (heap@@0 T@U) ) (! ($IsAlloc bv167Type v@@1 (TBitvector 167) heap@@0)
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsAlloc bv167Type v@@1 (TBitvector 167) heap@@0))
)))
(assert (forall ((a@@0 T@U) (x@@5 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@5) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@5) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((|c1#0| T@U) ($h T@U) ) (! ($IsAlloc intType |c1#0| Tclass._module.nt $h)
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( ($IsAlloc intType |c1#0| Tclass._module.nt $h))
)))
(assert (forall ((|x#0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0| Tclass._module.ntNative $h@@0)
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($IsAlloc intType |x#0| Tclass._module.ntNative $h@@0))
)))
(assert (forall ((a@@1 T@U) (x@@6 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@6) o)  (or (= o x@@6) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@6) o))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 (TBitvector 0))
 :qid |DafnyPreludebpl.236:15|
 :skolemid |45|
 :pattern ( ($Is intType v@@2 (TBitvector 0)))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is bv8Type v@@3 (TBitvector 8))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is bv8Type v@@3 (TBitvector 8)))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is bv167Type v@@4 (TBitvector 167))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($Is bv167Type v@@4 (TBitvector 167)))
)))
(assert (= (Ctor DatatypeTypeType) 5))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |476|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor MultiSetType) 6))
(assert (forall ((v@@5 T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v@@5 (TMultiSet t0)) ($IsGoodMultiSet v@@5))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |52|
 :pattern ( ($Is MultiSetType v@@5 (TMultiSet t0)))
)))
(assert (= (Ctor refType) 7))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.MyClass?)  (or (= $o null) (= (dtype $o) Tclass._module.MyClass?)))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($Is refType $o Tclass._module.MyClass?))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.MyClass $h@@1) ($IsAlloc refType |c#0| Tclass._module.MyClass? $h@@1))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.MyClass $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.MyClass? $h@@1))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass._module.X) (_module.X.X_q d@@0))
 :qid |unknown.0:0|
 :skolemid |623|
 :pattern ( (_module.X.X_q d@@0) ($Is DatatypeTypeType d@@0 Tclass._module.X))
)))
(assert  (and (= (Ctor charType) 8) (= (Ctor BoxType) 9)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) (|a#3#2#0| Int) (|a#3#3#0| Real) (|a#3#4#0| Int) (|a#3#5#0| Int) (|a#3#6#0| T@U) (|a#3#7#0| T@U) (|a#3#8#0| T@U) (|a#3#9#0| T@U) ) (! (= (|#_module.X.X| (U_2_bool (Lit boolType |a#3#0#0|)) (Lit charType |a#3#1#0|) (LitInt |a#3#2#0|) (LitReal |a#3#3#0|) (LitInt |a#3#4#0|) (LitInt |a#3#5#0|) (U_2_bv8 (Lit bv8Type |a#3#6#0|)) (U_2_bv167 (Lit bv167Type |a#3#7#0|)) (Lit BoxType |a#3#8#0|) (Lit refType |a#3#9#0|)) (Lit DatatypeTypeType (|#_module.X.X| (U_2_bool |a#3#0#0|) |a#3#1#0| |a#3#2#0| |a#3#3#0| |a#3#4#0| |a#3#5#0| (U_2_bv8 |a#3#6#0|) (U_2_bv167 |a#3#7#0|) |a#3#8#0| |a#3#9#0|)))
 :qid |gitissue195dfy.28:16|
 :skolemid |611|
 :pattern ( (|#_module.X.X| (U_2_bool (Lit boolType |a#3#0#0|)) (Lit charType |a#3#1#0|) (LitInt |a#3#2#0|) (LitReal |a#3#3#0|) (LitInt |a#3#4#0|) (LitInt |a#3#5#0|) (U_2_bv8 (Lit bv8Type |a#3#6#0|)) (U_2_bv167 (Lit bv167Type |a#3#7#0|)) (Lit BoxType |a#3#8#0|) (Lit refType |a#3#9#0|)))
)))
(assert (forall ((|a#2#0#0| Bool) (|a#2#1#0| T@U) (|a#2#2#0| Int) (|a#2#3#0| Real) (|a#2#4#0| Int) (|a#2#5#0| Int) (|a#2#6#0| (_ BitVec 8)) (|a#2#7#0| (_ BitVec 167)) (|a#2#8#0| T@U) (|a#2#9#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.X.X| |a#2#0#0| |a#2#1#0| |a#2#2#0| |a#2#3#0| |a#2#4#0| |a#2#5#0| |a#2#6#0| |a#2#7#0| |a#2#8#0| |a#2#9#0|) Tclass._module.X)  (and (and (and (and (and (and (and (and (and ($Is boolType (bool_2_U |a#2#0#0|) TBool) ($Is charType |a#2#1#0| TChar)) ($Is intType (int_2_U |a#2#2#0|) TInt)) ($Is realType (real_2_U |a#2#3#0|) TReal)) ($Is intType (int_2_U |a#2#4#0|) Tclass._module.nt)) ($Is intType (int_2_U |a#2#5#0|) Tclass._module.ntNative)) ($Is bv8Type (bv8_2_U |a#2#6#0|) (TBitvector 8))) ($Is bv167Type (bv167_2_U |a#2#7#0|) (TBitvector 167))) ($Is BoxType |a#2#8#0| TORDINAL)) ($Is refType |a#2#9#0| Tclass._module.MyClass)))
 :qid |gitissue195dfy.28:16|
 :skolemid |599|
 :pattern ( ($Is DatatypeTypeType (|#_module.X.X| |a#2#0#0| |a#2#1#0| |a#2#2#0| |a#2#3#0| |a#2#4#0| |a#2#5#0| |a#2#6#0| |a#2#7#0| |a#2#8#0| |a#2#9#0|) Tclass._module.X))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0@@0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0@@0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1 (MapType0Store t0@@0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 10)) (forall ((arg0@@4 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@4 arg1)) 11)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@5 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@5 arg1@@0)) arg0@@5)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@5 arg1@@0))
))) (forall ((arg0@@6 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@6 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@6 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.MyClass? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.MyClass? $h@@2))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((x@@7 Int) ) (! (= (LitInt x@@7) x@@7)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@7))
)))
(assert (forall ((x@@8 Real) ) (! (= (LitReal x@@8) x@@8)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |19|
 :pattern ( (LitReal x@@8))
)))
(assert (forall ((x@@9 T@U) (T T@T) ) (! (= (Lit T x@@9) x@@9)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@9))
)))
(assert (= (Ctor SeqType) 12))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.X.X_q d@@1) (exists ((|a#1#0#0| Bool) (|a#1#1#0| T@U) (|a#1#2#0| Int) (|a#1#3#0| Real) (|a#1#4#0| Int) (|a#1#5#0| Int) (|a#1#6#0| (_ BitVec 8)) (|a#1#7#0| (_ BitVec 167)) (|a#1#8#0| T@U) (|a#1#9#0| T@U) ) (! (= d@@1 (|#_module.X.X| |a#1#0#0| |a#1#1#0| |a#1#2#0| |a#1#3#0| |a#1#4#0| |a#1#5#0| |a#1#6#0| |a#1#7#0| |a#1#8#0| |a#1#9#0|))
 :qid |gitissue195dfy.28:16|
 :skolemid |597|
)))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( (_module.X.X_q d@@1))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@1| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3)  (and ($IsAllocBox |a#2#0#0@@1| |_System._tuple#2$T0@@1| $h@@3) ($IsAllocBox |a#2#1#0@@1| |_System._tuple#2$T1@@1| $h@@3))))
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@2) (= (DatatypeCtorId d@@2) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( (_System.Tuple2.___hMake2_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.X.X_q d@@3) (= (DatatypeCtorId d@@3) |##_module.X.X|))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( (_module.X.X_q d@@3))
)))
(assert (forall ((x@@10 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@10)) x@@10)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@10))
)))
(assert (forall ((a@@2 T@U) (x@@11 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@11 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@2 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@2 x@@11) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a@@2 x@@11) (|MultiSet#Multiplicity| a@@2 y@@0))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@4) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@4 (|#_System._tuple#2._#Make2| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |unknown.0:0|
 :skolemid |458|
)))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( (_System.Tuple2.___hMake2_q d@@4))
)))
(assert (= (Ctor SetType) 13))
(assert (forall ((v@@6 T@U) (t0@@1 T@U) ) (! (= ($Is SetType v@@6 (TSet t0@@1)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@0) ($IsBox bx@@0 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@6 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@6 (TSet t0@@1)))
)))
(assert (forall ((a@@3 T@U) (x@@12 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@3 x@@12)) (+ (|MultiSet#Card| a@@3) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@3 x@@12)))
)))
(assert (forall ((s@@0 T@U) (v@@7 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@7)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v@@7))
)))
(assert (forall ((v@@8 T@U) (t@@0 T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@8) t@@0 h@@1) ($IsAlloc T@@1 v@@8 t@@0 h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@8) t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@2) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@1 t@@1 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@9 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@9 t@@2 h@@3) ($IsAlloc T@@2 v@@9 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@9 t@@2 h@@3))
)))
(assert (forall ((n Int) ) (!  (=> (<= 0 n) (and (|ORD#IsNat| (|ORD#FromNat| n)) (= (|ORD#Offset| (|ORD#FromNat| n)) n)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.nt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._module.nt)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsBox bx@@2 Tclass._module.nt))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.ntNative) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass._module.ntNative)))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( ($IsBox bx@@3 Tclass._module.ntNative))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.MyClass) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.MyClass)))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( ($IsBox bx@@4 Tclass._module.MyClass))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.MyClass?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.MyClass?)))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( ($IsBox bx@@5 Tclass._module.MyClass?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.X) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass._module.X)))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( ($IsBox bx@@6 Tclass._module.X))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.MyClass)  (and ($Is refType |c#0@@0| Tclass._module.MyClass?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.MyClass))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.MyClass?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@10 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@10) i) v@@10)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@10) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@10) i))
)))
(assert (forall ((v@@11 T@U) (t0@@2 T@U) ) (! (= ($Is MultiSetType v@@11 (TMultiSet t0@@2)) (forall ((bx@@7 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@11 bx@@7)) ($IsBox bx@@7 t0@@2))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |50|
 :pattern ( (|MultiSet#Multiplicity| v@@11 bx@@7))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |51|
 :pattern ( ($Is MultiSetType v@@11 (TMultiSet t0@@2)))
)))
(assert (forall ((a@@4 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@4 c)) (not true)) (=> (and ($HeapSucc a@@4 b) ($HeapSucc b c)) ($HeapSucc a@@4 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@4 b) ($HeapSucc b c))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TInt) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@8 TInt))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TReal) (and (= ($Box realType ($Unbox realType bx@@9)) bx@@9) ($Is realType ($Unbox realType bx@@9) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@9 TReal))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TBool) (and (= ($Box boolType ($Unbox boolType bx@@10)) bx@@10) ($Is boolType ($Unbox boolType bx@@10) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@10 TBool))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TChar) (and (= ($Box charType ($Unbox charType bx@@11)) bx@@11) ($Is charType ($Unbox charType bx@@11) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@11 TChar))
)))
(assert (forall ((v@@12 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@12) t@@3) ($Is T@@3 v@@12 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@12) t@@3))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@12 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@12)) (<= (|MultiSet#Multiplicity| ms bx@@12) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@12))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |184|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (|ORD#Offset| o@@2))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@2))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|MultiSet#Card| s@@2))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s@@2))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Seq#Length| s@@3))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((v@@13 T@U) (t0@@3 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SetType v@@13 (TSet t0@@3) h@@4) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| v@@13 bx@@13) ($IsAllocBox bx@@13 t0@@3 h@@4))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@13 bx@@13))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@13 (TSet t0@@3) h@@4))
)))
(assert (forall ((o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@3) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@3))
)))
(assert (forall ((t@@4 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@4 u)) t@@4)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@4 u))
)))
(assert (forall ((t@@5 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@5 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@5 u@@0))
)))
(assert (forall ((t@@6 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@6 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@6 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |471|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |473|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((a@@5 T@U) (x@@13 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@13) x@@13) (+ (|MultiSet#Multiplicity| a@@5 x@@13) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@13))
)))
(assert (forall ((v@@14 T@U) (t0@@4 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SeqType v@@14 (TSeq t0@@4) h@@5) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@14))) ($IsAllocBox (|Seq#Index| v@@14 i@@0) t0@@4 h@@5))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@14 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@14 (TSeq t0@@4) h@@5))
)))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |DafnyPreludebpl.38:15|
 :skolemid |0|
 :pattern ( (TBitvector w))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSet (TSet t@@7)) t@@7)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSet t@@8)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@9)) t@@9)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |5|
 :pattern ( (TMultiSet t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TMultiSet t@@10)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |6|
 :pattern ( (TMultiSet t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Inv0_TSeq (TSeq t@@11)) t@@11)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@11))
)))
(assert (forall ((t@@12 T@U) ) (! (= (Tag (TSeq t@@12)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@12))
)))
(assert (forall ((x@@14 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@14)) x@@14)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@14))
)))
(assert (= (Ctor MapType) 14))
(assert (forall ((v@@15 T@U) (t0@@5 T@U) (t1@@0 T@U) (h@@6 T@U) ) (! (= ($IsAlloc MapType v@@15 (TMap t0@@5 t1@@0) h@@6) (forall ((bx@@14 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@15) bx@@14) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@15) bx@@14) t1@@0 h@@6) ($IsAllocBox bx@@14 t0@@5 h@@6)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@15) bx@@14))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@15) bx@@14))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@15 (TMap t0@@5 t1@@0) h@@6))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |472|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |474|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|c0#0| T@U) ) (! (= ($Is intType |c0#0| Tclass._module.nt) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($Is intType |c0#0| Tclass._module.nt))
)))
(assert (forall ((s@@4 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@4) 0) (= s@@4 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@4) 0)) (not true)) (exists ((x@@15 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@4 x@@15))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@4 x@@15))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@4))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (or (and (<= 0 n@@0) (< n@@0 55296)) (and (<= 57344 n@@0) (< n@@0 1114112))) (= (|char#ToInt| (|char#FromInt| n@@0)) n@@0))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n@@0))
)))
(assert (forall ((bx@@15 T@U) (s@@5 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@15 (TMap s@@5 t@@13)) (and (= ($Box MapType ($Unbox MapType bx@@15)) bx@@15) ($Is MapType ($Unbox MapType bx@@15) (TMap s@@5 t@@13))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@15 (TMap s@@5 t@@13)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@16)) bx@@16) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@16) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( ($IsBox bx@@16 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (forall ((t0@@6 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@1 t2 (MapType1Store t0@@6 t1@@1 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |626|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((s@@6 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@6 val@@4)) s@@6) (= (|Seq#Build_inv1| (|Seq#Build| s@@6 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@6 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@5 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.X.X_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.X $h@@4))) ($IsAlloc boolType (bool_2_U (_module.X._h0 d@@5)) TBool $h@@4))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.X._h0 d@@5)) TBool $h@@4))
)))
(assert (forall ((d@@6 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.X.X_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.X $h@@5))) ($IsAlloc charType (_module.X._h1 d@@6) TChar $h@@5))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($IsAlloc charType (_module.X._h1 d@@6) TChar $h@@5))
)))
(assert (forall ((d@@7 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.X.X_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.X $h@@6))) ($IsAlloc intType (int_2_U (_module.X._h2 d@@7)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( ($IsAlloc intType (int_2_U (_module.X._h2 d@@7)) TInt $h@@6))
)))
(assert (forall ((d@@8 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.X.X_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.X $h@@7))) ($IsAlloc realType (real_2_U (_module.X._h3 d@@8)) TReal $h@@7))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( ($IsAlloc realType (real_2_U (_module.X._h3 d@@8)) TReal $h@@7))
)))
(assert (forall ((d@@9 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.X.X_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.X $h@@8))) ($IsAlloc BoxType (_module.X._h8 d@@9) TORDINAL $h@@8))
 :qid |unknown.0:0|
 :skolemid |609|
 :pattern ( ($IsAlloc BoxType (_module.X._h8 d@@9) TORDINAL $h@@8))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@16 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@16)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@5))
)))
(assert (forall ((m@@6 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@6) item)  (and (|Set#IsMember| (|Map#Domain| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@6) item))
)))
(assert (forall ((m@@7 T@U) (v@@17 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@17) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@3) (= v@@17 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@17))
)))
(assert (forall ((m@@8 T@U) (u@@4 T@U) (|u'| T@U) (v@@18 T@U) ) (!  (and (=> (= |u'| u@@4) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@18)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@18)) |u'|) v@@18))) (=> (or (not (= |u'| u@@4)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@18)) |u'|) (|Set#IsMember| (|Map#Domain| m@@8) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@18)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@8) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@18)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@18)) |u'|))
)))
(assert (forall ((d@@10 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@10)) (DtRank d@@10))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@10)))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 (TBitvector 0)) (and (= ($Box intType ($Unbox intType bx@@17)) bx@@17) ($Is intType ($Unbox intType bx@@17) (TBitvector 0))))
 :qid |DafnyPreludebpl.191:15|
 :skolemid |31|
 :pattern ( ($IsBox bx@@17 (TBitvector 0)))
)))
(assert (forall ((bx@@18 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@18 (TSet t@@14)) (and (= ($Box SetType ($Unbox SetType bx@@18)) bx@@18) ($Is SetType ($Unbox SetType bx@@18) (TSet t@@14))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@18 (TSet t@@14)))
)))
(assert (forall ((bx@@19 T@U) (t@@15 T@U) ) (!  (=> ($IsBox bx@@19 (TMultiSet t@@15)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@19)) bx@@19) ($Is MultiSetType ($Unbox MultiSetType bx@@19) (TMultiSet t@@15))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@19 (TMultiSet t@@15)))
)))
(assert (forall ((bx@@20 T@U) (t@@16 T@U) ) (!  (=> ($IsBox bx@@20 (TSeq t@@16)) (and (= ($Box SeqType ($Unbox SeqType bx@@20)) bx@@20) ($Is SeqType ($Unbox SeqType bx@@20) (TSeq t@@16))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@20 (TSeq t@@16)))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 (TBitvector 8)) (and (= ($Box bv8Type ($Unbox bv8Type bx@@21)) bx@@21) ($Is bv8Type ($Unbox bv8Type bx@@21) (TBitvector 8))))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@21 (TBitvector 8)))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 (TBitvector 167)) (and (= ($Box bv167Type ($Unbox bv167Type bx@@22)) bx@@22) ($Is bv167Type ($Unbox bv167Type bx@@22) (TBitvector 167))))
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($IsBox bx@@22 (TBitvector 167)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((v@@19 T@U) (t0@@7 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@19 (TMap t0@@7 t1@@2)) (forall ((bx@@23 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@19) bx@@23) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@19) bx@@23) t1@@2) ($IsBox bx@@23 t0@@7)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@19) bx@@23))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@19) bx@@23))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@19 (TMap t0@@7 t1@@2)))
)))
(assert (forall ((o@@4 T@U) ) (!  (=> (|ORD#IsNat| o@@4) (= o@@4 (|ORD#FromNat| (|ORD#Offset| o@@4))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@4))
 :pattern ( (|ORD#IsNat| o@@4))
)))
(assert (forall ((h@@7 T@U) (r T@U) (f T@U) (x@@16 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r) f x@@16))) ($HeapSucc h@@7 (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r) f x@@16))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r) f x@@16)))
)))
(assert (= (Tag Tclass._module.nt) Tagclass._module.nt))
(assert (= (TagFamily Tclass._module.nt) tytagFamily$nt))
(assert (= (Tag Tclass._module.ntNative) Tagclass._module.ntNative))
(assert (= (TagFamily Tclass._module.ntNative) tytagFamily$ntNative))
(assert (= (Tag Tclass._module.MyClass) Tagclass._module.MyClass))
(assert (= (TagFamily Tclass._module.MyClass) tytagFamily$MyClass))
(assert (= (Tag Tclass._module.MyClass?) Tagclass._module.MyClass?))
(assert (= (TagFamily Tclass._module.MyClass?) tytagFamily$MyClass))
(assert (= (Tag Tclass._module.X) Tagclass._module.X))
(assert (= (TagFamily Tclass._module.X) tytagFamily$X))
(assert (forall ((|a#2#0#0@@2| Bool) (|a#2#1#0@@2| T@U) (|a#2#2#0@@0| Int) (|a#2#3#0@@0| Real) (|a#2#4#0@@0| Int) (|a#2#5#0@@0| Int) (|a#2#6#0@@0| (_ BitVec 8)) (|a#2#7#0@@0| (_ BitVec 167)) (|a#2#8#0@@0| T@U) (|a#2#9#0@@0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#_module.X.X| |a#2#0#0@@2| |a#2#1#0@@2| |a#2#2#0@@0| |a#2#3#0@@0| |a#2#4#0@@0| |a#2#5#0@@0| |a#2#6#0@@0| |a#2#7#0@@0| |a#2#8#0@@0| |a#2#9#0@@0|) Tclass._module.X $h@@9)  (and (and (and (and (and (and (and (and (and ($IsAlloc boolType (bool_2_U |a#2#0#0@@2|) TBool $h@@9) ($IsAlloc charType |a#2#1#0@@2| TChar $h@@9)) ($IsAlloc intType (int_2_U |a#2#2#0@@0|) TInt $h@@9)) ($IsAlloc realType (real_2_U |a#2#3#0@@0|) TReal $h@@9)) ($IsAlloc intType (int_2_U |a#2#4#0@@0|) Tclass._module.nt $h@@9)) ($IsAlloc intType (int_2_U |a#2#5#0@@0|) Tclass._module.ntNative $h@@9)) ($IsAlloc bv8Type (bv8_2_U |a#2#6#0@@0|) (TBitvector 8) $h@@9)) ($IsAlloc bv167Type (bv167_2_U |a#2#7#0@@0|) (TBitvector 167) $h@@9)) ($IsAlloc BoxType |a#2#8#0@@0| TORDINAL $h@@9)) ($IsAlloc refType |a#2#9#0@@0| Tclass._module.MyClass $h@@9))))
 :qid |gitissue195dfy.28:16|
 :skolemid |600|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.X.X| |a#2#0#0@@2| |a#2#1#0@@2| |a#2#2#0@@0| |a#2#3#0@@0| |a#2#4#0@@0| |a#2#5#0@@0| |a#2#6#0@@0| |a#2#7#0@@0| |a#2#8#0@@0| |a#2#9#0@@0|) Tclass._module.X $h@@9))
)))
(assert (forall ((d@@11 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.X.X_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.X $h@@10))) ($IsAlloc bv8Type (bv8_2_U (_module.X._h6 d@@11)) (TBitvector 8) $h@@10))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( ($IsAlloc bv8Type (bv8_2_U (_module.X._h6 d@@11)) (TBitvector 8) $h@@10))
)))
(assert (forall ((d@@12 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.X.X_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.X $h@@11))) ($IsAlloc bv167Type (bv167_2_U (_module.X._h7 d@@12)) (TBitvector 167) $h@@11))
 :qid |unknown.0:0|
 :skolemid |608|
 :pattern ( ($IsAlloc bv167Type (bv167_2_U (_module.X._h7 d@@12)) (TBitvector 167) $h@@11))
)))
(assert (forall ((d@@13 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_System.Tuple2.___hMake2_q d@@13) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@13 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@12)
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( ($IsAlloc DatatypeTypeType d@@13 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@12))
)))) ($IsAllocBox (_System.Tuple2._0 d@@13) |_System._tuple#2$T0@@6| $h@@12))
 :qid |unknown.0:0|
 :skolemid |467|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@13) |_System._tuple#2$T0@@6| $h@@12))
)))
(assert (forall ((d@@14 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_System.Tuple2.___hMake2_q d@@14) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@14 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@13)
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@13))
)))) ($IsAllocBox (_System.Tuple2._1 d@@14) |_System._tuple#2$T1@@7| $h@@13))
 :qid |unknown.0:0|
 :skolemid |469|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@14) |_System._tuple#2$T1@@7| $h@@13))
)))
(assert (forall ((d@@15 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_module.X.X_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.X $h@@14))) ($IsAlloc intType (int_2_U (_module.X._h4 d@@15)) Tclass._module.nt $h@@14))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsAlloc intType (int_2_U (_module.X._h4 d@@15)) Tclass._module.nt $h@@14))
)))
(assert (forall ((d@@16 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_module.X.X_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.X $h@@15))) ($IsAlloc intType (int_2_U (_module.X._h5 d@@16)) Tclass._module.ntNative $h@@15))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( ($IsAlloc intType (int_2_U (_module.X._h5 d@@16)) Tclass._module.ntNative $h@@15))
)))
(assert (forall ((d@@17 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (_module.X.X_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.X $h@@16))) ($IsAlloc refType (_module.X._h9 d@@17) Tclass._module.MyClass $h@@16))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($IsAlloc refType (_module.X._h9 d@@17) Tclass._module.MyClass $h@@16))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._module.ntNative)  (and (<= (LitInt (- 0 100)) (U_2_int |x#0@@0|)) (< (U_2_int |x#0@@0|) 100)))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( ($Is intType |x#0@@0| Tclass._module.ntNative))
)))
(assert (forall ((|a#4#0#0@@0| Bool) (|a#4#1#0@@0| T@U) (|a#4#2#0| Int) (|a#4#3#0| Real) (|a#4#4#0| Int) (|a#4#5#0| Int) (|a#4#6#0| (_ BitVec 8)) (|a#4#7#0| (_ BitVec 167)) (|a#4#8#0| T@U) (|a#4#9#0| T@U) ) (! (= (_module.X._h0 (|#_module.X.X| |a#4#0#0@@0| |a#4#1#0@@0| |a#4#2#0| |a#4#3#0| |a#4#4#0| |a#4#5#0| |a#4#6#0| |a#4#7#0| |a#4#8#0| |a#4#9#0|)) |a#4#0#0@@0|)
 :qid |gitissue195dfy.28:16|
 :skolemid |612|
 :pattern ( (|#_module.X.X| |a#4#0#0@@0| |a#4#1#0@@0| |a#4#2#0| |a#4#3#0| |a#4#4#0| |a#4#5#0| |a#4#6#0| |a#4#7#0| |a#4#8#0| |a#4#9#0|))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0@@0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0@@0|) (Lit BoxType |a#3#1#0@@0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0@@0| |a#3#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |470|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0@@0|) (Lit BoxType |a#3#1#0@@0|)))
)))
(assert (forall ((x@@17 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@17))) (Lit BoxType ($Box intType (int_2_U x@@17))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@17))))
)))
(assert (forall ((x@@18 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@18))) (Lit BoxType ($Box realType (real_2_U x@@18))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |20|
 :pattern ( ($Box realType (real_2_U (LitReal x@@18))))
)))
(assert (forall ((x@@19 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@19)) (Lit BoxType ($Box T@@5 x@@19)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@19)))
)))
(assert (forall ((a@@6 T@U) (x@@20 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@6 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@6 x@@20) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@6 x@@20) (|MultiSet#Multiplicity| a@@6 y@@1))
)))
(assert (forall ((s@@7 T@U) ) (!  (=> (= (|Seq#Length| s@@7) 0) (= s@@7 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@7))
)))
(assert (forall ((a@@7 T@U) (x@@21 T@U) (o@@5 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@7 x@@21) o@@5))  (or (= o@@5 x@@21) (< 0 (|MultiSet#Multiplicity| a@@7 o@@5))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@7 x@@21) o@@5))
)))
(assert (forall ((v@@20 T@U) (t0@@8 T@U) (h@@8 T@U) ) (! (= ($IsAlloc MultiSetType v@@20 (TMultiSet t0@@8) h@@8) (forall ((bx@@24 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@20 bx@@24)) ($IsAllocBox bx@@24 t0@@8 h@@8))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |71|
 :pattern ( (|MultiSet#Multiplicity| v@@20 bx@@24))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |72|
 :pattern ( ($IsAlloc MultiSetType v@@20 (TMultiSet t0@@8) h@@8))
)))
(assert (forall ((h@@9 T@U) (v@@21 T@U) ) (! ($IsAlloc intType v@@21 TInt h@@9)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@21 TInt h@@9))
)))
(assert (forall ((h@@10 T@U) (v@@22 T@U) ) (! ($IsAlloc realType v@@22 TReal h@@10)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@22 TReal h@@10))
)))
(assert (forall ((h@@11 T@U) (v@@23 T@U) ) (! ($IsAlloc boolType v@@23 TBool h@@11)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@23 TBool h@@11))
)))
(assert (forall ((h@@12 T@U) (v@@24 T@U) ) (! ($IsAlloc charType v@@24 TChar h@@12)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@24 TChar h@@12))
)))
(assert (forall ((h@@13 T@U) (v@@25 T@U) ) (! ($IsAlloc BoxType v@@25 TORDINAL h@@13)
 :qid |DafnyPreludebpl.293:14|
 :skolemid |65|
 :pattern ( ($IsAlloc BoxType v@@25 TORDINAL h@@13))
)))
(assert (forall ((v@@26 T@U) (t0@@9 T@U) ) (! (= ($Is SeqType v@@26 (TSeq t0@@9)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@26))) ($IsBox (|Seq#Index| v@@26 i@@1) t0@@9))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@26 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@26 (TSeq t0@@9)))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@3 T@U) (v@@27 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@27)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((s@@8 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@8))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@8 i@@2))) (|Seq#Rank| s@@8)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@8 i@@2))))
)))
(assert (forall ((v@@28 T@U) (t0@@10 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@28 (TMap t0@@10 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@28) (TSet t0@@10)) ($Is SetType (|Map#Values| v@@28) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@28) (TSet (Tclass._System.Tuple2 t0@@10 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@28 (TMap t0@@10 t1@@3)))
)))
(assert (forall ((v@@29 T@U) ) (! ($Is intType v@@29 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@29 TInt))
)))
(assert (forall ((v@@30 T@U) ) (! ($Is realType v@@30 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@30 TReal))
)))
(assert (forall ((v@@31 T@U) ) (! ($Is boolType v@@31 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@31 TBool))
)))
(assert (forall ((v@@32 T@U) ) (! ($Is charType v@@32 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@32 TChar))
)))
(assert (forall ((v@@33 T@U) ) (! ($Is BoxType v@@33 TORDINAL)
 :qid |DafnyPreludebpl.232:14|
 :skolemid |44|
 :pattern ( ($Is BoxType v@@33 TORDINAL))
)))
(assert (forall ((|a#0#0#0@@0| Bool) (|a#0#1#0@@0| T@U) (|a#0#2#0| Int) (|a#0#3#0| Real) (|a#0#4#0| Int) (|a#0#5#0| Int) (|a#0#6#0| (_ BitVec 8)) (|a#0#7#0| (_ BitVec 167)) (|a#0#8#0| T@U) (|a#0#9#0| T@U) ) (! (= (DatatypeCtorId (|#_module.X.X| |a#0#0#0@@0| |a#0#1#0@@0| |a#0#2#0| |a#0#3#0| |a#0#4#0| |a#0#5#0| |a#0#6#0| |a#0#7#0| |a#0#8#0| |a#0#9#0|)) |##_module.X.X|)
 :qid |gitissue195dfy.28:16|
 :skolemid |595|
 :pattern ( (|#_module.X.X| |a#0#0#0@@0| |a#0#1#0@@0| |a#0#2#0| |a#0#3#0| |a#0#4#0| |a#0#5#0| |a#0#6#0| |a#0#7#0| |a#0#8#0| |a#0#9#0|))
)))
(assert (forall ((|a#5#0#0@@0| Bool) (|a#5#1#0@@0| T@U) (|a#5#2#0| Int) (|a#5#3#0| Real) (|a#5#4#0| Int) (|a#5#5#0| Int) (|a#5#6#0| (_ BitVec 8)) (|a#5#7#0| (_ BitVec 167)) (|a#5#8#0| T@U) (|a#5#9#0| T@U) ) (! (= (_module.X._h1 (|#_module.X.X| |a#5#0#0@@0| |a#5#1#0@@0| |a#5#2#0| |a#5#3#0| |a#5#4#0| |a#5#5#0| |a#5#6#0| |a#5#7#0| |a#5#8#0| |a#5#9#0|)) |a#5#1#0@@0|)
 :qid |gitissue195dfy.28:16|
 :skolemid |613|
 :pattern ( (|#_module.X.X| |a#5#0#0@@0| |a#5#1#0@@0| |a#5#2#0| |a#5#3#0| |a#5#4#0| |a#5#5#0| |a#5#6#0| |a#5#7#0| |a#5#8#0| |a#5#9#0|))
)))
(assert (forall ((|a#6#0#0@@0| Bool) (|a#6#1#0@@0| T@U) (|a#6#2#0| Int) (|a#6#3#0| Real) (|a#6#4#0| Int) (|a#6#5#0| Int) (|a#6#6#0| (_ BitVec 8)) (|a#6#7#0| (_ BitVec 167)) (|a#6#8#0| T@U) (|a#6#9#0| T@U) ) (! (= (_module.X._h2 (|#_module.X.X| |a#6#0#0@@0| |a#6#1#0@@0| |a#6#2#0| |a#6#3#0| |a#6#4#0| |a#6#5#0| |a#6#6#0| |a#6#7#0| |a#6#8#0| |a#6#9#0|)) |a#6#2#0|)
 :qid |gitissue195dfy.28:16|
 :skolemid |614|
 :pattern ( (|#_module.X.X| |a#6#0#0@@0| |a#6#1#0@@0| |a#6#2#0| |a#6#3#0| |a#6#4#0| |a#6#5#0| |a#6#6#0| |a#6#7#0| |a#6#8#0| |a#6#9#0|))
)))
(assert (forall ((|a#7#0#0@@0| Bool) (|a#7#1#0@@0| T@U) (|a#7#2#0| Int) (|a#7#3#0| Real) (|a#7#4#0| Int) (|a#7#5#0| Int) (|a#7#6#0| (_ BitVec 8)) (|a#7#7#0| (_ BitVec 167)) (|a#7#8#0| T@U) (|a#7#9#0| T@U) ) (! (= (_module.X._h3 (|#_module.X.X| |a#7#0#0@@0| |a#7#1#0@@0| |a#7#2#0| |a#7#3#0| |a#7#4#0| |a#7#5#0| |a#7#6#0| |a#7#7#0| |a#7#8#0| |a#7#9#0|)) |a#7#3#0|)
 :qid |gitissue195dfy.28:16|
 :skolemid |615|
 :pattern ( (|#_module.X.X| |a#7#0#0@@0| |a#7#1#0@@0| |a#7#2#0| |a#7#3#0| |a#7#4#0| |a#7#5#0| |a#7#6#0| |a#7#7#0| |a#7#8#0| |a#7#9#0|))
)))
(assert (forall ((|a#8#0#0| Bool) (|a#8#1#0| T@U) (|a#8#2#0| Int) (|a#8#3#0| Real) (|a#8#4#0| Int) (|a#8#5#0| Int) (|a#8#6#0| (_ BitVec 8)) (|a#8#7#0| (_ BitVec 167)) (|a#8#8#0| T@U) (|a#8#9#0| T@U) ) (! (= (_module.X._h4 (|#_module.X.X| |a#8#0#0| |a#8#1#0| |a#8#2#0| |a#8#3#0| |a#8#4#0| |a#8#5#0| |a#8#6#0| |a#8#7#0| |a#8#8#0| |a#8#9#0|)) |a#8#4#0|)
 :qid |gitissue195dfy.28:16|
 :skolemid |616|
 :pattern ( (|#_module.X.X| |a#8#0#0| |a#8#1#0| |a#8#2#0| |a#8#3#0| |a#8#4#0| |a#8#5#0| |a#8#6#0| |a#8#7#0| |a#8#8#0| |a#8#9#0|))
)))
(assert (forall ((|a#9#0#0| Bool) (|a#9#1#0| T@U) (|a#9#2#0| Int) (|a#9#3#0| Real) (|a#9#4#0| Int) (|a#9#5#0| Int) (|a#9#6#0| (_ BitVec 8)) (|a#9#7#0| (_ BitVec 167)) (|a#9#8#0| T@U) (|a#9#9#0| T@U) ) (! (= (_module.X._h5 (|#_module.X.X| |a#9#0#0| |a#9#1#0| |a#9#2#0| |a#9#3#0| |a#9#4#0| |a#9#5#0| |a#9#6#0| |a#9#7#0| |a#9#8#0| |a#9#9#0|)) |a#9#5#0|)
 :qid |gitissue195dfy.28:16|
 :skolemid |617|
 :pattern ( (|#_module.X.X| |a#9#0#0| |a#9#1#0| |a#9#2#0| |a#9#3#0| |a#9#4#0| |a#9#5#0| |a#9#6#0| |a#9#7#0| |a#9#8#0| |a#9#9#0|))
)))
(assert (forall ((|a#10#0#0| Bool) (|a#10#1#0| T@U) (|a#10#2#0| Int) (|a#10#3#0| Real) (|a#10#4#0| Int) (|a#10#5#0| Int) (|a#10#6#0| (_ BitVec 8)) (|a#10#7#0| (_ BitVec 167)) (|a#10#8#0| T@U) (|a#10#9#0| T@U) ) (! (= (_module.X._h6 (|#_module.X.X| |a#10#0#0| |a#10#1#0| |a#10#2#0| |a#10#3#0| |a#10#4#0| |a#10#5#0| |a#10#6#0| |a#10#7#0| |a#10#8#0| |a#10#9#0|)) |a#10#6#0|)
 :qid |gitissue195dfy.28:16|
 :skolemid |618|
 :pattern ( (|#_module.X.X| |a#10#0#0| |a#10#1#0| |a#10#2#0| |a#10#3#0| |a#10#4#0| |a#10#5#0| |a#10#6#0| |a#10#7#0| |a#10#8#0| |a#10#9#0|))
)))
(assert (forall ((|a#11#0#0| Bool) (|a#11#1#0| T@U) (|a#11#2#0| Int) (|a#11#3#0| Real) (|a#11#4#0| Int) (|a#11#5#0| Int) (|a#11#6#0| (_ BitVec 8)) (|a#11#7#0| (_ BitVec 167)) (|a#11#8#0| T@U) (|a#11#9#0| T@U) ) (! (= (_module.X._h7 (|#_module.X.X| |a#11#0#0| |a#11#1#0| |a#11#2#0| |a#11#3#0| |a#11#4#0| |a#11#5#0| |a#11#6#0| |a#11#7#0| |a#11#8#0| |a#11#9#0|)) |a#11#7#0|)
 :qid |gitissue195dfy.28:16|
 :skolemid |619|
 :pattern ( (|#_module.X.X| |a#11#0#0| |a#11#1#0| |a#11#2#0| |a#11#3#0| |a#11#4#0| |a#11#5#0| |a#11#6#0| |a#11#7#0| |a#11#8#0| |a#11#9#0|))
)))
(assert (forall ((|a#12#0#0| Bool) (|a#12#1#0| T@U) (|a#12#2#0| Int) (|a#12#3#0| Real) (|a#12#4#0| Int) (|a#12#5#0| Int) (|a#12#6#0| (_ BitVec 8)) (|a#12#7#0| (_ BitVec 167)) (|a#12#8#0| T@U) (|a#12#9#0| T@U) ) (! (= (_module.X._h8 (|#_module.X.X| |a#12#0#0| |a#12#1#0| |a#12#2#0| |a#12#3#0| |a#12#4#0| |a#12#5#0| |a#12#6#0| |a#12#7#0| |a#12#8#0| |a#12#9#0|)) |a#12#8#0|)
 :qid |gitissue195dfy.28:16|
 :skolemid |620|
 :pattern ( (|#_module.X.X| |a#12#0#0| |a#12#1#0| |a#12#2#0| |a#12#3#0| |a#12#4#0| |a#12#5#0| |a#12#6#0| |a#12#7#0| |a#12#8#0| |a#12#9#0|))
)))
(assert (forall ((|a#13#0#0| Bool) (|a#13#1#0| T@U) (|a#13#2#0| Int) (|a#13#3#0| Real) (|a#13#4#0| Int) (|a#13#5#0| Int) (|a#13#6#0| (_ BitVec 8)) (|a#13#7#0| (_ BitVec 167)) (|a#13#8#0| T@U) (|a#13#9#0| T@U) ) (! (= (_module.X._h9 (|#_module.X.X| |a#13#0#0| |a#13#1#0| |a#13#2#0| |a#13#3#0| |a#13#4#0| |a#13#5#0| |a#13#6#0| |a#13#7#0| |a#13#8#0| |a#13#9#0|)) |a#13#9#0|)
 :qid |gitissue195dfy.28:16|
 :skolemid |621|
 :pattern ( (|#_module.X.X| |a#13#0#0| |a#13#1#0| |a#13#2#0| |a#13#3#0| |a#13#4#0| |a#13#5#0| |a#13#6#0| |a#13#7#0| |a#13#8#0| |a#13#9#0|))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |##a#0@0| () Bool)
(declare-fun |##b#0@0| () Bool)
(declare-fun |_module.__default.TestAny#canCall| (T@U T@U T@U) Bool)
(declare-fun |##a#1@0| () T@U)
(declare-fun |##b#1@0| () T@U)
(declare-fun |##a#2@0| () Int)
(declare-fun |##b#2@0| () Int)
(declare-fun |##a#3@0| () Real)
(declare-fun |##b#3@0| () Real)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |$rhs#2@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |$rhs#3@0| () Int)
(declare-fun |$rhs#4@0| () (_ BitVec 8))
(declare-fun |$rhs#5@0| () (_ BitVec 8))
(declare-fun |$rhs#6@0| () (_ BitVec 167))
(declare-fun |$rhs#7@0| () (_ BitVec 167))
(declare-fun |$rhs#8@0| () T@U)
(declare-fun |$rhs#9@0| () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |x0#0@0| () T@U)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |x1#0@0| () T@U)
(declare-fun |##a#9@0| () T@U)
(declare-fun |##b#9@0| () T@U)
(declare-fun |##a#10@0| () T@U)
(declare-fun |##b#10@0| () T@U)
(declare-fun |##a#11@0| () T@U)
(declare-fun |##b#11@0| () T@U)
(declare-fun |##a#12@0| () T@U)
(declare-fun |##b#12@0| () T@U)
(declare-fun |n0#0| () Int)
(declare-fun |n1#0| () Int)
(declare-fun |defass#obj#0| () Bool)
(declare-fun |obj#0| () T@U)
(declare-fun |defass#x0#0| () Bool)
(declare-fun |x0#0| () T@U)
(declare-fun |defass#x1#0| () Bool)
(declare-fun |x1#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.TestEq)
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
 (=> (= (ControlFlow 0 0) 41) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (= |##a#0@0| (U_2_bool (Lit boolType (bool_2_U true)))) ($IsAlloc boolType (bool_2_U |##a#0@0|) TBool $Heap)) (and (= |##b#0@0| (U_2_bool (Lit boolType (bool_2_U true)))) ($IsAlloc boolType (bool_2_U |##b#0@0|) TBool $Heap))) (and (=> (= (ControlFlow 0 2) (- 0 40)) (= |##a#0@0| |##b#0@0|)) (=> (and (|_module.__default.TestAny#canCall| TBool ($Box boolType (Lit boolType (bool_2_U true))) ($Box boolType (Lit boolType (bool_2_U true)))) (|_module.__default.TestAny#canCall| TBool ($Box boolType (Lit boolType (bool_2_U true))) ($Box boolType (Lit boolType (bool_2_U true))))) (=> (and (and (= |##a#1@0| (Lit charType (|char#FromInt| 101))) ($IsAlloc charType |##a#1@0| TChar $Heap)) (and (= |##b#1@0| (Lit charType (|char#FromInt| 101))) ($IsAlloc charType |##b#1@0| TChar $Heap))) (and (=> (= (ControlFlow 0 2) (- 0 39)) (= |##a#1@0| |##b#1@0|)) (=> (and (|_module.__default.TestAny#canCall| TChar ($Box charType (Lit charType (|char#FromInt| 101))) ($Box charType (Lit charType (|char#FromInt| 101)))) (|_module.__default.TestAny#canCall| TChar ($Box charType (Lit charType (|char#FromInt| 101))) ($Box charType (Lit charType (|char#FromInt| 101))))) (=> (and (and (= |##a#2@0| (LitInt 12)) ($IsAlloc intType (int_2_U |##a#2@0|) TInt $Heap)) (and (= |##b#2@0| (LitInt 12)) ($IsAlloc intType (int_2_U |##b#2@0|) TInt $Heap))) (and (=> (= (ControlFlow 0 2) (- 0 38)) (= |##a#2@0| |##b#2@0|)) (=> (and (|_module.__default.TestAny#canCall| TInt ($Box intType (int_2_U (LitInt 12))) ($Box intType (int_2_U (LitInt 12)))) (|_module.__default.TestAny#canCall| TInt ($Box intType (int_2_U (LitInt 12))) ($Box intType (int_2_U (LitInt 12))))) (=> (and (and (= |##a#3@0| (LitReal 37.5)) ($IsAlloc realType (real_2_U |##a#3@0|) TReal $Heap)) (and (= |##b#3@0| (LitReal 37.5)) ($IsAlloc realType (real_2_U |##b#3@0|) TReal $Heap))) (and (=> (= (ControlFlow 0 2) (- 0 37)) (= |##a#3@0| |##b#3@0|)) (=> (and (and (and (|_module.__default.TestAny#canCall| TReal ($Box realType (real_2_U (LitReal 37.5))) ($Box realType (real_2_U (LitReal 37.5)))) (|_module.__default.TestAny#canCall| TReal ($Box realType (real_2_U (LitReal 37.5))) ($Box realType (real_2_U (LitReal 37.5))))) (and (= |newtype$check#0@0| (LitInt 12)) (= |$rhs#0@0| (LitInt 12)))) (and (and (= |newtype$check#1@0| (LitInt 12)) (= |$rhs#1@0| (LitInt 12))) (and ($IsAlloc intType (int_2_U |$rhs#0@0|) Tclass._module.nt $Heap) ($IsAlloc intType (int_2_U |$rhs#1@0|) Tclass._module.nt $Heap)))) (and (=> (= (ControlFlow 0 2) (- 0 36)) (= |$rhs#0@0| |$rhs#1@0|)) (=> (|_module.__default.TestAny#canCall| Tclass._module.nt ($Box intType (int_2_U |$rhs#0@0|)) ($Box intType (int_2_U |$rhs#1@0|))) (=> (and (|_module.__default.TestAny#canCall| Tclass._module.nt ($Box intType (int_2_U |$rhs#0@0|)) ($Box intType (int_2_U |$rhs#1@0|))) (= |newtype$check#2@0| (LitInt 12))) (and (=> (= (ControlFlow 0 2) (- 0 35)) (and (<= (LitInt (- 0 100)) |newtype$check#2@0|) (< |newtype$check#2@0| 100))) (=> (and (<= (LitInt (- 0 100)) |newtype$check#2@0|) (< |newtype$check#2@0| 100)) (=> (and (= |$rhs#2@0| (LitInt 12)) (= |newtype$check#3@0| (LitInt 12))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (and (<= (LitInt (- 0 100)) |newtype$check#3@0|) (< |newtype$check#3@0| 100))) (=> (and (<= (LitInt (- 0 100)) |newtype$check#3@0|) (< |newtype$check#3@0| 100)) (=> (= |$rhs#3@0| (LitInt 12)) (=> (and ($IsAlloc intType (int_2_U |$rhs#2@0|) Tclass._module.ntNative $Heap) ($IsAlloc intType (int_2_U |$rhs#3@0|) Tclass._module.ntNative $Heap)) (and (=> (= (ControlFlow 0 2) (- 0 33)) (= |$rhs#2@0| |$rhs#3@0|)) (=> (and (|_module.__default.TestAny#canCall| Tclass._module.ntNative ($Box intType (int_2_U |$rhs#2@0|)) ($Box intType (int_2_U |$rhs#3@0|))) (|_module.__default.TestAny#canCall| Tclass._module.ntNative ($Box intType (int_2_U |$rhs#2@0|)) ($Box intType (int_2_U |$rhs#3@0|)))) (=> (and (and (= |$rhs#4@0| (U_2_bv8 (Lit bv8Type (bv8_2_U #x0c)))) (= |$rhs#5@0| (U_2_bv8 (Lit bv8Type (bv8_2_U #x0c))))) (and ($IsAlloc bv8Type (bv8_2_U |$rhs#4@0|) (TBitvector 8) $Heap) ($IsAlloc bv8Type (bv8_2_U |$rhs#5@0|) (TBitvector 8) $Heap))) (and (=> (= (ControlFlow 0 2) (- 0 32)) (= |$rhs#4@0| |$rhs#5@0|)) (=> (and (|_module.__default.TestAny#canCall| (TBitvector 8) ($Box bv8Type (bv8_2_U |$rhs#4@0|)) ($Box bv8Type (bv8_2_U |$rhs#5@0|))) (|_module.__default.TestAny#canCall| (TBitvector 8) ($Box bv8Type (bv8_2_U |$rhs#4@0|)) ($Box bv8Type (bv8_2_U |$rhs#5@0|)))) (=> (and (and (= |$rhs#6@0| (U_2_bv167 (Lit bv167Type (bv167_2_U #b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100)))) (= |$rhs#7@0| (U_2_bv167 (Lit bv167Type (bv167_2_U #b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100))))) (and ($IsAlloc bv167Type (bv167_2_U |$rhs#6@0|) (TBitvector 167) $Heap) ($IsAlloc bv167Type (bv167_2_U |$rhs#7@0|) (TBitvector 167) $Heap))) (and (=> (= (ControlFlow 0 2) (- 0 31)) (= |$rhs#6@0| |$rhs#7@0|)) (=> (and (|_module.__default.TestAny#canCall| (TBitvector 167) ($Box bv167Type (bv167_2_U |$rhs#6@0|)) ($Box bv167Type (bv167_2_U |$rhs#7@0|))) (|_module.__default.TestAny#canCall| (TBitvector 167) ($Box bv167Type (bv167_2_U |$rhs#6@0|)) ($Box bv167Type (bv167_2_U |$rhs#7@0|)))) (=> (and (and (and (= |$rhs#8@0| (Lit BoxType (|ORD#FromNat| 12))) (= |$rhs#9@0| (Lit BoxType (|ORD#FromNat| 12)))) (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.MyClass?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 30)) true) (and (=> (= (ControlFlow 0 2) (- 0 29)) true) (and (=> (= (ControlFlow 0 2) (- 0 28)) true) (=> ($IsAlloc refType $nw@0 Tclass._module.MyClass $Heap@0) (and (=> (= (ControlFlow 0 2) (- 0 27)) true) (=> ($IsAlloc refType $nw@0 Tclass._module.MyClass $Heap@0) (and (=> (= (ControlFlow 0 2) (- 0 26)) (= $nw@0 $nw@0)) (=> (and (and (|_module.__default.TestAny#canCall| Tclass._module.MyClass ($Box refType $nw@0) ($Box refType $nw@0)) (|_module.__default.TestAny#canCall| Tclass._module.MyClass ($Box refType $nw@0) ($Box refType $nw@0))) (and (= |newtype$check#4@0| (LitInt 12)) (= |newtype$check#5@0| (LitInt 12)))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (and (<= (LitInt (- 0 100)) |newtype$check#5@0|) (< |newtype$check#5@0| 100))) (=> (and (<= (LitInt (- 0 100)) |newtype$check#5@0|) (< |newtype$check#5@0| 100)) (and (=> (= (ControlFlow 0 2) (- 0 24)) true) (=> (= |x0#0@0| (|#_module.X.X| (U_2_bool (Lit boolType (bool_2_U true))) (Lit charType (|char#FromInt| 101)) (LitInt 12) (LitReal 37.5) (LitInt 12) (LitInt 12) (U_2_bv8 (Lit bv8Type (bv8_2_U #x0c))) (U_2_bv167 (Lit bv167Type (bv167_2_U #b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100))) (Lit BoxType (|ORD#FromNat| 12)) $nw@0)) (=> (and (= |newtype$check#6@0| (LitInt 12)) (= |newtype$check#7@0| (LitInt 12))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (and (<= (LitInt (- 0 100)) |newtype$check#7@0|) (< |newtype$check#7@0| 100))) (=> (and (<= (LitInt (- 0 100)) |newtype$check#7@0|) (< |newtype$check#7@0| 100)) (and (=> (= (ControlFlow 0 2) (- 0 22)) true) (=> (= |x1#0@0| (|#_module.X.X| (U_2_bool (Lit boolType (bool_2_U true))) (Lit charType (|char#FromInt| 101)) (LitInt 12) (LitReal 37.5) (LitInt 12) (LitInt 12) (U_2_bv8 (Lit bv8Type (bv8_2_U #x0c))) (U_2_bv167 (Lit bv167Type (bv167_2_U #b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100))) (Lit BoxType (|ORD#FromNat| 12)) $nw@0)) (and (=> (= (ControlFlow 0 2) (- 0 21)) true) (and (=> (= (ControlFlow 0 2) (- 0 20)) true) (and (=> (= (ControlFlow 0 2) (- 0 19)) true) (=> (and (= |##a#9@0| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType |x0#0@0|))) ($IsAlloc SeqType |##a#9@0| (TSeq Tclass._module.X) $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 18)) true) (=> (and (= |##b#9@0| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType |x1#0@0|))) ($IsAlloc SeqType |##b#9@0| (TSeq Tclass._module.X) $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (= |##a#9@0| |##b#9@0|)) (=> (and (|_module.__default.TestAny#canCall| (TSeq Tclass._module.X) ($Box SeqType (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType |x0#0@0|))) ($Box SeqType (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType |x1#0@0|)))) (|_module.__default.TestAny#canCall| (TSeq Tclass._module.X) ($Box SeqType (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType |x0#0@0|))) ($Box SeqType (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType |x1#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 16)) true) (and (=> (= (ControlFlow 0 2) (- 0 15)) true) (and (=> (= (ControlFlow 0 2) (- 0 14)) true) (=> (and (= |##a#10@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |x0#0@0|))) ($IsAlloc SetType |##a#10@0| (TSet Tclass._module.X) $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 13)) true) (=> (and (= |##b#10@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |x1#0@0|))) ($IsAlloc SetType |##b#10@0| (TSet Tclass._module.X) $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (= |##a#10@0| |##b#10@0|)) (=> (and (|_module.__default.TestAny#canCall| (TSet Tclass._module.X) ($Box SetType (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |x0#0@0|))) ($Box SetType (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |x1#0@0|)))) (|_module.__default.TestAny#canCall| (TSet Tclass._module.X) ($Box SetType (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |x0#0@0|))) ($Box SetType (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |x1#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 11)) true) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (=> (and (= |##a#11@0| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box DatatypeTypeType |x0#0@0|))) ($IsAlloc MultiSetType |##a#11@0| (TMultiSet Tclass._module.X) $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (=> (and (= |##b#11@0| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box DatatypeTypeType |x1#0@0|))) ($IsAlloc MultiSetType |##b#11@0| (TMultiSet Tclass._module.X) $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (= |##a#11@0| |##b#11@0|)) (=> (and (|_module.__default.TestAny#canCall| (TMultiSet Tclass._module.X) ($Box MultiSetType (|MultiSet#UnionOne| |MultiSet#Empty| ($Box DatatypeTypeType |x0#0@0|))) ($Box MultiSetType (|MultiSet#UnionOne| |MultiSet#Empty| ($Box DatatypeTypeType |x1#0@0|)))) (|_module.__default.TestAny#canCall| (TMultiSet Tclass._module.X) ($Box MultiSetType (|MultiSet#UnionOne| |MultiSet#Empty| ($Box DatatypeTypeType |x0#0@0|))) ($Box MultiSetType (|MultiSet#UnionOne| |MultiSet#Empty| ($Box DatatypeTypeType |x1#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) true) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (=> (and (= |##a#12@0| (|Map#Build| |Map#Empty| ($Box DatatypeTypeType |x0#0@0|) ($Box intType (int_2_U |$rhs#2@0|)))) ($IsAlloc MapType |##a#12@0| (TMap Tclass._module.X Tclass._module.ntNative) $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= |##b#12@0| (|Map#Build| |Map#Empty| ($Box DatatypeTypeType |x0#0@0|) ($Box intType (int_2_U |$rhs#3@0|)))) (=> (and ($IsAlloc MapType |##b#12@0| (TMap Tclass._module.X Tclass._module.ntNative) $Heap@0) (= (ControlFlow 0 2) (- 0 1))) (= |##a#12@0| |##b#12@0|)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (U_2_bool (Lit boolType (bool_2_U true))) true) (and (U_2_bool (Lit boolType (bool_2_U true))) true)) (=> (and (and (and (and (<= (LitInt (- 0 100)) |n0#0|) (< |n0#0| 100)) true) (and (and (<= (LitInt (- 0 100)) |n1#0|) (< |n1#0| 100)) true)) (and (and (and (=> |defass#obj#0| (and ($Is refType |obj#0| Tclass._module.MyClass) ($IsAlloc refType |obj#0| Tclass._module.MyClass $Heap))) true) (and (=> |defass#x0#0| (and ($Is DatatypeTypeType |x0#0| Tclass._module.X) ($IsAlloc DatatypeTypeType |x0#0| Tclass._module.X $Heap))) true)) (and (and (=> |defass#x1#0| (and ($Is DatatypeTypeType |x1#0| Tclass._module.X) ($IsAlloc DatatypeTypeType |x1#0| Tclass._module.X $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 41) 2))))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
