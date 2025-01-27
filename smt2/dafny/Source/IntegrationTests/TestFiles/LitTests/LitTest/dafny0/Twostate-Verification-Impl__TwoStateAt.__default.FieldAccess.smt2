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
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun |##_System._tuple#0._#Make0| () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun Tagclass.TwoStateAt.Cell () T@U)
(declare-fun Tagclass.TwoStateAt.Cell? () T@U)
(declare-fun Tagclass.TwoStateAt.DT () T@U)
(declare-fun Tagclass.TwoStateAt.NT () T@U)
(declare-fun class.TwoStateAt.Cell? () T@U)
(declare-fun |##TwoStateAt.DT.Green| () T@U)
(declare-fun |##TwoStateAt.DT.Blue| () T@U)
(declare-fun |tytagFamily$_tuple#0| () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun tytagFamily$DT () T@U)
(declare-fun tytagFamily$NT () T@U)
(declare-fun field$data () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun TwoStateAt.NT.value (Int) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.TwoStateAt.NT () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |$IsA#_System.Tuple0| (T@U) Bool)
(declare-fun _System.Tuple0.___hMake0_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_System._tuple#0._#Make0| () T@U)
(declare-fun |#TwoStateAt.DT.Green| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.TwoStateAt.Cell? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.TwoStateAt.Cell () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple0 () T@U)
(declare-fun Tclass.TwoStateAt.DT (T@U) T@U)
(declare-fun TwoStateAt.Cell.data () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TwoStateAt.DT.Green_q (T@U) Bool)
(declare-fun TwoStateAt.DT.Blue_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TwoStateAt.DT.sc (T@U) Int)
(declare-fun TwoStateAt.OT.sc (T@U) Int)
(declare-fun TwoStateAt.OT.value (T@U T@U) Int)
(declare-fun TwoStateAt.NT.sc () Int)
(declare-fun |#TwoStateAt.DT.Blue| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass.TwoStateAt.OT (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#TwoStateAt.DT| (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass.TwoStateAt.DT_0 (T@U) T@U)
(declare-fun TwoStateAt.DT.value (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName |##_System._tuple#0._#Make0| Tagclass._System.Tuple0 Tagclass.TwoStateAt.Cell Tagclass.TwoStateAt.Cell? Tagclass.TwoStateAt.DT Tagclass.TwoStateAt.NT class.TwoStateAt.Cell? |##TwoStateAt.DT.Green| |##TwoStateAt.DT.Blue| |tytagFamily$_tuple#0| tytagFamily$Cell tytagFamily$DT tytagFamily$NT field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h T@U) ($o Int) ) (!  (=> (and (and ($IsGoodHeap $h) ($Is intType (int_2_U $o) Tclass.TwoStateAt.NT)) ($IsAlloc intType (int_2_U $o) Tclass.TwoStateAt.NT $h)) ($IsAlloc intType (int_2_U (TwoStateAt.NT.value $o)) TInt $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |854|
 :pattern ( (TwoStateAt.NT.value $o) ($IsAlloc intType (int_2_U $o) Tclass.TwoStateAt.NT $h))
))))
(assert (forall ((|x#0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0| Tclass.TwoStateAt.NT $h@@0)
 :qid |unknown.0:0|
 :skolemid |852|
 :pattern ( ($IsAlloc intType |x#0| Tclass.TwoStateAt.NT $h@@0))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_System.Tuple0| d) (_System.Tuple0.___hMake0_q d))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (|$IsA#_System.Tuple0| d))
)))
(assert (= (DatatypeCtorId |#_System._tuple#0._#Make0|) |##_System._tuple#0._#Make0|))
(assert (= (DatatypeCtorId |#TwoStateAt.DT.Green|) |##TwoStateAt.DT.Green|))
(assert (= (Ctor refType) 3))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.TwoStateAt.Cell?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.TwoStateAt.Cell?)))
 :qid |unknown.0:0|
 :skolemid |796|
 :pattern ( ($Is refType $o@@0 Tclass.TwoStateAt.Cell?))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.TwoStateAt.Cell $h@@1) ($IsAlloc refType |c#0| Tclass.TwoStateAt.Cell? $h@@1))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( ($IsAlloc refType |c#0| Tclass.TwoStateAt.Cell $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass.TwoStateAt.Cell? $h@@1))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass._System.Tuple0) (_System.Tuple0.___hMake0_q d@@0))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (_System.Tuple0.___hMake0_q d@@0) ($Is DatatypeTypeType d@@0 Tclass._System.Tuple0))
)))
(assert (forall ((TwoStateAt.DT$X T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#TwoStateAt.DT.Green| (Tclass.TwoStateAt.DT TwoStateAt.DT$X) $h@@2))
 :qid |unknown.0:0|
 :skolemid |821|
 :pattern ( ($IsAlloc DatatypeTypeType |#TwoStateAt.DT.Green| (Tclass.TwoStateAt.DT TwoStateAt.DT$X) $h@@2))
)))
(assert ($Is DatatypeTypeType |#_System._tuple#0._#Make0| Tclass._System.Tuple0))
(assert (= (FDim TwoStateAt.Cell.data) 0))
(assert (= (FieldOfDecl class.TwoStateAt.Cell? field$data) TwoStateAt.Cell.data))
(assert  (not ($IsGhostField TwoStateAt.Cell.data)))
(assert (forall ((TwoStateAt.DT$X@@0 T@U) ) (! ($Is DatatypeTypeType |#TwoStateAt.DT.Green| (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@0))
 :qid |unknown.0:0|
 :skolemid |820|
 :pattern ( ($Is DatatypeTypeType |#TwoStateAt.DT.Green| (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@0)))
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
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.TwoStateAt.Cell? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |797|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.TwoStateAt.Cell? $h@@3))
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
(assert (forall ((d@@1 T@U) ) (! (= (_System.Tuple0.___hMake0_q d@@1) (= (DatatypeCtorId d@@1) |##_System._tuple#0._#Make0|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (_System.Tuple0.___hMake0_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (TwoStateAt.DT.Green_q d@@2) (= (DatatypeCtorId d@@2) |##TwoStateAt.DT.Green|))
 :qid |unknown.0:0|
 :skolemid |818|
 :pattern ( (TwoStateAt.DT.Green_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (TwoStateAt.DT.Blue_q d@@3) (= (DatatypeCtorId d@@3) |##TwoStateAt.DT.Blue|))
 :qid |unknown.0:0|
 :skolemid |823|
 :pattern ( (TwoStateAt.DT.Blue_q d@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((TwoStateAt.DT$X@@1 T@U) ) (! ($Is intType (int_2_U (TwoStateAt.DT.sc TwoStateAt.DT$X@@1)) TInt)
 :qid |unknown.0:0|
 :skolemid |837|
 :pattern ( (TwoStateAt.DT.sc TwoStateAt.DT$X@@1))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((TwoStateAt.OT$X T@U) ) (! ($Is intType (int_2_U (TwoStateAt.OT.sc TwoStateAt.OT$X)) TInt)
 :qid |unknown.0:0|
 :skolemid |870|
 :pattern ( (TwoStateAt.OT.sc TwoStateAt.OT$X))
))))
(assert (forall ((TwoStateAt.OT$X@@0 T@U) (this T@U) ) (! (= (TwoStateAt.OT.value TwoStateAt.OT$X@@0 this) (LitInt 18))
 :qid |unknown.0:0|
 :skolemid |793|
 :pattern ( (TwoStateAt.OT.value TwoStateAt.OT$X@@0 this))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((TwoStateAt.DT$X@@2 T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) ($IsAlloc intType (int_2_U (TwoStateAt.DT.sc TwoStateAt.DT$X@@2)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |838|
 :pattern ( ($IsAlloc intType (int_2_U (TwoStateAt.DT.sc TwoStateAt.DT$X@@2)) TInt $h@@4))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((TwoStateAt.OT$X@@1 T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) ($IsAlloc intType (int_2_U (TwoStateAt.OT.sc TwoStateAt.OT$X@@1)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |871|
 :pattern ( ($IsAlloc intType (int_2_U (TwoStateAt.OT.sc TwoStateAt.OT$X@@1)) TInt $h@@5))
))))
(assert (forall ((this@@0 Int) ) (! (= (TwoStateAt.NT.value this@@0) (LitInt 18))
 :qid |TwostateVerificationdfy.502:11|
 :skolemid |792|
 :pattern ( (TwoStateAt.NT.value this@@0))
)))
(assert (forall ((TwoStateAt.DT$X@@3 T@U) ) (! (= (TwoStateAt.DT.sc TwoStateAt.DT$X@@3) (LitInt 18))
 :qid |unknown.0:0|
 :skolemid |794|
 :pattern ( (TwoStateAt.DT.sc TwoStateAt.DT$X@@3))
)))
(assert (forall ((TwoStateAt.OT$X@@2 T@U) ) (! (= (TwoStateAt.OT.sc TwoStateAt.OT$X@@2) (LitInt 18))
 :qid |unknown.0:0|
 :skolemid |795|
 :pattern ( (TwoStateAt.OT.sc TwoStateAt.OT$X@@2))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) ($IsAlloc intType (int_2_U TwoStateAt.NT.sc) TInt $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |855|
 :pattern ( ($IsAlloc intType (int_2_U TwoStateAt.NT.sc) TInt $h@@6))
))))
(assert (forall ((d@@4 T@U) ) (!  (=> (_System.Tuple0.___hMake0_q d@@4) (= d@@4 |#_System._tuple#0._#Make0|))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (_System.Tuple0.___hMake0_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (TwoStateAt.DT.Green_q d@@5) (= d@@5 |#TwoStateAt.DT.Green|))
 :qid |unknown.0:0|
 :skolemid |819|
 :pattern ( (TwoStateAt.DT.Green_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (TwoStateAt.DT.Blue_q d@@6) (exists ((|a#5#0#0| T@U) ) (! (= d@@6 (|#TwoStateAt.DT.Blue| |a#5#0#0|))
 :qid |TwostateVerificationdfy.477:33|
 :skolemid |824|
)))
 :qid |unknown.0:0|
 :skolemid |825|
 :pattern ( (TwoStateAt.DT.Blue_q d@@6))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((TwoStateAt.OT$X@@3 T@U) ($h@@7 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) ($IsBox $o@@2 (Tclass.TwoStateAt.OT TwoStateAt.OT$X@@3))) ($IsAllocBox $o@@2 (Tclass.TwoStateAt.OT TwoStateAt.OT$X@@3) $h@@7)) ($IsAlloc intType (int_2_U (TwoStateAt.OT.value TwoStateAt.OT$X@@3 $o@@2)) TInt $h@@7))
 :qid |unknown.0:0|
 :skolemid |869|
 :pattern ( (TwoStateAt.OT.value TwoStateAt.OT$X@@3 $o@@2) ($IsAllocBox $o@@2 (Tclass.TwoStateAt.OT TwoStateAt.OT$X@@3) $h@@7))
))))
(assert ($IsGhostField alloc))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((TwoStateAt.OT$X@@4 T@U) ($o@@3 T@U) ) (!  (=> ($IsBox $o@@3 (Tclass.TwoStateAt.OT TwoStateAt.OT$X@@4)) ($Is intType (int_2_U (TwoStateAt.OT.value TwoStateAt.OT$X@@4 $o@@3)) TInt))
 :qid |unknown.0:0|
 :skolemid |868|
 :pattern ( (TwoStateAt.OT.value TwoStateAt.OT$X@@4 $o@@3))
))))
(assert (forall (($h@@8 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.TwoStateAt.Cell?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@4) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@4) TwoStateAt.Cell.data)) TInt $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |799|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@4) TwoStateAt.Cell.data)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((TwoStateAt.DT$X@@4 T@U) ) (!  (and (= (Tag (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@4)) Tagclass.TwoStateAt.DT) (= (TagFamily (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@4)) tytagFamily$DT))
 :qid |unknown.0:0|
 :skolemid |726|
 :pattern ( (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@4))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@5 Int) ) (!  (=> ($Is intType (int_2_U $o@@5) Tclass.TwoStateAt.NT) ($Is intType (int_2_U (TwoStateAt.NT.value $o@@5)) TInt))
 :qid |unknown.0:0|
 :skolemid |853|
 :pattern ( (TwoStateAt.NT.value $o@@5))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.Tuple0) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._System.Tuple0)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@0 Tclass._System.Tuple0))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.TwoStateAt.Cell) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass.TwoStateAt.Cell)))
 :qid |unknown.0:0|
 :skolemid |647|
 :pattern ( ($IsBox bx@@1 Tclass.TwoStateAt.Cell))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.TwoStateAt.Cell?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass.TwoStateAt.Cell?)))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( ($IsBox bx@@2 Tclass.TwoStateAt.Cell?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.TwoStateAt.NT) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass.TwoStateAt.NT)))
 :qid |unknown.0:0|
 :skolemid |747|
 :pattern ( ($IsBox bx@@3 Tclass.TwoStateAt.NT))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.TwoStateAt.Cell)  (and ($Is refType |c#0@@0| Tclass.TwoStateAt.Cell?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( ($Is refType |c#0@@0| Tclass.TwoStateAt.Cell))
 :pattern ( ($Is refType |c#0@@0| Tclass.TwoStateAt.Cell?))
)))
(assert (forall ((TwoStateAt.DT$X@@5 T@U) (|a#6#0#0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#TwoStateAt.DT.Blue| |a#6#0#0|) (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@5) $h@@9) ($IsAllocBox |a#6#0#0| TwoStateAt.DT$X@@5 $h@@9)))
 :qid |unknown.0:0|
 :skolemid |827|
 :pattern ( ($IsAlloc DatatypeTypeType (|#TwoStateAt.DT.Blue| |a#6#0#0|) (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@5) $h@@9))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (|$IsA#TwoStateAt.DT| d@@7) (or (TwoStateAt.DT.Green_q d@@7) (TwoStateAt.DT.Blue_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |832|
 :pattern ( (|$IsA#TwoStateAt.DT| d@@7))
)))
(assert (forall ((TwoStateAt.DT$X@@6 T@U) (d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@6)) (or (TwoStateAt.DT.Green_q d@@8) (TwoStateAt.DT.Blue_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |833|
 :pattern ( (TwoStateAt.DT.Blue_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@6)))
 :pattern ( (TwoStateAt.DT.Green_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@6)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is intType (int_2_U TwoStateAt.NT.sc) TInt)))
(assert (forall ((TwoStateAt.DT$X@@7 T@U) ) (! (= (Tclass.TwoStateAt.DT_0 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@7)) TwoStateAt.DT$X@@7)
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@7))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (DatatypeCtorId (|#TwoStateAt.DT.Blue| |a#4#0#0|)) |##TwoStateAt.DT.Blue|)
 :qid |TwostateVerificationdfy.477:33|
 :skolemid |822|
 :pattern ( (|#TwoStateAt.DT.Blue| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (TwoStateAt.DT.value (|#TwoStateAt.DT.Blue| |a#8#0#0|)) |a#8#0#0|)
 :qid |TwostateVerificationdfy.477:33|
 :skolemid |830|
 :pattern ( (|#TwoStateAt.DT.Blue| |a#8#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((TwoStateAt.DT$X@@8 T@U) (|a#6#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#TwoStateAt.DT.Blue| |a#6#0#0@@0|) (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@8)) ($IsBox |a#6#0#0@@0| TwoStateAt.DT$X@@8))
 :qid |unknown.0:0|
 :skolemid |826|
 :pattern ( ($Is DatatypeTypeType (|#TwoStateAt.DT.Blue| |a#6#0#0@@0|) (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@8)))
)))
(assert (= TwoStateAt.NT.sc (LitInt 18)))
(assert (forall (($h@@10 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.TwoStateAt.Cell?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@6) TwoStateAt.Cell.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |798|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@6) TwoStateAt.Cell.data)))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#TwoStateAt.DT.Blue| |a#9#0#0|)))
 :qid |TwostateVerificationdfy.477:33|
 :skolemid |831|
 :pattern ( (|#TwoStateAt.DT.Blue| |a#9#0#0|))
)))
(assert (forall ((d@@9 T@U) (TwoStateAt.DT$X@@9 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (TwoStateAt.DT.Blue_q d@@9) ($IsAlloc DatatypeTypeType d@@9 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@9) $h@@11))) ($IsAllocBox (TwoStateAt.DT.value d@@9) TwoStateAt.DT$X@@9 $h@@11))
 :qid |unknown.0:0|
 :skolemid |828|
 :pattern ( ($IsAllocBox (TwoStateAt.DT.value d@@9) TwoStateAt.DT$X@@9 $h@@11))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1820|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall ((d@@10 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@10)) (DtRank d@@10))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@10)))
)))
(assert (forall ((TwoStateAt.DT$X@@10 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@10)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@10))))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( ($IsBox bx@@5 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@10)))
)))
(assert (forall ((d@@11 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) ($Is DatatypeTypeType d@@11 Tclass._System.Tuple0)) ($IsAlloc DatatypeTypeType d@@11 Tclass._System.Tuple0 $h@@12))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 Tclass._System.Tuple0 $h@@12))
)))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (TagFamily Tclass._System.Tuple0) |tytagFamily$_tuple#0|))
(assert (= (Tag Tclass.TwoStateAt.Cell) Tagclass.TwoStateAt.Cell))
(assert (= (TagFamily Tclass.TwoStateAt.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass.TwoStateAt.Cell?) Tagclass.TwoStateAt.Cell?))
(assert (= (TagFamily Tclass.TwoStateAt.Cell?) tytagFamily$Cell))
(assert (= (Tag Tclass.TwoStateAt.NT) Tagclass.TwoStateAt.NT))
(assert (= (TagFamily Tclass.TwoStateAt.NT) tytagFamily$NT))
(assert (= |#_System._tuple#0._#Make0| (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)))
(assert (= |#TwoStateAt.DT.Green| (Lit DatatypeTypeType |#TwoStateAt.DT.Green|)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.TwoStateAt.NT)  (and (<= (LitInt 0) (U_2_int |x#0@@0|)) (< (U_2_int |x#0@@0|) 86)))
 :qid |unknown.0:0|
 :skolemid |851|
 :pattern ( ($Is intType |x#0@@0| Tclass.TwoStateAt.NT))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (|#TwoStateAt.DT.Blue| (Lit BoxType |a#7#0#0|)) (Lit DatatypeTypeType (|#TwoStateAt.DT.Blue| |a#7#0#0|)))
 :qid |TwostateVerificationdfy.477:33|
 :skolemid |829|
 :pattern ( (|#TwoStateAt.DT.Blue| (Lit BoxType |a#7#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |d0#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |f0#1_1_1_0_0@0| () T@U)
(declare-fun |f1#1_1_1_0_0@0| () Int)
(declare-fun |nt#0| () Int)
(declare-fun |ot#0| () T@U)
(declare-fun |f2#1_1_1_0_0@0| () Int)
(declare-fun |d1#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |f0#0_0@0| () T@U)
(declare-fun |f1#0_0@0| () Int)
(declare-fun |f2#0_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |x##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |r#0| () T@U)
(declare-fun |u#0| () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@1| () T@U)
(declare-fun |d1#0| () T@U)
(declare-fun |defass#f0#0_0| () Bool)
(declare-fun |f0#0_0| () T@U)
(declare-fun |defass#f3#0_0| () Bool)
(declare-fun |f3#0_0| () T@U)
(declare-fun |defass#f0#1_1_1_0_0| () Bool)
(declare-fun |f0#1_1_1_0_0| () T@U)
(declare-fun |defass#f3#1_1_1_0_0| () Bool)
(declare-fun |f3#1_1_1_0_0| () T@U)
(set-info :boogie-vc-id Impl$$TwoStateAt.__default.FieldAccess)
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
 (=> (= (ControlFlow 0 0) 24) (let ((anon18_Then_correct true))
(let ((anon17_Else_correct  (=> (= (ControlFlow 0 17) 16) anon18_Then_correct)))
(let ((anon17_Then_correct true))
(let ((anon16_Else_correct  (and (=> (= (ControlFlow 0 18) 15) anon17_Then_correct) (=> (= (ControlFlow 0 18) 17) anon17_Else_correct))))
(let ((anon16_Then_correct  (and (=> (= (ControlFlow 0 10) (- 0 14)) (TwoStateAt.DT.Blue_q |d0#0|)) (=> (TwoStateAt.DT.Blue_q |d0#0|) (and (=> (= (ControlFlow 0 10) (- 0 13)) ($IsAlloc DatatypeTypeType |d0#0| (Tclass.TwoStateAt.DT Tclass.TwoStateAt.Cell) $Heap@0)) (=> ($IsAlloc DatatypeTypeType |d0#0| (Tclass.TwoStateAt.DT Tclass.TwoStateAt.Cell) $Heap@0) (=> (and (= |f0#1_1_1_0_0@0| ($Unbox refType (TwoStateAt.DT.value |d0#0|))) (= |f1#1_1_1_0_0@0| (TwoStateAt.NT.value |nt#0|))) (and (=> (= (ControlFlow 0 10) (- 0 12)) ($IsAllocBox |ot#0| (Tclass.TwoStateAt.OT Tclass.TwoStateAt.Cell) $Heap@0)) (=> ($IsAllocBox |ot#0| (Tclass.TwoStateAt.OT Tclass.TwoStateAt.Cell) $Heap@0) (=> (= |f2#1_1_1_0_0@0| (TwoStateAt.OT.value Tclass.TwoStateAt.Cell |ot#0|)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (TwoStateAt.DT.Blue_q |d1#0@0|)) (=> (TwoStateAt.DT.Blue_q |d1#0@0|) (=> (= (ControlFlow 0 10) (- 0 9)) ($IsAlloc DatatypeTypeType |d1#0@0| (Tclass.TwoStateAt.DT Tclass.TwoStateAt.Cell) $Heap@0))))))))))))))
(let ((anon15_Else_correct  (and (=> (= (ControlFlow 0 19) 10) anon16_Then_correct) (=> (= (ControlFlow 0 19) 18) anon16_Else_correct))))
(let ((anon15_Then_correct true))
(let ((anon14_Else_correct  (and (=> (= (ControlFlow 0 20) 8) anon15_Then_correct) (=> (= (ControlFlow 0 20) 19) anon15_Else_correct))))
(let ((anon14_Then_correct true))
(let ((anon13_Else_correct  (and (=> (= (ControlFlow 0 21) 7) anon14_Then_correct) (=> (= (ControlFlow 0 21) 20) anon14_Else_correct))))
(let ((anon13_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 6)) (TwoStateAt.DT.Blue_q |d0#0|)) (=> (TwoStateAt.DT.Blue_q |d0#0|) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($IsAlloc DatatypeTypeType |d0#0| (Tclass.TwoStateAt.DT Tclass.TwoStateAt.Cell) $Heap)) (=> ($IsAlloc DatatypeTypeType |d0#0| (Tclass.TwoStateAt.DT Tclass.TwoStateAt.Cell) $Heap) (=> (and (= |f0#0_0@0| ($Unbox refType (TwoStateAt.DT.value |d0#0|))) (= |f1#0_0@0| (TwoStateAt.NT.value |nt#0|))) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($IsAllocBox |ot#0| (Tclass.TwoStateAt.OT Tclass.TwoStateAt.Cell) $Heap)) (=> ($IsAllocBox |ot#0| (Tclass.TwoStateAt.OT Tclass.TwoStateAt.Cell) $Heap) (=> (= |f2#0_0@0| (TwoStateAt.OT.value Tclass.TwoStateAt.Cell |ot#0|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (TwoStateAt.DT.Blue_q |d1#0@0|)) (=> (TwoStateAt.DT.Blue_q |d1#0@0|) (=> (= (ControlFlow 0 2) (- 0 1)) ($IsAlloc DatatypeTypeType |d1#0@0| (Tclass.TwoStateAt.DT Tclass.TwoStateAt.Cell) $Heap))))))))))))))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#3| null $Heap alloc false)) (= |x##0@0| (LitInt 333))) (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass.TwoStateAt.Cell) ($IsAlloc refType call2formal@this Tclass.TwoStateAt.Cell $Heap)))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass.TwoStateAt.Cell) ($IsAlloc refType call2formal@this@0 Tclass.TwoStateAt.Cell $Heap@0)))) (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) TwoStateAt.Cell.data))) |x##0@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call2formal@this@0) alloc))))) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8)))
 :qid |TwostateVerificationdfy.244:5|
 :skolemid |801|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8))
)) ($HeapSucc $Heap $Heap@0)))) (and (=> (= (ControlFlow 0 22) (- 0 23)) true) (=> (= |d1#0@0| (|#TwoStateAt.DT.Blue| ($Box refType call2formal@this@0))) (and (=> (= (ControlFlow 0 22) 2) anon13_Then_correct) (=> (= (ControlFlow 0 22) 21) anon13_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (and (and ($Is DatatypeTypeType |d0#0| (Tclass.TwoStateAt.DT Tclass.TwoStateAt.Cell)) ($IsAlloc DatatypeTypeType |d0#0| (Tclass.TwoStateAt.DT Tclass.TwoStateAt.Cell) $Heap)) (|$IsA#TwoStateAt.DT| |d0#0|)) (and (<= (LitInt 0) |nt#0|) (< |nt#0| 86))) (and (and ($IsBox |ot#0| (Tclass.TwoStateAt.OT Tclass.TwoStateAt.Cell)) ($IsAllocBox |ot#0| (Tclass.TwoStateAt.OT Tclass.TwoStateAt.Cell) $Heap)) (and ($Is refType |r#0| Tclass.TwoStateAt.Cell) ($IsAlloc refType |r#0| Tclass.TwoStateAt.Cell $Heap)))) (and (and (and ($Is DatatypeTypeType |u#0| Tclass._System.Tuple0) ($IsAlloc DatatypeTypeType |u#0| Tclass._System.Tuple0 $Heap)) (|$IsA#_System.Tuple0| |u#0|)) (and (=> |defass#c#0| (and ($Is refType |c#0@@1| Tclass.TwoStateAt.Cell) ($IsAlloc refType |c#0@@1| Tclass.TwoStateAt.Cell $Heap))) true))) (and (and (and (and (and ($Is DatatypeTypeType |d1#0| (Tclass.TwoStateAt.DT Tclass.TwoStateAt.Cell)) ($IsAlloc DatatypeTypeType |d1#0| (Tclass.TwoStateAt.DT Tclass.TwoStateAt.Cell) $Heap)) true) (and (=> |defass#f0#0_0| (and ($Is refType |f0#0_0| Tclass.TwoStateAt.Cell) ($IsAlloc refType |f0#0_0| Tclass.TwoStateAt.Cell $Heap))) true)) (and (and (=> |defass#f3#0_0| (and ($Is refType |f3#0_0| Tclass.TwoStateAt.Cell) ($IsAlloc refType |f3#0_0| Tclass.TwoStateAt.Cell $Heap))) true) (and (=> |defass#f0#1_1_1_0_0| (and ($Is refType |f0#1_1_1_0_0| Tclass.TwoStateAt.Cell) ($IsAlloc refType |f0#1_1_1_0_0| Tclass.TwoStateAt.Cell $Heap))) true))) (and (and (and (=> |defass#f3#1_1_1_0_0| (and ($Is refType |f3#1_1_1_0_0| Tclass.TwoStateAt.Cell) ($IsAlloc refType |f3#1_1_1_0_0| Tclass.TwoStateAt.Cell $Heap))) true) (= 1 $FunctionContextHeight)) (and (TwoStateAt.DT.Blue_q |d0#0|) (= (ControlFlow 0 24) 22))))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
