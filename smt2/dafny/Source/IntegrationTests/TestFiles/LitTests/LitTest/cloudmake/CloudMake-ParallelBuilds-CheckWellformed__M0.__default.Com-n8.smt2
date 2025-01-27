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
(declare-fun TagBool () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
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
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass.M0.Path () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M0.__default.GetSt (T@U T@U) T@U)
(declare-fun |M0.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass.M0.State () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun M0.__default.DomSt (T@U) T@U)
(declare-fun Tclass.M0.Artifact () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun M0.__default.Compatible (T@U) Bool)
(declare-fun |M0.__default.Compatible#canCall| (T@U) Bool)
(declare-fun |M0.__default.DomSt#canCall| (T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TBool TagBool TagSet alloc)
)
(assert (= (Tag TBool) TagBool))
(assert ($AlwaysAllocated Tclass.M0.Path))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0| T@U) (|st#0| T@U) ) (!  (=> (or (|M0.__default.GetSt#canCall| |p#0| |st#0|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0| Tclass.M0.Path) ($IsBox |st#0| Tclass.M0.State)) (|Set#IsMember| (M0.__default.DomSt |st#0|) |p#0|)))) ($IsBox (M0.__default.GetSt |p#0| |st#0|) Tclass.M0.Artifact))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |701|
 :pattern ( (M0.__default.GetSt |p#0| |st#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (|p#0@@0| T@U) (|st#0@@0| T@U) ) (!  (=> (and (or (|M0.__default.GetSt#canCall| |p#0@@0| |st#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@0| Tclass.M0.Path) ($IsAllocBox |p#0@@0| Tclass.M0.Path $Heap)) (and ($IsBox |st#0@@0| Tclass.M0.State) ($IsAllocBox |st#0@@0| Tclass.M0.State $Heap))) (|Set#IsMember| (M0.__default.DomSt |st#0@@0|) |p#0@@0|)))) ($IsGoodHeap $Heap)) ($IsAllocBox (M0.__default.GetSt |p#0@@0| |st#0@@0|) Tclass.M0.Artifact $Heap))
 :qid |CloudMakeParallelBuildsdfy.10:18|
 :skolemid |702|
 :pattern ( ($IsAllocBox (M0.__default.GetSt |p#0@@0| |st#0@@0|) Tclass.M0.Artifact $Heap))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (= (Ctor SetType) 3))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|sts#0| T@U) ) (!  (=> (or (|M0.__default.Compatible#canCall| (Lit SetType |sts#0|)) (and (< 2 $FunctionContextHeight) ($Is SetType |sts#0| (TSet Tclass.M0.State)))) (and (forall ((|st#1| T@U) (|st'#1| T@U) (|p#1| T@U) ) (!  (=> (and (and ($IsBox |st#1| Tclass.M0.State) ($IsBox |st'#1| Tclass.M0.State)) ($IsBox |p#1| Tclass.M0.Path)) (=> (|Set#IsMember| (Lit SetType |sts#0|) |st#1|) (=> (|Set#IsMember| (Lit SetType |sts#0|) |st'#1|) (and (|M0.__default.DomSt#canCall| |st#1|) (=> (|Set#IsMember| (M0.__default.DomSt |st#1|) |p#1|) (and (|M0.__default.DomSt#canCall| |st'#1|) (=> (|Set#IsMember| (M0.__default.DomSt |st'#1|) |p#1|) (and (|M0.__default.GetSt#canCall| |p#1| |st#1|) (|M0.__default.GetSt#canCall| |p#1| |st'#1|)))))))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |732|
 :pattern ( (M0.__default.GetSt |p#1| |st'#1|) (M0.__default.GetSt |p#1| |st#1|))
 :pattern ( (M0.__default.GetSt |p#1| |st'#1|) (M0.__default.DomSt |st#1|))
 :pattern ( (M0.__default.GetSt |p#1| |st'#1|) (|Set#IsMember| |sts#0| |st#1|))
 :pattern ( (M0.__default.GetSt |p#1| |st#1|) (M0.__default.DomSt |st'#1|))
 :pattern ( (M0.__default.GetSt |p#1| |st#1|) (|Set#IsMember| |sts#0| |st'#1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#1|) |p#1|) (M0.__default.DomSt |st#1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#1|) |p#1|) (|Set#IsMember| |sts#0| |st#1|))
 :pattern ( (M0.__default.DomSt |st'#1|) (|Set#IsMember| (M0.__default.DomSt |st#1|) |p#1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#1|) |p#1|) (|Set#IsMember| |sts#0| |st'#1|))
)) (= (M0.__default.Compatible (Lit SetType |sts#0|)) (forall ((|st#1@@0| T@U) (|st'#1@@0| T@U) (|p#1@@0| T@U) ) (!  (=> (and (and ($IsBox |st#1@@0| Tclass.M0.State) ($IsBox |st'#1@@0| Tclass.M0.State)) ($IsBox |p#1@@0| Tclass.M0.Path)) (=> (and (and (and (|Set#IsMember| (Lit SetType |sts#0|) |st#1@@0|) (|Set#IsMember| (Lit SetType |sts#0|) |st'#1@@0|)) (|Set#IsMember| (M0.__default.DomSt |st#1@@0|) |p#1@@0|)) (|Set#IsMember| (M0.__default.DomSt |st'#1@@0|) |p#1@@0|)) (= (M0.__default.GetSt |p#1@@0| |st#1@@0|) (M0.__default.GetSt |p#1@@0| |st'#1@@0|))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |731|
 :pattern ( (M0.__default.GetSt |p#1@@0| |st'#1@@0|) (M0.__default.GetSt |p#1@@0| |st#1@@0|))
 :pattern ( (M0.__default.GetSt |p#1@@0| |st'#1@@0|) (M0.__default.DomSt |st#1@@0|))
 :pattern ( (M0.__default.GetSt |p#1@@0| |st'#1@@0|) (|Set#IsMember| |sts#0| |st#1@@0|))
 :pattern ( (M0.__default.GetSt |p#1@@0| |st#1@@0|) (M0.__default.DomSt |st'#1@@0|))
 :pattern ( (M0.__default.GetSt |p#1@@0| |st#1@@0|) (|Set#IsMember| |sts#0| |st'#1@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#1@@0|) |p#1@@0|) (M0.__default.DomSt |st#1@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#1@@0|) |p#1@@0|) (|Set#IsMember| |sts#0| |st#1@@0|))
 :pattern ( (M0.__default.DomSt |st'#1@@0|) (|Set#IsMember| (M0.__default.DomSt |st#1@@0|) |p#1@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#1@@0|) |p#1@@0|) (|Set#IsMember| |sts#0| |st'#1@@0|))
)))))
 :qid |CloudMakeParallelBuildsdfy.30:30|
 :weight 3
 :skolemid |733|
 :pattern ( (M0.__default.Compatible (Lit SetType |sts#0|)))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TBool) (and (= ($Box boolType ($Unbox boolType bx@@0)) bx@@0) ($Is boolType ($Unbox boolType bx@@0) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@0 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@2 T@U) ) (!  (=> ($IsBox v@@2 ty) ($IsAllocBox v@@2 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@2 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((v@@3 T@U) (t0@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@0) h@@1) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@1) ($IsAllocBox bx@@1 t0@@0 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@1))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@0) h@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|sts#0@@0| T@U) ) (!  (=> (or (|M0.__default.Compatible#canCall| |sts#0@@0|) (and (< 2 $FunctionContextHeight) ($Is SetType |sts#0@@0| (TSet Tclass.M0.State)))) (and (forall ((|st#0@@1| T@U) (|st'#0| T@U) (|p#0@@1| T@U) ) (!  (=> (and (and ($IsBox |st#0@@1| Tclass.M0.State) ($IsBox |st'#0| Tclass.M0.State)) ($IsBox |p#0@@1| Tclass.M0.Path)) (=> (|Set#IsMember| |sts#0@@0| |st#0@@1|) (=> (|Set#IsMember| |sts#0@@0| |st'#0|) (and (|M0.__default.DomSt#canCall| |st#0@@1|) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@1|) |p#0@@1|) (and (|M0.__default.DomSt#canCall| |st'#0|) (=> (|Set#IsMember| (M0.__default.DomSt |st'#0|) |p#0@@1|) (and (|M0.__default.GetSt#canCall| |p#0@@1| |st#0@@1|) (|M0.__default.GetSt#canCall| |p#0@@1| |st'#0|)))))))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |729|
 :pattern ( (M0.__default.GetSt |p#0@@1| |st'#0|) (M0.__default.GetSt |p#0@@1| |st#0@@1|))
 :pattern ( (M0.__default.GetSt |p#0@@1| |st'#0|) (M0.__default.DomSt |st#0@@1|))
 :pattern ( (M0.__default.GetSt |p#0@@1| |st'#0|) (|Set#IsMember| |sts#0@@0| |st#0@@1|))
 :pattern ( (M0.__default.GetSt |p#0@@1| |st#0@@1|) (M0.__default.DomSt |st'#0|))
 :pattern ( (M0.__default.GetSt |p#0@@1| |st#0@@1|) (|Set#IsMember| |sts#0@@0| |st'#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0|) |p#0@@1|) (M0.__default.DomSt |st#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0|) |p#0@@1|) (|Set#IsMember| |sts#0@@0| |st#0@@1|))
 :pattern ( (M0.__default.DomSt |st'#0|) (|Set#IsMember| (M0.__default.DomSt |st#0@@1|) |p#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@1|) |p#0@@1|) (|Set#IsMember| |sts#0@@0| |st'#0|))
)) (= (M0.__default.Compatible |sts#0@@0|) (forall ((|st#0@@2| T@U) (|st'#0@@0| T@U) (|p#0@@2| T@U) ) (!  (=> (and (and ($IsBox |st#0@@2| Tclass.M0.State) ($IsBox |st'#0@@0| Tclass.M0.State)) ($IsBox |p#0@@2| Tclass.M0.Path)) (=> (and (and (and (|Set#IsMember| |sts#0@@0| |st#0@@2|) (|Set#IsMember| |sts#0@@0| |st'#0@@0|)) (|Set#IsMember| (M0.__default.DomSt |st#0@@2|) |p#0@@2|)) (|Set#IsMember| (M0.__default.DomSt |st'#0@@0|) |p#0@@2|)) (= (M0.__default.GetSt |p#0@@2| |st#0@@2|) (M0.__default.GetSt |p#0@@2| |st'#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |728|
 :pattern ( (M0.__default.GetSt |p#0@@2| |st'#0@@0|) (M0.__default.GetSt |p#0@@2| |st#0@@2|))
 :pattern ( (M0.__default.GetSt |p#0@@2| |st'#0@@0|) (M0.__default.DomSt |st#0@@2|))
 :pattern ( (M0.__default.GetSt |p#0@@2| |st'#0@@0|) (|Set#IsMember| |sts#0@@0| |st#0@@2|))
 :pattern ( (M0.__default.GetSt |p#0@@2| |st#0@@2|) (M0.__default.DomSt |st'#0@@0|))
 :pattern ( (M0.__default.GetSt |p#0@@2| |st#0@@2|) (|Set#IsMember| |sts#0@@0| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@0|) |p#0@@2|) (M0.__default.DomSt |st#0@@2|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@0|) |p#0@@2|) (|Set#IsMember| |sts#0@@0| |st#0@@2|))
 :pattern ( (M0.__default.DomSt |st'#0@@0|) (|Set#IsMember| (M0.__default.DomSt |st#0@@2|) |p#0@@2|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@2|) |p#0@@2|) (|Set#IsMember| |sts#0@@0| |st'#0@@0|))
)))))
 :qid |CloudMakeParallelBuildsdfy.30:30|
 :skolemid |730|
 :pattern ( (M0.__default.Compatible |sts#0@@0|))
))))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|st#0@@3| T@U) ) (!  (=> (or (|M0.__default.DomSt#canCall| |st#0@@3|) (and (< 0 $FunctionContextHeight) ($IsBox |st#0@@3| Tclass.M0.State))) ($Is SetType (M0.__default.DomSt |st#0@@3|) (TSet Tclass.M0.Path)))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |699|
 :pattern ( (M0.__default.DomSt |st#0@@3|))
))))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7203|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@2 (TSet t@@3)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@2))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |sts#0@@1| () T@U)
(declare-fun |st#2@0| () T@U)
(declare-fun |st'#2@0| () T@U)
(declare-fun |p#2@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M0.__default.Compatible)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon12_correct true))
(let ((anon19_Else_correct  (=> (and (not (and (and (and (|Set#IsMember| |sts#0@@1| |st#2@0|) (|Set#IsMember| |sts#0@@1| |st'#2@0|)) (|Set#IsMember| (M0.__default.DomSt |st#2@0|) |p#2@0|)) (|Set#IsMember| (M0.__default.DomSt |st'#2@0|) |p#2@0|))) (= (ControlFlow 0 7) 2)) anon12_correct)))
(let ((anon19_Then_correct  (=> (and (and (and (and (|Set#IsMember| |sts#0@@1| |st#2@0|) (|Set#IsMember| |sts#0@@1| |st'#2@0|)) (|Set#IsMember| (M0.__default.DomSt |st#2@0|) |p#2@0|)) (|Set#IsMember| (M0.__default.DomSt |st'#2@0|) |p#2@0|)) (and ($IsAllocBox |p#2@0| Tclass.M0.Path $Heap@@0) ($IsAllocBox |st#2@0| Tclass.M0.State $Heap@@0))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (|Set#IsMember| (M0.__default.DomSt |st#2@0|) |p#2@0|)) (=> (and (and (|Set#IsMember| (M0.__default.DomSt |st#2@0|) |p#2@0|) (|M0.__default.GetSt#canCall| |p#2@0| |st#2@0|)) (and ($IsAllocBox |p#2@0| Tclass.M0.Path $Heap@@0) ($IsAllocBox |st'#2@0| Tclass.M0.State $Heap@@0))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (|Set#IsMember| (M0.__default.DomSt |st'#2@0|) |p#2@0|)) (=> (|Set#IsMember| (M0.__default.DomSt |st'#2@0|) |p#2@0|) (=> (and (|M0.__default.GetSt#canCall| |p#2@0| |st'#2@0|) (= (ControlFlow 0 4) 2)) anon12_correct))))))))
(let ((anon18_Else_correct  (=> (not (and (and (|Set#IsMember| |sts#0@@1| |st#2@0|) (|Set#IsMember| |sts#0@@1| |st'#2@0|)) (|Set#IsMember| (M0.__default.DomSt |st#2@0|) |p#2@0|))) (and (=> (= (ControlFlow 0 9) 4) anon19_Then_correct) (=> (= (ControlFlow 0 9) 7) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (and (and (and (|Set#IsMember| |sts#0@@1| |st#2@0|) (|Set#IsMember| |sts#0@@1| |st'#2@0|)) (|Set#IsMember| (M0.__default.DomSt |st#2@0|) |p#2@0|)) (and ($IsAllocBox |st'#2@0| Tclass.M0.State $Heap@@0) (|M0.__default.DomSt#canCall| |st'#2@0|))) (and (=> (= (ControlFlow 0 8) 4) anon19_Then_correct) (=> (= (ControlFlow 0 8) 7) anon19_Else_correct)))))
(let ((anon17_Else_correct  (=> (not (and (|Set#IsMember| |sts#0@@1| |st#2@0|) (|Set#IsMember| |sts#0@@1| |st'#2@0|))) (and (=> (= (ControlFlow 0 11) 8) anon18_Then_correct) (=> (= (ControlFlow 0 11) 9) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (and (and (|Set#IsMember| |sts#0@@1| |st#2@0|) (|Set#IsMember| |sts#0@@1| |st'#2@0|)) (and ($IsAllocBox |st#2@0| Tclass.M0.State $Heap@@0) (|M0.__default.DomSt#canCall| |st#2@0|))) (and (=> (= (ControlFlow 0 10) 8) anon18_Then_correct) (=> (= (ControlFlow 0 10) 9) anon18_Else_correct)))))
(let ((anon16_Else_correct  (=> (not (|Set#IsMember| |sts#0@@1| |st#2@0|)) (and (=> (= (ControlFlow 0 13) 10) anon17_Then_correct) (=> (= (ControlFlow 0 13) 11) anon17_Else_correct)))))
(let ((anon16_Then_correct  (=> (|Set#IsMember| |sts#0@@1| |st#2@0|) (and (=> (= (ControlFlow 0 12) 10) anon17_Then_correct) (=> (= (ControlFlow 0 12) 11) anon17_Else_correct)))))
(let ((anon15_Then_correct  (=> (and (and (and ($IsBox |st#2@0| Tclass.M0.State) ($IsAllocBox |st#2@0| Tclass.M0.State $Heap@@0)) (and ($IsBox |st'#2@0| Tclass.M0.State) ($IsAllocBox |st'#2@0| Tclass.M0.State $Heap@@0))) (and ($IsBox |p#2@0| Tclass.M0.Path) ($IsAllocBox |p#2@0| Tclass.M0.Path $Heap@@0))) (and (=> (= (ControlFlow 0 14) 12) anon16_Then_correct) (=> (= (ControlFlow 0 14) 13) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (not (and (and (and ($IsBox |st#2@0| Tclass.M0.State) ($IsAllocBox |st#2@0| Tclass.M0.State $Heap@@0)) (and ($IsBox |st'#2@0| Tclass.M0.State) ($IsAllocBox |st'#2@0| Tclass.M0.State $Heap@@0))) (and ($IsBox |p#2@0| Tclass.M0.Path) ($IsAllocBox |p#2@0| Tclass.M0.Path $Heap@@0)))) (= (ControlFlow 0 3) 2)) anon12_correct)))
(let ((anon14_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (and (=> (= (ControlFlow 0 15) 1) anon14_Then_correct) (=> (= (ControlFlow 0 15) 14) anon15_Then_correct)) (=> (= (ControlFlow 0 15) 3) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) ($Is SetType |sts#0@@1| (TSet Tclass.M0.State))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 16) 15))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
