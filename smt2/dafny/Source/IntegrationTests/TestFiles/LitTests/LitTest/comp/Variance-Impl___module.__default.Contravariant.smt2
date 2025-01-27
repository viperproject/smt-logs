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
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._module.Int () T@U)
(declare-fun Tagclass._module.X () T@U)
(declare-fun Tagclass._module.Cont () T@U)
(declare-fun |##_module.Cont.Cont| () T@U)
(declare-fun Tagclass._module.X? () T@U)
(declare-fun Tagclass._module.Int? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$Int () T@U)
(declare-fun tytagFamily$X () T@U)
(declare-fun tytagFamily$Cont () T@U)
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
(declare-fun |lambda#4| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun implements$_module.X (T@U) Bool)
(declare-fun Tclass._module.Int? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun _module.Cont.Cont_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Cont (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.X? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.X () T@U)
(declare-fun Tclass._module.Int () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun |#_module.Cont.Cont| (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Cont.x (T@U T@U) Int)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.Cont.y (T@U T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun |lambda#5| (Bool) T@U)
(declare-fun |lambda#7| (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Cont_0 (T@U) T@U)
(declare-fun _module.Cont.z (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#3| (T@U) T@U)
(declare-fun |lambda#6| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._module.Int Tagclass._module.X Tagclass._module.Cont |##_module.Cont.Cont| Tagclass._module.X? Tagclass._module.Int? tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$Int tytagFamily$X tytagFamily$Cont)
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
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#_v3#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#4| |l#0|) |$l#0#heap#0| |$l#0#_v3#0|)) ($IsBox |$l#0#_v3#0| |l#0|))
 :qid |Variancedfy.93:7|
 :skolemid |900|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#4| |l#0|) |$l#0#heap#0| |$l#0#_v3#0|))
)))
(assert (implements$_module.X Tclass._module.Int?))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor DatatypeTypeType) 8))
(assert (forall ((_module.Cont$T T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._module.Cont _module.Cont$T)) (_module.Cont.Cont_q d))
 :qid |unknown.0:0|
 :skolemid |662|
 :pattern ( (_module.Cont.Cont_q d) ($Is DatatypeTypeType d (Tclass._module.Cont _module.Cont$T)))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Int?)  (or (= $o null) (= (dtype $o) Tclass._module.Int?)))
 :qid |unknown.0:0|
 :skolemid |887|
 :pattern ( ($Is refType $o Tclass._module.Int?))
)))
(assert (= (Ctor HandleTypeType) 9))
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
(assert (forall ((bx@@2 T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.Int? $h) ($IsGoodHeap $h)) ($IsAllocBox bx@@2 Tclass._module.X? $h))
 :qid |unknown.0:0|
 :skolemid |895|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.Int? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.X $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.X? $h@@1))
 :qid |unknown.0:0|
 :skolemid |885|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.X $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.X? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Int $h@@2) ($IsAlloc refType |c#0@@1| Tclass._module.Int? $h@@2))
 :qid |unknown.0:0|
 :skolemid |893|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Int $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Int? $h@@2))
)))
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.X? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |883|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.X? $h@@4))
)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Int? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |888|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Int? $h@@5))
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
(assert (forall ((d@@0 T@U) ) (! (= (_module.Cont.Cont_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Cont.Cont|))
 :qid |unknown.0:0|
 :skolemid |653|
 :pattern ( (_module.Cont.Cont_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
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
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v bx@@3) ($IsBox bx@@3 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@3))
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
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Cont.Cont_q d@@1) (exists ((|a#1#0#0| T@U) ) (! (= d@@1 (|#_module.Cont.Cont| |a#1#0#0|))
 :qid |Variancedfy.33:26|
 :skolemid |654|
)))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( (_module.Cont.Cont_q d@@1))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Cont$T@@0 T@U) ($h@@6 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType $o@@3 (Tclass._module.Cont _module.Cont$T@@0))) ($IsAlloc DatatypeTypeType $o@@3 (Tclass._module.Cont _module.Cont$T@@0) $h@@6)) ($IsAlloc intType (int_2_U (_module.Cont.x _module.Cont$T@@0 $o@@3)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |666|
 :pattern ( (_module.Cont.x _module.Cont$T@@0 $o@@3) ($IsAlloc DatatypeTypeType $o@@3 (Tclass._module.Cont _module.Cont$T@@0) $h@@6))
))))
(assert ($IsGoodHeap $OneHeap))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Cont$T@@1 T@U) ($o@@4 T@U) ) (!  (=> ($Is DatatypeTypeType $o@@4 (Tclass._module.Cont _module.Cont$T@@1)) ($Is intType (int_2_U (_module.Cont.x _module.Cont$T@@1 $o@@4)) TInt))
 :qid |unknown.0:0|
 :skolemid |665|
 :pattern ( (_module.Cont.x _module.Cont$T@@1 $o@@4))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@4 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@4 t@@0 h@@2) ($IsAllocBox bx@@4 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@4 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@3) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@3))
)))
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
(assert (forall ((_module.Cont$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Cont _module.Cont$T@@2)) Tagclass._module.Cont) (= (TagFamily (Tclass._module.Cont _module.Cont$T@@2)) tytagFamily$Cont))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( (Tclass._module.Cont _module.Cont$T@@2))
)))
(assert (= (Ctor SeqType) 11))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Cont$T@@3 T@U) ($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) ($Is DatatypeTypeType $o@@5 (Tclass._module.Cont _module.Cont$T@@3))) ($IsAlloc DatatypeTypeType $o@@5 (Tclass._module.Cont _module.Cont$T@@3) $h@@7)) ($IsAlloc SeqType (_module.Cont.y _module.Cont$T@@3 $o@@5) (TSeq _module.Cont$T@@3) $h@@7))
 :qid |unknown.0:0|
 :skolemid |668|
 :pattern ( (_module.Cont.y _module.Cont$T@@3 $o@@5) ($IsAlloc DatatypeTypeType $o@@5 (Tclass._module.Cont _module.Cont$T@@3) $h@@7))
))))
(assert (forall ((s T@U) (bx@@5 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@5) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@5))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@5))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@8) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@8))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@8))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@9) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@9))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@9))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@6 Tclass._System.object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@7 Tclass._System.object))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Int) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Int)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@8 Tclass._module.Int))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.X) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.X)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@9 Tclass._module.X))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.X?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.X?)))
 :qid |unknown.0:0|
 :skolemid |881|
 :pattern ( ($IsBox bx@@10 Tclass._module.X?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Int?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Int?)))
 :qid |unknown.0:0|
 :skolemid |886|
 :pattern ( ($IsBox bx@@11 Tclass._module.Int?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.X)  (and ($Is refType |c#0@@3| Tclass._module.X?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |884|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.X))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.X?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Int)  (and ($Is refType |c#0@@4| Tclass._module.Int?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |892|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Int))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Int?))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Cont$T@@4 T@U) ($o@@6 T@U) ) (!  (=> ($Is DatatypeTypeType $o@@6 (Tclass._module.Cont _module.Cont$T@@4)) ($Is SeqType (_module.Cont.y _module.Cont$T@@4 $o@@6) (TSeq _module.Cont$T@@4)))
 :qid |unknown.0:0|
 :skolemid |667|
 :pattern ( (_module.Cont.y _module.Cont$T@@4 $o@@6))
))))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall (($o@@7 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@7 Tclass._module.Int? $heap) ($IsAlloc refType $o@@7 Tclass._module.X? $heap))
 :qid |unknown.0:0|
 :skolemid |897|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.Int? $heap))
)))
(assert (forall ((_module.Cont$T@@5 T@U) (|a#2#0#0| T@U) ($h@@10 T@U) ) (!  (=> ($IsGoodHeap $h@@10) (= ($IsAlloc DatatypeTypeType (|#_module.Cont.Cont| |a#2#0#0|) (Tclass._module.Cont _module.Cont$T@@5) $h@@10) ($IsAlloc HandleTypeType |a#2#0#0| (Tclass._System.___hTotalFunc1 _module.Cont$T@@5 TInt) $h@@10)))
 :qid |unknown.0:0|
 :skolemid |657|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Cont.Cont| |a#2#0#0|) (Tclass._module.Cont _module.Cont$T@@5) $h@@10))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#5| |l#0@@0|) |$l#0#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |901|
 :pattern ( (MapType1Select refType boolType (|lambda#5| |l#0@@0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#7| |l#0@@1|) |$l#0#ly#0|) |l#0@@1|)
 :qid |Variancedfy.128:26|
 :skolemid |903|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#7| |l#0@@1|) |$l#0#ly#0|))
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
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 TInt) (and (= ($Box intType ($Unbox intType bx@@12)) bx@@12) ($Is intType ($Unbox intType bx@@12) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@12 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@13) ($IsAllocBox bx@@13 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@13))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall (($o@@8 T@U) ) (! ($Is refType $o@@8 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@8 Tclass._System.object?))
)))
(assert (forall ((v@@4 T@U) (t0@@16 T@U) (h@@9 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@16) h@@9) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i) t0@@16 h@@9))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@16) h@@9))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((_module.Cont$T@@6 T@U) ) (! (= (Tclass._module.Cont_0 (Tclass._module.Cont _module.Cont$T@@6)) _module.Cont$T@@6)
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( (Tclass._module.Cont _module.Cont$T@@6))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Cont.Cont| |a#0#0#0|)) |##_module.Cont.Cont|)
 :qid |Variancedfy.33:26|
 :skolemid |652|
 :pattern ( (|#_module.Cont.Cont| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.Cont.z (|#_module.Cont.Cont| |a#4#0#0|)) |a#4#0#0|)
 :qid |Variancedfy.33:26|
 :skolemid |660|
 :pattern ( (|#_module.Cont.Cont| |a#4#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@17 T@U) (t1@@14 T@U) (h@@10 T@U) ) (!  (=> ($IsGoodHeap h@@10) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@17 t1@@14) h@@10) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@17) ($IsAllocBox bx0@@11 t0@@17 h@@10)) (Requires1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@10 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@17 t1@@14) h@@10))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@14)) bx@@14) ($Is HandleTypeType ($Unbox HandleTypeType bx@@14) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@14 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@15)) bx@@15) ($Is HandleTypeType ($Unbox HandleTypeType bx@@15) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@15 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@16)) bx@@16) ($Is HandleTypeType ($Unbox HandleTypeType bx@@16) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@16 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@9 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@9 $f))  (=> (and (or (not (= $o@@9 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@9) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |898|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@9 $f))
)))
(assert (forall ((_module.Cont$T@@7 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Cont.Cont| |a#2#0#0@@0|) (Tclass._module.Cont _module.Cont$T@@7)) ($Is HandleTypeType |a#2#0#0@@0| (Tclass._System.___hTotalFunc1 _module.Cont$T@@7 TInt)))
 :qid |unknown.0:0|
 :skolemid |656|
 :pattern ( ($Is DatatypeTypeType (|#_module.Cont.Cont| |a#2#0#0@@0|) (Tclass._module.Cont _module.Cont$T@@7)))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((t0@@18 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@18) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@18 t1@@15)))) (|Set#Equal| (Reads1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@18 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@18 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((bx@@17 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@17 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@17)) bx@@17) ($Is SetType ($Unbox SetType bx@@17) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@17 (TSet t@@7)))
)))
(assert (forall ((bx@@18 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@18 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@18)) bx@@18) ($Is SeqType ($Unbox SeqType bx@@18) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@18 (TSeq t@@8)))
)))
(assert (forall ((_module.Cont$T@@8 T@U) (bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 (Tclass._module.Cont _module.Cont$T@@8)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@19)) bx@@19) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@19) (Tclass._module.Cont _module.Cont$T@@8))))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($IsBox bx@@19 (Tclass._module.Cont _module.Cont$T@@8)))
)))
(assert (forall ((d@@2 T@U) (_module.Cont$T@@9 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.Cont.Cont_q d@@2) ($IsAlloc DatatypeTypeType d@@2 (Tclass._module.Cont _module.Cont$T@@9) $h@@11))) ($IsAlloc HandleTypeType (_module.Cont.z d@@2) (Tclass._System.___hTotalFunc1 _module.Cont$T@@9 TInt) $h@@11))
 :qid |unknown.0:0|
 :skolemid |658|
 :pattern ( ($IsAlloc HandleTypeType (_module.Cont.z d@@2) (Tclass._System.___hTotalFunc1 _module.Cont$T@@9 TInt) $h@@11))
)))
(assert (forall (($o@@10 T@U) ) (!  (=> ($Is refType $o@@10 Tclass._module.Int?) ($Is refType $o@@10 Tclass._module.X?))
 :qid |unknown.0:0|
 :skolemid |896|
 :pattern ( ($Is refType $o@@10 Tclass._module.Int?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.Int?) ($IsBox bx@@20 Tclass._module.X?))
 :qid |unknown.0:0|
 :skolemid |894|
 :pattern ( ($IsBox bx@@20 Tclass._module.Int?))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Int) Tagclass._module.Int))
