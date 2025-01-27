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
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass.M0.Path () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M0.__default.Union (T@U T@U) T@U)
(declare-fun |M0.__default.Union#canCall| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass.M0.State () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun M0.__default.DomSt (T@U) T@U)
(declare-fun M0.__default.GetSt (T@U T@U) T@U)
(declare-fun |M0.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun Tclass.M0.Artifact () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |M0.__default.DomSt#canCall| (T@U) Bool)
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
(assert (distinct TagSet alloc)
)
(assert (forall ((a T@U) (b T@U) (y T@U) ) (!  (=> (|Set#IsMember| a y) (|Set#IsMember| (|Set#Union| a b) y))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a b) (|Set#IsMember| a y))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@0) (|Set#IsMember| (|Set#Union| a@@0 b@@0) y@@0))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@0 b@@0) (|Set#IsMember| b@@0 y@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@1 b@@1) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@1 b@@1) (|Set#IsMember| b@@1 y@@1))
)))
(assert ($AlwaysAllocated Tclass.M0.Path))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2) (|Set#Union| a@@2 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@3) o)  (and (|Set#IsMember| a@@3 o) (not (|Set#IsMember| b@@3 o))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@3) o))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0| T@U) (|st'#0| T@U) ) (!  (=> (or (|M0.__default.Union#canCall| |st#0| |st'#0|) (and (< 2 $FunctionContextHeight) (and ($IsBox |st#0| Tclass.M0.State) ($IsBox |st'#0| Tclass.M0.State)))) (and (let ((|result#0| (M0.__default.Union |st#0| |st'#0|)))
 (and (|Set#Equal| (M0.__default.DomSt |result#0|) (|Set#Union| (M0.__default.DomSt |st#0|) (M0.__default.DomSt |st'#0|))) (forall ((|p#0| T@U) ) (!  (=> ($IsBox |p#0| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |result#0|) |p#0|) (= (M0.__default.GetSt |p#0| |result#0|) (M0.__default.GetSt |p#0| (ite (|Set#IsMember| (M0.__default.DomSt |st#0|) |p#0|) |st#0| |st'#0|)))))
 :qid |CloudMakeParallelBuildsdfy.27:14|
 :skolemid |720|
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0|) |p#0|))
 :pattern ( (M0.__default.GetSt |p#0| |result#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |result#0|) |p#0|))
)))) ($IsBox (M0.__default.Union |st#0| |st'#0|) Tclass.M0.State)))
 :qid |CloudMakeParallelBuildsdfy.23:24|
 :skolemid |721|
 :pattern ( (M0.__default.Union |st#0| |st'#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@0| T@U) (|st#0@@0| T@U) ) (!  (=> (or (|M0.__default.GetSt#canCall| |p#0@@0| |st#0@@0|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@0| Tclass.M0.Path) ($IsBox |st#0@@0| Tclass.M0.State)) (|Set#IsMember| (M0.__default.DomSt |st#0@@0|) |p#0@@0|)))) ($IsBox (M0.__default.GetSt |p#0@@0| |st#0@@0|) Tclass.M0.Artifact))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |701|
 :pattern ( (M0.__default.GetSt |p#0@@0| |st#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (|p#0@@1| T@U) (|st#0@@1| T@U) ) (!  (=> (and (or (|M0.__default.GetSt#canCall| |p#0@@1| |st#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@1| Tclass.M0.Path) ($IsAllocBox |p#0@@1| Tclass.M0.Path $Heap)) (and ($IsBox |st#0@@1| Tclass.M0.State) ($IsAllocBox |st#0@@1| Tclass.M0.State $Heap))) (|Set#IsMember| (M0.__default.DomSt |st#0@@1|) |p#0@@1|)))) ($IsGoodHeap $Heap)) ($IsAllocBox (M0.__default.GetSt |p#0@@1| |st#0@@1|) Tclass.M0.Artifact $Heap))
 :qid |CloudMakeParallelBuildsdfy.10:18|
 :skolemid |702|
 :pattern ( ($IsAllocBox (M0.__default.GetSt |p#0@@1| |st#0@@1|) Tclass.M0.Artifact $Heap))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@4 b@@4) (forall ((o@@0 T@U) ) (!  (or (not (|Set#IsMember| a@@4 o@@0)) (not (|Set#IsMember| b@@4 o@@0)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@4 o@@0))
 :pattern ( (|Set#IsMember| b@@4 o@@0))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@4 b@@4))
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
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@5 b@@5) o@@1)  (or (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@5 o@@1)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@5 b@@5) o@@1))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@6 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@6 b@@6) a@@6) b@@6) (= (|Set#Difference| (|Set#Union| a@@6 b@@6) b@@6) a@@6)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@6 b@@6))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@7 b@@7) (= a@@7 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@7 b@@7))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@0) ($Is T@@1 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@0))
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
(assert (forall ((v@@3 T@U) (t0@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@0) h@@1) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@0) ($IsAllocBox bx@@0 t0@@0 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@0))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@0) h@@1))
)))
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
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|st#0@@2| T@U) ) (!  (=> (or (|M0.__default.DomSt#canCall| |st#0@@2|) (and (< 0 $FunctionContextHeight) ($IsBox |st#0@@2| Tclass.M0.State))) ($Is SetType (M0.__default.DomSt |st#0@@2|) (TSet Tclass.M0.Path)))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |699|
 :pattern ( (M0.__default.DomSt |st#0@@2|))
))))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (! (= (|Set#Union| a@@8 (|Set#Union| a@@8 b@@8)) (|Set#Union| a@@8 b@@8))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@8 (|Set#Union| a@@8 b@@8)))
)))
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
 :skolemid |7201|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|st#0@@3| T@U) (|st'#0@@0| T@U) ) (!  (=> (and (or (|M0.__default.Union#canCall| |st#0@@3| |st'#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |st#0@@3| Tclass.M0.State) ($IsAllocBox |st#0@@3| Tclass.M0.State $Heap@@0)) (and ($IsBox |st'#0@@0| Tclass.M0.State) ($IsAllocBox |st'#0@@0| Tclass.M0.State $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAllocBox (M0.__default.Union |st#0@@3| |st'#0@@0|) Tclass.M0.State $Heap@@0))
 :qid |CloudMakeParallelBuildsdfy.23:18|
 :skolemid |722|
 :pattern ( ($IsAllocBox (M0.__default.Union |st#0@@3| |st'#0@@0|) Tclass.M0.State $Heap@@0))
))))
(assert (forall ((bx@@1 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@1 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@1)) bx@@1) ($Is SetType ($Unbox SetType bx@@1) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@1 (TSet t@@3)))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (! (= (|Set#Equal| a@@9 b@@9) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@9 o@@2) (|Set#IsMember| b@@9 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@9 o@@2))
 :pattern ( (|Set#IsMember| b@@9 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@9 b@@9))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |##st#6@0| () T@U)
(declare-fun |st#0@@4| () T@U)
(declare-fun |p#2@0| () T@U)
(declare-fun |st'#0@@1| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |result#Z#0@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M0.__default.Union)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon10_correct true))
(let ((anon8_correct  (=> (and (= |##st#6@0| (ite (|Set#IsMember| (M0.__default.DomSt |st#0@@4|) |p#2@0|) |st#0@@4| |st'#0@@1|)) ($IsAllocBox |##st#6@0| Tclass.M0.State $Heap@@1)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (|Set#IsMember| (M0.__default.DomSt |##st#6@0|) |p#2@0|)) (=> (|Set#IsMember| (M0.__default.DomSt |##st#6@0|) |p#2@0|) (=> (and (|M0.__default.GetSt#canCall| |p#2@0| (ite (|Set#IsMember| (M0.__default.DomSt |st#0@@4|) |p#2@0|) |st#0@@4| |st'#0@@1|)) (= (ControlFlow 0 6) 2)) anon10_correct))))))
(let ((anon16_Else_correct  (=> (and (not (|Set#IsMember| (M0.__default.DomSt |st#0@@4|) |p#2@0|)) (= (ControlFlow 0 9) 6)) anon8_correct)))
(let ((anon16_Then_correct  (=> (and (|Set#IsMember| (M0.__default.DomSt |st#0@@4|) |p#2@0|) (= (ControlFlow 0 8) 6)) anon8_correct)))
(let ((anon15_Then_correct  (=> (|Set#IsMember| (M0.__default.DomSt |result#Z#0@0|) |p#2@0|) (=> (and ($IsAllocBox |p#2@0| Tclass.M0.Path $Heap@@1) ($IsAllocBox |result#Z#0@0| Tclass.M0.State $Heap@@1)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (|Set#IsMember| (M0.__default.DomSt |result#Z#0@0|) |p#2@0|)) (=> (|Set#IsMember| (M0.__default.DomSt |result#Z#0@0|) |p#2@0|) (=> (and (and (|M0.__default.GetSt#canCall| |p#2@0| |result#Z#0@0|) ($IsAllocBox |p#2@0| Tclass.M0.Path $Heap@@1)) (and ($IsAllocBox |st#0@@4| Tclass.M0.State $Heap@@1) (|M0.__default.DomSt#canCall| |st#0@@4|))) (and (=> (= (ControlFlow 0 10) 8) anon16_Then_correct) (=> (= (ControlFlow 0 10) 9) anon16_Else_correct)))))))))
(let ((anon15_Else_correct  (=> (and (not (|Set#IsMember| (M0.__default.DomSt |result#Z#0@0|) |p#2@0|)) (= (ControlFlow 0 5) 2)) anon10_correct)))
(let ((anon14_Then_correct  (=> (and (and ($IsBox |p#2@0| Tclass.M0.Path) ($IsAllocBox |p#2@0| Tclass.M0.Path $Heap@@1)) (and ($IsAllocBox |result#Z#0@0| Tclass.M0.State $Heap@@1) (|M0.__default.DomSt#canCall| |result#Z#0@0|))) (and (=> (= (ControlFlow 0 12) 10) anon15_Then_correct) (=> (= (ControlFlow 0 12) 5) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (not (and ($IsBox |p#2@0| Tclass.M0.Path) ($IsAllocBox |p#2@0| Tclass.M0.Path $Heap@@1))) (= (ControlFlow 0 4) 2)) anon10_correct)))
(let ((anon13_Then_correct  (=> (|Set#Equal| (M0.__default.DomSt |result#Z#0@0|) (|Set#Union| (M0.__default.DomSt |st#0@@4|) (M0.__default.DomSt |st'#0@@1|))) (and (=> (= (ControlFlow 0 13) 12) anon14_Then_correct) (=> (= (ControlFlow 0 13) 4) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (and (not (|Set#Equal| (M0.__default.DomSt |result#Z#0@0|) (|Set#Union| (M0.__default.DomSt |st#0@@4|) (M0.__default.DomSt |st'#0@@1|)))) (= (ControlFlow 0 3) 2)) anon10_correct)))
(let ((anon12_Then_correct  (=> ($IsBox (M0.__default.Union |st#0@@4| |st'#0@@1|) Tclass.M0.State) (=> (and ($IsAllocBox |st#0@@4| Tclass.M0.State $Heap@@1) ($IsAllocBox |st'#0@@1| Tclass.M0.State $Heap@@1)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (and (= |st#0@@4| |st#0@@4|) (= |st'#0@@1| |st'#0@@1|))) (=> (and (= |st#0@@4| |st#0@@4|) (= |st'#0@@1| |st'#0@@1|)) (=> (or (and (= |st#0@@4| |st#0@@4|) (= |st'#0@@1| |st'#0@@1|)) (|M0.__default.Union#canCall| |st#0@@4| |st'#0@@1|)) (=> (and (= |let#0#0#0| (M0.__default.Union |st#0@@4| |st'#0@@1|)) (|M0.__default.Union#canCall| |st#0@@4| |st'#0@@1|)) (=> (and (and (and ($IsBox |let#0#0#0| Tclass.M0.State) (= |result#Z#0@0| |let#0#0#0|)) (and ($IsAllocBox |result#Z#0@0| Tclass.M0.State $Heap@@1) (|M0.__default.DomSt#canCall| |result#Z#0@0|))) (and (and ($IsAllocBox |st#0@@4| Tclass.M0.State $Heap@@1) (|M0.__default.DomSt#canCall| |st#0@@4|)) (and ($IsAllocBox |st'#0@@1| Tclass.M0.State $Heap@@1) (|M0.__default.DomSt#canCall| |st'#0@@1|)))) (and (=> (= (ControlFlow 0 14) 13) anon13_Then_correct) (=> (= (ControlFlow 0 14) 3) anon13_Else_correct)))))))))))
(let ((anon12_Else_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (=> (= (ControlFlow 0 16) 14) anon12_Then_correct) (=> (= (ControlFlow 0 16) 1) anon12_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and ($IsBox |st#0@@4| Tclass.M0.State) ($IsBox |st'#0@@1| Tclass.M0.State)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 17) 16))) anon0_correct))))
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
