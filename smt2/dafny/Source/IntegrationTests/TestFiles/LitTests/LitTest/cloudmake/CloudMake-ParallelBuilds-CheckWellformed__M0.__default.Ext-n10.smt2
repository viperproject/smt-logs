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
(declare-fun M0.__default.Oracle (T@U T@U) T@U)
(declare-fun |M0.__default.Oracle#canCall| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass.M0.State () T@U)
(declare-fun Tclass.M0.Artifact () T@U)
(declare-fun M0.__default.GetSt (T@U T@U) T@U)
(declare-fun |M0.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun M0.__default.DomSt (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun M0.__default.Extends (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |M0.__default.Extends#canCall| (T@U T@U) Bool)
(declare-fun |M0.__default.DomSt#canCall| (T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0| T@U) (|st#0| T@U) ) (!  (=> (or (|M0.__default.Oracle#canCall| |p#0| |st#0|) (and (< 0 $FunctionContextHeight) (and ($IsBox |p#0| Tclass.M0.Path) ($IsBox |st#0| Tclass.M0.State)))) ($IsBox (M0.__default.Oracle |p#0| |st#0|) Tclass.M0.Artifact))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :skolemid |868|
 :pattern ( (M0.__default.Oracle |p#0| |st#0|))
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
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@2| T@U) (|st'#0| T@U) ) (!  (=> (or (|M0.__default.Extends#canCall| (Lit BoxType |st#0@@2|) (Lit BoxType |st'#0|)) (and (< 2 $FunctionContextHeight) (and ($IsBox |st#0@@2| Tclass.M0.State) ($IsBox |st'#0| Tclass.M0.State)))) (and (and (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@2|)) (|M0.__default.DomSt#canCall| (Lit BoxType |st'#0|))) (=> (|Set#Subset| (M0.__default.DomSt (Lit BoxType |st#0@@2|)) (M0.__default.DomSt (Lit BoxType |st'#0|))) (and (forall ((|p#2| T@U) ) (!  (=> ($IsBox |p#2| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@2|)) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@2|)) |p#2|) (and (|M0.__default.GetSt#canCall| |p#2| (Lit BoxType |st'#0|)) (|M0.__default.GetSt#canCall| |p#2| (Lit BoxType |st#0@@2|))))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |885|
 :pattern ( (M0.__default.GetSt |p#2| |st#0@@2|))
 :pattern ( (M0.__default.GetSt |p#2| |st'#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@2|) |p#2|))
)) (=> (forall ((|p#2@@0| T@U) ) (!  (=> ($IsBox |p#2@@0| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@2|)) |p#2@@0|) (= (M0.__default.GetSt |p#2@@0| (Lit BoxType |st'#0|)) (M0.__default.GetSt |p#2@@0| (Lit BoxType |st#0@@2|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |887|
 :pattern ( (M0.__default.GetSt |p#2@@0| |st#0@@2|))
 :pattern ( (M0.__default.GetSt |p#2@@0| |st'#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@2|) |p#2@@0|))
)) (forall ((|p#3| T@U) ) (!  (=> ($IsBox |p#3| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@2|)) (=> (not (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@2|)) |p#3|)) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st'#0|)) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st'#0|)) |p#3|) (and (|M0.__default.GetSt#canCall| |p#3| (Lit BoxType |st'#0|)) (|M0.__default.Oracle#canCall| |p#3| (Lit BoxType |st#0@@2|))))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |886|
 :pattern ( (M0.__default.Oracle |p#3| |st#0@@2|))
 :pattern ( (M0.__default.GetSt |p#3| |st'#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0|) |p#3|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@2|) |p#3|))
)))))) (= (M0.__default.Extends (Lit BoxType |st#0@@2|) (Lit BoxType |st'#0|))  (and (and (|Set#Subset| (M0.__default.DomSt (Lit BoxType |st#0@@2|)) (M0.__default.DomSt (Lit BoxType |st'#0|))) (forall ((|p#2@@1| T@U) ) (!  (=> ($IsBox |p#2@@1| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@2|)) |p#2@@1|) (= (M0.__default.GetSt |p#2@@1| (Lit BoxType |st'#0|)) (M0.__default.GetSt |p#2@@1| (Lit BoxType |st#0@@2|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |883|
 :pattern ( (M0.__default.GetSt |p#2@@1| |st#0@@2|))
 :pattern ( (M0.__default.GetSt |p#2@@1| |st'#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@2|) |p#2@@1|))
))) (forall ((|p#3@@0| T@U) ) (!  (=> ($IsBox |p#3@@0| Tclass.M0.Path) (=> (and (not (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@2|)) |p#3@@0|)) (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st'#0|)) |p#3@@0|)) (= (M0.__default.GetSt |p#3@@0| (Lit BoxType |st'#0|)) (M0.__default.Oracle |p#3@@0| (Lit BoxType |st#0@@2|)))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |884|
 :pattern ( (M0.__default.Oracle |p#3@@0| |st#0@@2|))
 :pattern ( (M0.__default.GetSt |p#3@@0| |st'#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0|) |p#3@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@2|) |p#3@@0|))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :weight 3
 :skolemid |888|
 :pattern ( (M0.__default.Extends (Lit BoxType |st#0@@2|) (Lit BoxType |st'#0|)))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o T@U) ) (!  (=> (|Set#IsMember| a o) (|Set#IsMember| b o))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o))
 :pattern ( (|Set#IsMember| b o))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (= (Ctor SetType) 4))
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
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|p#0@@2| T@U) (|st#0@@4| T@U) ) (!  (=> (and (or (|M0.__default.Oracle#canCall| |p#0@@2| |st#0@@4|) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |p#0@@2| Tclass.M0.Path) ($IsAllocBox |p#0@@2| Tclass.M0.Path $Heap@@0)) (and ($IsBox |st#0@@4| Tclass.M0.State) ($IsAllocBox |st#0@@4| Tclass.M0.State $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAllocBox (M0.__default.Oracle |p#0@@2| |st#0@@4|) Tclass.M0.Artifact $Heap@@0))
 :qid |CloudMakeParallelBuildsdfy.104:18|
 :skolemid |869|
 :pattern ( ($IsAllocBox (M0.__default.Oracle |p#0@@2| |st#0@@4|) Tclass.M0.Artifact $Heap@@0))
))))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@2 (TSet t@@3)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@5| T@U) (|st'#0@@0| T@U) ) (!  (=> (or (|M0.__default.Extends#canCall| |st#0@@5| |st'#0@@0|) (and (< 2 $FunctionContextHeight) (and ($IsBox |st#0@@5| Tclass.M0.State) ($IsBox |st'#0@@0| Tclass.M0.State)))) (and (and (and (|M0.__default.DomSt#canCall| |st#0@@5|) (|M0.__default.DomSt#canCall| |st'#0@@0|)) (=> (|Set#Subset| (M0.__default.DomSt |st#0@@5|) (M0.__default.DomSt |st'#0@@0|)) (and (forall ((|p#0@@3| T@U) ) (!  (=> ($IsBox |p#0@@3| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| |st#0@@5|) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#0@@3|) (and (|M0.__default.GetSt#canCall| |p#0@@3| |st'#0@@0|) (|M0.__default.GetSt#canCall| |p#0@@3| |st#0@@5|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |879|
 :pattern ( (M0.__default.GetSt |p#0@@3| |st#0@@5|))
 :pattern ( (M0.__default.GetSt |p#0@@3| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#0@@3|))
)) (=> (forall ((|p#0@@4| T@U) ) (!  (=> ($IsBox |p#0@@4| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#0@@4|) (= (M0.__default.GetSt |p#0@@4| |st'#0@@0|) (M0.__default.GetSt |p#0@@4| |st#0@@5|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |881|
 :pattern ( (M0.__default.GetSt |p#0@@4| |st#0@@5|))
 :pattern ( (M0.__default.GetSt |p#0@@4| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#0@@4|))
)) (forall ((|p#1| T@U) ) (!  (=> ($IsBox |p#1| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| |st#0@@5|) (=> (not (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#1|)) (and (|M0.__default.DomSt#canCall| |st'#0@@0|) (=> (|Set#IsMember| (M0.__default.DomSt |st'#0@@0|) |p#1|) (and (|M0.__default.GetSt#canCall| |p#1| |st'#0@@0|) (|M0.__default.Oracle#canCall| |p#1| |st#0@@5|)))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |880|
 :pattern ( (M0.__default.Oracle |p#1| |st#0@@5|))
 :pattern ( (M0.__default.GetSt |p#1| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@0|) |p#1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#1|))
)))))) (= (M0.__default.Extends |st#0@@5| |st'#0@@0|)  (and (and (|Set#Subset| (M0.__default.DomSt |st#0@@5|) (M0.__default.DomSt |st'#0@@0|)) (forall ((|p#0@@5| T@U) ) (!  (=> ($IsBox |p#0@@5| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#0@@5|) (= (M0.__default.GetSt |p#0@@5| |st'#0@@0|) (M0.__default.GetSt |p#0@@5| |st#0@@5|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |877|
 :pattern ( (M0.__default.GetSt |p#0@@5| |st#0@@5|))
 :pattern ( (M0.__default.GetSt |p#0@@5| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#0@@5|))
))) (forall ((|p#1@@0| T@U) ) (!  (=> ($IsBox |p#1@@0| Tclass.M0.Path) (=> (and (not (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#1@@0|)) (|Set#IsMember| (M0.__default.DomSt |st'#0@@0|) |p#1@@0|)) (= (M0.__default.GetSt |p#1@@0| |st'#0@@0|) (M0.__default.Oracle |p#1@@0| |st#0@@5|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |878|
 :pattern ( (M0.__default.Oracle |p#1@@0| |st#0@@5|))
 :pattern ( (M0.__default.GetSt |p#1@@0| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@0|) |p#1@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#1@@0|))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :skolemid |882|
 :pattern ( (M0.__default.Extends |st#0@@5| |st'#0@@0|))
))))
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
(declare-fun |st#0@@6| () T@U)
(declare-fun |p#5@0| () T@U)
(declare-fun |st'#0@@1| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |p#4@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M0.__default.Extends)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon15_correct true))
(let ((anon24_Else_correct  (=> (and (not (and (not (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#5@0|)) (|Set#IsMember| (M0.__default.DomSt |st'#0@@1|) |p#5@0|))) (= (ControlFlow 0 7) 2)) anon15_correct)))
(let ((anon24_Then_correct  (=> (and (and (not (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#5@0|)) (|Set#IsMember| (M0.__default.DomSt |st'#0@@1|) |p#5@0|)) (and ($IsAllocBox |p#5@0| Tclass.M0.Path $Heap@@1) ($IsAllocBox |st'#0@@1| Tclass.M0.State $Heap@@1))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (|Set#IsMember| (M0.__default.DomSt |st'#0@@1|) |p#5@0|)) (=> (and (|Set#IsMember| (M0.__default.DomSt |st'#0@@1|) |p#5@0|) (|M0.__default.GetSt#canCall| |p#5@0| |st'#0@@1|)) (=> (and (and ($IsAllocBox |p#5@0| Tclass.M0.Path $Heap@@1) ($IsAllocBox |st#0@@6| Tclass.M0.State $Heap@@1)) (and (|M0.__default.Oracle#canCall| |p#5@0| |st#0@@6|) (= (ControlFlow 0 5) 2))) anon15_correct))))))
(let ((anon23_Else_correct  (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#5@0|) (and (=> (= (ControlFlow 0 9) 5) anon24_Then_correct) (=> (= (ControlFlow 0 9) 7) anon24_Else_correct)))))
(let ((anon23_Then_correct  (=> (not (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#5@0|)) (=> (and ($IsAllocBox |st'#0@@1| Tclass.M0.State $Heap@@1) (|M0.__default.DomSt#canCall| |st'#0@@1|)) (and (=> (= (ControlFlow 0 8) 5) anon24_Then_correct) (=> (= (ControlFlow 0 8) 7) anon24_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (and ($IsBox |p#5@0| Tclass.M0.Path) ($IsAllocBox |p#5@0| Tclass.M0.Path $Heap@@1)) (and ($IsAllocBox |st#0@@6| Tclass.M0.State $Heap@@1) (|M0.__default.DomSt#canCall| |st#0@@6|))) (and (=> (= (ControlFlow 0 10) 8) anon23_Then_correct) (=> (= (ControlFlow 0 10) 9) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (not (and ($IsBox |p#5@0| Tclass.M0.Path) ($IsAllocBox |p#5@0| Tclass.M0.Path $Heap@@1))) (= (ControlFlow 0 4) 2)) anon15_correct)))
(let ((anon21_Then_correct  (=> (and (|Set#Subset| (M0.__default.DomSt |st#0@@6|) (M0.__default.DomSt |st'#0@@1|)) (forall ((|p#6| T@U) ) (!  (=> ($IsBox |p#6| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#6|) (= (M0.__default.GetSt |p#6| |st'#0@@1|) (M0.__default.GetSt |p#6| |st#0@@6|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |898|
 :pattern ( (M0.__default.GetSt |p#6| |st#0@@6|))
 :pattern ( (M0.__default.GetSt |p#6| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#6|))
))) (and (=> (= (ControlFlow 0 11) 10) anon22_Then_correct) (=> (= (ControlFlow 0 11) 4) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (not (and (|Set#Subset| (M0.__default.DomSt |st#0@@6|) (M0.__default.DomSt |st'#0@@1|)) (forall ((|p#6@@0| T@U) ) (!  (=> ($IsBox |p#6@@0| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#6@@0|) (= (M0.__default.GetSt |p#6@@0| |st'#0@@1|) (M0.__default.GetSt |p#6@@0| |st#0@@6|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |898|
 :pattern ( (M0.__default.GetSt |p#6@@0| |st#0@@6|))
 :pattern ( (M0.__default.GetSt |p#6@@0| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#6@@0|))
)))) (= (ControlFlow 0 3) 2)) anon15_correct)))
(let ((anon20_Else_correct  (=> (not (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#4@0|)) (and (=> (= (ControlFlow 0 17) 11) anon21_Then_correct) (=> (= (ControlFlow 0 17) 3) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#4@0|) (=> (and ($IsAllocBox |p#4@0| Tclass.M0.Path $Heap@@1) ($IsAllocBox |st'#0@@1| Tclass.M0.State $Heap@@1)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (|Set#IsMember| (M0.__default.DomSt |st'#0@@1|) |p#4@0|)) (=> (and (and (|Set#IsMember| (M0.__default.DomSt |st'#0@@1|) |p#4@0|) (|M0.__default.GetSt#canCall| |p#4@0| |st'#0@@1|)) (and ($IsAllocBox |p#4@0| Tclass.M0.Path $Heap@@1) ($IsAllocBox |st#0@@6| Tclass.M0.State $Heap@@1))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#4@0|)) (=> (and (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#4@0|) (|M0.__default.GetSt#canCall| |p#4@0| |st#0@@6|)) (and (=> (= (ControlFlow 0 14) 11) anon21_Then_correct) (=> (= (ControlFlow 0 14) 3) anon21_Else_correct))))))))))
(let ((anon19_Then_correct  (=> (and (and ($IsBox |p#4@0| Tclass.M0.Path) ($IsAllocBox |p#4@0| Tclass.M0.Path $Heap@@1)) (and ($IsAllocBox |st#0@@6| Tclass.M0.State $Heap@@1) (|M0.__default.DomSt#canCall| |st#0@@6|))) (and (=> (= (ControlFlow 0 18) 14) anon20_Then_correct) (=> (= (ControlFlow 0 18) 17) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not (and ($IsBox |p#4@0| Tclass.M0.Path) ($IsAllocBox |p#4@0| Tclass.M0.Path $Heap@@1))) (and (=> (= (ControlFlow 0 13) 11) anon21_Then_correct) (=> (= (ControlFlow 0 13) 3) anon21_Else_correct)))))
(let ((anon18_Then_correct  (=> (|Set#Subset| (M0.__default.DomSt |st#0@@6|) (M0.__default.DomSt |st'#0@@1|)) (and (=> (= (ControlFlow 0 19) 18) anon19_Then_correct) (=> (= (ControlFlow 0 19) 13) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not (|Set#Subset| (M0.__default.DomSt |st#0@@6|) (M0.__default.DomSt |st'#0@@1|))) (and (=> (= (ControlFlow 0 12) 11) anon21_Then_correct) (=> (= (ControlFlow 0 12) 3) anon21_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (and ($IsAllocBox |st#0@@6| Tclass.M0.State $Heap@@1) (|M0.__default.DomSt#canCall| |st#0@@6|)) (and ($IsAllocBox |st'#0@@1| Tclass.M0.State $Heap@@1) (|M0.__default.DomSt#canCall| |st'#0@@1|))) (and (=> (= (ControlFlow 0 20) 19) anon18_Then_correct) (=> (= (ControlFlow 0 20) 12) anon18_Else_correct)))))
(let ((anon17_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (=> (= (ControlFlow 0 21) 1) anon17_Then_correct) (=> (= (ControlFlow 0 21) 20) anon17_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and ($IsBox |st#0@@6| Tclass.M0.State) ($IsBox |st'#0@@1| Tclass.M0.State)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 22) 21))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