(assert (= (TagFamily Tclass._module.Int) tytagFamily$Int))
(assert (= (Tag Tclass._module.X) Tagclass._module.X))
(assert (= (TagFamily Tclass._module.X) tytagFamily$X))
(assert (= (Tag Tclass._module.X?) Tagclass._module.X?))
(assert (= (TagFamily Tclass._module.X?) tytagFamily$X))
(assert (= (Tag Tclass._module.Int?) Tagclass._module.Int?))
(assert (= (TagFamily Tclass._module.Int?) tytagFamily$Int))
(assert (forall ((s@@1 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@1) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@1))
)))
(assert (forall (($o@@11 T@U) ) (! (= ($Is refType $o@@11 Tclass._module.X?)  (or (= $o@@11 null) (implements$_module.X (dtype $o@@11))))
 :qid |unknown.0:0|
 :skolemid |882|
 :pattern ( ($Is refType $o@@11 Tclass._module.X?))
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
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.Cont.Cont| (Lit HandleTypeType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.Cont.Cont| |a#3#0#0|)))
 :qid |Variancedfy.33:26|
 :skolemid |659|
 :pattern ( (|#_module.Cont.Cont| (Lit HandleTypeType |a#3#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((h@@11 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@11)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@11))
)))
(assert (forall ((v@@6 T@U) (t0@@19 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@19)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@0) t0@@19))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@19)))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#heap#0@@0| T@U) (|$l#0#_v3#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#3| |l#0@@3|) |$l#0#heap#0@@0| |$l#0#_v3#0@@0|) |l#0@@3|)
 :qid |unknown.0:0|
 :skolemid |899|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#3| |l#0@@3|) |$l#0#heap#0@@0| |$l#0#_v3#0@@0|))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#_v3#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#6| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#_v3#0@@1|) |l#0@@4|)
 :qid |Variancedfy.128:26|
 :skolemid |902|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#6| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#_v3#0@@1|))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@7 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_v3#0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |lambdaResult#0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |_v4#0@0| () T@U)
