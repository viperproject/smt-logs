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
(declare-fun TReal () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$StoreAndRetrieve () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$Contents () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
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
(declare-fun |lambda#2| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun AbstractClient.S.Abs.StoreAndRetrieve.Valid (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.AbstractClient.S.Abs.StoreAndRetrieve (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun AbstractClient.S.Abs.StoreAndRetrieve.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun AbstractClient.S.Abs.StoreAndRetrieve.Valid_k (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.AbstractClient.S.Abs.StoreAndRetrieve? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun class.AbstractClient.S.Abs.StoreAndRetrieve? () T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun AbstractClient.S.Abs.StoreAndRetrieve.Contents () T@U)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun |AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun |AbstractClient.S.Abs.StoreAndRetrieve.Valid_k#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun |lambda#3| (Bool) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass.AbstractClient.S.Abs.StoreAndRetrieve_0 (T@U) T@U)
(declare-fun Tclass.AbstractClient.S.Abs.StoreAndRetrieve?_0 (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#1| (T@U) T@U)
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
(assert (distinct TBool TReal TagBool TagReal TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$StoreAndRetrieve field$Repr field$Contents)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TReal) TagReal))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2765|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
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
 :skolemid |3008|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#r#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#2| |l#0|) |$l#0#heap#0| |$l#0#r#0|)) ($IsBox |$l#0#r#0| |l#0|))
 :qid |DafnyPreludebpl.30:1|
 :skolemid |3692|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#2| |l#0|) |$l#0#heap#0| |$l#0#r#0|))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2766|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |2770|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |2771|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2764|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |2780|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (or (= $o this) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h0 this) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType $o)))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h0 $o) $f) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |3131|
)) (= (AbstractClient.S.Abs.StoreAndRetrieve.Valid AbstractClient.S.Abs.StoreAndRetrieve$Thing $h0 this) (AbstractClient.S.Abs.StoreAndRetrieve.Valid AbstractClient.S.Abs.StoreAndRetrieve$Thing $h1 this))))
 :qid |unknown.0:0|
 :skolemid |3132|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (AbstractClient.S.Abs.StoreAndRetrieve.Valid AbstractClient.S.Abs.StoreAndRetrieve$Thing $h1 this))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (or (= $o@@0 this@@0) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h0@@0 this@@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType $o@@0)))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |3136|
)) (= (AbstractClient.S.Abs.StoreAndRetrieve.Valid_k AbstractClient.S.Abs.StoreAndRetrieve$Thing@@0 $h0@@0 this@@0) (AbstractClient.S.Abs.StoreAndRetrieve.Valid_k AbstractClient.S.Abs.StoreAndRetrieve$Thing@@0 $h1@@0 this@@0))))
 :qid |unknown.0:0|
 :skolemid |3137|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (AbstractClient.S.Abs.StoreAndRetrieve.Valid_k AbstractClient.S.Abs.StoreAndRetrieve$Thing@@0 $h1@@0 this@@0))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@1 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@1) $h) ($IsAlloc refType |c#0| (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@1) $h))
 :qid |unknown.0:0|
 :skolemid |3153|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@1) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@1) $h))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2761|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |2774|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |2779|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |3025|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |3026|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |3027|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2987|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (= (FDim AbstractClient.S.Abs.StoreAndRetrieve.Repr) 0))
