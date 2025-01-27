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
(declare-fun TReal () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun class.Basic.U? () T@U)
(declare-fun Tagclass.Basic.U? () T@U)
(declare-fun Tagclass.Basic.U () T@U)
(declare-fun tytagFamily$U () T@U)
(declare-fun field$aa () T@U)
(declare-fun field$bb () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.Basic.U? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Basic.U () T@U)
(declare-fun Basic.U.aa () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun Basic.U.bb () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Basic.U.GG (T@U T@U T@U T@U T@U Int T@U) Real)
(declare-fun |Basic.U.GG#canCall| (T@U T@U T@U T@U Int T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun q@Real (Int) Real)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
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
(assert (distinct TInt TReal TagInt TagReal alloc allocName class.Basic.U? Tagclass.Basic.U? Tagclass.Basic.U tytagFamily$U field$aa field$bb)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.Basic.U?)  (or (= $o null) (= (dtype $o) Tclass.Basic.U?)))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($Is refType $o Tclass.Basic.U?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.Basic.U $h) ($IsAlloc refType |c#0| Tclass.Basic.U? $h))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($IsAlloc refType |c#0| Tclass.Basic.U $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.Basic.U? $h))
)))
(assert (= (FDim Basic.U.aa) 0))
(assert (= (FieldOfDecl class.Basic.U? field$aa) Basic.U.aa))
(assert  (not ($IsGhostField Basic.U.aa)))
(assert (= (FDim Basic.U.bb) 0))
(assert (= (FieldOfDecl class.Basic.U? field$bb) Basic.U.bb))
(assert  (not ($IsGhostField Basic.U.bb)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.Basic.U? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.Basic.U? $h@@0))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((Basic.U.GG$T T@U) ($ly T@U) ($prevHeap T@U) ($Heap T@U) (this T@U) (|x#0| Int) (|t#0| T@U) ) (!  (=> (or (|Basic.U.GG#canCall| Basic.U.GG$T $prevHeap $Heap this |x#0| |t#0|) (and (< 0 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $prevHeap) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.Basic.U) ($IsAlloc refType this Tclass.Basic.U $prevHeap)))) (and ($IsBox |t#0| Basic.U.GG$T) ($IsAllocBox |t#0| Basic.U.GG$T $Heap))) (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Basic.U.aa)))) (forall (($o@@1 T@U) ($f T@U) ) (!  (=> (or (not (= $o@@1 null)) (not true)) (=> (and (= $o@@1 this) (or (= $f Basic.U.bb) (= $f alloc))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o@@1) $f))))
 :qid |TwostateFunctionsdfy.40:33|
 :skolemid |626|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f))
)))))) (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Basic.U.aa)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Basic.U.bb))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) Basic.U.bb))))))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( (Basic.U.GG Basic.U.GG$T $ly $prevHeap $Heap this |x#0| |t#0|))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((Basic.U.GG$T@@0 T@U) ($ly@@0 T@U) ($prevHeap@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) (|x#0@@0| Int) (|t#0@@0| T@U) ) (!  (=> (or (|Basic.U.GG#canCall| Basic.U.GG$T@@0 $prevHeap@@0 $Heap@@0 this@@0 |x#0@@0| |t#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@0 $Heap@@0)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.Basic.U) ($IsAlloc refType this@@0 Tclass.Basic.U $prevHeap@@0)))) ($IsBox |t#0@@0| Basic.U.GG$T@@0)) (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) Basic.U.aa)))) (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (or (not (= $o@@2 null)) (not true)) (=> (and (= $o@@2 this@@0) (or (= $f@@0 Basic.U.bb) (= $f@@0 alloc))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@2) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 $o@@2) $f@@0))))
 :qid |TwostateFunctionsdfy.40:33|
 :skolemid |628|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@2) $f@@0))
)))))) (and (=> (< 0 |x#0@@0|) (|Basic.U.GG#canCall| Basic.U.GG$T@@0 $prevHeap@@0 $Heap@@0 this@@0 (- |x#0@@0| 1) |t#0@@0|)) (= (Basic.U.GG Basic.U.GG$T@@0 ($LS $ly@@0) $prevHeap@@0 $Heap@@0 this@@0 |x#0@@0| |t#0@@0|) (ite (< 0 |x#0@@0|) (Basic.U.GG Basic.U.GG$T@@0 $ly@@0 $prevHeap@@0 $Heap@@0 this@@0 (- |x#0@@0| 1) |t#0@@0|) (q@Real |x#0@@0|)))))
 :qid |unknown.0:0|
 :skolemid |630|
 :pattern ( (Basic.U.GG Basic.U.GG$T@@0 ($LS $ly@@0) $prevHeap@@0 $Heap@@0 this@@0 |x#0@@0| |t#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.Basic.U?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@3) Basic.U.aa)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |585|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@3) Basic.U.aa)))
)))
(assert (forall (($h@@2 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.Basic.U?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) Basic.U.bb)) TInt $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |587|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) Basic.U.bb)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h@@0) ($IsAlloc T@@0 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@0 t@@1 h@@2) ($IsAlloc T@@1 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@0 t@@1 h@@2))
)))
(assert (forall ((Basic.U.GG$T@@1 T@U) ($ly@@1 T@U) ($prevHeap@@1 T@U) ($Heap@@1 T@U) (this@@1 T@U) (|x#0@@1| Int) (|t#0@@1| T@U) ) (! (= (Basic.U.GG Basic.U.GG$T@@1 ($LS $ly@@1) $prevHeap@@1 $Heap@@1 this@@1 |x#0@@1| |t#0@@1|) (Basic.U.GG Basic.U.GG$T@@1 $ly@@1 $prevHeap@@1 $Heap@@1 this@@1 |x#0@@1| |t#0@@1|))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( (Basic.U.GG Basic.U.GG$T@@1 ($LS $ly@@1) $prevHeap@@1 $Heap@@1 this@@1 |x#0@@1| |t#0@@1|))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@5 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f@@1))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) (= $o@@5 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2572|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f@@1))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.Basic.U?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass.Basic.U?)))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( ($IsBox bx@@0 Tclass.Basic.U?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.Basic.U) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass.Basic.U)))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( ($IsBox bx@@1 Tclass.Basic.U))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.Basic.U)  (and ($Is refType |c#0@@0| Tclass.Basic.U?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($Is refType |c#0@@0| Tclass.Basic.U))
 :pattern ( ($Is refType |c#0@@0| Tclass.Basic.U?))
)))
(assert (forall ((x@@3 Int) ) (! (= (q@Real x@@3) (to_real x@@3))
 :qid |DafnyPreludebpl.579:15|
 :skolemid |114|
 :pattern ( (q@Real x@@3))
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
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TReal) (and (= ($Box realType ($Unbox realType bx@@3)) bx@@3) ($Is realType ($Unbox realType bx@@3) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@3 TReal))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall (($h@@3 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.Basic.U?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@6) Basic.U.aa)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |584|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@6) Basic.U.aa)))
)))
(assert (forall (($h@@4 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.Basic.U?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@7) Basic.U.bb)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |586|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@7) Basic.U.bb)))
)))
(assert (= (Tag Tclass.Basic.U?) Tagclass.Basic.U?))
(assert (= (TagFamily Tclass.Basic.U?) tytagFamily$U))
(assert (= (Tag Tclass.Basic.U) Tagclass.Basic.U))
(assert (= (TagFamily Tclass.Basic.U) tytagFamily$U))
(assert (forall ((Basic.U.GG$T@@2 T@U) ($ly@@2 T@U) ($prevHeap@@2 T@U) ($h0 T@U) ($h1 T@U) (this@@2 T@U) (|x#0@@2| Int) (|t#0@@2| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass.Basic.U))) (or (|Basic.U.GG#canCall| Basic.U.GG$T@@2 $prevHeap@@2 $h0 this@@2 |x#0@@2| |t#0@@2|) ($IsBox |t#0@@2| Basic.U.GG$T@@2))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@8 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (= $o@@8 this@@2)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@8) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@8) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |624|
)) (= (Basic.U.GG Basic.U.GG$T@@2 $ly@@2 $prevHeap@@2 $h0 this@@2 |x#0@@2| |t#0@@2|) (Basic.U.GG Basic.U.GG$T@@2 $ly@@2 $prevHeap@@2 $h1 this@@2 |x#0@@2| |t#0@@2|))))
 :qid |unknown.0:0|
 :skolemid |625|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (Basic.U.GG Basic.U.GG$T@@2 $ly@@2 $prevHeap@@2 $h1 this@@2 |x#0@@2| |t#0@@2|))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc realType v@@3 TReal h@@4)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@3 TReal h@@4))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is realType v@@5 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@5 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun previous$Heap () T@U)
(declare-fun this@@3 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun |x#0@@3| () Int)
(declare-fun Basic.U.GG$T@@3 () T@U)
(declare-fun $LZ () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |t#0@@3| () T@U)
(declare-fun |##x#0@0| () Int)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(set-info :boogie-vc-id CheckWellformed$$Basic.U.GG)
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
 (=> (= (ControlFlow 0 0) 23) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) Basic.U.aa))))) (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) Basic.U.aa)))) (=> (= (ControlFlow 0 5) (- 0 4)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) Basic.U.bb))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@3) Basic.U.bb)))))))))
