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
(declare-fun Tagclass._module.lowercase () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun tytagFamily$lowercase () T@U)
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
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
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
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |char#FromInt| (Int) T@U)
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
(declare-fun |lambda#8| (T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._System.___hFunc1 Tagclass._module.lowercase tytagFamily$object tytagFamily$array |tytagFamily$_#Func1| tytagFamily$lowercase)
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
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |7134|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |6878|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor HandleTypeType) 9))
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
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |7120|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@1))
)))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7127|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7117|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@3))
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
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |6770|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |6768|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor SeqType) 10))
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
(assert (forall ((_System.array$arg@@2 T@U) ($h@@4 T@U) ($o@@2 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@2)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@2) alloc)))) ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@2) (IndexField $i0)) _System.array$arg@@2 $h@@4))
 :qid |unknown.0:0|
 :skolemid |7125|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@2) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |6779|
 :pattern ( ($Unbox T@@0 x@@4))
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
(assert (= (Ctor LayerTypeType) 11))
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
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |7156|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |7157|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TInt) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |6780|
 :pattern ( ($IsBox bx@@9 TInt))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TChar) (and (= ($Box charType ($Unbox charType bx@@10)) bx@@10) ($Is charType ($Unbox charType bx@@10) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |6783|
 :pattern ( ($IsBox bx@@10 TChar))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |6791|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |7140|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
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
(assert (forall ((v@@5 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@15) h@@8) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@11) ($IsAllocBox bx@@11 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |6820|
 :pattern ( (|Set#IsMember| v@@5 bx@@11))
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
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |6778|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@5 $o@@5) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@5)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |7129|
 :pattern ( (_System.array.Length $o@@5) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@5 $o@@5) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@6 T@U) ($o@@6 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@6)))) ($IsBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@6) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |7124|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@6) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
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
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@12)) bx@@12) ($Is HandleTypeType ($Unbox HandleTypeType bx@@12) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |7138|
 :pattern ( ($IsBox bx@@12 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
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
(assert (forall ((bx@@13 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |6785|
 :pattern ( ($IsBox bx@@13 (TSet t@@8)))
)))
(assert (forall ((bx@@14 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@14 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@14)) bx@@14) ($Is SeqType ($Unbox SeqType bx@@14) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |6788|
 :pattern ( ($IsBox bx@@14 (TSeq t@@9)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |7123|
 :pattern ( ($IsBox bx@@15 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |7132|
 :pattern ( ($IsBox bx@@16 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |6775|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((h@@11 T@U) (r@@3 T@U) (f@@13 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType1Store refType (MapType1Type FieldType BoxType) h@@11 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@11 r@@3) f@@13 x@@6))) ($HeapSucc h@@11 (MapType1Store refType (MapType1Type FieldType BoxType) h@@11 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@11 r@@3) f@@13 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |6869|
 :pattern ( (MapType1Store refType (MapType1Type FieldType BoxType) h@@11 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@11 r@@3) f@@13 x@@6)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.lowercase) Tagclass._module.lowercase))
(assert (= (TagFamily Tclass._module.lowercase) tytagFamily$lowercase))
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
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |6771|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |6769|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |6975|
 :pattern ( (|Seq#Length| s@@6))
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
(declare-fun |i#0@0| () Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |lambdaResult#0| () T@U)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call0formal@_module._default.PrintArray$A@0 () T@U)
(declare-fun |aa#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.InitTests)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon6_correct true))
(let ((anon11_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| (|Seq#Length| |s#0@0|)))) (= (ControlFlow 0 8) 5)) anon6_correct)))
(let ((anon11_Then_correct  (=> (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| (|Seq#Length| |s#0@0|))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |s#0@0|)))) (=> (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |s#0@0|))) (=> (= |lambdaResult#0| ($Unbox charType (|Seq#Index| |s#0@0| |i#0@0|))) (=> (and ($Is charType |lambdaResult#0| TChar) (= (ControlFlow 0 6) 5)) anon6_correct)))))))
(let ((anon10_Else_correct  (=> (< |i#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 10) 6) anon11_Then_correct) (=> (= (ControlFlow 0 10) 8) anon11_Else_correct)))))
(let ((anon10_Then_correct  (=> (<= (LitInt 0) |i#0@0|) (and (=> (= (ControlFlow 0 9) 6) anon11_Then_correct) (=> (= (ControlFlow 0 9) 8) anon11_Else_correct)))))
(let ((anon9_Then_correct  (=> (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false)) (and (=> (= (ControlFlow 0 11) 9) anon10_Then_correct) (=> (= (ControlFlow 0 11) 10) anon10_Else_correct)))))
(let ((anon9_Else_correct true))
(let ((anon8_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@1 |$lambdaHeap#0@0|) ($HeapSucc $Heap@1 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 12) 11) anon9_Then_correct) (=> (= (ControlFlow 0 12) 4) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array? Tclass._module.lowercase))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@1) alloc)))) (= (_System.array.Length $nw@1) (|Seq#Length| |s#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((|arrayinit#0#i0#0| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0|) (< |arrayinit#0#i0#0| (|Seq#Length| |s#0@0|))) (Requires1 TInt TChar $Heap@1 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#9| (Handle1 (|lambda#5| |s#0@0|) (|lambda#6| TInt (LitInt 0) (|Seq#Length| |s#0@0|)) (|lambda#8| (SetRef_to_SetBox (|lambda#7| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0|))))
 :qid |Arraysdfy.88:9|
 :skolemid |7504|
))) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|arrayinit#0#i0#0@@0| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0@@0|) (< |arrayinit#0#i0#0@@0| (|Seq#Length| |s#0@0|))) ($Is charType ($Unbox charType (Apply1 TInt TChar $Heap@1 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#9| (Handle1 (|lambda#5| |s#0@0|) (|lambda#6| TInt (LitInt 0) (|Seq#Length| |s#0@0|)) (|lambda#8| (SetRef_to_SetBox (|lambda#7| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0@@0|)))) Tclass._module.lowercase))
 :qid |Arraysdfy.88:9|
 :skolemid |7505|
)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 13) (- 0 15)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (=> (and (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? Tclass._module.lowercase))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc)))) (= (_System.array.Length $nw@0) (LitInt 3)))) (and (and (= $Heap@0 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap $nw@0 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@0)) (and ($IsHeapAnchor $Heap@0) (= call0formal@_module._default.PrintArray$A@0 Tclass._module.lowercase)))) (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@8) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@8) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@8)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@8))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |s#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 111)))))))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (<= 0 (|Seq#Length| |s#0@0|))) (=> (<= 0 (|Seq#Length| |s#0@0|)) (and (=> (= (ControlFlow 0 13) 12) anon8_Then_correct) (=> (= (ControlFlow 0 13) 2) anon8_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |aa#0| (Tclass._System.array Tclass._module.lowercase)) ($IsAlloc refType |aa#0| (Tclass._System.array Tclass._module.lowercase) $Heap)) true) (=> (and (and (and ($Is SeqType |s#0| (TSeq TChar)) ($IsAlloc SeqType |s#0| (TSeq TChar) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 16) 13))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