(assert (= (FieldOfDecl class.AbstractClient.S.Abs.StoreAndRetrieve? field$Repr) AbstractClient.S.Abs.StoreAndRetrieve.Repr))
(assert ($IsGhostField AbstractClient.S.Abs.StoreAndRetrieve.Repr))
(assert (= (FDim AbstractClient.S.Abs.StoreAndRetrieve.Contents) 0))
(assert (= (FieldOfDecl class.AbstractClient.S.Abs.StoreAndRetrieve? field$Contents) AbstractClient.S.Abs.StoreAndRetrieve.Contents))
(assert ($IsGhostField AbstractClient.S.Abs.StoreAndRetrieve.Contents))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@2 T@U) ($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@2) $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3128|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@2) $h@@1))
)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2984|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@2))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2754|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2755|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((x@@5 Real) ) (! (= (LitReal x@@5) x@@5)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |2655|
 :pattern ( (LitReal x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2651|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |3021|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2662|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@4) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@3)) (not (|Set#IsMember| b@@4 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |2787|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@4 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |2788|
 :pattern ( (|Set#Disjoint| a@@7 b@@4))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@4 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@4) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@4) fld)))
 :qid |unknown.0:0|
 :skolemid |3013|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |3014|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@5 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@5) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@5) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |3015|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |3016|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2682|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2683|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |2737|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@3 T@U) ($Heap T@U) (this@@1 T@U) ) (!  (=> (or (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| AbstractClient.S.Abs.StoreAndRetrieve$Thing@@3 $Heap this@@1) (and ($IsGoodHeap $Heap) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@3)) ($IsAlloc refType this@@1 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@3) $Heap))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap this@@1) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType this@@1)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap this@@1) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType null))) (|AbstractClient.S.Abs.StoreAndRetrieve.Valid_k#canCall| AbstractClient.S.Abs.StoreAndRetrieve$Thing@@3 $Heap this@@1))) (= (AbstractClient.S.Abs.StoreAndRetrieve.Valid AbstractClient.S.Abs.StoreAndRetrieve$Thing@@3 $Heap this@@1)  (and (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap this@@1) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType this@@1)) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap this@@1) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType null)))) (AbstractClient.S.Abs.StoreAndRetrieve.Valid_k AbstractClient.S.Abs.StoreAndRetrieve$Thing@@3 $Heap this@@1)))))
 :qid |unknown.0:0|
 :skolemid |3135|
 :pattern ( (AbstractClient.S.Abs.StoreAndRetrieve.Valid AbstractClient.S.Abs.StoreAndRetrieve$Thing@@3 $Heap this@@1) ($IsGoodHeap $Heap))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@4 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@4))  (and ($Is refType |c#0@@1| (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@4)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3152|
 :pattern ( ($Is refType |c#0@@1| (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@4)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@4)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2675|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@2) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2747|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@3 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@3) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2746|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@6 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@6) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@6) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |3009|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |3010|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@7 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@7))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@7) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@7) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |3011|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |3012|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@8 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@8 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@8))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@8) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@8) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |3017|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |3018|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@9 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@9 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@9))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@9) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@9) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |3019|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |3020|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@5 T@U) ($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@5)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@3 $o@@3) AbstractClient.S.Abs.StoreAndRetrieve.Contents)) (TSet AbstractClient.S.Abs.StoreAndRetrieve$Thing@@5) $h@@3))
 :qid |unknown.0:0|
 :skolemid |3130|
 :pattern ( ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@3 $o@@3) AbstractClient.S.Abs.StoreAndRetrieve.Contents)) (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@5))
)))
(assert (forall ((s T@U) (bx@@4 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@4) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@4))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |2718|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@4))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@4) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@4))
 :qid |unknown.0:0|
 :skolemid |3039|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@4))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@5) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@5))
 :qid |unknown.0:0|
 :skolemid |3046|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@5))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |3006|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2982|
 :pattern ( ($IsBox bx@@5 Tclass._System.object?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |2985|
 :pattern ( ($IsBox bx@@6 Tclass._System.object))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@6 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@6))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@6))))
 :qid |unknown.0:0|
 :skolemid |3127|
 :pattern ( ($Is refType $o@@4 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2986|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@10 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@10)  (or (|Set#IsMember| a@@8 o@@10) (|Set#IsMember| b@@5 o@@10)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |2769|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@10))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@7 T@U) ($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@7)))) ($Is SetType ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@5) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |3150|
 :pattern ( ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@5) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@7))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@6) a@@9) b@@6) (= (|Set#Difference| (|Set#Union| a@@9 b@@6) b@@6) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |2772|
 :pattern ( (|Set#Union| a@@9 b@@6))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |3031|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |3032|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@8 T@U) ($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@8)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@6) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) (TSet Tclass._System.object?) $h@@7))
 :qid |unknown.0:0|
 :skolemid |3151|
 :pattern ( ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@6) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@8))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@9 T@U) ($Heap@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| AbstractClient.S.Abs.StoreAndRetrieve$Thing@@9 $Heap@@0 this@@2) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@9)) ($IsAlloc refType this@@2 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@9) $Heap@@0))))) (=> (AbstractClient.S.Abs.StoreAndRetrieve.Valid AbstractClient.S.Abs.StoreAndRetrieve$Thing@@9 $Heap@@0 this@@2) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@2) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType this@@2))))
 :qid |unknown.0:0|
 :skolemid |3133|
 :pattern ( (AbstractClient.S.Abs.StoreAndRetrieve.Valid AbstractClient.S.Abs.StoreAndRetrieve$Thing@@9 $Heap@@0 this@@2))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#3| |l#0@@0|) |$l#0#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |3693|
 :pattern ( (MapType1Select refType boolType (|lambda#3| |l#0@@0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@1|) |$l#0#ly#0|) |l#0@@1|)
 :qid |StoreAndRetrievedfy.104:15|
 :skolemid |3695|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@1|) |$l#0#ly#0|))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2786|
 :pattern ( (|Set#Equal| a@@10 b@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) (c T@U) ) (!  (=> (or (not (= a@@11 c)) (not true)) (=> (and ($HeapSucc a@@11 b@@8) ($HeapSucc b@@8 c)) ($HeapSucc a@@11 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2753|
 :pattern ( ($HeapSucc a@@11 b@@8) ($HeapSucc b@@8 c))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3023|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |3024|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2743|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TReal) (and (= ($Box realType ($Unbox realType bx@@7)) bx@@7) ($Is realType ($Unbox realType bx@@7) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |2664|
 :pattern ( ($IsBox bx@@7 TReal))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TBool) (and (= ($Box boolType ($Unbox boolType bx@@8)) bx@@8) ($Is boolType ($Unbox boolType bx@@8) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |2665|
 :pattern ( ($IsBox bx@@8 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2674|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |3007|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((v@@3 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@9) ($IsAllocBox bx@@9 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2703|
 :pattern ( (|Set#IsMember| v@@3 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2704|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |3003|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |3004|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |3034|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |3035|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |3041|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |3042|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall (($o@@7 T@U) ) (! ($Is refType $o@@7 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |2983|
 :pattern ( ($Is refType $o@@7 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2637|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2638|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@10 T@U) ) (! (= (TagFamily (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@10)) tytagFamily$StoreAndRetrieve)
 :qid |unknown.0:0|
 :skolemid |3118|
 :pattern ( (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@10))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@11 T@U) ) (! (= (Tclass.AbstractClient.S.Abs.StoreAndRetrieve_0 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@11)) AbstractClient.S.Abs.StoreAndRetrieve$Thing@@11)
 :qid |unknown.0:0|
 :skolemid |3119|
 :pattern ( (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@11))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@12 T@U) ) (! (= (TagFamily (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@12)) tytagFamily$StoreAndRetrieve)
 :qid |unknown.0:0|
 :skolemid |3124|
 :pattern ( (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@12))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@13 T@U) ) (! (= (Tclass.AbstractClient.S.Abs.StoreAndRetrieve?_0 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@13)) AbstractClient.S.Abs.StoreAndRetrieve$Thing@@13)
 :qid |unknown.0:0|
 :skolemid |3125|
 :pattern ( (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@13))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2661|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |2775|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |3044|
))))
 :qid |unknown.0:0|
 :skolemid |3045|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |3037|
))))
 :qid |unknown.0:0|
 :skolemid |3038|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |2738|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@16 T@U) (t1@@14 T@U) (h@@9 T@U) ) (!  (=> ($IsGoodHeap h@@9) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@16) ($IsAllocBox bx0@@11 t0@@16 h@@9)) (Requires1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@9 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |3028|
 :pattern ( (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |3029|
 :pattern ( (Apply1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |3030|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |3005|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@11)) bx@@11) ($Is HandleTypeType ($Unbox HandleTypeType bx@@11) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |3036|
 :pattern ( ($IsBox bx@@11 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@12)) bx@@12) ($Is HandleTypeType ($Unbox HandleTypeType bx@@12) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |3043|
 :pattern ( ($IsBox bx@@12 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@8 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@8 $f@@1))  (=> (and (or (not (= $o@@8 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@8) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3690|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@8 $f@@1))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |3002|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |3033|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |3040|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@14 T@U) ($h@@8 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@14)))) ($Is SetType ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@9) AbstractClient.S.Abs.StoreAndRetrieve.Contents)) (TSet AbstractClient.S.Abs.StoreAndRetrieve$Thing@@14)))
 :qid |unknown.0:0|
 :skolemid |3129|
 :pattern ( ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@9) AbstractClient.S.Abs.StoreAndRetrieve.Contents)) (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@14))
)))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@17) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@17 t1@@15)))) (|Set#Equal| (Reads1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |3022|
 :pattern ( (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2668|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@15 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@15)) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@15))))
 :qid |unknown.0:0|
 :skolemid |3120|
 :pattern ( ($IsBox bx@@14 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve AbstractClient.S.Abs.StoreAndRetrieve$Thing@@15)))
)))
(assert (forall ((AbstractClient.S.Abs.StoreAndRetrieve$Thing@@16 T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@16)) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@16))))
 :qid |unknown.0:0|
 :skolemid |3126|
 :pattern ( ($IsBox bx@@15 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve? AbstractClient.S.Abs.StoreAndRetrieve$Thing@@16)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |2719|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@11 T@U) ) (! (= (|Set#IsMember| a@@13 o@@11) (|Set#IsMember| b@@10 o@@11))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2784|
 :pattern ( (|Set#IsMember| a@@13 o@@11))
 :pattern ( (|Set#IsMember| b@@10 o@@11))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2785|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert (forall ((x@@9 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@9))) (Lit BoxType ($Box realType (real_2_U x@@9))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |2656|
 :pattern ( ($Box realType (real_2_U (LitReal x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2652|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((h@@10 T@U) (v@@4 T@U) ) (! ($IsAlloc realType v@@4 TReal h@@10)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |2698|
 :pattern ( ($IsAlloc realType v@@4 TReal h@@10))
)))
(assert (forall ((h@@11 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@11)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |2699|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@11))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#heap#0@@0| T@U) (|$l#0#r#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#1| |l#0@@3|) |$l#0#heap#0@@0| |$l#0#r#0@@0|) |l#0@@3|)
 :qid |StoreAndRetrievedfy.104:20|
 :skolemid |3691|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#1| |l#0@@3|) |$l#0#heap#0@@0| |$l#0#r#0@@0|))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#r#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#4| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#r#0@@1|) |l#0@@4|)
 :qid |StoreAndRetrievedfy.104:15|
 :skolemid |3694|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#4| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#r#0@@1|))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is realType v@@6 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |2677|
 :pattern ( ($Is realType v@@6 TReal))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |2678|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |fn#0@0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |call4formal@thing#0| () T@U)
(declare-fun call0formal@AbstractClient.S.Abs.StoreAndRetrieve$Thing () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun call2formal@this () T@U)
(declare-fun call0formal@AbstractClient.S.Abs.StoreAndRetrieve$Thing@@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |t##0@0| () Real)
(declare-fun |call2formal@t#0@0| () T@U)
(declare-fun |defass#s#0| () Bool)
(declare-fun |s#0| () T@U)
(declare-fun |fn#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$AbstractClient.__default.Test)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct true))
(let ((anon5_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@1 |$lambdaHeap#0@0|) ($HeapSucc $Heap@1 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 11) 9) anon6_Then_correct) (=> (= (ControlFlow 0 11) 10) anon6_Else_correct)))))
(let ((anon5_Else_correct  (=> (= |fn#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 (|lambda#1| ($Box boolType (Lit boolType (bool_2_U true)))) (|lambda#2| TReal) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (forall (($o@@10 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@10) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType $o@@10))) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@10 $f@@2)))
 :qid |StoreAndRetrievedfy.105:24|
 :skolemid |3123|
))) (=> (forall (($o@@11 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@11) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType $o@@11))) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@11 $f@@3)))
 :qid |StoreAndRetrievedfy.105:24|
 :skolemid |3123|
)) (=> (and ($IsBox |call4formal@thing#0| call0formal@AbstractClient.S.Abs.StoreAndRetrieve$Thing) ($IsAllocBox |call4formal@thing#0| call0formal@AbstractClient.S.Abs.StoreAndRetrieve$Thing $Heap@@1)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@1 call2formal@this@0) (or (AbstractClient.S.Abs.StoreAndRetrieve.Valid TReal $Heap@1 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType call2formal@this@0))))) (=> (=> (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@1 call2formal@this@0) (or (AbstractClient.S.Abs.StoreAndRetrieve.Valid TReal $Heap@1 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType call2formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@1 call2formal@this@0) (or (AbstractClient.S.Abs.StoreAndRetrieve.Valid TReal $Heap@1 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType null)))))) (=> (=> (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@1 call2formal@this@0) (or (AbstractClient.S.Abs.StoreAndRetrieve.Valid TReal $Heap@1 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@1 call2formal@this@0) (or (AbstractClient.S.Abs.StoreAndRetrieve.Valid TReal $Heap@1 call2formal@this@0) (AbstractClient.S.Abs.StoreAndRetrieve.Valid_k TReal $Heap@1 call2formal@this@0)))) (=> (=> (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@1 call2formal@this@0) (or (AbstractClient.S.Abs.StoreAndRetrieve.Valid TReal $Heap@1 call2formal@this@0) (AbstractClient.S.Abs.StoreAndRetrieve.Valid_k TReal $Heap@1 call2formal@this@0))) (=> (= (ControlFlow 0 2) (- 0 1)) (exists ((|t#0| T@U) ) (!  (and ($IsBox |t#0| TReal) (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Contents)) |t#0|) (U_2_bool ($Unbox boolType (Apply1 TReal TBool $Heap@1 |fn#0@0| |t#0|)))))
 :qid |StoreAndRetrievedfy.21:23|
 :skolemid |3146|
))))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and (and (and (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this (Tclass.AbstractClient.S.Abs.StoreAndRetrieve call0formal@AbstractClient.S.Abs.StoreAndRetrieve$Thing@@0)) ($IsAlloc refType call2formal@this (Tclass.AbstractClient.S.Abs.StoreAndRetrieve call0formal@AbstractClient.S.Abs.StoreAndRetrieve$Thing@@0) $Heap@@1))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve TReal)) ($IsAlloc refType call2formal@this@0 (Tclass.AbstractClient.S.Abs.StoreAndRetrieve TReal) $Heap@0))) (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@0 call2formal@this@0))) (and (and (and (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@0 call2formal@this@0) (and (AbstractClient.S.Abs.StoreAndRetrieve.Valid TReal $Heap@0 call2formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType call2formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType null)))) (AbstractClient.S.Abs.StoreAndRetrieve.Valid_k TReal $Heap@0 call2formal@this@0)))) (and (forall (($o@@12 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType $o@@12)) (or (not (= $o@@12 null)) (not true)))
 :qid |StoreAndRetrievedfy.16:17|
 :skolemid |3140|
 :pattern (  (or (not (= $o@@12 null)) (not true)))
)) (forall (($o@@13 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType $o@@13)) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@1 $o@@13) alloc)))))
 :qid |StoreAndRetrievedfy.16:17|
 :skolemid |3141|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType $o@@13)))
)))) (and (and (|Set#Equal| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Contents)) |Set#Empty|) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@1 call2formal@this@0) alloc))))) (and (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@1 $o@@14) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@14) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@1 $o@@14)))
 :qid |StoreAndRetrievedfy.16:17|
 :skolemid |3142|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@14))
)) ($HeapSucc $Heap@@1 $Heap@0))))) (and (=> (= (ControlFlow 0 12) (- 0 18)) true) (and (=> (= (ControlFlow 0 12) (- 0 17)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |t##0@0| (LitReal 20.3)) (and (=> (= (ControlFlow 0 12) (- 0 16)) (forall (($o@@15 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@15) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType $o@@15))) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@15 $f@@4)))
 :qid |StoreAndRetrievedfy.103:12|
 :skolemid |3122|
))) (=> (forall (($o@@16 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@16) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType $o@@16))) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@16 $f@@5)))
 :qid |StoreAndRetrievedfy.103:12|
 :skolemid |3122|
)) (=> (= |call2formal@t#0@0| ($Box realType (real_2_U |t##0@0|))) (and (=> (= (ControlFlow 0 12) (- 0 15)) (=> (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@0 call2formal@this@0) (or (AbstractClient.S.Abs.StoreAndRetrieve.Valid TReal $Heap@0 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType call2formal@this@0))))) (=> (=> (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@0 call2formal@this@0) (or (AbstractClient.S.Abs.StoreAndRetrieve.Valid TReal $Heap@0 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType call2formal@this@0)))) (and (=> (= (ControlFlow 0 12) (- 0 14)) (=> (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@0 call2formal@this@0) (or (AbstractClient.S.Abs.StoreAndRetrieve.Valid TReal $Heap@0 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType null)))))) (=> (=> (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@0 call2formal@this@0) (or (AbstractClient.S.Abs.StoreAndRetrieve.Valid TReal $Heap@0 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (=> (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@0 call2formal@this@0) (or (AbstractClient.S.Abs.StoreAndRetrieve.Valid TReal $Heap@0 call2formal@this@0) (AbstractClient.S.Abs.StoreAndRetrieve.Valid_k TReal $Heap@0 call2formal@this@0)))) (=> (=> (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@0 call2formal@this@0) (or (AbstractClient.S.Abs.StoreAndRetrieve.Valid TReal $Heap@0 call2formal@this@0) (AbstractClient.S.Abs.StoreAndRetrieve.Valid_k TReal $Heap@0 call2formal@this@0))) (=> (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@1 call2formal@this@0)) (and (|AbstractClient.S.Abs.StoreAndRetrieve.Valid#canCall| TReal $Heap@1 call2formal@this@0) (and (AbstractClient.S.Abs.StoreAndRetrieve.Valid TReal $Heap@1 call2formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType call2formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType null)))) (AbstractClient.S.Abs.StoreAndRetrieve.Valid_k TReal $Heap@1 call2formal@this@0))))) (and (and (and (forall (($o@@17 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType $o@@17)) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType $o@@17)))) (or (not (= $o@@17 null)) (not true)))
 :qid |StoreAndRetrievedfy.18:12|
 :skolemid |3143|
 :pattern (  (or (not (= $o@@17 null)) (not true)))
)) (forall (($o@@18 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType $o@@18)) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType $o@@18)))) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@18) alloc)))))
 :qid |StoreAndRetrievedfy.18:12|
 :skolemid |3144|
 :pattern ( ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@18) alloc)))
))) (|Set#Equal| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Contents)) (|Set#Union| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Contents)) (|Set#UnionOne| |Set#Empty| |call2formal@t#0@0|)))) (and (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@19) alloc)))) (or (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@19) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@19)) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call2formal@this@0) AbstractClient.S.Abs.StoreAndRetrieve.Repr)) ($Box refType $o@@19))))
 :qid |StoreAndRetrievedfy.18:12|
 :skolemid |3145|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@19))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 12) 11) anon5_Then_correct) (=> (= (ControlFlow 0 12) 2) anon5_Else_correct))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (=> |defass#s#0| (and ($Is refType |s#0| (Tclass.AbstractClient.S.Abs.StoreAndRetrieve TReal)) ($IsAlloc refType |s#0| (Tclass.AbstractClient.S.Abs.StoreAndRetrieve TReal) $Heap@@1))) true)) (=> (and (and (and ($Is HandleTypeType |fn#0| (Tclass._System.___hTotalFunc1 TReal TBool)) ($IsAlloc HandleTypeType |fn#0| (Tclass._System.___hTotalFunc1 TReal TBool) $Heap@@1)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 19) 12))) anon0_correct))))
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
