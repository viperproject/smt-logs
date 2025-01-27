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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass.DafnyNaCl.GF64__Any__Limb () T@U)
(declare-fun Tagclass.BoundedInts.int64 () T@U)
(declare-fun Tagclass.DafnyNaCl.GF64 () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun tytagFamily$GF64_Any_Limb () T@U)
(declare-fun tytagFamily$int64 () T@U)
(declare-fun tytagFamily$GF64 () T@U)
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
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DafnyNaCl.__default.M2256 () Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Tclass.DafnyNaCl.GF64__Any__Limb () T@U)
(declare-fun DafnyNaCl.__default.LM () Int)
(declare-fun Mul (Int Int) Int)
(declare-fun DafnyNaCl.__default.MGFLC () Int)
(declare-fun DafnyNaCl.__default.MGFLP () Int)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun Tclass.DafnyNaCl.GF64 () T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun DafnyNaCl.__default.NGFD () Int)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Create| (T@U T@U Int T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun DafnyNaCl.__default.R2256 () Int)
(declare-fun DafnyNaCl.__default.P () Int)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass.BoundedInts.int64 () T@U)
(declare-fun Mod (Int Int) Int)
(declare-fun DafnyNaCl.__default.LMM1 () Int)
(declare-fun |lambda#6| (Bool) T@U)
(declare-fun |lambda#8| (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#4| (T@U) T@U)
(declare-fun |lambda#7| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass.DafnyNaCl.GF64__Any__Limb Tagclass.BoundedInts.int64 Tagclass.DafnyNaCl.GF64 tytagFamily$object |tytagFamily$_#Func1| tytagFamily$GF64_Any_Limb tytagFamily$int64 tytagFamily$GF64)
)
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
 :skolemid |372|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#_v0#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#5| |l#0|) |$l#0#heap#0| |$l#0#_v0#0|)) ($IsBox |$l#0#_v0#0| |l#0|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |570|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#5| |l#0|) |$l#0#heap#0| |$l#0#_v0#0|))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (= DafnyNaCl.__default.M2256 (LitInt 115792089237316195423570985008687907853269984665640564039457584007913129639936)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((|i#0| T@U) ) (! (= ($Is intType |i#0| Tclass.DafnyNaCl.GF64__Any__Limb)  (and (and (<= (LitInt (- 0 9223372036854775808)) (U_2_int |i#0|)) (< (U_2_int |i#0|) 9223372036854775808)) (and (<= (- 0 DafnyNaCl.__default.LM) (U_2_int |i#0|)) (<= (U_2_int |i#0|) (Mul DafnyNaCl.__default.MGFLC DafnyNaCl.__default.MGFLP)))))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($Is intType |i#0| Tclass.DafnyNaCl.GF64__Any__Limb))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SeqType) 9))
(assert (forall ((|a#0| T@U) ) (! (= ($Is SeqType |a#0| Tclass.DafnyNaCl.GF64)  (and ($Is SeqType |a#0| (TSeq Tclass.DafnyNaCl.GF64__Any__Limb)) (= (|Seq#Length| |a#0|) DafnyNaCl.__default.NGFD)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($Is SeqType |a#0| Tclass.DafnyNaCl.GF64))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |379|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((ty T@U) (heap@@1 T@U) (len Int) (init T@U) (i Int) ) (!  (=> (and (and ($IsGoodHeap heap@@1) (<= 0 i)) (< i len)) (= (|Seq#Index| (|Seq#Create| ty heap@@1 len init) i) (Apply1 TInt ty heap@@1 init ($Box intType (int_2_U i)))))
 :qid |DafnyPreludebpl.1317:15|
 :skolemid |260|
 :pattern ( (|Seq#Index| (|Seq#Create| ty heap@@1 len init) i))
)))
(assert (= DafnyNaCl.__default.MGFLC (+ (Mul DafnyNaCl.__default.R2256 (LitInt 15)) 1)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (= DafnyNaCl.__default.P (LitInt (- 57896044618658097711785492504343953926634992332820282019728792003956564819968 19))))
(assert (forall ((s T@U) (bx@@3 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@3) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@3))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@3))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@2 T@U) (h@@1 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@2 (Handle1 h@@1 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@1 heap@@2 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@2 (Handle1 h@@1 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@4 Tclass._System.object?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@5 Tclass._System.object))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.DafnyNaCl.GF64__Any__Limb) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) Tclass.DafnyNaCl.GF64__Any__Limb)))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsBox bx@@6 Tclass.DafnyNaCl.GF64__Any__Limb))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.BoundedInts.int64) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) Tclass.BoundedInts.int64)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsBox bx@@7 Tclass.BoundedInts.int64))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.DafnyNaCl.GF64) (and (= ($Box SeqType ($Unbox SeqType bx@@8)) bx@@8) ($Is SeqType ($Unbox SeqType bx@@8) Tclass.DafnyNaCl.GF64)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($IsBox bx@@8 Tclass.DafnyNaCl.GF64))
)))
(assert (forall ((|c#0| T@U) ) (! (= ($Is refType |c#0| Tclass._System.object)  (and ($Is refType |c#0| Tclass._System.object?) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0| Tclass._System.object))
 :pattern ( ($Is refType |c#0| Tclass._System.object?))
)))
(assert (= DafnyNaCl.__default.R2256 (Mod DafnyNaCl.__default.M2256 DafnyNaCl.__default.P)))
(assert (= DafnyNaCl.__default.MGFLP (Mul DafnyNaCl.__default.LMM1 DafnyNaCl.__default.LMM1)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#6| |l#0@@0|) |$l#0#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( (MapType1Select refType boolType (|lambda#6| |l#0@@0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#8| |l#0@@1|) |$l#0#ly#0|) |l#0@@1|)
 :qid |gitissue2927dfy.31:57|
 :skolemid |573|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#8| |l#0@@1|) |$l#0#ly#0|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) ) (! (= ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11)) (forall ((h@@2 T@U) (bx0@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@2) ($IsBox bx0@@8 t0@@12)) (Requires1 t0@@12 t1@@11 h@@2 f@@8 bx0@@8)) ($IsBox (Apply1 t0@@12 t1@@11 h@@2 f@@8 bx0@@8) t1@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@2 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11)))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TInt) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@9 TInt))
)))
(assert (forall ((v@@0 T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t) ($Is T@@1 v@@0 t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t))
)))
(assert (forall ((t0@@13 T@U) (t1@@12 T@U) (heap@@3 T@U) (h@@3 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@9 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@3 bx0@@9)) (Requires1 t0@@13 t1@@12 heap@@3 (Handle1 h@@3 r@@1 rd@@1) bx0@@9))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@13 t1@@12 heap@@3 (Handle1 h@@3 r@@1 rd@@1) bx0@@9))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall (($o T@U) ) (! ($Is refType $o Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o Tclass._System.object?))
)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.M2256) TInt)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.P) TInt)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.NGFD) TInt)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.LM) TInt)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.LMM1) TInt)))
(assert  (=> (< 1 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.R2256) TInt)))
(assert  (=> (< 1 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.MGFLP) TInt)))
(assert  (=> (< 2 $FunctionContextHeight) ($Is intType (int_2_U DafnyNaCl.__default.MGFLC) TInt)))
(assert (forall ((t@@0 T@U) ) (! (= (Inv0_TSet (TSet t@@0)) t@@0)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Tag (TSet t@@1)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (= DafnyNaCl.__default.NGFD (LitInt 16)))
(assert (= DafnyNaCl.__default.LMM1 (LitInt 65535)))
(assert (= DafnyNaCl.__default.LM (LitInt 65536)))
(assert (forall ((f@@9 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@9 ($LS ly@@0)) (AtLayer A@@0 f@@9 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@9 ($LS ly@@0)))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |568|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((x@@7 Int) (y@@0 Int) ) (! (= (Mul x@@7 y@@0) (* x@@7 y@@0))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@7 y@@0))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@4 T@U) (f@@10 T@U) (bx0@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@4) (and ($IsBox bx0@@10 t0@@14) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@14 t1@@13)))) (|Set#Equal| (Reads1 t0@@14 t1@@13 $OneHeap f@@10 bx0@@10) |Set#Empty|)) (= (Requires1 t0@@14 t1@@13 $OneHeap f@@10 bx0@@10) (Requires1 t0@@14 t1@@13 heap@@4 f@@10 bx0@@10)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@14 t1@@13 $OneHeap f@@10 bx0@@10) ($IsGoodHeap heap@@4))
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@4 f@@10 bx0@@10))
)))
(assert (forall ((bx@@11 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@4)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@4))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@4)))
)))
(assert (forall ((bx@@12 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@12 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@12)) bx@@12) ($Is SeqType ($Unbox SeqType bx@@12) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@12 (TSeq t@@5)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.DafnyNaCl.GF64__Any__Limb) Tagclass.DafnyNaCl.GF64__Any__Limb))
(assert (= (TagFamily Tclass.DafnyNaCl.GF64__Any__Limb) tytagFamily$GF64_Any_Limb))
(assert (= (Tag Tclass.BoundedInts.int64) Tagclass.BoundedInts.int64))
(assert (= (TagFamily Tclass.BoundedInts.int64) tytagFamily$int64))
(assert (= (Tag Tclass.DafnyNaCl.GF64) Tagclass.DafnyNaCl.GF64))
(assert (= (TagFamily Tclass.DafnyNaCl.GF64) tytagFamily$GF64))
(assert (forall ((ty@@0 T@U) (heap@@5 T@U) (len@@0 Int) (init@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@5) (<= 0 len@@0)) (= (|Seq#Length| (|Seq#Create| ty@@0 heap@@5 len@@0 init@@0)) len@@0))
 :qid |DafnyPreludebpl.1313:15|
 :skolemid |259|
 :pattern ( (|Seq#Length| (|Seq#Create| ty@@0 heap@@5 len@@0 init@@0)))
)))
(assert (forall ((s@@1 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@1) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@1))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@1 o@@7) (|Set#IsMember| b@@1 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@7))
 :pattern ( (|Set#IsMember| b@@1 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((|x#0| T@U) ) (! (= ($Is intType |x#0| Tclass.BoundedInts.int64)  (and (<= (LitInt (- 0 9223372036854775808)) (U_2_int |x#0|)) (< (U_2_int |x#0|) 9223372036854775808)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($Is intType |x#0| Tclass.BoundedInts.int64))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@9)) (Lit BoxType ($Box T@@3 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@9)))
)))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@1 T@U) (t0@@15 T@U) ) (! (= ($Is SeqType v@@1 (TSeq t0@@15)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@1))) ($IsBox (|Seq#Index| v@@1 i@@0) t0@@15))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@1 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@1 (TSeq t0@@15)))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#heap#0@@0| T@U) (|$l#0#_v0#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#4| |l#0@@3|) |$l#0#heap#0@@0| |$l#0#_v0#0@@0|) |l#0@@3|)
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#4| |l#0@@3|) |$l#0#heap#0@@0| |$l#0#_v0#0@@0|))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#_v0#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#7| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#_v0#0@@1|) |l#0@@4|)
 :qid |gitissue2927dfy.31:57|
 :skolemid |572|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#7| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#_v0#0@@1|))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |a#0@@0| () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |newtype$check#4@0| () T@U)
(declare-fun |newtype$check#5@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$DafnyNaCl.Normal__GF64__Crashes)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon5_correct true))
(let ((anon14_Else_correct  (=> (and (< (U_2_int ($Unbox intType (|Seq#Index| |a#0@@0| |i#0@0|))) (LitInt 0)) (= (ControlFlow 0 22) 14)) anon5_correct)))
(let ((anon14_Then_correct  (=> (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| |a#0@@0| |i#0@0|)))) (and (=> (= (ControlFlow 0 16) (- 0 21)) (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |a#0@@0|)))) (=> (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |a#0@@0|))) (=> (= |newtype$check#1@0| DafnyNaCl.__default.LMM1) (and (=> (= (ControlFlow 0 16) (- 0 20)) (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#1@0|) (< |newtype$check#1@0| 9223372036854775808))) (=> (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#1@0|) (< |newtype$check#1@0| 9223372036854775808)) (and (=> (= (ControlFlow 0 16) (- 0 19)) (and (<= (- 0 DafnyNaCl.__default.LM) |newtype$check#1@0|) (<= |newtype$check#1@0| (Mul DafnyNaCl.__default.MGFLC DafnyNaCl.__default.MGFLP)))) (=> (and (<= (- 0 DafnyNaCl.__default.LM) |newtype$check#1@0|) (<= |newtype$check#1@0| (Mul DafnyNaCl.__default.MGFLC DafnyNaCl.__default.MGFLP))) (=> (= |newtype$check#2@0| DafnyNaCl.__default.LMM1) (and (=> (= (ControlFlow 0 16) (- 0 18)) (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#2@0|) (< |newtype$check#2@0| 9223372036854775808))) (=> (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#2@0|) (< |newtype$check#2@0| 9223372036854775808)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (and (<= (- 0 DafnyNaCl.__default.LM) |newtype$check#2@0|) (<= |newtype$check#2@0| (Mul DafnyNaCl.__default.MGFLC DafnyNaCl.__default.MGFLP)))) (=> (and (<= (- 0 DafnyNaCl.__default.LM) |newtype$check#2@0|) (<= |newtype$check#2@0| (Mul DafnyNaCl.__default.MGFLC DafnyNaCl.__default.MGFLP))) (=> (= (ControlFlow 0 16) 14) anon5_correct))))))))))))))))
(let ((anon13_Then_correct  (=> (and (and (<= (LitInt 0) |i#0@0|) (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| DafnyNaCl.__default.NGFD))) (= |newtype$check#0@0| (LitInt 0))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#0@0|) (< |newtype$check#0@0| 9223372036854775808))) (=> (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#0@0|) (< |newtype$check#0@0| 9223372036854775808)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |a#0@@0|)))) (=> (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |a#0@@0|))) (and (=> (= (ControlFlow 0 23) 16) anon14_Then_correct) (=> (= (ControlFlow 0 23) 22) anon14_Else_correct)))))))))
(let ((anon13_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0@0|) (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| DafnyNaCl.__default.NGFD)))) (= (ControlFlow 0 15) 14)) anon5_correct)))
(let ((anon12_Then_correct  (=> ($Is SeqType |a#0@@0| Tclass.DafnyNaCl.GF64) (and (=> (= (ControlFlow 0 26) 23) anon13_Then_correct) (=> (= (ControlFlow 0 26) 15) anon13_Else_correct)))))
(let ((anon17_Else_correct true))
(let ((anon17_Then_correct  (=> (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false)) (=> (and (= |newtype$check#3@0| (LitInt 0)) (= (ControlFlow 0 9) (- 0 8))) (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#3@0|) (< |newtype$check#3@0| 9223372036854775808))))))
(let ((anon16_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap |$lambdaHeap#0@0|) ($HeapSucc $Heap |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 11) 9) anon17_Then_correct) (=> (= (ControlFlow 0 11) 10) anon17_Else_correct)))))
(let ((anon16_Else_correct  (and (=> (= (ControlFlow 0 2) (- 0 7)) (forall ((|seqinit#0#i0#0| Int) ) (!  (=> (and (<= 0 |seqinit#0#i0#0|) (< |seqinit#0#i0#0| DafnyNaCl.__default.NGFD)) (Requires1 TInt Tclass.BoundedInts.int64 $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#4| ($Box intType (int_2_U (LitInt 0)))) (|lambda#5| TInt) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) ($Box intType (int_2_U |seqinit#0#i0#0|))))
 :qid |gitissue2927dfy.34:109|
 :skolemid |507|
))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (forall ((|seqinit#0#i0#0@@0| Int) ) (!  (=> (and (<= 0 |seqinit#0#i0#0@@0|) (< |seqinit#0#i0#0@@0| DafnyNaCl.__default.NGFD)) (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@1) alloc)))) (|Set#IsMember| (Reads1 TInt Tclass.BoundedInts.int64 $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#4| ($Box intType (int_2_U (LitInt 0)))) (|lambda#5| TInt) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) ($Box intType (int_2_U |seqinit#0#i0#0@@0|))) ($Box refType $o@@1))) (U_2_bool (MapType0Select refType FieldType boolType $_ReadsFrame@0 $o@@1 $f@@0)))
 :qid |gitissue2927dfy.34:109|
 :skolemid |508|
)))
 :qid |gitissue2927dfy.34:109|
 :skolemid |509|
))) (=> (forall ((|seqinit#0#i0#0@@1| T@U) ) (!  (=> (and (<= 0 (U_2_int |seqinit#0#i0#0@@1|)) (< (U_2_int |seqinit#0#i0#0@@1|) DafnyNaCl.__default.NGFD)) (forall (($o@@2 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@2) alloc)))) (|Set#IsMember| (Reads1 TInt Tclass.BoundedInts.int64 $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#4| ($Box intType (int_2_U (LitInt 0)))) (|lambda#5| TInt) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) ($Box intType |seqinit#0#i0#0@@1|)) ($Box refType $o@@2))) (U_2_bool (MapType0Select refType FieldType boolType $_ReadsFrame@0 $o@@2 $f@@1)))
 :qid |gitissue2927dfy.34:109|
 :skolemid |508|
)))
 :qid |gitissue2927dfy.34:109|
 :skolemid |509|
)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (forall ((|seqinit#0#i0#0@@2| Int) ) (!  (=> (and (<= 0 |seqinit#0#i0#0@@2|) (< |seqinit#0#i0#0@@2| DafnyNaCl.__default.NGFD)) ($Is intType ($Unbox intType (Apply1 TInt Tclass.BoundedInts.int64 $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#4| ($Box intType (int_2_U (LitInt 0)))) (|lambda#5| TInt) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) ($Box intType (int_2_U |seqinit#0#i0#0@@2|)))) Tclass.DafnyNaCl.GF64__Any__Limb))
 :qid |gitissue2927dfy.34:109|
 :skolemid |510|
))) (=> (= |newtype$check#4@0| (|Seq#Create| Tclass.BoundedInts.int64 $Heap DafnyNaCl.__default.NGFD (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#4| ($Box intType (int_2_U (LitInt 0)))) (|lambda#5| TInt) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (|Seq#Length| |newtype$check#4@0|) DafnyNaCl.__default.NGFD)) (=> (= (|Seq#Length| |newtype$check#4@0|) DafnyNaCl.__default.NGFD) (=> (= |newtype$check#5@0| (|Seq#Create| Tclass.BoundedInts.int64 $Heap DafnyNaCl.__default.NGFD (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#4| ($Box intType (int_2_U (LitInt 0)))) (|lambda#5| TInt) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (|Seq#Length| |newtype$check#5@0|) DafnyNaCl.__default.NGFD)) (=> (= (|Seq#Length| |newtype$check#5@0|) DafnyNaCl.__default.NGFD) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|i#2| Int) ) (!  (=> (and (<= (LitInt 0) |i#2|) (and (<= (LitInt 0) |i#2|) (< |i#2| DafnyNaCl.__default.NGFD))) (and (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| (|Seq#Create| Tclass.BoundedInts.int64 $Heap DafnyNaCl.__default.NGFD (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#4| ($Box intType (int_2_U (LitInt 0)))) (|lambda#5| TInt) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))) |i#2|)))) (<= (U_2_int ($Unbox intType (|Seq#Index| (|Seq#Create| Tclass.BoundedInts.int64 $Heap DafnyNaCl.__default.NGFD (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#4| ($Box intType (int_2_U (LitInt 0)))) (|lambda#5| TInt) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))) |i#2|))) DafnyNaCl.__default.LMM1)))
 :qid |gitissue2927dfy.34:49|
 :skolemid |512|
)))))))))))))))
(let ((anon15_Then_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (<= 0 DafnyNaCl.__default.NGFD)) (=> (<= 0 DafnyNaCl.__default.NGFD) (and (=> (= (ControlFlow 0 12) 11) anon16_Then_correct) (=> (= (ControlFlow 0 12) 2) anon16_Else_correct))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 27) 26) anon12_Then_correct) (=> (= (ControlFlow 0 27) 12) anon15_Then_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 6 $FunctionContextHeight) (= (ControlFlow 0 28) 27))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