(let ((anon8_Else_correct  (=> (<= |x#0@@3| 0) (=> (and (= (Basic.U.GG Basic.U.GG$T@@3 ($LS $LZ) $Heap@@2 current$Heap this@@3 |x#0@@3| |t#0@@3|) (q@Real |x#0@@3|)) ($Is realType (real_2_U (Basic.U.GG Basic.U.GG$T@@3 ($LS $LZ) $Heap@@2 current$Heap this@@3 |x#0@@3| |t#0@@3|)) TReal)) (and (=> (= (ControlFlow 0 14) (- 0 15)) true) (=> (= (ControlFlow 0 14) 5) GeneratedUnifiedExit_correct))))))
(let ((anon8_Then_correct  (=> (< 0 |x#0@@3|) (=> (and (and ($IsAllocBox ($Box refType this@@3) Tclass.Basic.U? current$Heap) (= |##x#0@0| (- |x#0@@3| 1))) (and ($IsAlloc intType (int_2_U |##x#0@0|) TInt current$Heap) ($IsAllocBox |t#0@@3| Basic.U.GG$T@@3 current$Heap))) (and (=> (= (ControlFlow 0 7) (- 0 13)) ($IsAlloc refType this@@3 Tclass.Basic.U $Heap@@2)) (=> ($IsAlloc refType this@@3 Tclass.Basic.U $Heap@@2) (and (=> (= (ControlFlow 0 7) (- 0 12)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) Basic.U.aa))))) (and (=> (= (ControlFlow 0 7) (- 0 11)) (forall (($o@@9 T@U) ($f@@3 T@U) ) (!  (=> (or (not (= $o@@9 null)) (not true)) (=> (and (= $o@@9 this@@3) (or (= $f@@3 Basic.U.bb) (= $f@@3 alloc))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@9) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@9) $f@@3))))
 :qid |TwostateFunctionsdfy.40:33|
 :skolemid |633|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@9) $f@@3))
))) (=> (and (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) Basic.U.aa)))) (forall (($o@@10 T@U) ($f@@4 T@U) ) (!  (=> (or (not (= $o@@10 null)) (not true)) (=> (and (= $o@@10 this@@3) (or (= $f@@4 Basic.U.bb) (= $f@@4 alloc))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@10) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@10) $f@@4))))
 :qid |TwostateFunctionsdfy.40:33|
 :skolemid |634|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@10) $f@@4))
))) (= |b$reqreads#2@0| (forall (($o@@11 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@11) alloc)))) (= $o@@11 this@@3)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@11 $f@@5)))
 :qid |TwostateFunctionsdfy.46:9|
 :skolemid |635|
)))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (or (<= 0 (+ (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa)))) |x#0@@3|)) (= (+ (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa)))) |##x#0@0|) (+ (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa)))) |x#0@@3|)))) (=> (or (<= 0 (+ (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa)))) |x#0@@3|)) (= (+ (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa)))) |##x#0@0|) (+ (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa)))) |x#0@@3|))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (< (+ (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa)))) |##x#0@0|) (+ (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa)))) |x#0@@3|))) (=> (< (+ (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa)))) |##x#0@0|) (+ (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa)))) |x#0@@3|)) (=> (and (and (|Basic.U.GG#canCall| Basic.U.GG$T@@3 $Heap@@2 current$Heap this@@3 (- |x#0@@3| 1) |t#0@@3|) (= (Basic.U.GG Basic.U.GG$T@@3 ($LS $LZ) $Heap@@2 current$Heap this@@3 |x#0@@3| |t#0@@3|) (Basic.U.GG Basic.U.GG$T@@3 ($LS $LZ) $Heap@@2 current$Heap this@@3 (- |x#0@@3| 1) |t#0@@3|))) (and (|Basic.U.GG#canCall| Basic.U.GG$T@@3 $Heap@@2 current$Heap this@@3 (- |x#0@@3| 1) |t#0@@3|) ($Is realType (real_2_U (Basic.U.GG Basic.U.GG$T@@3 ($LS $LZ) $Heap@@2 current$Heap this@@3 |x#0@@3| |t#0@@3|)) TReal))) (and (=> (= (ControlFlow 0 7) (- 0 8)) |b$reqreads#2@0|) (=> |b$reqreads#2@0| (=> (= (ControlFlow 0 7) 5) GeneratedUnifiedExit_correct)))))))))))))))))
(let ((anon7_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType this@@3 Tclass.Basic.U $Heap@@2)) (=> ($IsAlloc refType this@@3 Tclass.Basic.U $Heap@@2) (=> (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) Basic.U.aa)))) (= (ControlFlow 0 2) (- 0 1))) ($IsAlloc refType this@@3 Tclass.Basic.U $Heap@@2))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#4| null current$Heap alloc this@@3)) (and (=> (= (ControlFlow 0 16) (- 0 22)) ($IsAlloc refType this@@3 Tclass.Basic.U $Heap@@2)) (=> ($IsAlloc refType this@@3 Tclass.Basic.U $Heap@@2) (=> (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@3 Basic.U.aa))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) Basic.U.aa))))) (and (=> (= (ControlFlow 0 16) (- 0 21)) ($IsAlloc refType this@@3 Tclass.Basic.U $Heap@@2)) (=> ($IsAlloc refType this@@3 Tclass.Basic.U $Heap@@2) (=> (and (= |b$reqreads#1@0| (forall (($o@@12 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@12) alloc)))) (and (= $o@@12 this@@3) (= $f@@6 Basic.U.bb))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@12 $f@@6)))
 :qid |TwostateFunctionsdfy.40:44|
 :skolemid |631|
))) (forall (($o@@13 T@U) ($f@@7 T@U) ) (!  (=> (or (not (= $o@@13 null)) (not true)) (=> (and (= $o@@13 this@@3) (or (= $f@@7 Basic.U.bb) (= $f@@7 alloc))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@13) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@13) $f@@7))))
 :qid |TwostateFunctionsdfy.40:33|
 :skolemid |632|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@13) $f@@7))
))) (and (=> (= (ControlFlow 0 16) (- 0 20)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 16) (- 0 19)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 16) (- 0 18)) ($IsAlloc refType this@@3 Tclass.Basic.U $Heap@@2)) (=> ($IsAlloc refType this@@3 Tclass.Basic.U $Heap@@2) (and (=> (= (ControlFlow 0 16) (- 0 17)) ($IsAlloc refType this@@3 Tclass.Basic.U $Heap@@2)) (=> ($IsAlloc refType this@@3 Tclass.Basic.U $Heap@@2) (and (and (=> (= (ControlFlow 0 16) 2) anon7_Then_correct) (=> (= (ControlFlow 0 16) 7) anon8_Then_correct)) (=> (= (ControlFlow 0 16) 14) anon8_Else_correct)))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass.Basic.U) ($IsAlloc refType this@@3 Tclass.Basic.U previous$Heap)))) (=> (and (and (and ($IsBox |t#0@@3| Basic.U.GG$T@@3) ($IsAllocBox |t#0@@3| Basic.U.GG$T@@3 current$Heap)) (= 0 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@2) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 23) 16))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
