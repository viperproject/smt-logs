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
(declare-fun Tagclass._System.___hFunc3 () T@U)
(declare-fun Tagclass.TwoStateAt.Cell () T@U)
(declare-fun Tagclass.TwoStateAt.Cell? () T@U)
(declare-fun Tagclass.TwoStateAt.DT () T@U)
(declare-fun class.TwoStateAt.Cell? () T@U)
(declare-fun |tytagFamily$_#Func3| () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun tytagFamily$DT () T@U)
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
(declare-fun Tclass._System.___hFunc3 (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc3_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_2 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_3 (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun TwoStateAt.DT.F (T@U T@U T@U T@U T@U T@U T@U T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass.TwoStateAt.Cell () T@U)
(declare-fun |TwoStateAt.DT.F#Handle| (T@U T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Reads3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Requires3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.TwoStateAt.Cell? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun TwoStateAt.Cell.data () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass.TwoStateAt.DT (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |TwoStateAt.DT.F#requires| (T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |TwoStateAt.DT.F#canCall| (T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass.TwoStateAt.DT_0 (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.___hFunc3 Tagclass.TwoStateAt.Cell Tagclass.TwoStateAt.Cell? Tagclass.TwoStateAt.DT class.TwoStateAt.Cell? |tytagFamily$_#Func3| tytagFamily$Cell tytagFamily$DT field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$T2| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc3_0 (Tclass._System.___hFunc3 |#$T0| |#$T1| |#$T2| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (Tclass._System.___hFunc3 |#$T0| |#$T1| |#$T2| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$T2@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc3_1 (Tclass._System.___hFunc3 |#$T0@@0| |#$T1@@0| |#$T2@@0| |#$R@@0|)) |#$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@0| |#$T1@@0| |#$T2@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$T2@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc3_2 (Tclass._System.___hFunc3 |#$T0@@1| |#$T1@@1| |#$T2@@1| |#$R@@1|)) |#$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@1| |#$T1@@1| |#$T2@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$T2@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc3_3 (Tclass._System.___hFunc3 |#$T0@@2| |#$T1@@2| |#$T2@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@2| |#$T1@@2| |#$T2@@2| |#$R@@2|))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((TwoStateAt.DT$X T@U) (TwoStateAt.DT.F$Y T@U) ($prevHeap T@U) ($self T@U) ($heap T@U) (|$fh$0x#0| T@U) (|$fh$0x#1| T@U) (|$fh$0x#2| T@U) ) (! (= (TwoStateAt.DT.F TwoStateAt.DT$X TwoStateAt.DT.F$Y $prevHeap $heap $self |$fh$0x#0| |$fh$0x#1| |$fh$0x#2|) (U_2_int ($Unbox intType (Apply3 TwoStateAt.DT$X TwoStateAt.DT.F$Y Tclass.TwoStateAt.Cell TInt $heap (|TwoStateAt.DT.F#Handle| TwoStateAt.DT$X TwoStateAt.DT.F$Y $prevHeap $self) |$fh$0x#0| |$fh$0x#1| ($Box refType |$fh$0x#2|)))))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( (TwoStateAt.DT.F TwoStateAt.DT$X TwoStateAt.DT.F$Y $prevHeap $heap $self |$fh$0x#0| |$fh$0x#1| |$fh$0x#2|))
)))
(assert  (and (and (and (and (and (and (and (= (Ctor HandleTypeType) 4) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall ((f T@U) (t0@@0 T@U) (t1@@0 T@U) (t2 T@U) (t3 T@U) (h T@U) ) (!  (=> ($IsGoodHeap h) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc3 t0@@0 t1@@0 t2 t3) h) (forall ((bx0 T@U) (bx1 T@U) (bx2 T@U) ) (!  (=> (and (and (and (and ($IsBox bx0 t0@@0) ($IsAllocBox bx0 t0@@0 h)) (and ($IsBox bx1 t1@@0) ($IsAllocBox bx1 t1@@0 h))) (and ($IsBox bx2 t2) ($IsAllocBox bx2 t2 h))) (Requires3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h r) alloc))))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( (|Set#IsMember| (Reads3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (Apply3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2))
 :pattern ( (Reads3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2))
))))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc3 t0@@0 t1@@0 t2 t3) h))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.TwoStateAt.Cell?)  (or (= $o null) (= (dtype $o) Tclass.TwoStateAt.Cell?)))
 :qid |unknown.0:0|
 :skolemid |796|
 :pattern ( ($Is refType $o Tclass.TwoStateAt.Cell?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.TwoStateAt.Cell $h) ($IsAlloc refType |c#0| Tclass.TwoStateAt.Cell? $h))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( ($IsAlloc refType |c#0| Tclass.TwoStateAt.Cell $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.TwoStateAt.Cell? $h))
)))
(assert (= (FDim TwoStateAt.Cell.data) 0))
(assert (= (FieldOfDecl class.TwoStateAt.Cell? field$data) TwoStateAt.Cell.data))
(assert  (not ($IsGhostField TwoStateAt.Cell.data)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (t2@@0 T@U) (t3@@0 T@U) (heap T@U) (f@@0 T@U) (bx0@@0 T@U) (bx1@@0 T@U) (bx2@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and (and (and ($IsBox bx0@@0 t0@@1) ($IsBox bx1@@0 t1@@1)) ($IsBox bx2@@0 t2@@0)) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc3 t0@@1 t1@@1 t2@@0 t3@@0)))) (= (|Set#Equal| (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 $OneHeap f@@0 bx0@@0 bx1@@0 bx2@@0) |Set#Empty|) (|Set#Equal| (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 heap f@@0 bx0@@0 bx1@@0 bx2@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 $OneHeap f@@0 bx0@@0 bx1@@0 bx2@@0) ($IsGoodHeap heap))
 :pattern ( (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 heap f@@0 bx0@@0 bx1@@0 bx2@@0))
)))
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.TwoStateAt.Cell? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |797|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.TwoStateAt.Cell? $h@@0))
)))
(assert (forall ((f@@1 T@U) (t0@@2 T@U) (t1@@2 T@U) (t2@@1 T@U) (t3@@1 T@U) (u0@@0 T@U) (u1@@0 T@U) (u2 T@U) (u3 T@U) ) (!  (=> (and (and (and (and ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 t0@@2 t1@@2 t2@@1 t3@@1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0@@0) ($IsBox bx t0@@2))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($IsBox bx u0@@0))
 :pattern ( ($IsBox bx t0@@2))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u1@@0) ($IsBox bx@@0 t1@@2))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsBox bx@@0 u1@@0))
 :pattern ( ($IsBox bx@@0 t1@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 u2) ($IsBox bx@@1 t2@@1))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( ($IsBox bx@@1 u2))
 :pattern ( ($IsBox bx@@1 t2@@1))
))) (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 t3@@1) ($IsBox bx@@2 u3))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($IsBox bx@@2 t3@@1))
 :pattern ( ($IsBox bx@@2 u3))
))) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 u0@@0 u1@@0 u2 u3)))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 t0@@2 t1@@2 t2@@1 t3@@1)) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 u0@@0 u1@@0 u2 u3)))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$T2@@3| T@U) (|#$R@@3| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|)) Tagclass._System.___hFunc3) (= (TagFamily (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|)) |tytagFamily$_#Func3|))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass.TwoStateAt.Cell?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) TwoStateAt.Cell.data)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |799|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) TwoStateAt.Cell.data)))
)))
(assert (forall ((v T@U) (t T@U) (h@@1 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h@@1) ($IsAlloc T@@0 v t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@2) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@3 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@1 v@@0 t@@1 h@@3) ($IsAlloc T@@1 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@1 v@@0 t@@1 h@@3))
)))
(assert (forall ((TwoStateAt.DT$X@@0 T@U) ) (!  (and (= (Tag (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@0)) Tagclass.TwoStateAt.DT) (= (TagFamily (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@0)) tytagFamily$DT))
 :qid |unknown.0:0|
 :skolemid |726|
 :pattern ( (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@0))
)))
(assert (forall (($bx T@U) (TwoStateAt.DT$X@@1 T@U) (TwoStateAt.DT.F$Y@@0 T@U) ($prevHeap@@0 T@U) ($self@@0 T@U) ($heap@@0 T@U) (|$fh$0x#0@@0| T@U) (|$fh$0x#1@@0| T@U) (|$fh$0x#2@@0| T@U) ) (! (= (|Set#IsMember| (Reads3 TwoStateAt.DT$X@@1 TwoStateAt.DT.F$Y@@0 Tclass.TwoStateAt.Cell TInt $heap@@0 (|TwoStateAt.DT.F#Handle| TwoStateAt.DT$X@@1 TwoStateAt.DT.F$Y@@0 $prevHeap@@0 $self@@0) |$fh$0x#0@@0| |$fh$0x#1@@0| |$fh$0x#2@@0|) $bx) (= ($Unbox refType $bx) ($Unbox refType |$fh$0x#2@@0|)))
 :qid |unknown.0:0|
 :skolemid |766|
 :pattern ( (|Set#IsMember| (Reads3 TwoStateAt.DT$X@@1 TwoStateAt.DT.F$Y@@0 Tclass.TwoStateAt.Cell TInt $heap@@0 (|TwoStateAt.DT.F#Handle| TwoStateAt.DT$X@@1 TwoStateAt.DT.F$Y@@0 $prevHeap@@0 $self@@0) |$fh$0x#0@@0| |$fh$0x#1@@0| |$fh$0x#2@@0|) $bx))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@3 T@T) (t2@@2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@3 t2@@2 (MapType1Store t0@@3 t1@@3 t2@@2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2@@0 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@1 (MapType1Store u0@@2 u1@@2 u2@@1 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@1 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (= $o@@2 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1819|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$T2@@4| T@U) (|#$R@@4| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|))))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|)))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.TwoStateAt.Cell) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.TwoStateAt.Cell)))
 :qid |unknown.0:0|
 :skolemid |647|
 :pattern ( ($IsBox bx@@5 Tclass.TwoStateAt.Cell))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.TwoStateAt.Cell?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.TwoStateAt.Cell?)))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( ($IsBox bx@@6 Tclass.TwoStateAt.Cell?))
)))
(assert (forall ((TwoStateAt.DT$X@@2 T@U) (TwoStateAt.DT.F$Y@@1 T@U) ($prevHeap@@1 T@U) ($self@@1 T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) (|$fh$0x#1@@1| T@U) (|$fh$0x#2@@1| T@U) ) (! (= (Requires3 TwoStateAt.DT$X@@2 TwoStateAt.DT.F$Y@@1 Tclass.TwoStateAt.Cell TInt $heap@@1 (|TwoStateAt.DT.F#Handle| TwoStateAt.DT$X@@2 TwoStateAt.DT.F$Y@@1 $prevHeap@@1 $self@@1) |$fh$0x#0@@1| |$fh$0x#1@@1| |$fh$0x#2@@1|) (|TwoStateAt.DT.F#requires| TwoStateAt.DT$X@@2 TwoStateAt.DT.F$Y@@1 $prevHeap@@1 $heap@@1 $self@@1 |$fh$0x#0@@1| |$fh$0x#1@@1| ($Unbox refType |$fh$0x#2@@1|)))
 :qid |unknown.0:0|
 :skolemid |765|
 :pattern ( (Requires3 TwoStateAt.DT$X@@2 TwoStateAt.DT.F$Y@@1 Tclass.TwoStateAt.Cell TInt $heap@@1 (|TwoStateAt.DT.F#Handle| TwoStateAt.DT$X@@2 TwoStateAt.DT.F$Y@@1 $prevHeap@@1 $self@@1) |$fh$0x#0@@1| |$fh$0x#1@@1| |$fh$0x#2@@1|))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.TwoStateAt.Cell)  (and ($Is refType |c#0@@0| Tclass.TwoStateAt.Cell?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( ($Is refType |c#0@@0| Tclass.TwoStateAt.Cell))
 :pattern ( ($Is refType |c#0@@0| Tclass.TwoStateAt.Cell?))
)))
(assert (forall ((f@@2 T@U) (t0@@4 T@U) (t1@@4 T@U) (t2@@3 T@U) (t3@@2 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc3 t0@@4 t1@@4 t2@@3 t3@@2)) (forall ((h@@4 T@U) (bx0@@1 T@U) (bx1@@1 T@U) (bx2@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@4) (and (and ($IsBox bx0@@1 t0@@4) ($IsBox bx1@@1 t1@@4)) ($IsBox bx2@@1 t2@@3))) (Requires3 t0@@4 t1@@4 t2@@3 t3@@2 h@@4 f@@2 bx0@@1 bx1@@1 bx2@@1)) ($IsBox (Apply3 t0@@4 t1@@4 t2@@3 t3@@2 h@@4 f@@2 bx0@@1 bx1@@1 bx2@@1) t3@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |559|
 :pattern ( (Apply3 t0@@4 t1@@4 t2@@3 t3@@2 h@@4 f@@2 bx0@@1 bx1@@1 bx2@@1))
)))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc3 t0@@4 t1@@4 t2@@3 t3@@2)))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (t2@@4 T@U) (t3@@3 T@U) (heap@@0 T@U) (f@@3 T@U) (bx0@@2 T@U) (bx1@@2 T@U) (bx2@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and (and (and ($IsBox bx0@@2 t0@@5) ($IsBox bx1@@2 t1@@5)) ($IsBox bx2@@2 t2@@4)) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc3 t0@@5 t1@@5 t2@@4 t3@@3)))) (|Set#Equal| (Reads3 t0@@5 t1@@5 t2@@4 t3@@3 $OneHeap f@@3 bx0@@2 bx1@@2 bx2@@2) |Set#Empty|)) (= (Requires3 t0@@5 t1@@5 t2@@4 t3@@3 $OneHeap f@@3 bx0@@2 bx1@@2 bx2@@2) (Requires3 t0@@5 t1@@5 t2@@4 t3@@3 heap@@0 f@@3 bx0@@2 bx1@@2 bx2@@2)))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (Requires3 t0@@5 t1@@5 t2@@4 t3@@3 $OneHeap f@@3 bx0@@2 bx1@@2 bx2@@2) ($IsGoodHeap heap@@0))
 :pattern ( (Requires3 t0@@5 t1@@5 t2@@4 t3@@3 heap@@0 f@@3 bx0@@2 bx1@@2 bx2@@2))
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
(assert (= (Ctor DatatypeTypeType) 8))
(assert (forall ((TwoStateAt.DT$X@@3 T@U) (TwoStateAt.DT.F$Y@@2 T@U) ($prevHeap@@2 T@U) ($h0 T@U) ($h1 T@U) (this T@U) (|x#0| T@U) (|y#0| T@U) (|c#0@@1| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) ($Is DatatypeTypeType this (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@3))) (or (|TwoStateAt.DT.F#canCall| TwoStateAt.DT$X@@3 TwoStateAt.DT.F$Y@@2 $prevHeap@@2 $h0 this |x#0| |y#0| |c#0@@1|) (and (and ($IsBox |x#0| TwoStateAt.DT$X@@3) ($IsBox |y#0| TwoStateAt.DT.F$Y@@2)) ($Is refType |c#0@@1| Tclass.TwoStateAt.Cell)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@3 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= $o@@3 |c#0@@1|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@3) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@3) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |839|
)) (= (TwoStateAt.DT.F TwoStateAt.DT$X@@3 TwoStateAt.DT.F$Y@@2 $prevHeap@@2 $h0 this |x#0| |y#0| |c#0@@1|) (TwoStateAt.DT.F TwoStateAt.DT$X@@3 TwoStateAt.DT.F$Y@@2 $prevHeap@@2 $h1 this |x#0| |y#0| |c#0@@1|))))
 :qid |unknown.0:0|
 :skolemid |840|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (TwoStateAt.DT.F TwoStateAt.DT$X@@3 TwoStateAt.DT.F$Y@@2 $prevHeap@@2 $h1 this |x#0| |y#0| |c#0@@1|))
)))
(assert (forall ((TwoStateAt.DT$X@@4 T@U) (TwoStateAt.DT.F$Y@@3 T@U) ($prevHeap@@3 T@U) ($self@@2 T@U) ($heap@@2 T@U) (|$fh$0x#0@@2| T@U) (|$fh$0x#1@@2| T@U) (|$fh$0x#2@@2| T@U) ) (! (= (Apply3 TwoStateAt.DT$X@@4 TwoStateAt.DT.F$Y@@3 Tclass.TwoStateAt.Cell TInt $heap@@2 (|TwoStateAt.DT.F#Handle| TwoStateAt.DT$X@@4 TwoStateAt.DT.F$Y@@3 $prevHeap@@3 $self@@2) |$fh$0x#0@@2| |$fh$0x#1@@2| |$fh$0x#2@@2|) ($Box intType (int_2_U (TwoStateAt.DT.F TwoStateAt.DT$X@@4 TwoStateAt.DT.F$Y@@3 $prevHeap@@3 $heap@@2 $self@@2 |$fh$0x#0@@2| |$fh$0x#1@@2| ($Unbox refType |$fh$0x#2@@2|)))))
 :qid |unknown.0:0|
 :skolemid |764|
 :pattern ( (Apply3 TwoStateAt.DT$X@@4 TwoStateAt.DT.F$Y@@3 Tclass.TwoStateAt.Cell TInt $heap@@2 (|TwoStateAt.DT.F#Handle| TwoStateAt.DT$X@@4 TwoStateAt.DT.F$Y@@3 $prevHeap@@3 $self@@2) |$fh$0x#0@@2| |$fh$0x#1@@2| |$fh$0x#2@@2|))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall ((TwoStateAt.DT$X@@5 T@U) (TwoStateAt.DT.F$Y@@4 T@U) ($prevHeap@@4 T@U) ($Heap T@U) (this@@0 T@U) (|x#0@@0| T@U) (|y#0@@0| T@U) (|c#0@@2| T@U) ) (!  (=> (and (and (and (and (and (and ($IsGoodHeap $prevHeap@@4) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap@@4 $Heap)) (and ($Is DatatypeTypeType this@@0 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@5)) ($IsAlloc DatatypeTypeType this@@0 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@5) $prevHeap@@4))) ($IsBox |x#0@@0| TwoStateAt.DT$X@@5)) ($IsBox |y#0@@0| TwoStateAt.DT.F$Y@@4)) ($Is refType |c#0@@2| Tclass.TwoStateAt.Cell)) (= (|TwoStateAt.DT.F#requires| TwoStateAt.DT$X@@5 TwoStateAt.DT.F$Y@@4 $prevHeap@@4 $Heap this@@0 |x#0@@0| |y#0@@0| |c#0@@2|)  (and (and ($IsAllocBox |x#0@@0| TwoStateAt.DT$X@@5 $prevHeap@@4) ($IsAllocBox |y#0@@0| TwoStateAt.DT.F$Y@@4 $prevHeap@@4)) ($IsAlloc refType |c#0@@2| Tclass.TwoStateAt.Cell $prevHeap@@4))))
 :qid |unknown.0:0|
 :skolemid |842|
 :pattern ( (|TwoStateAt.DT.F#requires| TwoStateAt.DT$X@@5 TwoStateAt.DT.F$Y@@4 $prevHeap@@4 $Heap this@@0 |x#0@@0| |y#0@@0| |c#0@@2|) ($IsGoodHeap $Heap))
)))
(assert (forall ((TwoStateAt.DT$X@@6 T@U) ) (! (= (Tclass.TwoStateAt.DT_0 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@6)) TwoStateAt.DT$X@@6)
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@6))
)))
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert (forall (($h@@2 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.TwoStateAt.Cell?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) TwoStateAt.Cell.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |798|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) TwoStateAt.Cell.data)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((TwoStateAt.DT$X@@7 T@U) (TwoStateAt.DT.F$Y@@5 T@U) ($prevHeap@@5 T@U) ($Heap@@0 T@U) (this@@1 T@U) (|x#0@@1| T@U) (|y#0@@1| T@U) (|c#0@@3| T@U) ) (!  (=> (or (|TwoStateAt.DT.F#canCall| TwoStateAt.DT$X@@7 TwoStateAt.DT.F$Y@@5 $prevHeap@@5 $Heap@@0 this@@1 |x#0@@1| |y#0@@1| |c#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and (and ($IsGoodHeap $prevHeap@@5) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@5 $Heap@@0)) (and ($Is DatatypeTypeType this@@1 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@7)) ($IsAlloc DatatypeTypeType this@@1 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@7) $prevHeap@@5))) ($IsBox |x#0@@1| TwoStateAt.DT$X@@7)) ($IsBox |y#0@@1| TwoStateAt.DT.F$Y@@5)) ($Is refType |c#0@@3| Tclass.TwoStateAt.Cell)))) (= (TwoStateAt.DT.F TwoStateAt.DT$X@@7 TwoStateAt.DT.F$Y@@5 $prevHeap@@5 $Heap@@0 this@@1 |x#0@@1| |y#0@@1| |c#0@@3|) (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#0@@3|) TwoStateAt.Cell.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 |c#0@@3|) TwoStateAt.Cell.data))))))
 :qid |unknown.0:0|
 :skolemid |843|
 :pattern ( (TwoStateAt.DT.F TwoStateAt.DT$X@@7 TwoStateAt.DT.F$Y@@5 $prevHeap@@5 $Heap@@0 this@@1 |x#0@@1| |y#0@@1| |c#0@@3|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((f@@4 T@U) (t0@@6 T@U) (t1@@6 T@U) (t2@@5 T@U) (t3@@4 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@4 (Tclass._System.___hFunc3 t0@@6 t1@@6 t2@@5 t3@@4) h@@5)) (forall ((bx0@@3 T@U) (bx1@@3 T@U) (bx2@@3 T@U) ) (!  (=> (and (and (and ($IsAllocBox bx0@@3 t0@@6 h@@5) ($IsAllocBox bx1@@3 t1@@6 h@@5)) ($IsAllocBox bx2@@3 t2@@5 h@@5)) (Requires3 t0@@6 t1@@6 t2@@5 t3@@4 h@@5 f@@4 bx0@@3 bx1@@3 bx2@@3)) ($IsAllocBox (Apply3 t0@@6 t1@@6 t2@@5 t3@@4 h@@5 f@@4 bx0@@3 bx1@@3 bx2@@3) t3@@4 h@@5))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( (Apply3 t0@@6 t1@@6 t2@@5 t3@@4 h@@5 f@@4 bx0@@3 bx1@@3 bx2@@3))
)))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( ($IsAlloc HandleTypeType f@@4 (Tclass._System.___hFunc3 t0@@6 t1@@6 t2@@5 t3@@4) h@@5))
)))
(assert (forall ((t0@@7 T@U) (t1@@7 T@U) (t2@@6 T@U) (t3@@5 T@U) (h0 T@U) (h1 T@U) (f@@5 T@U) (bx0@@4 T@U) (bx1@@4 T@U) (bx2@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and (and (and ($IsBox bx0@@4 t0@@7) ($IsBox bx1@@4 t1@@7)) ($IsBox bx2@@4 t2@@6)) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc3 t0@@7 t1@@7 t2@@6 t3@@5)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads3 t0@@7 t1@@7 t2@@6 t3@@5 h0 f@@5 bx0@@4 bx1@@4 bx2@@4) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |549|
))) (= (Requires3 t0@@7 t1@@7 t2@@6 t3@@5 h0 f@@5 bx0@@4 bx1@@4 bx2@@4) (Requires3 t0@@7 t1@@7 t2@@6 t3@@5 h1 f@@5 bx0@@4 bx1@@4 bx2@@4)))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( ($HeapSucc h0 h1) (Requires3 t0@@7 t1@@7 t2@@6 t3@@5 h1 f@@5 bx0@@4 bx1@@4 bx2@@4))
)))
(assert (forall ((t0@@8 T@U) (t1@@8 T@U) (t2@@7 T@U) (t3@@6 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@6 T@U) (bx0@@5 T@U) (bx1@@5 T@U) (bx2@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and (and (and ($IsBox bx0@@5 t0@@8) ($IsBox bx1@@5 t1@@8)) ($IsBox bx2@@5 t2@@7)) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc3 t0@@8 t1@@8 t2@@7 t3@@6)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads3 t0@@8 t1@@8 t2@@7 t3@@6 h1@@0 f@@6 bx0@@5 bx1@@5 bx2@@5) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |551|
))) (= (Requires3 t0@@8 t1@@8 t2@@7 t3@@6 h0@@0 f@@6 bx0@@5 bx1@@5 bx2@@5) (Requires3 t0@@8 t1@@8 t2@@7 t3@@6 h1@@0 f@@6 bx0@@5 bx1@@5 bx2@@5)))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires3 t0@@8 t1@@8 t2@@7 t3@@6 h1@@0 f@@6 bx0@@5 bx1@@5 bx2@@5))
)))
(assert (forall ((TwoStateAt.DT$X@@8 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@8)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@8))))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( ($IsBox bx@@8 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@8)))
)))
(assert (= (Tag Tclass.TwoStateAt.Cell) Tagclass.TwoStateAt.Cell))
(assert (= (TagFamily Tclass.TwoStateAt.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass.TwoStateAt.Cell?) Tagclass.TwoStateAt.Cell?))
(assert (= (TagFamily Tclass.TwoStateAt.Cell?) tytagFamily$Cell))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@1 o@@3) (|Set#IsMember| b@@1 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@3))
 :pattern ( (|Set#IsMember| b@@1 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((t0@@9 T@U) (t1@@9 T@U) (t2@@8 T@U) (t3@@7 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@7 T@U) (bx0@@6 T@U) (bx1@@6 T@U) (bx2@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and (and (and ($IsBox bx0@@6 t0@@9) ($IsBox bx1@@6 t1@@9)) ($IsBox bx2@@6 t2@@8)) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc3 t0@@9 t1@@9 t2@@8 t3@@7)))) (forall ((o@@4 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads3 t0@@9 t1@@9 t2@@8 t3@@7 h0@@1 f@@7 bx0@@6 bx1@@6 bx2@@6) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@4) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@4) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |545|
))) (= (Reads3 t0@@9 t1@@9 t2@@8 t3@@7 h0@@1 f@@7 bx0@@6 bx1@@6 bx2@@6) (Reads3 t0@@9 t1@@9 t2@@8 t3@@7 h1@@1 f@@7 bx0@@6 bx1@@6 bx2@@6)))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads3 t0@@9 t1@@9 t2@@8 t3@@7 h1@@1 f@@7 bx0@@6 bx1@@6 bx2@@6))
)))
(assert (forall ((t0@@10 T@U) (t1@@10 T@U) (t2@@9 T@U) (t3@@8 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@8 T@U) (bx0@@7 T@U) (bx1@@7 T@U) (bx2@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and (and (and ($IsBox bx0@@7 t0@@10) ($IsBox bx1@@7 t1@@10)) ($IsBox bx2@@7 t2@@9)) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc3 t0@@10 t1@@10 t2@@9 t3@@8)))) (forall ((o@@5 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads3 t0@@10 t1@@10 t2@@9 t3@@8 h1@@2 f@@8 bx0@@7 bx1@@7 bx2@@7) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@5) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@5) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |547|
))) (= (Reads3 t0@@10 t1@@10 t2@@9 t3@@8 h0@@2 f@@8 bx0@@7 bx1@@7 bx2@@7) (Reads3 t0@@10 t1@@10 t2@@9 t3@@8 h1@@2 f@@8 bx0@@7 bx1@@7 bx2@@7)))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads3 t0@@10 t1@@10 t2@@9 t3@@8 h1@@2 f@@8 bx0@@7 bx1@@7 bx2@@7))
)))
(assert (forall ((t0@@11 T@U) (t1@@11 T@U) (t2@@10 T@U) (t3@@9 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@9 T@U) (bx0@@8 T@U) (bx1@@8 T@U) (bx2@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and (and (and ($IsBox bx0@@8 t0@@11) ($IsBox bx1@@8 t1@@11)) ($IsBox bx2@@8 t2@@10)) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc3 t0@@11 t1@@11 t2@@10 t3@@9)))) (forall ((o@@6 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads3 t0@@11 t1@@11 t2@@10 t3@@9 h0@@3 f@@9 bx0@@8 bx1@@8 bx2@@8) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@6) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@6) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |553|
))) (= (Apply3 t0@@11 t1@@11 t2@@10 t3@@9 h0@@3 f@@9 bx0@@8 bx1@@8 bx2@@8) (Apply3 t0@@11 t1@@11 t2@@10 t3@@9 h1@@3 f@@9 bx0@@8 bx1@@8 bx2@@8)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply3 t0@@11 t1@@11 t2@@10 t3@@9 h1@@3 f@@9 bx0@@8 bx1@@8 bx2@@8))
)))
(assert (forall ((t0@@12 T@U) (t1@@12 T@U) (t2@@11 T@U) (t3@@10 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@10 T@U) (bx0@@9 T@U) (bx1@@9 T@U) (bx2@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and (and (and ($IsBox bx0@@9 t0@@12) ($IsBox bx1@@9 t1@@12)) ($IsBox bx2@@9 t2@@11)) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc3 t0@@12 t1@@12 t2@@11 t3@@10)))) (forall ((o@@7 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads3 t0@@12 t1@@12 t2@@11 t3@@10 h1@@4 f@@10 bx0@@9 bx1@@9 bx2@@9) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@7) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@7) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |555|
))) (= (Apply3 t0@@12 t1@@12 t2@@11 t3@@10 h0@@4 f@@10 bx0@@9 bx1@@9 bx2@@9) (Apply3 t0@@12 t1@@12 t2@@11 t3@@10 h1@@4 f@@10 bx0@@9 bx1@@9 bx2@@9)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply3 t0@@12 t1@@12 t2@@11 t3@@10 h1@@4 f@@10 bx0@@9 bx1@@9 bx2@@9))
)))
(assert (forall ((h@@6 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@6))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |c#0@@4| () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun TwoStateAt.DT$X@@9 () T@U)
(declare-fun TwoStateAt.DT.F$Y@@6 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@2 () T@U)
(declare-fun |x#0@@2| () T@U)
(declare-fun |y#0@@2| () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellformed$$TwoStateAt.DT.F)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 6)) (or (not (= |c#0@@4| null)) (not true))) (=> (or (not (= |c#0@@4| null)) (not true)) (=> (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |c#0@@4| TwoStateAt.Cell.data))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (not (= |c#0@@4| null)) (not true))) (=> (or (not (= |c#0@@4| null)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($IsAlloc refType |c#0@@4| Tclass.TwoStateAt.Cell $Heap@@1)) (=> ($IsAlloc refType |c#0@@4| Tclass.TwoStateAt.Cell $Heap@@1) (=> (= (TwoStateAt.DT.F TwoStateAt.DT$X@@9 TwoStateAt.DT.F$Y@@6 $Heap@@1 current$Heap this@@2 |x#0@@2| |y#0@@2| |c#0@@4|) (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |c#0@@4|) TwoStateAt.Cell.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |c#0@@4|) TwoStateAt.Cell.data))))) (=> (and ($Is intType (int_2_U (TwoStateAt.DT.F TwoStateAt.DT$X@@9 TwoStateAt.DT.F$Y@@6 $Heap@@1 current$Heap this@@2 |x#0@@2| |y#0@@2| |c#0@@4|)) TInt) (= (ControlFlow 0 3) (- 0 2))) |b$reqreads#0@0|)))))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null current$Heap alloc |c#0@@4|)) (and (=> (= (ControlFlow 0 7) 1) anon5_Then_correct) (=> (= (ControlFlow 0 7) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and ($Is DatatypeTypeType this@@2 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@9)) ($IsAlloc DatatypeTypeType this@@2 (Tclass.TwoStateAt.DT TwoStateAt.DT$X@@9) previous$Heap))) (and (and ($IsBox |x#0@@2| TwoStateAt.DT$X@@9) ($IsAllocBox |x#0@@2| TwoStateAt.DT$X@@9 previous$Heap)) (and ($IsBox |y#0@@2| TwoStateAt.DT.F$Y@@6) ($IsAllocBox |y#0@@2| TwoStateAt.DT.F$Y@@6 previous$Heap)))) (and (and (and ($Is refType |c#0@@4| Tclass.TwoStateAt.Cell) ($IsAlloc refType |c#0@@4| Tclass.TwoStateAt.Cell previous$Heap)) (= 1 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@1) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 8) 7)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
