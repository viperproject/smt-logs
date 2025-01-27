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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Int () T@U)
(declare-fun Tagclass._module.X () T@U)
(declare-fun Tagclass._module.Non () T@U)
(declare-fun |##_module.Non.Non| () T@U)
(declare-fun Tagclass._module.X? () T@U)
(declare-fun Tagclass._module.Int? () T@U)
(declare-fun tytagFamily$Int () T@U)
(declare-fun tytagFamily$X () T@U)
(declare-fun tytagFamily$Non () T@U)
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
(declare-fun implements$_module.X (T@U) Bool)
(declare-fun Tclass._module.Int? () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun _module.Non.Non_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Non (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.X? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.X () T@U)
(declare-fun Tclass._module.Int () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Non.Non| (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Non.x (T@U T@U) Int)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.Non.y (T@U T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Non_0 (T@U) T@U)
(declare-fun _module.Non._h0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSeq alloc Tagclass._module.Int Tagclass._module.X Tagclass._module.Non |##_module.Non.Non| Tagclass._module.X? Tagclass._module.Int? tytagFamily$Int tytagFamily$X tytagFamily$Non)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (implements$_module.X Tclass._module.Int?))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Non$T T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._module.Non _module.Non$T)) (_module.Non.Non_q d))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( (_module.Non.Non_q d) ($Is DatatypeTypeType d (Tclass._module.Non _module.Non$T)))
)))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Int?)  (or (= $o null) (= (dtype $o) Tclass._module.Int?)))
 :qid |unknown.0:0|
 :skolemid |887|
 :pattern ( ($Is refType $o Tclass._module.Int?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Int? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.X? $h))
 :qid |unknown.0:0|
 :skolemid |895|
 :pattern ( ($IsAllocBox bx Tclass._module.Int? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.X $h@@0) ($IsAlloc refType |c#0| Tclass._module.X? $h@@0))
 :qid |unknown.0:0|
 :skolemid |885|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.X $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.X? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Int $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Int? $h@@1))
 :qid |unknown.0:0|
 :skolemid |893|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Int $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Int? $h@@1))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.X? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |883|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.X? $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Int? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |888|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Int? $h@@3))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Non.Non_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Non.Non|))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( (_module.Non.Non_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Non.Non_q d@@1) (exists ((|a#1#0#0| T@U) ) (! (= d@@1 (|#_module.Non.Non| |a#1#0#0|))
 :qid |Variancedfy.18:23|
 :skolemid |601|
)))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( (_module.Non.Non_q d@@1))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Non$T@@0 T@U) ($h@@4 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType $o@@2 (Tclass._module.Non _module.Non$T@@0))) ($IsAlloc DatatypeTypeType $o@@2 (Tclass._module.Non _module.Non$T@@0) $h@@4)) ($IsAlloc intType (int_2_U (_module.Non.x _module.Non$T@@0 $o@@2)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( (_module.Non.x _module.Non$T@@0 $o@@2) ($IsAlloc DatatypeTypeType $o@@2 (Tclass._module.Non _module.Non$T@@0) $h@@4))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Non$T@@1 T@U) ($o@@3 T@U) ) (!  (=> ($Is DatatypeTypeType $o@@3 (Tclass._module.Non _module.Non$T@@1)) ($Is intType (int_2_U (_module.Non.x _module.Non$T@@1 $o@@3)) TInt))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( (_module.Non.x _module.Non$T@@1 $o@@3))
))))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_module.Non$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Non _module.Non$T@@2)) Tagclass._module.Non) (= (TagFamily (Tclass._module.Non _module.Non$T@@2)) tytagFamily$Non))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( (Tclass._module.Non _module.Non$T@@2))
)))
(assert (= (Ctor SeqType) 8))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Non$T@@3 T@U) ($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType $o@@4 (Tclass._module.Non _module.Non$T@@3))) ($IsAlloc DatatypeTypeType $o@@4 (Tclass._module.Non _module.Non$T@@3) $h@@5)) ($IsAlloc SeqType (_module.Non.y _module.Non$T@@3 $o@@4) (TSeq _module.Non$T@@3) $h@@5))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( (_module.Non.y _module.Non$T@@3 $o@@4) ($IsAlloc DatatypeTypeType $o@@4 (Tclass._module.Non _module.Non$T@@3) $h@@5))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Int) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Int)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@1 Tclass._module.Int))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.X) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.X)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@2 Tclass._module.X))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.X?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.X?)))
 :qid |unknown.0:0|
 :skolemid |881|
 :pattern ( ($IsBox bx@@3 Tclass._module.X?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Int?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Int?)))
 :qid |unknown.0:0|
 :skolemid |886|
 :pattern ( ($IsBox bx@@4 Tclass._module.Int?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.X)  (and ($Is refType |c#0@@1| Tclass._module.X?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |884|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.X))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.X?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Int)  (and ($Is refType |c#0@@2| Tclass._module.Int?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |892|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Int))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Int?))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Non$T@@4 T@U) ($o@@5 T@U) ) (!  (=> ($Is DatatypeTypeType $o@@5 (Tclass._module.Non _module.Non$T@@4)) ($Is SeqType (_module.Non.y _module.Non$T@@4 $o@@5) (TSeq _module.Non$T@@4)))
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( (_module.Non.y _module.Non$T@@4 $o@@5))
))))
(assert (forall ((_module.Non$T@@5 T@U) (|a#2#0#0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_module.Non.Non| |a#2#0#0|) (Tclass._module.Non _module.Non$T@@5) $h@@6) ($IsAllocBox |a#2#0#0| _module.Non$T@@5 $h@@6)))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Non.Non| |a#2#0#0|) (Tclass._module.Non _module.Non$T@@5) $h@@6))
)))
(assert (forall (($o@@6 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@6 Tclass._module.Int? $heap) ($IsAlloc refType $o@@6 Tclass._module.X? $heap))
 :qid |unknown.0:0|
 :skolemid |897|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Int? $heap))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TBool) (and (= ($Box boolType ($Unbox boolType bx@@6)) bx@@6) ($Is boolType ($Unbox boolType bx@@6) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@6 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@2 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((_module.Non$T@@6 T@U) ) (! (= (Tclass._module.Non_0 (Tclass._module.Non _module.Non$T@@6)) _module.Non$T@@6)
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( (Tclass._module.Non _module.Non$T@@6))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Non.Non| |a#0#0#0|)) |##_module.Non.Non|)
 :qid |Variancedfy.18:23|
 :skolemid |599|
 :pattern ( (|#_module.Non.Non| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.Non._h0 (|#_module.Non.Non| |a#4#0#0|)) |a#4#0#0|)
 :qid |Variancedfy.18:23|
 :skolemid |607|
 :pattern ( (|#_module.Non.Non| |a#4#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall ((_module.Non$T@@7 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Non.Non| |a#2#0#0@@0|) (Tclass._module.Non _module.Non$T@@7)) ($IsBox |a#2#0#0@@0| _module.Non$T@@7))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( ($Is DatatypeTypeType (|#_module.Non.Non| |a#2#0#0@@0|) (Tclass._module.Non _module.Non$T@@7)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_module.Non.Non| |a#5#0#0|)))
 :qid |Variancedfy.18:23|
 :skolemid |608|
 :pattern ( (|#_module.Non.Non| |a#5#0#0|))
)))
(assert (forall ((d@@2 T@U) (_module.Non$T@@8 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Non.Non_q d@@2) ($IsAlloc DatatypeTypeType d@@2 (Tclass._module.Non _module.Non$T@@8) $h@@7))) ($IsAllocBox (_module.Non._h0 d@@2) _module.Non$T@@8 $h@@7))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsAllocBox (_module.Non._h0 d@@2) _module.Non$T@@8 $h@@7))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |898|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall ((d@@3 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@3)) (DtRank d@@3))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@3)))
)))
(assert (forall ((bx@@7 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@7 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@7 (TSeq t@@5)))
)))
(assert (forall ((_module.Non$T@@9 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.Non _module.Non$T@@9)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass._module.Non _module.Non$T@@9))))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($IsBox bx@@8 (Tclass._module.Non _module.Non$T@@9)))
)))
(assert (forall (($o@@8 T@U) ) (!  (=> ($Is refType $o@@8 Tclass._module.Int?) ($Is refType $o@@8 Tclass._module.X?))
 :qid |unknown.0:0|
 :skolemid |896|
 :pattern ( ($Is refType $o@@8 Tclass._module.Int?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Int?) ($IsBox bx@@9 Tclass._module.X?))
 :qid |unknown.0:0|
 :skolemid |894|
 :pattern ( ($IsBox bx@@9 Tclass._module.Int?))
)))
(assert (= (Tag Tclass._module.Int) Tagclass._module.Int))
(assert (= (TagFamily Tclass._module.Int) tytagFamily$Int))
(assert (= (Tag Tclass._module.X) Tagclass._module.X))
(assert (= (TagFamily Tclass._module.X) tytagFamily$X))
(assert (= (Tag Tclass._module.X?) Tagclass._module.X?))
(assert (= (TagFamily Tclass._module.X?) tytagFamily$X))
(assert (= (Tag Tclass._module.Int?) Tagclass._module.Int?))
(assert (= (TagFamily Tclass._module.Int?) tytagFamily$Int))
(assert (forall (($o@@9 T@U) ) (! (= ($Is refType $o@@9 Tclass._module.X?)  (or (= $o@@9 null) (implements$_module.X (dtype $o@@9))))
 :qid |unknown.0:0|
 :skolemid |882|
 :pattern ( ($Is refType $o@@9 Tclass._module.X?))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.Non.Non| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.Non.Non| |a#3#0#0|)))
 :qid |Variancedfy.18:23|
 :skolemid |606|
 :pattern ( (|#_module.Non.Non| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@5))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@2)))
)))
(assert (forall ((s@@1 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call1formal@this@0 () T@U)
(declare-fun call1formal@this@@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call1formal@this@0@@0 () T@U)
(declare-fun |a#0@0| () T@U)
(declare-fun |defass#b#0| () Bool)
(declare-fun |b#0@0| () T@U)
(declare-fun |defass#i#0| () Bool)
(declare-fun |i#0| () T@U)
(declare-fun |defass#j#0| () Bool)
(declare-fun |j#0| () T@U)
(declare-fun |defass#a#0| () Bool)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |s#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Nonvariant)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass._module.Int) ($IsAlloc refType call1formal@this Tclass._module.Int $Heap))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass._module.Int) ($IsAlloc refType call1formal@this@0 Tclass._module.Int $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call1formal@this@0) alloc))))) (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@10)))
 :qid |Variancedfy.96:15|
 :skolemid |890|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10))
)) ($HeapSucc $Heap $Heap@0))) (and (and (or (not (= call1formal@this@@0 null)) (not true)) (and ($Is refType call1formal@this@@0 Tclass._module.Int) ($IsAlloc refType call1formal@this@@0 Tclass._module.Int $Heap))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (and (and (or (not (= call1formal@this@0@@0 null)) (not true)) (and ($Is refType call1formal@this@0@@0 Tclass._module.Int) ($IsAlloc refType call1formal@this@0@@0 Tclass._module.Int $Heap@1))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0@@0) alloc))))) (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11)))
 :qid |Variancedfy.96:15|
 :skolemid |890|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@11))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (=> (and (= |a#0@0| (|#_module.Non.Non| ($Box refType call1formal@this@0))) (=> |defass#b#0| (and ($Is DatatypeTypeType |b#0@0| (Tclass._module.Non Tclass._module.Int)) ($IsAlloc DatatypeTypeType |b#0@0| (Tclass._module.Non Tclass._module.Int) $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) true))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (=> |defass#i#0| (and ($Is refType |i#0| Tclass._module.Int) ($IsAlloc refType |i#0| Tclass._module.Int $Heap))) true) (and (=> |defass#j#0| (and ($Is refType |j#0| Tclass._module.Int) ($IsAlloc refType |j#0| Tclass._module.Int $Heap))) true)) (and (and (=> |defass#a#0| (and ($Is DatatypeTypeType |a#0| (Tclass._module.Non Tclass._module.Int)) ($IsAlloc DatatypeTypeType |a#0| (Tclass._module.Non Tclass._module.Int) $Heap))) true) (and (=> |defass#b#0| (and ($Is DatatypeTypeType |b#0| (Tclass._module.Non Tclass._module.Int)) ($IsAlloc DatatypeTypeType |b#0| (Tclass._module.Non Tclass._module.Int) $Heap))) true))) (and (and (and ($Is DatatypeTypeType |s#0| (Tclass._module.Non TBool)) ($IsAlloc DatatypeTypeType |s#0| (Tclass._module.Non TBool) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 6) 2)))) anon0_correct))))
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
