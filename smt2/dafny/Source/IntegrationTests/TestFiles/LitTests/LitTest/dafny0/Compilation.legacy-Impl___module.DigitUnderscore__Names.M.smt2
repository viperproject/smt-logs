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
(declare-fun class._module.DigitUnderscore__Names? () T@U)
(declare-fun Tagclass._module.DigitUnderscore__Names? () T@U)
(declare-fun Tagclass._module.DigitUnderscore__Names () T@U)
(declare-fun tytagFamily$DigitUnderscore_Names () T@U)
(declare-fun field$0_1_0 () T@U)
(declare-fun field$010 () T@U)
(declare-fun field$10 () T@U)
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
(declare-fun Tclass._module.DigitUnderscore__Names? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.DigitUnderscore__Names () T@U)
(declare-fun _module.DigitUnderscore__Names._0_1_0 () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.DigitUnderscore__Names._010 () T@U)
(declare-fun _module.DigitUnderscore__Names._10 () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun q@Int (Real) Int)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#7| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun q@Real (Int) Real)
(declare-fun DeclType (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName class._module.DigitUnderscore__Names? Tagclass._module.DigitUnderscore__Names? Tagclass._module.DigitUnderscore__Names tytagFamily$DigitUnderscore_Names field$0_1_0 field$010 field$10)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.DigitUnderscore__Names?)  (or (= $o null) (= (dtype $o) Tclass._module.DigitUnderscore__Names?)))
 :qid |unknown.0:0|
 :skolemid |11000|
 :pattern ( ($Is refType $o Tclass._module.DigitUnderscore__Names?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.DigitUnderscore__Names $h) ($IsAlloc refType |c#0| Tclass._module.DigitUnderscore__Names? $h))
 :qid |unknown.0:0|
 :skolemid |11013|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.DigitUnderscore__Names $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.DigitUnderscore__Names? $h))
)))
(assert (= (FDim _module.DigitUnderscore__Names._0_1_0) 0))
(assert (= (FieldOfDecl class._module.DigitUnderscore__Names? field$0_1_0) _module.DigitUnderscore__Names._0_1_0))
(assert  (not ($IsGhostField _module.DigitUnderscore__Names._0_1_0)))
(assert (= (FDim _module.DigitUnderscore__Names._010) 0))
(assert (= (FieldOfDecl class._module.DigitUnderscore__Names? field$010) _module.DigitUnderscore__Names._010))
(assert  (not ($IsGhostField _module.DigitUnderscore__Names._010)))
(assert (= (FDim _module.DigitUnderscore__Names._10) 0))
(assert (= (FieldOfDecl class._module.DigitUnderscore__Names? field$10) _module.DigitUnderscore__Names._10))
(assert  (not ($IsGhostField _module.DigitUnderscore__Names._10)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.DigitUnderscore__Names? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |11001|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.DigitUnderscore__Names? $h@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |10517|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |10518|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Real) ) (! (= (q@Int x@@2) (to_int x@@2))
 :qid |DafnyPreludebpl.578:14|
 :skolemid |10512|
 :pattern ( (q@Int x@@2))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |10416|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 Real) ) (! (= (LitReal x@@4) x@@4)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |10418|
 :pattern ( (LitReal x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |10414|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |10425|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.DigitUnderscore__Names?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.DigitUnderscore__Names._0_1_0)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |11003|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.DigitUnderscore__Names._0_1_0)))
)))
(assert (forall (($h@@2 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.DigitUnderscore__Names?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.DigitUnderscore__Names._010)) TInt $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |11005|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.DigitUnderscore__Names._010)))
)))
(assert (forall (($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.DigitUnderscore__Names?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.DigitUnderscore__Names._10)) TInt $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |11007|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.DigitUnderscore__Names._10)))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |10509|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@4 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#7| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) (= $o@@4 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |11319|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#7| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.DigitUnderscore__Names)  (and ($Is refType |c#0@@0| Tclass._module.DigitUnderscore__Names?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |11012|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.DigitUnderscore__Names))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.DigitUnderscore__Names?))
)))
(assert (forall ((x@@7 Int) ) (! (= (q@Real x@@7) (to_real x@@7))
 :qid |DafnyPreludebpl.579:15|
 :skolemid |10513|
 :pattern ( (q@Real x@@7))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |10516|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |10506|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((i Int) ) (! (= (q@Int (q@Real i)) i)
 :qid |DafnyPreludebpl.580:15|
 :skolemid |10514|
 :pattern ( (q@Int (q@Real i)))
)))
(assert (forall ((x@@8 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |10424|
 :pattern ( ($Box T@@2 x@@8))
)))
(assert (forall (($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.DigitUnderscore__Names?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.DigitUnderscore__Names._0_1_0)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |11002|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.DigitUnderscore__Names._0_1_0)))
)))
(assert (forall (($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.DigitUnderscore__Names?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.DigitUnderscore__Names._010)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |11004|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.DigitUnderscore__Names._010)))
)))
(assert (forall (($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.DigitUnderscore__Names?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.DigitUnderscore__Names._10)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |11006|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.DigitUnderscore__Names._10)))
)))
(assert (forall ((h@@1 T@U) (r T@U) (f T@U) (x@@9 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@9))) ($HeapSucc h@@1 (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@9))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |10515|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@9)))
)))
(assert (= (Tag Tclass._module.DigitUnderscore__Names?) Tagclass._module.DigitUnderscore__Names?))
(assert (= (TagFamily Tclass._module.DigitUnderscore__Names?) tytagFamily$DigitUnderscore_Names))
(assert (= (Tag Tclass._module.DigitUnderscore__Names) Tagclass._module.DigitUnderscore__Names))
(assert (= (TagFamily Tclass._module.DigitUnderscore__Names) tytagFamily$DigitUnderscore_Names))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |10417|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@11))) (Lit BoxType ($Box realType (real_2_U x@@11))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |10419|
 :pattern ( ($Box realType (real_2_U (LitReal x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@12)) (Lit BoxType ($Box T@@3 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |10415|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@12)))
)))
(assert (forall ((h@@2 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |10460|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@2))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |10439|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@2 () T@U)
(declare-fun this () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |$rhs#1@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#2@0| () Int)
(declare-fun |newtype$check#0@0| () Real)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.DigitUnderscore__Names.M)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon4_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this) _module.DigitUnderscore__Names._0_1_0))) (q@Int (LitReal 7.0)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this) _module.DigitUnderscore__Names._010))) (LitInt 8))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this) _module.DigitUnderscore__Names._10))) (LitInt 9))) (=> (and (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this) _module.DigitUnderscore__Names._0_1_0))) (q@Int (LitReal 7.0))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this) _module.DigitUnderscore__Names._010))) (LitInt 8))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this) _module.DigitUnderscore__Names._10))) (LitInt 9))) (= (ControlFlow 0 2) (- 0 1))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.DigitUnderscore__Names._10))))))))
(let ((anon6_Else_correct  (=> (and (not (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this) _module.DigitUnderscore__Names._0_1_0))) (q@Int (LitReal 7.0))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this) _module.DigitUnderscore__Names._010))) (LitInt 8)))) (= (ControlFlow 0 7) 2)) anon4_correct)))
(let ((anon6_Then_correct  (=> (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this) _module.DigitUnderscore__Names._0_1_0))) (q@Int (LitReal 7.0))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this) _module.DigitUnderscore__Names._010))) (LitInt 8))) (= (ControlFlow 0 6) 2)) anon4_correct)))
(let ((anon5_Else_correct  (=> (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this) _module.DigitUnderscore__Names._0_1_0))) (q@Int (LitReal 7.0)))) (not true)) (and (=> (= (ControlFlow 0 9) 6) anon6_Then_correct) (=> (= (ControlFlow 0 9) 7) anon6_Else_correct)))))
(let ((anon5_Then_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this) _module.DigitUnderscore__Names._0_1_0))) (q@Int (LitReal 7.0))) (and (=> (= (ControlFlow 0 8) 6) anon6_Then_correct) (=> (= (ControlFlow 0 8) 7) anon6_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#7| null $Heap alloc this)) (and (=> (= (ControlFlow 0 10) (- 0 14)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.DigitUnderscore__Names._0_1_0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.DigitUnderscore__Names._0_1_0)) (=> (= |$rhs#0@0| (LitInt 7)) (=> (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.DigitUnderscore__Names._0_1_0 ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@0)) (and (=> (= (ControlFlow 0 10) (- 0 13)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.DigitUnderscore__Names._010))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.DigitUnderscore__Names._010)) (=> (= |$rhs#1@0| (LitInt 8)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this) _module.DigitUnderscore__Names._010 ($Box intType (int_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.DigitUnderscore__Names._10))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.DigitUnderscore__Names._10)) (=> (and (and (= |$rhs#2@0| (LitInt 9)) (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this) _module.DigitUnderscore__Names._10 ($Box intType (int_2_U |$rhs#2@0|)))))) (and ($IsGoodHeap $Heap@2) (= |newtype$check#0@0| (LitReal 7.0)))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (= (q@Real (q@Int |newtype$check#0@0|)) |newtype$check#0@0|)) (=> (= (q@Real (q@Int |newtype$check#0@0|)) |newtype$check#0@0|) (and (=> (= (ControlFlow 0 10) 8) anon5_Then_correct) (=> (= (ControlFlow 0 10) 9) anon5_Else_correct))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.DigitUnderscore__Names) ($IsAlloc refType this Tclass._module.DigitUnderscore__Names $Heap))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 15) 10))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
