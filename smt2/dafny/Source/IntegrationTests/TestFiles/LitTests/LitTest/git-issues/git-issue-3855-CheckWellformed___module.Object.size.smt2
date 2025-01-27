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
(declare-fun TChar () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun class._module.Object? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun field$fields () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun _module.Object.fields () T@U)
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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Object.size (T@U T@U) Int)
(declare-fun |_module.Object.size#canCall| (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun _module.Object.outgoing (T@U T@U) T@U)
(declare-fun |_module.Object.outgoing#canCall| (T@U T@U) Bool)
(declare-fun |Map#Card| (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
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
(assert (distinct TChar TagChar TagSet TagSeq TagMap alloc allocName Tagclass._System.nat |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.Object Tagclass._module.Object? class._module.Object? tytagFamily$nat |tytagFamily$_tuple#2| tytagFamily$Object field$fields)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TChar) TagChar))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Object?)  (or (= $o null) (= (dtype $o) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( ($Is refType $o Tclass._module.Object?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h@@0) ($IsAlloc refType |c#0| Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h@@0))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@2 T@U) ) (! (|Set#IsMember| s x@@2)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s x@@2))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s))
)))
(assert (= (FDim _module.Object.fields) 0))
(assert (= (FieldOfDecl class._module.Object? field$fields) _module.Object.fields))
(assert  (not ($IsGhostField _module.Object.fields)))
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Object? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Object? $h@@1))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@2)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@2) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@2))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Object.size#canCall| $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Object) ($IsAlloc refType this Tclass._module.Object $Heap)))))) (<= (LitInt 0) (_module.Object.size $Heap this)))
 :qid |gitissue3855dfy.108:12|
 :skolemid |762|
 :pattern ( (_module.Object.size $Heap this))
))))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsBox bx@@1 Tclass._module.Object))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsBox bx@@2 Tclass._module.Object?))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) (and (= $o@@1 |l#3|) (= $f |l#4|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1407|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Object)  (and ($Is refType |c#0@@0| Tclass._module.Object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |802|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Object?))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Object.outgoing#canCall| $Heap@@0 this@@0) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Object) ($IsAlloc refType this@@0 Tclass._module.Object $Heap@@0)))))) ($Is SetType (_module.Object.outgoing $Heap@@0 this@@0) (TSet Tclass._module.Object)))
 :qid |gitissue3855dfy.106:12|
 :skolemid |752|
 :pattern ( (_module.Object.outgoing $Heap@@0 this@@0))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Object.size#canCall| $Heap@@1 this@@1) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Object) ($IsAlloc refType this@@1 Tclass._module.Object $Heap@@1)))))) (and (|_module.Object.outgoing#canCall| $Heap@@1 this@@1) (= (_module.Object.size $Heap@@1 this@@1) (|Set#Card| (_module.Object.outgoing $Heap@@1 this@@1)))))
 :qid |gitissue3855dfy.108:12|
 :skolemid |764|
 :pattern ( (_module.Object.size $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((m@@4 T@U) ) (! (= (= (|Map#Card| m@@4) 0) (= m@@4 |Map#Empty|))
 :qid |DafnyPreludebpl.1382:15|
 :skolemid |272|
 :pattern ( (|Map#Card| m@@4))
)))
(assert (= (Ctor MapType) 9))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Object.outgoing#canCall| $Heap@@2 this@@2) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Object) ($IsAlloc refType this@@2 Tclass._module.Object $Heap@@2)))))) (= (_module.Object.outgoing $Heap@@2 this@@2) (|Map#Values| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Object.fields)))))
 :qid |gitissue3855dfy.106:12|
 :skolemid |755|
 :pattern ( (_module.Object.outgoing $Heap@@2 this@@2) ($IsGoodHeap $Heap@@2))
))))
(assert (forall (($h@@3 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.Object?))) ($Is MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.Object.fields)) (TMap (TSeq TChar) Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |742|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.Object.fields)))
)))
(assert (forall (($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))) ($IsAlloc MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.Object.fields)) (TMap (TSeq TChar) Tclass._module.Object) $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |743|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.Object.fields)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Object.outgoing#canCall| $Heap@@3 this@@3) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@3) (or (not (= this@@3 null)) (not true))) ($IsAlloc refType this@@3 Tclass._module.Object $Heap@@3)))) ($IsAlloc SetType (_module.Object.outgoing $Heap@@3 this@@3) (TSet Tclass._module.Object) $Heap@@3))
 :qid |gitissue3855dfy.106:12|
 :skolemid |753|
 :pattern ( ($IsAlloc SetType (_module.Object.outgoing $Heap@@3 this@@3) (TSet Tclass._module.Object) $Heap@@3))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (= (Ctor charType) 10))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TChar) (and (= ($Box charType ($Unbox charType bx@@3)) bx@@3) ($Is charType ($Unbox charType bx@@3) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@3 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Set#Card| s@@0))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((s@@1 T@U) ) (! (<= 0 (|Seq#Length| s@@1))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((m@@5 T@U) ) (! (<= 0 (|Map#Card| m@@5))
 :qid |DafnyPreludebpl.1380:15|
 :skolemid |271|
 :pattern ( (|Map#Card| m@@5))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@4) ($IsAllocBox bx@@4 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall ((t@@1 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@1 u)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@1 u))
)))
(assert (forall ((t@@2 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@2 u@@0))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@3 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (= (Ctor SeqType) 11))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@3) h@@1) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i) t0@@3 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@3) h@@1))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((v@@4 T@U) (t0@@4 T@U) (t1@@1 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@4 t1@@1) h@@2) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@5) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@5) t1@@1 h@@2) ($IsAllocBox bx@@5 t0@@4 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@5))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@5))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@4 t1@@1) h@@2))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@6 T@U) (s@@2 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@6 (TMap s@@2 t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@6)) bx@@6) ($Is MapType ($Unbox MapType bx@@6) (TMap s@@2 t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@6 (TMap s@@2 t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@6) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@7) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@7))
)))
(assert (forall ((m@@8 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@8) item)  (and (|Set#IsMember| (|Map#Domain| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@8) item))
)))
(assert (forall ((m@@9 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@9) v@@6) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@9) u@@3) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@9) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@9) v@@6))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((m@@10 T@U) ) (! (= (|Set#Card| (|Map#Domain| m@@10)) (|Map#Card| m@@10))
 :qid |DafnyPreludebpl.1396:15|
 :skolemid |279|
 :pattern ( (|Set#Card| (|Map#Domain| m@@10)))
 :pattern ( (|Map#Card| m@@10))
)))
(assert (forall ((m@@11 T@U) ) (! (= (|Set#Card| (|Map#Items| m@@11)) (|Map#Card| m@@11))
 :qid |DafnyPreludebpl.1402:15|
 :skolemid |281|
 :pattern ( (|Set#Card| (|Map#Items| m@@11)))
 :pattern ( (|Map#Card| m@@11))
)))
(assert (forall ((m@@12 T@U) ) (! (<= (|Set#Card| (|Map#Values| m@@12)) (|Map#Card| m@@12))
 :qid |DafnyPreludebpl.1399:15|
 :skolemid |280|
 :pattern ( (|Set#Card| (|Map#Values| m@@12)))
 :pattern ( (|Map#Card| m@@12))
)))
(assert (forall ((bx@@8 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@8 (TSet t@@9)))
)))
(assert (forall ((bx@@9 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@9 (TSeq t@@10)) (and (= ($Box SeqType ($Unbox SeqType bx@@9)) bx@@9) ($Is SeqType ($Unbox SeqType bx@@9) (TSeq t@@10))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@9 (TSeq t@@10)))
)))
(assert (forall ((v@@7 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@7 (TMap t0@@5 t1@@2)) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@10) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@10) t1@@2) ($IsBox bx@@10 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@10))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@10))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@7 (TMap t0@@5 t1@@2)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@5))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@5))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@6)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@6))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@6))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@6))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((s@@3 T@U) ) (!  (=> (= (|Seq#Length| s@@3) 0) (= s@@3 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((h@@3 T@U) (v@@8 T@U) ) (! ($IsAlloc charType v@@8 TChar h@@3)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@8 TChar h@@3))
)))
(assert (forall ((v@@9 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@9 (TSeq t0@@6)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@9))) ($IsBox (|Seq#Index| v@@9 i@@0) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@9 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@9 (TSeq t0@@6)))
)))
(assert (forall ((m@@13 T@U) ) (!  (or (= m@@13 |Map#Empty|) (exists ((k@@0 T@U) (v@@10 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@13) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@10)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@13))
)))
(assert (forall ((s@@4 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@4))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@4 i@@1))) (|Seq#Rank| s@@4)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@4 i@@1))))
)))
(assert (forall ((v@@11 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@11 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@11) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@11) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@11) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@11 (TMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@12 T@U) ) (! ($Is charType v@@12 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@12 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@4 () T@U)
(declare-fun $Heap@@4 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.Object.size)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon5_Else_correct  (=> ($IsAllocBox ($Box refType this@@4) Tclass._module.Object? $Heap@@4) (=> (and (= |b$reqreads#0@0| (forall (($o@@4 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@4) alloc)))) (and (= $o@@4 this@@4) (= $f@@0 _module.Object.fields))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@4 $f@@0)))
 :qid |gitissue3855dfy.108:46|
 :skolemid |765|
))) (|_module.Object.outgoing#canCall| $Heap@@4 this@@4)) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($Is intType (int_2_U (|Set#Card| (_module.Object.outgoing $Heap@@4 this@@4))) Tclass._System.nat)) (=> ($Is intType (int_2_U (|Set#Card| (_module.Object.outgoing $Heap@@4 this@@4))) Tclass._System.nat) (=> (and (and (= (_module.Object.size $Heap@@4 this@@4) (|Set#Card| (_module.Object.outgoing $Heap@@4 this@@4))) (|_module.Object.outgoing#canCall| $Heap@@4 this@@4)) (and ($Is intType (int_2_U (_module.Object.size $Heap@@4 this@@4)) Tclass._System.nat) (= (ControlFlow 0 3) (- 0 2)))) |b$reqreads#0@0|)))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#4| null $Heap@@4 alloc this@@4 _module.Object.fields)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (not (= this@@4 null)) (not true))) (=> (or (not (= this@@4 null)) (not true)) (and (=> (= (ControlFlow 0 5) 1) anon5_Then_correct) (=> (= (ControlFlow 0 5) 3) anon5_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@4) ($IsHeapAnchor $Heap@@4)) (=> (and (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Object) ($IsAlloc refType this@@4 Tclass._module.Object $Heap@@4))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 7) 5))) anon0_correct))))
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