(declare-fun |$lambdaHeap#1@0| () T@U)
(declare-fun |$_Frame#l1@0| () T@U)
(declare-fun |lambdaResult#1| () Int)
(declare-fun |s#0@0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |call4formal@r#0| () T@U)
(declare-fun call0formal@_module.Cont$T () T@U)
(declare-fun $Heap () T@U)
(declare-fun call0formal@_module.Cont$T@0 () T@U)
(declare-fun |call2formal@x#0@0| () T@U)
(declare-fun call1formal@this@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call4formal@r#0@0| () T@U)
(declare-fun |$rhs##0@0| () T@U)
(declare-fun call0formal@_module.Cont$T@0@@0 () T@U)
(declare-fun |call2formal@x#0@0@@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |##x#0@0| () Int)
(declare-fun |_module.Cont.C#canCall| (T@U T@U Int) Bool)
(declare-fun |##x#1@0| () T@U)
(declare-fun |_module.Cont.B#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Cont.A#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Cont.sA#canCall| (T@U T@U) Bool)
(declare-fun |a#0@0| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun |defass#i#0| () Bool)
(declare-fun |i#0| () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |defass#t#0| () Bool)
(declare-fun |t#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Contravariant)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon3_correct true))
(let ((anon10_Else_correct  (=> (and (not (and ($Is refType |_v3#0@0| Tclass._module.X) ($IsAlloc refType |_v3#0@0| Tclass._module.X |$lambdaHeap#0@0|))) (= (ControlFlow 0 17) 15)) anon3_correct)))
(let ((anon10_Then_correct  (=> (and ($Is refType |_v3#0@0| Tclass._module.X) ($IsAlloc refType |_v3#0@0| Tclass._module.X |$lambdaHeap#0@0|)) (=> (and (and (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false)) (= |lambdaResult#0| (LitInt 0))) (and ($Is intType (int_2_U |lambdaResult#0|) TInt) (= (ControlFlow 0 16) 15))) anon3_correct))))
(let ((anon9_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@0 |$lambdaHeap#0@0|) ($HeapSucc $Heap@0 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 18) 16) anon10_Then_correct) (=> (= (ControlFlow 0 18) 17) anon10_Else_correct)))))
(let ((anon7_correct true))
(let ((anon12_Else_correct  (=> (and (not (and ($Is refType |_v4#0@0| Tclass._module.X) ($IsAlloc refType |_v4#0@0| Tclass._module.X |$lambdaHeap#1@0|))) (= (ControlFlow 0 10) 8)) anon7_correct)))
(let ((anon12_Then_correct  (=> (and ($Is refType |_v4#0@0| Tclass._module.X) ($IsAlloc refType |_v4#0@0| Tclass._module.X |$lambdaHeap#1@0|)) (=> (and (and (= |$_Frame#l1@0| (|lambda#0| null |$lambdaHeap#1@0| alloc false)) (= |lambdaResult#1| (LitInt 1))) (and ($Is intType (int_2_U |lambdaResult#1|) TInt) (= (ControlFlow 0 9) 8))) anon7_correct))))
(let ((anon11_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1@0|) (or (= $Heap@0 |$lambdaHeap#1@0|) ($HeapSucc $Heap@0 |$lambdaHeap#1@0|))) (and (=> (= (ControlFlow 0 11) 9) anon12_Then_correct) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (= |s#0@0| (Lit DatatypeTypeType (|#_module.Cont.Cont| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#7| (Handle1 (|lambda#3| ($Box intType (int_2_U (LitInt 1)))) (|lambda#4| Tclass._module.X) (|lambda#6| (SetRef_to_SetBox (|lambda#5| false))))) ($LS $LZ)))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (=> (and ($IsBox |call4formal@r#0| call0formal@_module.Cont$T) ($IsAllocBox |call4formal@r#0| call0formal@_module.Cont$T $Heap)) (=> (and (and (= call0formal@_module.Cont$T@0 Tclass._module.X) (= |call2formal@x#0@0| ($Box refType call1formal@this@0))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (=> (and (and (and ($IsBox |call4formal@r#0@0| call0formal@_module.Cont$T@0) ($IsAllocBox |call4formal@r#0@0| call0formal@_module.Cont$T@0 $Heap@1)) (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@12) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@12) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@12)))
 :qid |Variancedfy.45:12|
 :skolemid |702|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@12))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |$rhs##0@0| ($Unbox refType |call4formal@r#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) true) (=> (and (= call0formal@_module.Cont$T@0@@0 Tclass._module.X) (= |call2formal@x#0@0@@0| ($Box refType |$rhs##0@0|))) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@13) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@13) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@13)))
 :qid |Variancedfy.44:12|
 :skolemid |699|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@13))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (=> ($IsAllocBox ($Box DatatypeTypeType |s#0@0|) (Tclass._module.Cont Tclass._module.X) $Heap@2) (=> (and (= |##x#0@0| (_module.Cont.x Tclass._module.X |s#0@0|)) ($IsAlloc intType (int_2_U |##x#0@0|) TInt $Heap@2)) (=> (and (and (and (|_module.Cont.C#canCall| Tclass._module.X |s#0@0| (_module.Cont.x Tclass._module.X |s#0@0|)) (|_module.Cont.C#canCall| Tclass._module.X |s#0@0| (_module.Cont.x Tclass._module.X |s#0@0|))) (and ($IsAllocBox ($Box DatatypeTypeType |s#0@0|) (Tclass._module.Cont Tclass._module.X) $Heap@2) (= |##x#1@0| (_module.Cont.y Tclass._module.X |s#0@0|)))) (and (and ($IsAlloc SeqType |##x#1@0| (TSeq Tclass._module.X) $Heap@2) (|_module.Cont.B#canCall| Tclass._module.X |s#0@0| (_module.Cont.y Tclass._module.X |s#0@0|))) (and (|_module.Cont.B#canCall| Tclass._module.X |s#0@0| (_module.Cont.y Tclass._module.X |s#0@0|)) ($IsAllocBox ($Box DatatypeTypeType |s#0@0|) (Tclass._module.Cont Tclass._module.X) $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (=> ($IsAlloc refType |$rhs##0@0| Tclass._module.X $Heap@2) (=> (and (|_module.Cont.A#canCall| Tclass._module.X |s#0@0| ($Box refType |$rhs##0@0|)) (|_module.Cont.A#canCall| Tclass._module.X |s#0@0| ($Box refType |$rhs##0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> ($IsAlloc refType |$rhs##0@0| Tclass._module.X $Heap@2) (=> (and (and (|_module.Cont.sA#canCall| Tclass._module.X ($Box refType |$rhs##0@0|)) (|_module.Cont.sA#canCall| Tclass._module.X ($Box refType |$rhs##0@0|))) (and ($IsAllocBox ($Box DatatypeTypeType |s#0@0|) (Tclass._module.Cont Tclass._module.X) $Heap@2) (= (ControlFlow 0 2) (- 0 1)))) true))))))))))))))))))))
(let ((anon9_Else_correct  (=> (= |a#0@0| (Lit DatatypeTypeType (|#_module.Cont.Cont| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#7| (Handle1 (|lambda#3| ($Box intType (int_2_U (LitInt 0)))) (|lambda#4| Tclass._module.X) (|lambda#6| (SetRef_to_SetBox (|lambda#5| false))))) ($LS $LZ)))))) (=> (and (and ($Is DatatypeTypeType |b#0@0| (Tclass._module.Cont Tclass._module.Int)) ($IsAlloc DatatypeTypeType |b#0@0| (Tclass._module.Cont Tclass._module.Int) $Heap@0)) (_module.Cont.Cont_q |a#0@0|)) (and (=> (= (ControlFlow 0 12) (- 0 14)) true) (=> (and (_module.Cont.Cont_q |a#0@0|) (_module.Cont.Cont_q |a#0@0|)) (and (=> (= (ControlFlow 0 12) (- 0 13)) true) (=> (_module.Cont.Cont_q |a#0@0|) (and (=> (= (ControlFlow 0 12) 11) anon11_Then_correct) (=> (= (ControlFlow 0 12) 2) anon11_Else_correct))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass._module.Int) ($IsAlloc refType call1formal@this Tclass._module.Int $Heap))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass._module.Int) ($IsAlloc refType call1formal@this@0 Tclass._module.Int $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap call1formal@this@0) alloc))))) (and (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@14) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@14) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@14)))
 :qid |Variancedfy.96:15|
 :skolemid |890|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@14))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 19) 18) anon9_Then_correct) (=> (= (ControlFlow 0 19) 12) anon9_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (=> |defass#i#0| (and ($Is refType |i#0| Tclass._module.Int) ($IsAlloc refType |i#0| Tclass._module.Int $Heap))) true)) (=> (and (and (and (and ($Is DatatypeTypeType |a#0| (Tclass._module.Cont Tclass._module.X)) ($IsAlloc DatatypeTypeType |a#0| (Tclass._module.Cont Tclass._module.X) $Heap)) true) (and (and ($Is DatatypeTypeType |b#0| (Tclass._module.Cont Tclass._module.Int)) ($IsAlloc DatatypeTypeType |b#0| (Tclass._module.Cont Tclass._module.Int) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |s#0| (Tclass._module.Cont Tclass._module.X)) ($IsAlloc DatatypeTypeType |s#0| (Tclass._module.Cont Tclass._module.X) $Heap)) true) (and (and (=> |defass#t#0| (and ($Is refType |t#0| Tclass._module.X) ($IsAlloc refType |t#0| Tclass._module.X $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 20) 19))))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
