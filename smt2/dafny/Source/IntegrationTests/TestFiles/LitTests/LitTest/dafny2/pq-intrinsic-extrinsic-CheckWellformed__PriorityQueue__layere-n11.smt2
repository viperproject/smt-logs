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
(declare-fun TagMultiSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.PriorityQueue__layered.T () T@U)
(declare-fun tytagFamily$T () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun PriorityQueue__layered.__default.Elements (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |PriorityQueue__layered.__default.Elements#canCall| (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass.PriorityQueue__layered.T () T@U)
(declare-fun |PriorityQueue__extrinsic.__default.Elements#canCall| (T@U) Bool)
(declare-fun PriorityQueue__extrinsic.__default.Elements (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun |PriorityQueue__layered.__default.Empty#canCall| () Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun PriorityQueue__layered.__default.Empty () T@U)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass.PriorityQueue__extrinsic.T () T@U)
(declare-fun PriorityQueue__extrinsic.__default.Empty () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun PriorityQueue__extrinsic.__default.Valid (T@U T@U) Bool)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun Inv0_TMultiSet (T@U) T@U)
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
(declare-fun TagFamily (T@U) T@U)
(declare-fun |PriorityQueue__extrinsic.__default.Empty#canCall| () Bool)
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
(assert (distinct TInt TagInt TagMultiSet alloc Tagclass.PriorityQueue__layered.T tytagFamily$T)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|t#0| T@U) ) (!  (=> (or (|PriorityQueue__layered.__default.Elements#canCall| (Lit BoxType |t#0|)) (and (< 1 $FunctionContextHeight) ($IsBox |t#0| Tclass.PriorityQueue__layered.T))) (and (|PriorityQueue__extrinsic.__default.Elements#canCall| (Lit BoxType |t#0|)) (= (PriorityQueue__layered.__default.Elements (Lit BoxType |t#0|)) (PriorityQueue__extrinsic.__default.Elements ($LS $LZ) (Lit BoxType |t#0|)))))
 :qid |pqintrinsicextrinsicdfy.94:27|
 :weight 3
 :skolemid |1119|
 :pattern ( (PriorityQueue__layered.__default.Elements (Lit BoxType |t#0|)))
))))
(assert (= (Ctor MultiSetType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|t#0@@0| T@U) ) (!  (=> (or (|PriorityQueue__layered.__default.Elements#canCall| |t#0@@0|) (and (< 1 $FunctionContextHeight) ($IsBox |t#0@@0| Tclass.PriorityQueue__layered.T))) ($Is MultiSetType (PriorityQueue__layered.__default.Elements |t#0@@0|) (TMultiSet TInt)))
 :qid |pqintrinsicextrinsicdfy.94:27|
 :skolemid |1116|
 :pattern ( (PriorityQueue__layered.__default.Elements |t#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (=> (or |PriorityQueue__layered.__default.Empty#canCall| (< 2 $FunctionContextHeight)) (and (|MultiSet#Equal| (PriorityQueue__layered.__default.Elements (Lit BoxType PriorityQueue__layered.__default.Empty)) |MultiSet#Empty|) ($IsBox PriorityQueue__layered.__default.Empty Tclass.PriorityQueue__layered.T)))))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |640|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((|t#0@@1| T@U) ($h T@U) ) (! (= ($IsAllocBox |t#0@@1| Tclass.PriorityQueue__layered.T $h) ($IsAllocBox |t#0@@1| Tclass.PriorityQueue__extrinsic.T $h))
 :qid |unknown.0:0|
 :skolemid |1146|
 :pattern ( ($IsAllocBox |t#0@@1| Tclass.PriorityQueue__layered.T $h))
)))
(assert ($IsBox PriorityQueue__extrinsic.__default.Empty Tclass.PriorityQueue__extrinsic.T))
(assert (forall (($Heap T@U) ) (!  (=> ($IsGoodHeap $Heap) ($IsAllocBox PriorityQueue__extrinsic.__default.Empty Tclass.PriorityQueue__extrinsic.T $Heap))
 :qid |pqintrinsicextrinsicdfy.204:12|
 :skolemid |1155|
 :pattern ( ($IsAllocBox PriorityQueue__extrinsic.__default.Empty Tclass.PriorityQueue__extrinsic.T $Heap))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |603|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |614|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |627|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall (($ly T@U) (|t#0@@2| T@U) ) (!  (=> (or (|PriorityQueue__extrinsic.__default.Elements#canCall| |t#0@@2|) ($IsBox |t#0@@2| Tclass.PriorityQueue__extrinsic.T)) ($Is MultiSetType (PriorityQueue__extrinsic.__default.Elements $ly |t#0@@2|) (TMultiSet TInt)))
 :qid |pqintrinsicextrinsicdfy.199:18|
 :skolemid |1153|
 :pattern ( (PriorityQueue__extrinsic.__default.Elements $ly |t#0@@2|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) ) (!  (=> (and (or |PriorityQueue__layered.__default.Empty#canCall| (< 2 $FunctionContextHeight)) ($IsGoodHeap $Heap@@0)) ($IsAllocBox PriorityQueue__layered.__default.Empty Tclass.PriorityQueue__layered.T $Heap@@0))
 :qid |pqintrinsicextrinsicdfy.97:12|
 :skolemid |1121|
 :pattern ( ($IsAllocBox PriorityQueue__layered.__default.Empty Tclass.PriorityQueue__layered.T $Heap@@0))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|MultiSet#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |797|
 :pattern ( (|MultiSet#Equal| a b))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) ) (! (= ($Is MultiSetType v@@1 (TMultiSet t0@@0)) (forall ((bx T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@1 bx)) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |638|
 :pattern ( (|MultiSet#Multiplicity| v@@1 bx))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |639|
 :pattern ( ($Is MultiSetType v@@1 (TMultiSet t0@@0)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |615|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall (($ly@@0 T@U) (|t#0@@3| T@U) ) (! (= (PriorityQueue__extrinsic.__default.Valid ($LS $ly@@0) |t#0@@3|) (PriorityQueue__extrinsic.__default.Valid $ly@@0 |t#0@@3|))
 :qid |pqintrinsicextrinsicdfy.190:19|
 :skolemid |1147|
 :pattern ( (PriorityQueue__extrinsic.__default.Valid ($LS $ly@@0) |t#0@@3|))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |626|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@1 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@1)) (<= (|MultiSet#Multiplicity| ms bx@@1) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |771|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@1))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |772|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |773|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((o T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |775|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |593|
 :pattern ( (TMultiSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TMultiSet t@@2)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |594|
 :pattern ( (TMultiSet t@@2))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |613|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|t#0@@4| T@U) ) (!  (=> (or (|PriorityQueue__layered.__default.Elements#canCall| |t#0@@4|) (and (< 1 $FunctionContextHeight) ($IsBox |t#0@@4| Tclass.PriorityQueue__layered.T))) (and (|PriorityQueue__extrinsic.__default.Elements#canCall| |t#0@@4|) (= (PriorityQueue__layered.__default.Elements |t#0@@4|) (PriorityQueue__extrinsic.__default.Elements ($LS $LZ) |t#0@@4|))))
 :qid |pqintrinsicextrinsicdfy.94:27|
 :skolemid |1118|
 :pattern ( (PriorityQueue__layered.__default.Elements |t#0@@4|))
))))
(assert (forall (($ly@@1 T@U) (|t#0@@5| T@U) ) (! (= (PriorityQueue__extrinsic.__default.Elements ($LS $ly@@1) |t#0@@5|) (PriorityQueue__extrinsic.__default.Elements $ly@@1 |t#0@@5|))
 :qid |pqintrinsicextrinsicdfy.199:18|
 :skolemid |1151|
 :pattern ( (PriorityQueue__extrinsic.__default.Elements ($LS $ly@@1) |t#0@@5|))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@5 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@5))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |776|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@5))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |777|
 :pattern ( (|MultiSet#Card| s@@0))
)))
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
 :skolemid |3528|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TMultiSet t@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@2)) bx@@2) ($Is MultiSetType ($Unbox MultiSetType bx@@2) (TMultiSet t@@3))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |622|
 :pattern ( ($IsBox bx@@2 (TMultiSet t@@3)))
)))
(assert (= (Tag Tclass.PriorityQueue__layered.T) Tagclass.PriorityQueue__layered.T))
(assert (= (TagFamily Tclass.PriorityQueue__layered.T) tytagFamily$T))
(assert  (=> (<= 2 $FunctionContextHeight) (=> (or |PriorityQueue__layered.__default.Empty#canCall| (< 2 $FunctionContextHeight)) (and |PriorityQueue__extrinsic.__default.Empty#canCall| (= PriorityQueue__layered.__default.Empty PriorityQueue__extrinsic.__default.Empty)))))
(assert  (=> (<= 2 $FunctionContextHeight) (=> (or |PriorityQueue__layered.__default.Empty#canCall| (< 2 $FunctionContextHeight)) (and |PriorityQueue__extrinsic.__default.Empty#canCall| (= PriorityQueue__layered.__default.Empty PriorityQueue__extrinsic.__default.Empty)))))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@6)) (Lit BoxType ($Box T@@4 x@@6)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |604|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@6)))
)))
(assert (forall ((|t#0@@6| T@U) ) (! (= ($IsBox |t#0@@6| Tclass.PriorityQueue__layered.T)  (and ($IsBox |t#0@@6| Tclass.PriorityQueue__extrinsic.T) (PriorityQueue__extrinsic.__default.Valid ($LS $LZ) |t#0@@6|)))
 :qid |unknown.0:0|
 :skolemid |1145|
 :pattern ( ($IsBox |t#0@@6| Tclass.PriorityQueue__layered.T))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|MultiSet#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| a@@0 o@@0) (|MultiSet#Multiplicity| b@@0 o@@0))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |795|
 :pattern ( (|MultiSet#Multiplicity| a@@0 o@@0))
 :pattern ( (|MultiSet#Multiplicity| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |796|
 :pattern ( (|MultiSet#Equal| a@@0 b@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (h@@0 T@U) ) (! (= ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@3 bx@@3)) ($IsAllocBox bx@@3 t0@@3 h@@0))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |659|
 :pattern ( (|MultiSet#Multiplicity| v@@3 bx@@3))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |660|
 :pattern ( ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |649|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@1))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |628|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |PriorityQueue__extrinsic.__default.Valid#canCall| (T@U) Bool)
(declare-fun $Heap@@1 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id CheckWellformed$$PriorityQueue__layered.__default.Empty)
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
 (=> (= (ControlFlow 0 0) 8) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (|MultiSet#Equal| (PriorityQueue__layered.__default.Elements (Lit BoxType PriorityQueue__layered.__default.Empty)) |MultiSet#Empty|))))
(let ((anon5_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and |PriorityQueue__extrinsic.__default.Empty#canCall| (let ((|t'#0| PriorityQueue__extrinsic.__default.Empty))
 (and (|PriorityQueue__extrinsic.__default.Valid#canCall| |t'#0|) (=> (PriorityQueue__extrinsic.__default.Valid ($LS $LZ) |t'#0|) (|PriorityQueue__extrinsic.__default.Elements#canCall| |t'#0|)))))) (and (and (let ((|t'#0@@0| PriorityQueue__extrinsic.__default.Empty))
(PriorityQueue__extrinsic.__default.Valid ($LS ($LS $LZ)) |t'#0@@0|)) (let ((|t'#0@@1| PriorityQueue__extrinsic.__default.Empty))
(|MultiSet#Equal| (PriorityQueue__extrinsic.__default.Elements ($LS ($LS $LZ)) |t'#0@@1|) |MultiSet#Empty|))) (and (= $Heap@@1 $Heap@0) |PriorityQueue__extrinsic.__default.Empty#canCall|))) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($IsBox PriorityQueue__extrinsic.__default.Empty Tclass.PriorityQueue__layered.T)) (=> ($IsBox PriorityQueue__extrinsic.__default.Empty Tclass.PriorityQueue__layered.T) (=> (and (and (= PriorityQueue__layered.__default.Empty PriorityQueue__extrinsic.__default.Empty) |PriorityQueue__extrinsic.__default.Empty#canCall|) (and ($IsBox PriorityQueue__layered.__default.Empty Tclass.PriorityQueue__layered.T) (= (ControlFlow 0 5) 4))) GeneratedUnifiedExit_correct))))))
(let ((anon5_Then_correct  (=> (and ($IsBox PriorityQueue__layered.__default.Empty Tclass.PriorityQueue__layered.T) (= (ControlFlow 0 2) (- 0 1))) (U_2_bool (Lit boolType (bool_2_U true))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (=> (= (ControlFlow 0 7) 2) anon5_Then_correct) (=> (= (ControlFlow 0 7) 5) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
