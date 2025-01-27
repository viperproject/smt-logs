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
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun SetType () T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |lambda#2| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#3| (Bool) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun Mod (Int Int) Int)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun |lambda#1| () T@U)
(declare-fun |lambda#4| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._System.___hFunc1 tytagFamily$nat tytagFamily$object tytagFamily$array |tytagFamily$_#Func1|)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 3)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (= (Ctor SetType) 7)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |372|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#i#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#2| |l#0|) |$l#0#heap#0| |$l#0#i#0|)) ($IsBox |$l#0#i#0| |l#0|))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#2| |l#0|) |$l#0#heap#0| |$l#0#i#0|))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert (forall ((s@@0 T@U) (i Int) (v@@0 T@U) (n@@0 Int) ) (!  (=> (and (<= 0 n@@0) (< n@@0 (|Seq#Length| s@@0))) (and (=> (= i n@@0) (= (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0) v@@0)) (=> (or (not (= i n@@0)) (not true)) (= (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0) (|Seq#Index| s@@0 n@@0)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |229|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0))
)))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@1))
)))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@3))
)))
(assert (forall ((h@@0 T@U) (a T@U) (n0 Int) (n1 Int) ) (!  (=> (and (and (= (+ n0 1) n1) (<= 0 n0)) (<= n1 (_System.array.Length a))) (= (|Seq#Take| (|Seq#FromArray| h@@0 a) n1) (|Seq#Build| (|Seq#Take| (|Seq#FromArray| h@@0 a) n0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 a) (IndexField n0)))))
 :qid |DafnyPreludebpl.1348:15|
 :skolemid |266|
 :pattern ( (|Seq#Take| (|Seq#FromArray| h@@0 a) n0) (|Seq#Take| (|Seq#FromArray| h@@0 a) n1))
)))
(assert (forall ((s@@1 T@U) (i@@0 Int) (v@@1 T@U) (n@@1 Int) ) (!  (=> (and (and (<= 0 n@@1) (<= n@@1 i@@0)) (< i@@0 (|Seq#Length| s@@1))) (= (|Seq#Drop| (|Seq#Update| s@@1 i@@0 v@@1) n@@1) (|Seq#Update| (|Seq#Drop| s@@1 n@@1) (- i@@0 n@@1) v@@1)))
 :qid |DafnyPreludebpl.1278:15|
 :skolemid |252|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@1 i@@0 v@@1) n@@1))
)))
(assert (forall ((h@@1 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@1 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@1 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@1 k))
)))
(assert (forall ((s@@2 T@U) (n@@2 Int) ) (!  (=> (= n@@2 0) (= (|Seq#Drop| s@@2 n@@2) s@@2))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@2 n@@2))
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
(assert (= (Ctor SeqType) 9))
(assert (forall ((s@@3 T@U) (bx@@2 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@3 (TSeq t)) ($IsBox bx@@2 t)) ($Is SeqType (|Seq#Build| s@@3 bx@@2) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@3 bx@@2) (TSeq t)))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((s@@4 T@U) (n@@3 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@3)) (< j (|Seq#Length| s@@4))) (= (|Seq#Index| (|Seq#Take| s@@4 n@@3) j) (|Seq#Index| s@@4 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@4 n@@3) j))
 :pattern ( (|Seq#Index| s@@4 j) (|Seq#Take| s@@4 n@@3))
)))
(assert (forall ((s@@5 T@U) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (<= n@@4 (|Seq#Length| s@@5))) (= (|Seq#Length| (|Seq#Drop| s@@5 n@@4)) (- (|Seq#Length| s@@5) n@@4)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@5 n@@4)))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@4 T@U) ($o@@2 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@2)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@2) alloc)))) ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@2) (IndexField $i0)) _System.array$arg@@2 $h@@4))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@2) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |379|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((v@@2 T@U) (t0@@6 T@U) ) (! (= ($Is SetType v@@2 (TSet t0@@6)) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsBox bx@@3 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@2 (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@6 T@U) (v@@3 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@6 v@@3)) (+ 1 (|Seq#Length| s@@6)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@6 v@@3))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@4 T@U) (t@@0 T@U) (h@@2 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@4) t@@0 h@@2) ($IsAlloc T@@1 v@@4 t@@0 h@@2))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@4) t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@0 T@U) (bx@@4 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@3 k@@0) (=> ($IsAllocBox bx@@4 t@@1 h@@3) ($IsAllocBox bx@@4 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@3 k@@0) ($IsAllocBox bx@@4 t@@1 h@@3))
)))
(assert (forall ((h@@4 T@U) (k@@1 T@U) (v@@5 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@4 k@@1) (=> ($IsAlloc T@@2 v@@5 t@@2 h@@4) ($IsAlloc T@@2 v@@5 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@4 k@@1) ($IsAlloc T@@2 v@@5 t@@2 h@@4))
)))
(assert (forall ((s@@7 T@U) (n@@5 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@5) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@7) n@@5))) (= (|Seq#Index| (|Seq#Drop| s@@7 n@@5) j@@1) (|Seq#Index| s@@7 (+ j@@1 n@@5))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@7 n@@5) j@@1))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((s@@8 T@U) (bx@@5 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s@@8) bx@@5) (U_2_bool (MapType1Select refType boolType s@@8 ($Unbox refType bx@@5))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s@@8) bx@@5))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@5 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@5 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@5 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@5 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@6 Tclass._System.nat))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@7 Tclass._System.object?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@8 Tclass._System.object))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((s@@9 T@U) (i@@1 Int) (v@@6 T@U) ) (!  (and (=> (= i@@1 (|Seq#Length| s@@9)) (= (|Seq#Index| (|Seq#Build| s@@9 v@@6) i@@1) v@@6)) (=> (or (not (= i@@1 (|Seq#Length| s@@9))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@9 v@@6) i@@1) (|Seq#Index| s@@9 i@@1))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@9 v@@6) i@@1))
)))
(assert (forall ((h@@6 T@U) (a@@0 T@U) ) (! (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| (|Seq#FromArray| h@@6 a@@0)))) (= (|Seq#Index| (|Seq#FromArray| h@@6 a@@0) i@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@6 a@@0) (IndexField i@@2))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |262|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@6 a@@0) (IndexField i@@2)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@6 a@@0) i@@2))
))
 :qid |DafnyPreludebpl.1326:15|
 :skolemid |263|
 :pattern ( (|Seq#FromArray| h@@6 a@@0))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@7 T@U) ) (!  (=> (and ($IsGoodHeap h@@7) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@7)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@7) (Requires1 t0@@12 t1@@11 h@@7 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@7 f@@8 bx0@@8) t1@@11 h@@7))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@7 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@7))
)))
(assert (forall ((s@@10 T@U) (i@@3 Int) (v@@7 T@U) (n@@6 Int) ) (!  (=> (and (and (<= 0 i@@3) (< i@@3 n@@6)) (<= n@@6 (|Seq#Length| s@@10))) (= (|Seq#Drop| (|Seq#Update| s@@10 i@@3 v@@7) n@@6) (|Seq#Drop| s@@10 n@@6)))
 :qid |DafnyPreludebpl.1283:15|
 :skolemid |253|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@10 i@@3 v@@7) n@@6))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#3| |l#0@@0|) |$l#0#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (MapType1Select refType boolType (|lambda#3| |l#0@@0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@1|) |$l#0#ly#0|) |l#0@@1|)
 :qid |continuedfy.8:33|
 :skolemid |491|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@1|) |$l#0#ly#0|))
)))
(assert (forall ((a@@1 T@U) (b T@U) ) (!  (=> (|Set#Equal| a@@1 b) (= a@@1 b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@1 b))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@2 b@@0) (= a@@2 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@2 b@@0))
)))
(assert (forall ((s@@11 T@U) (n@@7 Int) ) (!  (=> (and (<= 0 n@@7) (<= n@@7 (|Seq#Length| s@@11))) (= (|Seq#Length| (|Seq#Take| s@@11 n@@7)) n@@7))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@11 n@@7)))
)))
(assert (forall ((a@@3 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@3 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@8 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@8) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@8 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@8 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@8 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TInt) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@9 TInt))
)))
(assert (forall ((v@@8 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@8) t@@3) ($Is T@@3 v@@8 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@8) t@@3))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@9 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@9 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@9 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((s@@12 T@U) (i@@4 Int) (v@@9 T@U) (n@@8 Int) ) (!  (=> (and (<= n@@8 i@@4) (< i@@4 (|Seq#Length| s@@12))) (= (|Seq#Take| (|Seq#Update| s@@12 i@@4 v@@9) n@@8) (|Seq#Take| s@@12 n@@8)))
 :qid |DafnyPreludebpl.1273:15|
 :skolemid |251|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@12 i@@4 v@@9) n@@8))
)))
(assert (forall ((o@@7 T@U) ) (! (<= 0 (_System.array.Length o@@7))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@7))
)))
(assert (forall ((s@@13 T@U) ) (! (<= 0 (|Seq#Length| s@@13))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@13))
)))
(assert (forall ((v@@10 T@U) (t0@@15 T@U) (h@@10 T@U) ) (! (= ($IsAlloc SetType v@@10 (TSet t0@@15) h@@10) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@10 bx@@10) ($IsAllocBox bx@@10 t0@@15 h@@10))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@10 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@10 (TSet t0@@15) h@@10))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall (($o@@4 T@U) ) (! ($Is refType $o@@4 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@4 Tclass._System.object?))
)))
(assert (forall ((v@@11 T@U) (t0@@16 T@U) (h@@11 T@U) ) (! (= ($IsAlloc SeqType v@@11 (TSeq t0@@16) h@@11) (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| v@@11))) ($IsAllocBox (|Seq#Index| v@@11 i@@5) t0@@16 h@@11))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@11 i@@5))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@11 (TSeq t0@@16) h@@11))
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
(assert (forall ((i@@6 Int) ) (! (= (FDim (IndexField i@@6)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@6))
)))
(assert (forall ((i@@7 Int) ) (! (= (IndexField_Inverse (IndexField i@@7)) i@@7)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@7))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((h@@12 T@U) (i@@8 Int) (v@@12 T@U) (a@@4 T@U) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (_System.array.Length a@@4))) (= (|Seq#FromArray| (MapType1Store refType (MapType1Type FieldType BoxType) h@@12 a@@4 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@12 a@@4) (IndexField i@@8) v@@12)) a@@4) (|Seq#Update| (|Seq#FromArray| h@@12 a@@4) i@@8 v@@12)))
 :qid |DafnyPreludebpl.1343:15|
 :skolemid |265|
 :pattern ( (|Seq#FromArray| (MapType1Store refType (MapType1Type FieldType BoxType) h@@12 a@@4 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@12 a@@4) (IndexField i@@8) v@@12)) a@@4))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@5 $o@@5) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@5)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@5) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@5 $o@@5) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@6 T@U) ($o@@6 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@6)))) ($IsBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@6) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@6) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@17 T@U) (t1@@14 T@U) (h@@13 T@U) ) (!  (=> ($IsGoodHeap h@@13) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@17 t1@@14) h@@13) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@17) ($IsAllocBox bx0@@11 t0@@17 h@@13)) (Requires1 t0@@17 t1@@14 h@@13 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@17 t1@@14 h@@13 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@13 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@17 t1@@14 h@@13 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@17 t1@@14 h@@13 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@17 t1@@14 h@@13 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@17 t1@@14) h@@13))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@11)) bx@@11) ($Is HandleTypeType ($Unbox HandleTypeType bx@@11) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@11 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |486|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall ((h0@@5 T@U) (h1@@5 T@U) (a@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap h0@@5) ($IsGoodHeap h1@@5)) ($HeapSucc h0@@5 h1@@5)) (= (MapType1Select refType (MapType1Type FieldType BoxType) h0@@5 a@@5) (MapType1Select refType (MapType1Type FieldType BoxType) h1@@5 a@@5))) (= (|Seq#FromArray| h0@@5 a@@5) (|Seq#FromArray| h1@@5 a@@5)))
 :qid |DafnyPreludebpl.1338:15|
 :skolemid |264|
 :pattern ( (|Seq#FromArray| h1@@5 a@@5) ($HeapSucc h0@@5 h1@@5))
)))
(assert (forall ((s@@14 T@U) (i@@9 Int) (v@@13 T@U) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length| s@@14))) (= (|Seq#Length| (|Seq#Update| s@@14 i@@9 v@@13)) (|Seq#Length| s@@14)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |228|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@14 i@@9 v@@13)))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((h@@14 T@U) (a@@6 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@14 a@@6)) (_System.array.Length a@@6))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |261|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@14 a@@6)))
)))
(assert (forall ((s@@15 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@15 val@@4)) s@@15) (= (|Seq#Build_inv1| (|Seq#Build| s@@15 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@15 val@@4))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|$l#0#heap#0@@0| T@U) (|$l#0#i#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#1| |$l#0#heap#0@@0| |$l#0#i#0@@0|) ($Box intType ($Unbox intType |$l#0#i#0@@0|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |487|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#1| |$l#0#heap#0@@0| |$l#0#i#0@@0|))
)))
(assert (forall ((t0@@18 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@18) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@18 t1@@15)))) (|Set#Equal| (Reads1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@18 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@18 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((bx@@12 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@12 (TSet t@@8)))
)))
(assert (forall ((bx@@13 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@13 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@13)) bx@@13) ($Is SeqType ($Unbox SeqType bx@@13) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@13 (TSeq t@@9)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@14 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@15 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((h@@15 T@U) (r@@3 T@U) (f@@13 T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType1Store refType (MapType1Type FieldType BoxType) h@@15 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@15 r@@3) f@@13 x@@7))) ($HeapSucc h@@15 (MapType1Store refType (MapType1Type FieldType BoxType) h@@15 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@15 r@@3) f@@13 x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType1Store refType (MapType1Type FieldType BoxType) h@@15 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@15 r@@3) f@@13 x@@7)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@16 T@U) (n@@9 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@9) (<= n@@9 k@@2)) (< k@@2 (|Seq#Length| s@@16))) (= (|Seq#Index| (|Seq#Drop| s@@16 n@@9) (- k@@2 n@@9)) (|Seq#Index| s@@16 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@16 k@@2) (|Seq#Drop| s@@16 n@@9))
)))
(assert (forall ((s@@17 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@17) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@17))
)))
(assert (forall ((a@@7 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@7 b@@2) (forall ((o@@8 T@U) ) (! (= (|Set#IsMember| a@@7 o@@8) (|Set#IsMember| b@@2 o@@8))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@7 o@@8))
 :pattern ( (|Set#IsMember| b@@2 o@@8))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@7 b@@2))
)))
(assert (forall ((s@@18 T@U) (m@@4 Int) (n@@10 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@10)) (<= (+ m@@4 n@@10) (|Seq#Length| s@@18))) (= (|Seq#Drop| (|Seq#Drop| s@@18 m@@4) n@@10) (|Seq#Drop| s@@18 (+ m@@4 n@@10))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@18 m@@4) n@@10))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert (forall ((s@@19 T@U) ) (!  (=> (= (|Seq#Length| s@@19) 0) (= s@@19 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@19))
)))
(assert (forall ((s@@20 T@U) (n@@11 Int) ) (!  (=> (= n@@11 0) (= (|Seq#Take| s@@20 n@@11) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@20 n@@11))
)))
(assert (forall ((h@@16 T@U) (v@@14 T@U) ) (! ($IsAlloc intType v@@14 TInt h@@16)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@14 TInt h@@16))
)))
(assert (forall ((s@@21 T@U) (i@@10 Int) (v@@15 T@U) (n@@12 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 n@@12)) (<= n@@12 (|Seq#Length| s@@21))) (= (|Seq#Take| (|Seq#Update| s@@21 i@@10 v@@15) n@@12) (|Seq#Update| (|Seq#Take| s@@21 n@@12) i@@10 v@@15)))
 :qid |DafnyPreludebpl.1268:15|
 :skolemid |250|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@21 i@@10 v@@15) n@@12))
)))
(assert (forall ((v@@16 T@U) (t0@@19 T@U) ) (! (= ($Is SeqType v@@16 (TSeq t0@@19)) (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length| v@@16))) ($IsBox (|Seq#Index| v@@16 i@@11) t0@@19))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@16 i@@11))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@16 (TSeq t0@@19)))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#i#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#4| |l#0@@3|) |$l#0#heap#0@@1| |$l#0#i#0@@1|) |l#0@@3|)
 :qid |continuedfy.8:33|
 :skolemid |490|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#4| |l#0@@3|) |$l#0#heap#0@@1| |$l#0#i#0@@1|))
)))
(assert (forall ((v@@17 T@U) ) (! ($Is intType v@@17 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@17 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@0| () Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun |lambdaResult#0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |values#0@0| () T@U)
(declare-fun |i#1@0| () Int)
(declare-fun |i#1#hi@0| () Int)
(declare-fun |acc#0@3| () Int)
(declare-fun |acc#0@1| () Int)
(declare-fun |acc#0@2| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |i#1#lo@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |acc#0@0| () Int)
(declare-fun |values1#0@0| () T@U)
(declare-fun |values3#0@0| () T@U)
(declare-fun |values2#0@0| () T@U)
(declare-fun |values1a#0@0| () T@U)
(declare-fun |values1c#0@0| () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun |values1b#0@0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |valuesArray#0| () T@U)
(declare-fun |values1a#0| () T@U)
(declare-fun |values1b#0| () T@U)
(declare-fun |values1c#0| () T@U)
(declare-fun |values1#0| () T@U)
(declare-fun |values2#0| () T@U)
(declare-fun |values3#0| () T@U)
(declare-fun |values4#0| () T@U)
(declare-fun |values#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 55) (let ((anon3_correct true))
(let ((anon35_Else_correct  (=> (and (< |i#0@0| (LitInt 0)) (= (ControlFlow 0 51) 49)) anon3_correct)))
(let ((anon35_Then_correct  (=> (<= (LitInt 0) |i#0@0|) (=> (and (and (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false)) (= |lambdaResult#0| |i#0@0|)) (and ($Is intType (int_2_U |lambdaResult#0|) Tclass._System.nat) (= (ControlFlow 0 50) 49))) anon3_correct))))
(let ((anon34_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap |$lambdaHeap#0@0|) ($HeapSucc $Heap |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 52) 50) anon35_Then_correct) (=> (= (ControlFlow 0 52) 51) anon35_Else_correct)))))
(let ((after_0_correct true))
(let ((anon48_Then_correct  (=> (and (= (<= (LitInt 5) (U_2_int ($Unbox intType (|Seq#Index| |values#0@0| |i#1@0|)))) (U_2_bool (Lit boolType (bool_2_U true)))) (= (ControlFlow 0 17) 15)) after_0_correct)))
(let ((anon46_Then_correct  (=> (and (= |i#1@0| |i#1#hi@0|) (= (ControlFlow 0 16) 15)) after_0_correct)))
(let ((continue_0_correct true))
(let ((anon48_Else_correct  (=> (= (<= (LitInt 5) (U_2_int ($Unbox intType (|Seq#Index| |values#0@0| |i#1@0|))))  (not (U_2_bool (Lit boolType (bool_2_U true))))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (and (<= 0 |i#1@0|) (< |i#1@0| (|Seq#Length| |values#0@0|)))) (=> (and (<= 0 |i#1@0|) (< |i#1@0| (|Seq#Length| |values#0@0|))) (=> (and (= |acc#0@3| (+ |acc#0@1| (U_2_int ($Unbox intType (|Seq#Index| |values#0@0| |i#1@0|))))) (= (ControlFlow 0 13) 11)) continue_0_correct))))))
(let ((anon47_Else_correct  (=> (or (not (= (Mod (U_2_int ($Unbox intType (|Seq#Index| |values#0@0| |i#1@0|))) (LitInt 3)) (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (and (<= 0 |i#1@0|) (< |i#1@0| (|Seq#Length| |values#0@0|)))) (=> (and (<= 0 |i#1@0|) (< |i#1@0| (|Seq#Length| |values#0@0|))) (and (=> (= (ControlFlow 0 18) 17) anon48_Then_correct) (=> (= (ControlFlow 0 18) 13) anon48_Else_correct)))))))
(let ((anon47_Then_correct  (=> (= (Mod (U_2_int ($Unbox intType (|Seq#Index| |values#0@0| |i#1@0|))) (LitInt 3)) (LitInt 0)) (=> (and (= |acc#0@2| (+ |acc#0@1| 3)) (= (ControlFlow 0 12) 11)) continue_0_correct))))
(let ((anon46_Else_correct  (=> (or (not (= |i#1@0| |i#1#hi@0|)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (and (<= 0 |i#1@0|) (< |i#1@0| (|Seq#Length| |values#0@0|)))) (=> (and (<= 0 |i#1@0|) (< |i#1@0| (|Seq#Length| |values#0@0|))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (and (=> (= (ControlFlow 0 20) 12) anon47_Then_correct) (=> (= (ControlFlow 0 20) 18) anon47_Else_correct)))))))))
(let ((anon45_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 23) 16) anon46_Then_correct) (=> (= (ControlFlow 0 23) 20) anon46_Else_correct)))))
(let ((anon45_Then_correct true))
(let ((anon44_LoopBody_correct  (and (=> (= (ControlFlow 0 24) 10) anon45_Then_correct) (=> (= (ControlFlow 0 24) 23) anon45_Else_correct))))
(let ((anon44_LoopDone_correct true))
(let ((anon44_LoopHead_correct  (=> (and (and (and (and (not false) (<= 0 |i#1@0|)) (= |i#1#lo@0| 0)) (<= 0 |i#1#hi@0|)) (and (and (and (<= |i#1#lo@0| |i#1@0|) (<= |i#1@0| |i#1#hi@0|)) (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@8) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@8) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@8)))
 :qid |continuedfy.26:3|
 :skolemid |484|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@8))
))) (and ($HeapSucc $Heap@0 $Heap@0) (forall (($o@@9 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@9) alloc)))) (or (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@9) $f@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@9) $f@@0)) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@9 $f@@0))))
 :qid |continuedfy.26:3|
 :skolemid |485|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@9) $f@@0))
))))) (and (=> (= (ControlFlow 0 25) 9) anon44_LoopDone_correct) (=> (= (ControlFlow 0 25) 24) anon44_LoopBody_correct)))))
(let ((anon43_Else_correct  (=> (and (and (|Seq#Equal| |values#0@0| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U (LitInt 6))))) (= |acc#0@0| (LitInt 0))) (and (= |i#1#lo@0| (LitInt 0)) (= |i#1#hi@0| (|Seq#Length| |values#0@0|)))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (<= |i#1#lo@0| |i#1#hi@0|)) (=> (<= |i#1#lo@0| |i#1#hi@0|) (=> (= (ControlFlow 0 26) 25) anon44_LoopHead_correct))))))
(let ((anon43_Then_correct true))
(let ((anon42_Else_correct  (=> (|Seq#Equal| |values1#0@0| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U (LitInt 6)))) ($Box intType (int_2_U (LitInt 7))))) (and (=> (= (ControlFlow 0 28) (- 0 30)) (and (<= 0 (LitInt 0)) (<= (LitInt 0) (|Seq#Length| |values1#0@0|)))) (=> (and (<= 0 (LitInt 0)) (<= (LitInt 0) (|Seq#Length| |values1#0@0|))) (and (=> (= (ControlFlow 0 28) (- 0 29)) (and (<= (LitInt 0) (LitInt 6)) (<= (LitInt 6) (|Seq#Length| |values1#0@0|)))) (=> (and (<= (LitInt 0) (LitInt 6)) (<= (LitInt 6) (|Seq#Length| |values1#0@0|))) (=> (= |values#0@0| (|Seq#Drop| (|Seq#Take| |values1#0@0| (LitInt 6)) (LitInt 0))) (and (=> (= (ControlFlow 0 28) 8) anon43_Then_correct) (=> (= (ControlFlow 0 28) 26) anon43_Else_correct))))))))))
(let ((anon42_Then_correct true))
(let ((anon41_Else_correct  (=> (|Seq#Equal| |values3#0@0| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 5))))) (and (=> (= (ControlFlow 0 31) 7) anon42_Then_correct) (=> (= (ControlFlow 0 31) 28) anon42_Else_correct)))))
(let ((anon41_Then_correct true))
(let ((anon40_Else_correct  (=> (|Seq#Equal| |values2#0@0| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U (LitInt 6)))) ($Box intType (int_2_U (LitInt 7))))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (and (<= 0 (LitInt 5)) (<= (LitInt 5) (|Seq#Length| |values1#0@0|)))) (=> (and (<= 0 (LitInt 5)) (<= (LitInt 5) (|Seq#Length| |values1#0@0|))) (=> (= |values3#0@0| (|Seq#Take| |values1#0@0| (LitInt 5))) (and (=> (= (ControlFlow 0 32) 6) anon41_Then_correct) (=> (= (ControlFlow 0 32) 31) anon41_Else_correct))))))))
(let ((anon40_Then_correct true))
(let ((anon39_Else_correct  (=> (|Seq#Equal| |values1#0@0| |values1a#0@0|) (and (=> (= (ControlFlow 0 34) (- 0 35)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |values1#0@0|)))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |values1#0@0|))) (=> (= |values2#0@0| (|Seq#Drop| |values1#0@0| (LitInt 1))) (and (=> (= (ControlFlow 0 34) 5) anon40_Then_correct) (=> (= (ControlFlow 0 34) 32) anon40_Else_correct))))))))
(let ((anon39_Then_correct true))
(let ((anon38_Else_correct  (=> (|Seq#Equal| |values1c#0@0| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U (LitInt 6)))) ($Box intType (int_2_U (LitInt 7))))) (and (=> (= (ControlFlow 0 36) (- 0 39)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 36) (- 0 38)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 36) (- 0 37)) (and (<= (LitInt 1) (LitInt 8)) (<= (LitInt 8) (_System.array.Length $nw@0)))) (=> (and (<= (LitInt 1) (LitInt 8)) (<= (LitInt 8) (_System.array.Length $nw@0))) (=> (= |values1#0@0| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@0 $nw@0) (LitInt 8)) (LitInt 1))) (and (=> (= (ControlFlow 0 36) 4) anon39_Then_correct) (=> (= (ControlFlow 0 36) 34) anon39_Else_correct))))))))))))
(let ((anon38_Then_correct true))
(let ((anon37_Else_correct  (=> (|Seq#Equal| |values1b#0@0| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U (LitInt 6))))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |values1c#0@0| (|Seq#FromArray| $Heap@0 $nw@0)) (and (=> (= (ControlFlow 0 40) 3) anon38_Then_correct) (=> (= (ControlFlow 0 40) 36) anon38_Else_correct))))))))
(let ((anon37_Then_correct true))
(let ((anon36_Else_correct  (=> (|Seq#Equal| |values1a#0@0| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U (LitInt 6)))) ($Box intType (int_2_U (LitInt 7))))) (and (=> (= (ControlFlow 0 42) (- 0 44)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 42) (- 0 43)) (and (<= 0 (LitInt 7)) (<= (LitInt 7) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 7)) (<= (LitInt 7) (_System.array.Length $nw@0))) (=> (= |values1b#0@0| (|Seq#Take| (|Seq#FromArray| $Heap@0 $nw@0) (LitInt 7))) (and (=> (= (ControlFlow 0 42) 2) anon37_Then_correct) (=> (= (ControlFlow 0 42) 40) anon37_Else_correct))))))))))
(let ((anon36_Then_correct true))
(let ((anon34_Else_correct  (=> (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? TInt))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc)))) (= (_System.array.Length $nw@0) (LitInt 8)))) (and (=> (= (ControlFlow 0 45) (- 0 48)) (forall ((|arrayinit#0#i0#0| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0|) (< |arrayinit#0#i0#0| (LitInt 8))) (Requires1 Tclass._System.nat Tclass._System.nat $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 |lambda#1| (|lambda#2| Tclass._System.nat) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0|))))
 :qid |continuedfy.8:22|
 :skolemid |482|
))) (=> (and (and (forall ((|arrayinit#0#i0#0@@0| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0@@0|) (< |arrayinit#0#i0#0@@0| (LitInt 8))) (= (U_2_int ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) (IndexField |arrayinit#0#i0#0@@0|)))) (U_2_int ($Unbox intType (Apply1 Tclass._System.nat Tclass._System.nat $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 |lambda#1| (|lambda#2| Tclass._System.nat) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0@@0|)))))))
 :qid |continuedfy.8:22|
 :skolemid |483|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) (IndexField |arrayinit#0#i0#0@@0|)))
)) (= $Heap@0 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap $nw@0 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 45) (- 0 47)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (_System.array.Length $nw@0))) (=> (= |values1a#0@0| (|Seq#Drop| (|Seq#FromArray| $Heap@0 $nw@0) (LitInt 1))) (and (=> (= (ControlFlow 0 45) 1) anon36_Then_correct) (=> (= (ControlFlow 0 45) 42) anon36_Else_correct))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (<= 0 (LitInt 8))) (=> (<= 0 (LitInt 8)) (and (=> (= (ControlFlow 0 53) 52) anon34_Then_correct) (=> (= (ControlFlow 0 53) 45) anon34_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is refType |valuesArray#0| (Tclass._System.array TInt)) ($IsAlloc refType |valuesArray#0| (Tclass._System.array TInt) $Heap)) true) (and (and ($Is SeqType |values1a#0| (TSeq TInt)) ($IsAlloc SeqType |values1a#0| (TSeq TInt) $Heap)) true)) (=> (and (and (and (and (and ($Is SeqType |values1b#0| (TSeq TInt)) ($IsAlloc SeqType |values1b#0| (TSeq TInt) $Heap)) true) (and (and ($Is SeqType |values1c#0| (TSeq TInt)) ($IsAlloc SeqType |values1c#0| (TSeq TInt) $Heap)) true)) (and (and (and ($Is SeqType |values1#0| (TSeq TInt)) ($IsAlloc SeqType |values1#0| (TSeq TInt) $Heap)) true) (and (and ($Is SeqType |values2#0| (TSeq TInt)) ($IsAlloc SeqType |values2#0| (TSeq TInt) $Heap)) true))) (and (and (and (and ($Is SeqType |values3#0| (TSeq TInt)) ($IsAlloc SeqType |values3#0| (TSeq TInt) $Heap)) true) (and (and ($Is SeqType |values4#0| (TSeq TInt)) ($IsAlloc SeqType |values4#0| (TSeq TInt) $Heap)) true)) (and (and (and ($Is SeqType |values#0| (TSeq TInt)) ($IsAlloc SeqType |values#0| (TSeq TInt) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 55) 53))))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
