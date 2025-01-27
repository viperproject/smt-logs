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
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun class.SimpleBDD.BDDNode? () T@U)
(declare-fun Tagclass.SimpleBDD.BDDNode? () T@U)
(declare-fun Tagclass.SimpleBDD.BDDNode () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$BDDNode () T@U)
(declare-fun field$Contents () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$n () T@U)
(declare-fun field$f () T@U)
(declare-fun field$t () T@U)
(declare-fun field$b () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun SimpleBDD.BDDNode.valid (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |SimpleBDD.BDDNode.valid#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.SimpleBDD.BDDNode () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |SimpleBDD.BDDNode.bitfunc#canCall| (T@U Int) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun SimpleBDD.BDDNode.Contents () T@U)
(declare-fun SimpleBDD.BDDNode.n () T@U)
(declare-fun SimpleBDD.BDDNode.bitfunc (T@U Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun SimpleBDD.BDDNode.b () T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun SetType () T@T)
(declare-fun SimpleBDD.BDDNode.Repr () T@U)
(declare-fun SimpleBDD.BDDNode.f () T@U)
(declare-fun SimpleBDD.BDDNode.t () T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass.SimpleBDD.BDDNode? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
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
(assert (distinct TBool TagBool TagSet TagSeq TagMap alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 class.SimpleBDD.BDDNode? Tagclass.SimpleBDD.BDDNode? Tagclass.SimpleBDD.BDDNode tytagFamily$nat tytagFamily$object |tytagFamily$_tuple#2| tytagFamily$BDDNode field$Contents field$Repr field$n field$f field$t field$b)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (and (and (and (and (and (and (and (and (and (and (= (Ctor refType) 3) (= (Ctor MapType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
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
))) (= (Ctor SeqType) 8)) (= (Ctor SetType) 9)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|SimpleBDD.BDDNode.valid#canCall| $Heap this) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.SimpleBDD.BDDNode) ($IsAlloc refType this Tclass.SimpleBDD.BDDNode $Heap)))))) (and (and (|SimpleBDD.BDDNode.bitfunc#canCall| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Contents)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.n)))) (=> (SimpleBDD.BDDNode.bitfunc ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Contents)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.n)))) (=> (=> (= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.n)))) (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.b))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Contents))) ($Box SeqType (Lit SeqType |Seq#Empty|))))))) (=> (< 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.n)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Repr)) ($Box refType this)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f)) null)) (not true)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Repr))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this))) (and (|SimpleBDD.BDDNode.valid#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t))) (=> (SimpleBDD.BDDNode.valid $ly $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t))) (|SimpleBDD.BDDNode.valid#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f)))))))))))))))))) (= (SimpleBDD.BDDNode.valid ($LS $ly) $Heap this)  (and (and (SimpleBDD.BDDNode.bitfunc ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Contents)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.n)))) (=> (= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.n)))) (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.b))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Contents))) ($Box SeqType (Lit SeqType |Seq#Empty|)))))))) (=> (< 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.n)))) (and (and (and (and (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Repr)) ($Box refType this)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this)))) (SimpleBDD.BDDNode.valid $ly $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t)))) (SimpleBDD.BDDNode.valid $ly $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f)))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n))) (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.n))) 1)))) (forall ((|s#0| T@U) ) (!  (=> (and ($Is SeqType |s#0| (TSeq TBool)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#0|))) (= (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Contents))) ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) |s#0|))))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#0|))))))
 :qid |BDDdfy.29:17|
 :skolemid |558|
 :pattern ( ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#0|))))
 :pattern ( (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (bool_2_U true))) |s#0|))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#0|)))
))) (forall ((|s#1| T@U) ) (!  (=> (and ($Is SeqType |s#1| (TSeq TBool)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#1|))) (= (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.Contents))) ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U false)))) |s#1|))))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#1|))))))
 :qid |BDDdfy.30:17|
 :skolemid |559|
 :pattern ( ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#1|))))
 :pattern ( (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (bool_2_U false))) |s#1|))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#1|)))
))))))))
 :qid |BDDdfy.17:21|
 :skolemid |561|
 :pattern ( (SimpleBDD.BDDNode.valid ($LS $ly) $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (= (Ctor DatatypeTypeType) 10))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|f#0| T@U) (|n#0| Int) ) (!  (=> (or (|SimpleBDD.BDDNode.bitfunc#canCall| (Lit MapType |f#0|) (LitInt |n#0|)) (and (< 0 $FunctionContextHeight) (and ($Is MapType |f#0| (TMap (TSeq TBool) TBool)) (<= (LitInt 0) |n#0|)))) (= (SimpleBDD.BDDNode.bitfunc (Lit MapType |f#0|) (LitInt |n#0|)) (forall ((|i#1| T@U) ) (!  (=> ($Is SeqType |i#1| (TSeq TBool)) (= (|Set#IsMember| (|Map#Domain| |f#0|) ($Box SeqType |i#1|)) (= (|Seq#Length| |i#1|) (LitInt |n#0|))))
 :qid |BDDdfy.10:15|
 :skolemid |535|
 :pattern ( (|Seq#Length| |i#1|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |f#0|) ($Box SeqType |i#1|)))
))))
 :qid |BDDdfy.8:36|
 :weight 3
 :skolemid |536|
 :pattern ( (SimpleBDD.BDDNode.bitfunc (Lit MapType |f#0|) (LitInt |n#0|)))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.SimpleBDD.BDDNode?)  (or (= $o null) (= (dtype $o) Tclass.SimpleBDD.BDDNode?)))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( ($Is refType $o Tclass.SimpleBDD.BDDNode?))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.SimpleBDD.BDDNode $h@@1) ($IsAlloc refType |c#0@@0| Tclass.SimpleBDD.BDDNode? $h@@1))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.SimpleBDD.BDDNode $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.SimpleBDD.BDDNode? $h@@1))
)))
(assert (= (FDim SimpleBDD.BDDNode.Contents) 0))
(assert (= (FieldOfDecl class.SimpleBDD.BDDNode? field$Contents) SimpleBDD.BDDNode.Contents))
(assert ($IsGhostField SimpleBDD.BDDNode.Contents))
(assert (= (FDim SimpleBDD.BDDNode.Repr) 0))
(assert (= (FieldOfDecl class.SimpleBDD.BDDNode? field$Repr) SimpleBDD.BDDNode.Repr))
(assert ($IsGhostField SimpleBDD.BDDNode.Repr))
(assert (= (FDim SimpleBDD.BDDNode.n) 0))
(assert (= (FieldOfDecl class.SimpleBDD.BDDNode? field$n) SimpleBDD.BDDNode.n))
(assert ($IsGhostField SimpleBDD.BDDNode.n))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (= (FDim SimpleBDD.BDDNode.f) 0))
(assert (= (FieldOfDecl class.SimpleBDD.BDDNode? field$f) SimpleBDD.BDDNode.f))
(assert  (not ($IsGhostField SimpleBDD.BDDNode.f)))
(assert (= (FDim SimpleBDD.BDDNode.t) 0))
(assert (= (FieldOfDecl class.SimpleBDD.BDDNode? field$t) SimpleBDD.BDDNode.t))
(assert  (not ($IsGhostField SimpleBDD.BDDNode.t)))
(assert (= (FDim SimpleBDD.BDDNode.b) 0))
(assert (= (FieldOfDecl class.SimpleBDD.BDDNode? field$b) SimpleBDD.BDDNode.b))
(assert  (not ($IsGhostField SimpleBDD.BDDNode.b)))
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.SimpleBDD.BDDNode? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.SimpleBDD.BDDNode? $h@@3))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@2) (|Set#IsMember| b@@4 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@4)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@4) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@4))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@4))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@3)) (not (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (or (= $o@@2 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@2)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |619|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@2 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall (($h@@5 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.SimpleBDD.BDDNode?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) SimpleBDD.BDDNode.b)) TBool $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |550|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) SimpleBDD.BDDNode.b)))
)))
(assert (forall (($ly@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (! (= (SimpleBDD.BDDNode.valid ($LS $ly@@0) $Heap@@0 this@@0) (SimpleBDD.BDDNode.valid $ly@@0 $Heap@@0 this@@0))
 :qid |BDDdfy.17:21|
 :skolemid |551|
 :pattern ( (SimpleBDD.BDDNode.valid ($LS $ly@@0) $Heap@@0 this@@0))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h) ($IsAlloc T@@1 v@@1 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|f#0@@0| T@U) (|n#0@@0| Int) ) (!  (=> (or (|SimpleBDD.BDDNode.bitfunc#canCall| |f#0@@0| |n#0@@0|) (and (< 0 $FunctionContextHeight) (and ($Is MapType |f#0@@0| (TMap (TSeq TBool) TBool)) (<= (LitInt 0) |n#0@@0|)))) (= (SimpleBDD.BDDNode.bitfunc |f#0@@0| |n#0@@0|) (forall ((|i#0| T@U) ) (!  (=> ($Is SeqType |i#0| (TSeq TBool)) (= (|Set#IsMember| (|Map#Domain| |f#0@@0|) ($Box SeqType |i#0|)) (= (|Seq#Length| |i#0|) |n#0@@0|)))
 :qid |BDDdfy.10:15|
 :skolemid |533|
 :pattern ( (|Seq#Length| |i#0|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |f#0@@0|) ($Box SeqType |i#0|)))
))))
 :qid |BDDdfy.8:36|
 :skolemid |534|
 :pattern ( (SimpleBDD.BDDNode.bitfunc |f#0@@0| |n#0@@0|))
))))
(assert (forall (($h@@6 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.SimpleBDD.BDDNode?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) SimpleBDD.BDDNode.n)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |543|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) SimpleBDD.BDDNode.n)))
)))
(assert (forall (($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.SimpleBDD.BDDNode?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) SimpleBDD.BDDNode.f)) Tclass.SimpleBDD.BDDNode?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |545|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) SimpleBDD.BDDNode.f)))
)))
(assert (forall (($h@@8 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.SimpleBDD.BDDNode?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) SimpleBDD.BDDNode.t)) Tclass.SimpleBDD.BDDNode?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |547|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) SimpleBDD.BDDNode.t)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.SimpleBDD.BDDNode?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.SimpleBDD.BDDNode?)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsBox bx@@4 Tclass.SimpleBDD.BDDNode?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.SimpleBDD.BDDNode) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.SimpleBDD.BDDNode)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($IsBox bx@@5 Tclass.SimpleBDD.BDDNode))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.SimpleBDD.BDDNode)  (and ($Is refType |c#0@@2| Tclass.SimpleBDD.BDDNode?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( ($Is refType |c#0@@2| Tclass.SimpleBDD.BDDNode))
 :pattern ( ($Is refType |c#0@@2| Tclass.SimpleBDD.BDDNode?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@2 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) v@@2)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i))
)))
(assert (forall (($h@@9 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.SimpleBDD.BDDNode?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) alloc)))) ($IsAlloc MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) SimpleBDD.BDDNode.Contents)) (TMap (TSeq TBool) TBool) $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |540|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) SimpleBDD.BDDNode.Contents)))
)))
(assert (forall (($h@@10 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.SimpleBDD.BDDNode?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) SimpleBDD.BDDNode.n)) Tclass._System.nat $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |544|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) SimpleBDD.BDDNode.n)))
)))
(assert (forall (($h@@11 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.SimpleBDD.BDDNode?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) SimpleBDD.BDDNode.f)) Tclass.SimpleBDD.BDDNode? $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |546|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) SimpleBDD.BDDNode.f)))
)))
(assert (forall (($h@@12 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.SimpleBDD.BDDNode?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) SimpleBDD.BDDNode.t)) Tclass.SimpleBDD.BDDNode? $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |548|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) SimpleBDD.BDDNode.t)))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4)  (or (|Set#IsMember| a@@9 o@@4) (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert (forall (($h@@13 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.SimpleBDD.BDDNode?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) SimpleBDD.BDDNode.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |541|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) SimpleBDD.BDDNode.Repr)))
)))
(assert (forall (($h@@14 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass.SimpleBDD.BDDNode?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) SimpleBDD.BDDNode.Repr)) (TSet Tclass._System.object) $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |542|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) SimpleBDD.BDDNode.Repr)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TBool) (and (= ($Box boolType ($Unbox boolType bx@@6)) bx@@6) ($Is boolType ($Unbox boolType bx@@6) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@6 TBool))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@1) ($Is T@@2 v@@3 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@2) h@@0) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@7) ($IsAllocBox bx@@7 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@4 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@2) h@@0))
)))
(assert (forall ((t@@2 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@2 u)) t@@2)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@2 u))
)))
(assert (forall ((t@@3 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@3 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@3 u@@0))
)))
(assert (forall ((t@@4 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@4 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@4 u@@1))
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
(assert (forall (($o@@13 T@U) ) (! ($Is refType $o@@13 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@13 Tclass._System.object?))
)))
(assert (forall ((v@@5 T@U) (t0@@3 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@3) h@@1) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@0) t0@@3 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@5 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@3) h@@1))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSet (TSet t@@5)) t@@5)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSet t@@6)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSeq (TSeq t@@7)) t@@7)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSeq t@@8)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) (t1@@1 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@6 (TMap t0@@4 t1@@1) h@@2) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@8) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@8) t1@@1 h@@2) ($IsAllocBox bx@@8 t0@@4 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@8))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@8))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@6 (TMap t0@@4 t1@@1) h@@2))
)))
(assert (forall (($h@@15 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass.SimpleBDD.BDDNode?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) SimpleBDD.BDDNode.b)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |549|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) SimpleBDD.BDDNode.b)))
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
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)) (|Set#Union| a@@11 b@@8))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@9 T@U) (s@@3 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@9 (TMap s@@3 t@@9)) (and (= ($Box MapType ($Unbox MapType bx@@9)) bx@@9) ($Is MapType ($Unbox MapType bx@@9) (TMap s@@3 t@@9))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@9 (TMap s@@3 t@@9)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((s@@4 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@4 val@@4)) s@@4) (= (|Seq#Build_inv1| (|Seq#Build| s@@4 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@4 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@7 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@7)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@5))
)))
(assert (forall ((m@@6 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@6) item)  (and (|Set#IsMember| (|Map#Domain| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@6) item))
)))
(assert (forall ((m@@7 T@U) (v@@8 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@8) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@3) (= v@@8 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@8))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@11 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@10)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@10))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@10)))
)))
(assert (forall ((bx@@12 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@12 (TSeq t@@11)) (and (= ($Box SeqType ($Unbox SeqType bx@@12)) bx@@12) ($Is SeqType ($Unbox SeqType bx@@12) (TSeq t@@11))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@12 (TSeq t@@11)))
)))
(assert (forall ((v@@9 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@9 (TMap t0@@5 t1@@2)) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@9) bx@@13) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@13) t1@@2) ($IsBox bx@@13 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@13))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@9) bx@@13))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@9 (TMap t0@@5 t1@@2)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.SimpleBDD.BDDNode?) Tagclass.SimpleBDD.BDDNode?))
(assert (= (TagFamily Tclass.SimpleBDD.BDDNode?) tytagFamily$BDDNode))
(assert (= (Tag Tclass.SimpleBDD.BDDNode) Tagclass.SimpleBDD.BDDNode))
(assert (= (TagFamily Tclass.SimpleBDD.BDDNode) tytagFamily$BDDNode))
(assert (forall (($h@@16 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass.SimpleBDD.BDDNode?))) ($Is MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) SimpleBDD.BDDNode.Contents)) (TMap (TSeq TBool) TBool)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |539|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) SimpleBDD.BDDNode.Contents)))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@17)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@17))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@17))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@17))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@18)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@18))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@18))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@18))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s0@@0 n))) (=> (<= (|Seq#Length| s0@@0) n) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s1@@0 (- n (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((s@@5 T@U) ) (!  (=> (= (|Seq#Length| s@@5) 0) (= s@@5 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall ((h@@3 T@U) (v@@10 T@U) ) (! ($IsAlloc boolType v@@10 TBool h@@3)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@10 TBool h@@3))
)))
(assert (forall ((v@@11 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@11 (TSeq t0@@6)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@11))) ($IsBox (|Seq#Index| v@@11 i@@1) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@11 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@11 (TSeq t0@@6)))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((k@@0 T@U) (v@@12 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@12)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@8))
)))
(assert (forall ((s@@6 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@6))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@2))) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@2))))
)))
(assert (forall ((v@@13 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@13 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@13) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@13) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@13) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@13 (TMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@14 T@U) ) (! ($Is boolType v@@14 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@14 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $LZ () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |b$reqreads#5@1| () Bool)
(declare-fun |b$reqreads#6@1| () Bool)
(declare-fun |b$reqreads#7@1| () Bool)
(declare-fun |b$reqreads#8@2| () Bool)
(declare-fun |b$reqreads#9@2| () Bool)
(declare-fun |b$reqreads#10@2| () Bool)
(declare-fun |b$reqreads#11@2| () Bool)
(declare-fun |b$reqreads#12@2| () Bool)
(declare-fun |b$reqreads#13@2| () Bool)
(declare-fun |b$reqreads#14@2| () Bool)
(declare-fun |b$reqreads#15@2| () Bool)
(declare-fun |b$reqreads#16@2| () Bool)
(declare-fun |b$reqreads#17@2| () Bool)
(declare-fun |b$reqreads#18@2| () Bool)
(declare-fun |b$reqreads#19@2| () Bool)
(declare-fun |b$reqreads#20@2| () Bool)
(declare-fun |b$reqreads#21@2| () Bool)
(declare-fun |b$reqreads#22@2| () Bool)
(declare-fun |b$reqreads#23@2| () Bool)
(declare-fun |b$reqreads#24@2| () Bool)
(declare-fun |b$reqreads#25@2| () Bool)
(declare-fun |b$reqreads#26@2| () Bool)
(declare-fun |b$reqreads#27@2| () Bool)
(declare-fun |b$reqreads#28@2| () Bool)
(declare-fun |b$reqreads#29@2| () Bool)
(declare-fun |b$reqreads#30@2| () Bool)
(declare-fun |b$reqreads#31@2| () Bool)
(declare-fun |b$reqreads#32@2| () Bool)
(declare-fun |b$reqreads#33@2| () Bool)
(declare-fun |b$reqreads#34@2| () Bool)
(declare-fun |b$reqreads#35@3| () Bool)
(declare-fun |b$reqreads#36@3| () Bool)
(declare-fun |b$reqreads#37@3| () Bool)
(declare-fun |b$reqreads#38@3| () Bool)
(declare-fun |b$reqreads#39@3| () Bool)
(declare-fun |b$reqreads#40@2| () Bool)
(declare-fun |b$reqreads#41@2| () Bool)
(declare-fun |b$reqreads#42@2| () Bool)
(declare-fun |b$reqreads#43@2| () Bool)
(declare-fun |b$reqreads#44@2| () Bool)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun |b$reqreads#7@0| () Bool)
(declare-fun |b$reqreads#8@1| () Bool)
(declare-fun |b$reqreads#9@1| () Bool)
(declare-fun |b$reqreads#11@1| () Bool)
(declare-fun |b$reqreads#10@1| () Bool)
(declare-fun |b$reqreads#13@1| () Bool)
(declare-fun |b$reqreads#12@1| () Bool)
(declare-fun |b$reqreads#16@1| () Bool)
(declare-fun |b$reqreads#15@1| () Bool)
(declare-fun |b$reqreads#14@1| () Bool)
(declare-fun |b$reqreads#19@1| () Bool)
(declare-fun |b$reqreads#18@1| () Bool)
(declare-fun |b$reqreads#17@1| () Bool)
(declare-fun |b$reqreads#21@1| () Bool)
(declare-fun |b$reqreads#20@1| () Bool)
(declare-fun |b$reqreads#23@1| () Bool)
(declare-fun |b$reqreads#22@1| () Bool)
(declare-fun |b$reqreads#25@1| () Bool)
(declare-fun |b$reqreads#24@1| () Bool)
(declare-fun |b$reqreads#27@1| () Bool)
(declare-fun |b$reqreads#26@1| () Bool)
(declare-fun |b$reqreads#34@1| () Bool)
(declare-fun |b$reqreads#33@1| () Bool)
(declare-fun |b$reqreads#32@1| () Bool)
(declare-fun |b$reqreads#31@1| () Bool)
(declare-fun |b$reqreads#30@1| () Bool)
(declare-fun |b$reqreads#29@1| () Bool)
(declare-fun |b$reqreads#28@1| () Bool)
(declare-fun |b$reqreads#39@2| () Bool)
(declare-fun |b$reqreads#38@2| () Bool)
(declare-fun |b$reqreads#37@2| () Bool)
(declare-fun |b$reqreads#36@2| () Bool)
(declare-fun |b$reqreads#35@2| () Bool)
(declare-fun |b$reqreads#44@1| () Bool)
(declare-fun |b$reqreads#43@1| () Bool)
(declare-fun |b$reqreads#42@1| () Bool)
(declare-fun |b$reqreads#41@1| () Bool)
(declare-fun |b$reqreads#40@1| () Bool)
(declare-fun |s#3@0| () T@U)
(declare-fun |b$reqreads#40@0| () Bool)
(declare-fun |b$reqreads#41@0| () Bool)
(declare-fun |b$reqreads#42@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#43@0| () Bool)
(declare-fun |b$reqreads#44@0| () Bool)
(declare-fun |b$reqreads#39@1| () Bool)
(declare-fun |b$reqreads#38@1| () Bool)
(declare-fun |b$reqreads#37@1| () Bool)
(declare-fun |b$reqreads#36@1| () Bool)
(declare-fun |b$reqreads#35@1| () Bool)
(declare-fun |s#2@0| () T@U)
(declare-fun |b$reqreads#35@0| () Bool)
(declare-fun |b$reqreads#36@0| () Bool)
(declare-fun |b$reqreads#37@0| () Bool)
(declare-fun |b$reqreads#38@0| () Bool)
(declare-fun |b$reqreads#39@0| () Bool)
(declare-fun |b$reqreads#28@0| () Bool)
(declare-fun |b$reqreads#29@0| () Bool)
(declare-fun |b$reqreads#30@0| () Bool)
(declare-fun |b$reqreads#31@0| () Bool)
(declare-fun |b$reqreads#32@0| () Bool)
(declare-fun |b$reqreads#33@0| () Bool)
(declare-fun |b$reqreads#34@0| () Bool)
(declare-fun |b$reqreads#26@0| () Bool)
(declare-fun |b$reqreads#27@0| () Bool)
(declare-fun |b$reqreads#24@0| () Bool)
(declare-fun |b$reqreads#25@0| () Bool)
(declare-fun |b$reqreads#22@0| () Bool)
(declare-fun |b$reqreads#23@0| () Bool)
(declare-fun |b$reqreads#20@0| () Bool)
(declare-fun |b$reqreads#21@0| () Bool)
(declare-fun |b$reqreads#17@0| () Bool)
(declare-fun |b$reqreads#18@0| () Bool)
(declare-fun |b$reqreads#19@0| () Bool)
(declare-fun |b$reqreads#14@0| () Bool)
(declare-fun |b$reqreads#15@0| () Bool)
(declare-fun |b$reqreads#16@0| () Bool)
(declare-fun |b$reqreads#12@0| () Bool)
(declare-fun |b$reqreads#13@0| () Bool)
(declare-fun |b$reqreads#10@0| () Bool)
(declare-fun |b$reqreads#11@0| () Bool)
(declare-fun |b$reqreads#9@0| () Bool)
(declare-fun |b$reqreads#8@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |##f#0@0| () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$SimpleBDD.BDDNode.valid)
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
 (=> (= (ControlFlow 0 0) 116) (let ((anon41_correct  (=> (= (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 this@@1)  (and (and (SimpleBDD.BDDNode.bitfunc ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))) (=> (= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))) (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.b))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($Box SeqType (Lit SeqType |Seq#Empty|)))))))) (=> (< 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))) (and (and (and (and (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n))) (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n))) 1)))) (forall ((|s#4| T@U) ) (!  (=> (and ($Is SeqType |s#4| (TSeq TBool)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#4|))) (= (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) |s#4|))))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#4|))))))
 :qid |BDDdfy.29:17|
 :skolemid |568|
 :pattern ( ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#4|))))
 :pattern ( (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (bool_2_U true))) |s#4|))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#4|)))
))) (forall ((|s#5| T@U) ) (!  (=> (and ($Is SeqType |s#5| (TSeq TBool)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#5|))) (= (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U false)))) |s#5|))))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#5|))))))
 :qid |BDDdfy.30:17|
 :skolemid |569|
 :pattern ( ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#5|))))
 :pattern ( (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (bool_2_U false))) |s#5|))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#5|)))
)))))) (=> (and (and (|SimpleBDD.BDDNode.bitfunc#canCall| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))) (=> (SimpleBDD.BDDNode.bitfunc ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))) (=> (=> (= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))) (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.b))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($Box SeqType (Lit SeqType |Seq#Empty|))))))) (=> (< 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1))) (and (|SimpleBDD.BDDNode.valid#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (=> (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|SimpleBDD.BDDNode.valid#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)))))))))))))))))) ($Is boolType (bool_2_U (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 this@@1)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 46)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 3) (- 0 45)) |b$reqreads#2@0|) (=> |b$reqreads#2@0| (and (=> (= (ControlFlow 0 3) (- 0 44)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (and (=> (= (ControlFlow 0 3) (- 0 43)) |b$reqreads#4@1|) (=> |b$reqreads#4@1| (and (=> (= (ControlFlow 0 3) (- 0 42)) |b$reqreads#5@1|) (=> |b$reqreads#5@1| (and (=> (= (ControlFlow 0 3) (- 0 41)) |b$reqreads#6@1|) (=> |b$reqreads#6@1| (and (=> (= (ControlFlow 0 3) (- 0 40)) |b$reqreads#7@1|) (=> |b$reqreads#7@1| (and (=> (= (ControlFlow 0 3) (- 0 39)) |b$reqreads#8@2|) (=> |b$reqreads#8@2| (and (=> (= (ControlFlow 0 3) (- 0 38)) |b$reqreads#9@2|) (=> |b$reqreads#9@2| (and (=> (= (ControlFlow 0 3) (- 0 37)) |b$reqreads#10@2|) (=> |b$reqreads#10@2| (and (=> (= (ControlFlow 0 3) (- 0 36)) |b$reqreads#11@2|) (=> |b$reqreads#11@2| (and (=> (= (ControlFlow 0 3) (- 0 35)) |b$reqreads#12@2|) (=> |b$reqreads#12@2| (and (=> (= (ControlFlow 0 3) (- 0 34)) |b$reqreads#13@2|) (=> |b$reqreads#13@2| (and (=> (= (ControlFlow 0 3) (- 0 33)) |b$reqreads#14@2|) (=> |b$reqreads#14@2| (and (=> (= (ControlFlow 0 3) (- 0 32)) |b$reqreads#15@2|) (=> |b$reqreads#15@2| (and (=> (= (ControlFlow 0 3) (- 0 31)) |b$reqreads#16@2|) (=> |b$reqreads#16@2| (and (=> (= (ControlFlow 0 3) (- 0 30)) |b$reqreads#17@2|) (=> |b$reqreads#17@2| (and (=> (= (ControlFlow 0 3) (- 0 29)) |b$reqreads#18@2|) (=> |b$reqreads#18@2| (and (=> (= (ControlFlow 0 3) (- 0 28)) |b$reqreads#19@2|) (=> |b$reqreads#19@2| (and (=> (= (ControlFlow 0 3) (- 0 27)) |b$reqreads#20@2|) (=> |b$reqreads#20@2| (and (=> (= (ControlFlow 0 3) (- 0 26)) |b$reqreads#21@2|) (=> |b$reqreads#21@2| (and (=> (= (ControlFlow 0 3) (- 0 25)) |b$reqreads#22@2|) (=> |b$reqreads#22@2| (and (=> (= (ControlFlow 0 3) (- 0 24)) |b$reqreads#23@2|) (=> |b$reqreads#23@2| (and (=> (= (ControlFlow 0 3) (- 0 23)) |b$reqreads#24@2|) (=> |b$reqreads#24@2| (and (=> (= (ControlFlow 0 3) (- 0 22)) |b$reqreads#25@2|) (=> |b$reqreads#25@2| (and (=> (= (ControlFlow 0 3) (- 0 21)) |b$reqreads#26@2|) (=> |b$reqreads#26@2| (and (=> (= (ControlFlow 0 3) (- 0 20)) |b$reqreads#27@2|) (=> |b$reqreads#27@2| (and (=> (= (ControlFlow 0 3) (- 0 19)) |b$reqreads#28@2|) (=> |b$reqreads#28@2| (and (=> (= (ControlFlow 0 3) (- 0 18)) |b$reqreads#29@2|) (=> |b$reqreads#29@2| (and (=> (= (ControlFlow 0 3) (- 0 17)) |b$reqreads#30@2|) (=> |b$reqreads#30@2| (and (=> (= (ControlFlow 0 3) (- 0 16)) |b$reqreads#31@2|) (=> |b$reqreads#31@2| (and (=> (= (ControlFlow 0 3) (- 0 15)) |b$reqreads#32@2|) (=> |b$reqreads#32@2| (and (=> (= (ControlFlow 0 3) (- 0 14)) |b$reqreads#33@2|) (=> |b$reqreads#33@2| (and (=> (= (ControlFlow 0 3) (- 0 13)) |b$reqreads#34@2|) (=> |b$reqreads#34@2| (and (=> (= (ControlFlow 0 3) (- 0 12)) |b$reqreads#35@3|) (=> |b$reqreads#35@3| (and (=> (= (ControlFlow 0 3) (- 0 11)) |b$reqreads#36@3|) (=> |b$reqreads#36@3| (and (=> (= (ControlFlow 0 3) (- 0 10)) |b$reqreads#37@3|) (=> |b$reqreads#37@3| (and (=> (= (ControlFlow 0 3) (- 0 9)) |b$reqreads#38@3|) (=> |b$reqreads#38@3| (and (=> (= (ControlFlow 0 3) (- 0 8)) |b$reqreads#39@3|) (=> |b$reqreads#39@3| (and (=> (= (ControlFlow 0 3) (- 0 7)) |b$reqreads#40@2|) (=> |b$reqreads#40@2| (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#41@2|) (=> |b$reqreads#41@2| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#42@2|) (=> |b$reqreads#42@2| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#43@2|) (=> |b$reqreads#43@2| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#44@2|)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon40_correct  (=> (and (and (and (= |b$reqreads#6@1| |b$reqreads#6@0|) (= |b$reqreads#7@1| |b$reqreads#7@0|)) (and (= |b$reqreads#8@2| |b$reqreads#8@1|) (= |b$reqreads#9@2| |b$reqreads#9@1|))) (and (and (= |b$reqreads#11@2| |b$reqreads#11@1|) (= |b$reqreads#10@2| |b$reqreads#10@1|)) (and (= |b$reqreads#13@2| |b$reqreads#13@1|) (= |b$reqreads#12@2| |b$reqreads#12@1|)))) (=> (and (and (and (and (and (= |b$reqreads#16@2| |b$reqreads#16@1|) (= |b$reqreads#15@2| |b$reqreads#15@1|)) (and (= |b$reqreads#14@2| |b$reqreads#14@1|) (= |b$reqreads#19@2| |b$reqreads#19@1|))) (and (and (= |b$reqreads#18@2| |b$reqreads#18@1|) (= |b$reqreads#17@2| |b$reqreads#17@1|)) (and (= |b$reqreads#21@2| |b$reqreads#21@1|) (= |b$reqreads#20@2| |b$reqreads#20@1|)))) (and (and (and (= |b$reqreads#23@2| |b$reqreads#23@1|) (= |b$reqreads#22@2| |b$reqreads#22@1|)) (and (= |b$reqreads#25@2| |b$reqreads#25@1|) (= |b$reqreads#24@2| |b$reqreads#24@1|))) (and (and (= |b$reqreads#27@2| |b$reqreads#27@1|) (= |b$reqreads#26@2| |b$reqreads#26@1|)) (and (= |b$reqreads#34@2| |b$reqreads#34@1|) (= |b$reqreads#33@2| |b$reqreads#33@1|))))) (and (and (and (and (= |b$reqreads#32@2| |b$reqreads#32@1|) (= |b$reqreads#31@2| |b$reqreads#31@1|)) (and (= |b$reqreads#30@2| |b$reqreads#30@1|) (= |b$reqreads#29@2| |b$reqreads#29@1|))) (and (and (= |b$reqreads#28@2| |b$reqreads#28@1|) (= |b$reqreads#39@3| |b$reqreads#39@2|)) (and (= |b$reqreads#38@3| |b$reqreads#38@2|) (= |b$reqreads#37@3| |b$reqreads#37@2|)))) (and (and (and (= |b$reqreads#36@3| |b$reqreads#36@2|) (= |b$reqreads#35@3| |b$reqreads#35@2|)) (and (= |b$reqreads#44@2| |b$reqreads#44@1|) (= |b$reqreads#43@2| |b$reqreads#43@1|))) (and (and (= |b$reqreads#42@2| |b$reqreads#42@1|) (= |b$reqreads#41@2| |b$reqreads#41@1|)) (and (= |b$reqreads#40@2| |b$reqreads#40@1|) (= (ControlFlow 0 50) 3)))))) anon41_correct))))
(let ((anon65_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#3@0|))) (=> (and (= |b$reqreads#40@1| |b$reqreads#40@0|) (= |b$reqreads#41@1| |b$reqreads#41@0|)) (=> (and (and (= |b$reqreads#42@1| true) (= |b$reqreads#43@1| true)) (and (= |b$reqreads#44@1| true) (= (ControlFlow 0 56) 50))) anon40_correct)))))
(let ((anon65_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#3@0|)) (= |b$reqreads#42@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.Contents)))) (and (=> (= (ControlFlow 0 52) (- 0 55)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U false)))) |s#3@0|)))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U false)))) |s#3@0|))) (=> (= |b$reqreads#43@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.f))) (and (=> (= (ControlFlow 0 52) (- 0 54)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true)) (=> (= |b$reqreads#44@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) SimpleBDD.BDDNode.Contents))) (and (=> (= (ControlFlow 0 52) (- 0 53)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#3@0|))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#3@0|)) (=> (and (= |b$reqreads#40@1| |b$reqreads#40@0|) (= |b$reqreads#41@1| |b$reqreads#41@0|)) (=> (and (and (= |b$reqreads#42@1| |b$reqreads#42@0|) (= |b$reqreads#43@1| |b$reqreads#43@0|)) (and (= |b$reqreads#44@1| |b$reqreads#44@0|) (= (ControlFlow 0 52) 50))) anon40_correct)))))))))))))
(let ((anon64_Then_correct  (=> (and (and ($Is SeqType |s#3@0| (TSeq TBool)) ($IsAlloc SeqType |s#3@0| (TSeq TBool) $Heap@@1)) (= |b$reqreads#40@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.f)))) (and (=> (= (ControlFlow 0 57) (- 0 58)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true)) (=> (= |b$reqreads#41@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) SimpleBDD.BDDNode.Contents))) (and (=> (= (ControlFlow 0 57) 52) anon65_Then_correct) (=> (= (ControlFlow 0 57) 56) anon65_Else_correct))))))))
(let ((anon64_Else_correct  (=> (not (and ($Is SeqType |s#3@0| (TSeq TBool)) ($IsAlloc SeqType |s#3@0| (TSeq TBool) $Heap@@1))) (=> (and (= |b$reqreads#40@1| true) (= |b$reqreads#41@1| true)) (=> (and (and (= |b$reqreads#42@1| true) (= |b$reqreads#43@1| true)) (and (= |b$reqreads#44@1| true) (= (ControlFlow 0 51) 50))) anon40_correct)))))
(let ((anon63_Then_correct  (=> (and (and (and (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n))) (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n))) 1)))) (forall ((|s#4@@0| T@U) ) (!  (=> (and ($Is SeqType |s#4@@0| (TSeq TBool)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#4@@0|))) (= (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) |s#4@@0|))))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#4@@0|))))))
 :qid |BDDdfy.29:17|
 :skolemid |565|
 :pattern ( ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#4@@0|))))
 :pattern ( (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (bool_2_U true))) |s#4@@0|))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#4@@0|)))
))) (and (=> (= (ControlFlow 0 59) 57) anon64_Then_correct) (=> (= (ControlFlow 0 59) 51) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (not (and (and (and (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n))) (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n))) 1)))) (forall ((|s#4@@1| T@U) ) (!  (=> (and ($Is SeqType |s#4@@1| (TSeq TBool)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#4@@1|))) (= (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) |s#4@@1|))))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#4@@1|))))))
 :qid |BDDdfy.29:17|
 :skolemid |565|
 :pattern ( ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#4@@1|))))
 :pattern ( (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (bool_2_U true))) |s#4@@1|))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#4@@1|)))
)))) (=> (and (and (and (= |b$reqreads#6@1| |b$reqreads#6@0|) (= |b$reqreads#7@1| |b$reqreads#7@0|)) (and (= |b$reqreads#8@2| |b$reqreads#8@1|) (= |b$reqreads#9@2| |b$reqreads#9@1|))) (and (and (= |b$reqreads#11@2| |b$reqreads#11@1|) (= |b$reqreads#10@2| |b$reqreads#10@1|)) (and (= |b$reqreads#13@2| |b$reqreads#13@1|) (= |b$reqreads#12@2| |b$reqreads#12@1|)))) (=> (and (and (and (and (and (= |b$reqreads#16@2| |b$reqreads#16@1|) (= |b$reqreads#15@2| |b$reqreads#15@1|)) (and (= |b$reqreads#14@2| |b$reqreads#14@1|) (= |b$reqreads#19@2| |b$reqreads#19@1|))) (and (and (= |b$reqreads#18@2| |b$reqreads#18@1|) (= |b$reqreads#17@2| |b$reqreads#17@1|)) (and (= |b$reqreads#21@2| |b$reqreads#21@1|) (= |b$reqreads#20@2| |b$reqreads#20@1|)))) (and (and (and (= |b$reqreads#23@2| |b$reqreads#23@1|) (= |b$reqreads#22@2| |b$reqreads#22@1|)) (and (= |b$reqreads#25@2| |b$reqreads#25@1|) (= |b$reqreads#24@2| |b$reqreads#24@1|))) (and (and (= |b$reqreads#27@2| |b$reqreads#27@1|) (= |b$reqreads#26@2| |b$reqreads#26@1|)) (and (= |b$reqreads#34@2| |b$reqreads#34@1|) (= |b$reqreads#33@2| |b$reqreads#33@1|))))) (and (and (and (and (= |b$reqreads#32@2| |b$reqreads#32@1|) (= |b$reqreads#31@2| |b$reqreads#31@1|)) (and (= |b$reqreads#30@2| |b$reqreads#30@1|) (= |b$reqreads#29@2| |b$reqreads#29@1|))) (and (and (= |b$reqreads#28@2| |b$reqreads#28@1|) (= |b$reqreads#39@3| |b$reqreads#39@2|)) (and (= |b$reqreads#38@3| |b$reqreads#38@2|) (= |b$reqreads#37@3| |b$reqreads#37@2|)))) (and (and (and (= |b$reqreads#36@3| |b$reqreads#36@2|) (= |b$reqreads#35@3| |b$reqreads#35@2|)) (and (= |b$reqreads#44@2| true) (= |b$reqreads#43@2| true))) (and (and (= |b$reqreads#42@2| true) (= |b$reqreads#41@2| true)) (and (= |b$reqreads#40@2| true) (= (ControlFlow 0 49) 3)))))) anon41_correct)))))
(let ((anon35_correct  (=> (= |b$reqreads#39@2| |b$reqreads#39@1|) (=> (and (and (= |b$reqreads#38@2| |b$reqreads#38@1|) (= |b$reqreads#37@2| |b$reqreads#37@1|)) (and (= |b$reqreads#36@2| |b$reqreads#36@1|) (= |b$reqreads#35@2| |b$reqreads#35@1|))) (and (=> (= (ControlFlow 0 61) 59) anon63_Then_correct) (=> (= (ControlFlow 0 61) 49) anon63_Else_correct))))))
(let ((anon62_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#2@0|))) (=> (and (= |b$reqreads#35@1| |b$reqreads#35@0|) (= |b$reqreads#36@1| |b$reqreads#36@0|)) (=> (and (and (= |b$reqreads#37@1| true) (= |b$reqreads#38@1| true)) (and (= |b$reqreads#39@1| true) (= (ControlFlow 0 67) 61))) anon35_correct)))))
(let ((anon62_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#2@0|)) (= |b$reqreads#37@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.Contents)))) (and (=> (= (ControlFlow 0 63) (- 0 66)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) |s#2@0|)))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) |s#2@0|))) (=> (= |b$reqreads#38@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.t))) (and (=> (= (ControlFlow 0 63) (- 0 65)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true)) (=> (= |b$reqreads#39@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) SimpleBDD.BDDNode.Contents))) (and (=> (= (ControlFlow 0 63) (- 0 64)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#2@0|))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#2@0|)) (=> (and (= |b$reqreads#35@1| |b$reqreads#35@0|) (= |b$reqreads#36@1| |b$reqreads#36@0|)) (=> (and (and (= |b$reqreads#37@1| |b$reqreads#37@0|) (= |b$reqreads#38@1| |b$reqreads#38@0|)) (and (= |b$reqreads#39@1| |b$reqreads#39@0|) (= (ControlFlow 0 63) 61))) anon35_correct)))))))))))))
(let ((anon61_Then_correct  (=> (and (and ($Is SeqType |s#2@0| (TSeq TBool)) ($IsAlloc SeqType |s#2@0| (TSeq TBool) $Heap@@1)) (= |b$reqreads#35@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.t)))) (and (=> (= (ControlFlow 0 68) (- 0 69)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true)) (=> (= |b$reqreads#36@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) SimpleBDD.BDDNode.Contents))) (and (=> (= (ControlFlow 0 68) 63) anon62_Then_correct) (=> (= (ControlFlow 0 68) 67) anon62_Else_correct))))))))
(let ((anon61_Else_correct  (=> (not (and ($Is SeqType |s#2@0| (TSeq TBool)) ($IsAlloc SeqType |s#2@0| (TSeq TBool) $Heap@@1))) (=> (and (= |b$reqreads#35@1| true) (= |b$reqreads#36@1| true)) (=> (and (and (= |b$reqreads#37@1| true) (= |b$reqreads#38@1| true)) (and (= |b$reqreads#39@1| true) (= (ControlFlow 0 62) 61))) anon35_correct)))))
(let ((anon60_Then_correct  (=> (and (and (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n))) (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n))) 1)))) (and (=> (= (ControlFlow 0 70) 68) anon61_Then_correct) (=> (= (ControlFlow 0 70) 62) anon61_Else_correct)))))
(let ((anon60_Else_correct  (=> (and (not (and (and (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n))) (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n))) 1))))) (= |b$reqreads#39@2| true)) (=> (and (and (= |b$reqreads#38@2| true) (= |b$reqreads#37@2| true)) (and (= |b$reqreads#36@2| true) (= |b$reqreads#35@2| true))) (and (=> (= (ControlFlow 0 60) 59) anon63_Then_correct) (=> (= (ControlFlow 0 60) 49) anon63_Else_correct))))))
(let ((anon59_Else_correct  (=> (and (and (and (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n))))) (not true)) (= |b$reqreads#28@1| |b$reqreads#28@0|)) (and (= |b$reqreads#29@1| |b$reqreads#29@0|) (= |b$reqreads#30@1| |b$reqreads#30@0|))) (and (and (= |b$reqreads#31@1| |b$reqreads#31@0|) (= |b$reqreads#32@1| true)) (and (= |b$reqreads#33@1| true) (= |b$reqreads#34@1| true)))) (and (=> (= (ControlFlow 0 74) 70) anon60_Then_correct) (=> (= (ControlFlow 0 74) 60) anon60_Else_correct)))))
(let ((anon59_Then_correct  (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n)))) (= |b$reqreads#32@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.f)))) (and (=> (= (ControlFlow 0 72) (- 0 73)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true)) (=> (= |b$reqreads#33@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) SimpleBDD.BDDNode.n))) (=> (and (and (and (= |b$reqreads#34@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.n))) (= |b$reqreads#28@1| |b$reqreads#28@0|)) (and (= |b$reqreads#29@1| |b$reqreads#29@0|) (= |b$reqreads#30@1| |b$reqreads#30@0|))) (and (and (= |b$reqreads#31@1| |b$reqreads#31@0|) (= |b$reqreads#32@1| |b$reqreads#32@0|)) (and (= |b$reqreads#33@1| |b$reqreads#33@0|) (= |b$reqreads#34@1| |b$reqreads#34@0|)))) (and (=> (= (ControlFlow 0 72) 70) anon60_Then_correct) (=> (= (ControlFlow 0 72) 60) anon60_Else_correct)))))))))
(let ((anon58_Then_correct  (=> (and (and (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)))) (= |b$reqreads#28@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.t)))) (and (=> (= (ControlFlow 0 75) (- 0 77)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true)) (=> (and (= |b$reqreads#29@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) SimpleBDD.BDDNode.n))) (= |b$reqreads#30@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.f)))) (and (=> (= (ControlFlow 0 75) (- 0 76)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true)) (=> (= |b$reqreads#31@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) SimpleBDD.BDDNode.n))) (and (=> (= (ControlFlow 0 75) 72) anon59_Then_correct) (=> (= (ControlFlow 0 75) 74) anon59_Else_correct)))))))))))
(let ((anon58_Else_correct  (=> (and (and (and (not (and (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))))) (= |b$reqreads#28@1| true)) (and (= |b$reqreads#29@1| true) (= |b$reqreads#30@1| true))) (and (and (= |b$reqreads#31@1| true) (= |b$reqreads#32@1| true)) (and (= |b$reqreads#33@1| true) (= |b$reqreads#34@1| true)))) (and (=> (= (ControlFlow 0 71) 70) anon60_Then_correct) (=> (= (ControlFlow 0 71) 60) anon60_Else_correct)))))
(let ((anon57_Else_correct  (=> (not (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))))) (=> (and (= |b$reqreads#26@1| true) (= |b$reqreads#27@1| true)) (and (=> (= (ControlFlow 0 81) 75) anon58_Then_correct) (=> (= (ControlFlow 0 81) 71) anon58_Else_correct))))))
(let ((anon57_Then_correct  (=> (and (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)))) (= |b$reqreads#26@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.f)))) (and (=> (= (ControlFlow 0 78) (- 0 80)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true)) (=> (and ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f) Tclass.SimpleBDD.BDDNode? $Heap@@1) (= |b$reqreads#27@0| (forall (($o@@16 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@16) alloc)))) (or (= $o@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType $o@@16)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@16 $f@@0)))
 :qid |BDDdfy.27:24|
 :skolemid |564|
)))) (and (=> (= (ControlFlow 0 78) (- 0 79)) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))))))) (=> (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)))))) (=> (|SimpleBDD.BDDNode.valid#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (=> (and (= |b$reqreads#26@1| |b$reqreads#26@0|) (= |b$reqreads#27@1| |b$reqreads#27@0|)) (and (=> (= (ControlFlow 0 78) 75) anon58_Then_correct) (=> (= (ControlFlow 0 78) 71) anon58_Else_correct))))))))))))
(let ((anon56_Else_correct  (=> (not (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1))))) (=> (and (= |b$reqreads#24@1| true) (= |b$reqreads#25@1| true)) (and (=> (= (ControlFlow 0 85) 78) anon57_Then_correct) (=> (= (ControlFlow 0 85) 81) anon57_Else_correct))))))
(let ((anon56_Then_correct  (=> (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (= |b$reqreads#24@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.t)))) (and (=> (= (ControlFlow 0 82) (- 0 84)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true)) (=> (and ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t) Tclass.SimpleBDD.BDDNode? $Heap@@1) (= |b$reqreads#25@0| (forall (($o@@17 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@17) alloc)))) (or (= $o@@17 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType $o@@17)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@17 $f@@1)))
 :qid |BDDdfy.27:11|
 :skolemid |563|
)))) (and (=> (= (ControlFlow 0 82) (- 0 83)) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))))))) (=> (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)))))) (=> (|SimpleBDD.BDDNode.valid#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (=> (and (= |b$reqreads#24@1| |b$reqreads#24@0|) (= |b$reqreads#25@1| |b$reqreads#25@0|)) (and (=> (= (ControlFlow 0 82) 78) anon57_Then_correct) (=> (= (ControlFlow 0 82) 81) anon57_Else_correct))))))))))))
(let ((anon55_Else_correct  (=> (not (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1))))) (=> (and (= |b$reqreads#22@1| true) (= |b$reqreads#23@1| true)) (and (=> (= (ControlFlow 0 88) 82) anon56_Then_correct) (=> (= (ControlFlow 0 88) 85) anon56_Else_correct))))))
(let ((anon55_Then_correct  (=> (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)))) (= |b$reqreads#22@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.t)))) (and (=> (= (ControlFlow 0 86) (- 0 87)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true)) (=> (= |b$reqreads#23@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) SimpleBDD.BDDNode.Repr))) (=> (and (= |b$reqreads#22@1| |b$reqreads#22@0|) (= |b$reqreads#23@1| |b$reqreads#23@0|)) (and (=> (= (ControlFlow 0 86) 82) anon56_Then_correct) (=> (= (ControlFlow 0 86) 85) anon56_Else_correct)))))))))
(let ((anon54_Else_correct  (=> (not (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr))))) (=> (and (= |b$reqreads#20@1| true) (= |b$reqreads#21@1| true)) (and (=> (= (ControlFlow 0 91) 86) anon55_Then_correct) (=> (= (ControlFlow 0 91) 88) anon55_Else_correct))))))
(let ((anon54_Then_correct  (=> (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (= |b$reqreads#20@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.f)))) (and (=> (= (ControlFlow 0 89) (- 0 90)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true)) (=> (= |b$reqreads#21@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) SimpleBDD.BDDNode.Repr))) (=> (and (= |b$reqreads#20@1| |b$reqreads#20@0|) (= |b$reqreads#21@1| |b$reqreads#21@0|)) (and (=> (= (ControlFlow 0 89) 86) anon55_Then_correct) (=> (= (ControlFlow 0 89) 88) anon55_Else_correct)))))))))
(let ((anon53_Else_correct  (=> (and (and (not (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr))))) (= |b$reqreads#17@1| true)) (and (= |b$reqreads#18@1| true) (= |b$reqreads#19@1| true))) (and (=> (= (ControlFlow 0 94) 89) anon54_Then_correct) (=> (= (ControlFlow 0 94) 91) anon54_Else_correct)))))
(let ((anon53_Then_correct  (=> (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (= |b$reqreads#17@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.f)))) (and (=> (= (ControlFlow 0 92) (- 0 93)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true)) (=> (= |b$reqreads#18@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) SimpleBDD.BDDNode.Repr))) (=> (and (and (= |b$reqreads#19@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.Repr))) (= |b$reqreads#17@1| |b$reqreads#17@0|)) (and (= |b$reqreads#18@1| |b$reqreads#18@0|) (= |b$reqreads#19@1| |b$reqreads#19@0|))) (and (=> (= (ControlFlow 0 92) 89) anon54_Then_correct) (=> (= (ControlFlow 0 92) 91) anon54_Else_correct)))))))))
(let ((anon52_Else_correct  (=> (and (and (not (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)))) (= |b$reqreads#14@1| true)) (and (= |b$reqreads#15@1| true) (= |b$reqreads#16@1| true))) (and (=> (= (ControlFlow 0 97) 92) anon53_Then_correct) (=> (= (ControlFlow 0 97) 94) anon53_Else_correct)))))
(let ((anon52_Then_correct  (=> (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f))) (= |b$reqreads#14@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.t)))) (and (=> (= (ControlFlow 0 95) (- 0 96)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true)) (=> (= |b$reqreads#15@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) SimpleBDD.BDDNode.Repr))) (=> (and (and (= |b$reqreads#16@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.Repr))) (= |b$reqreads#14@1| |b$reqreads#14@0|)) (and (= |b$reqreads#15@1| |b$reqreads#15@0|) (= |b$reqreads#16@1| |b$reqreads#16@0|))) (and (=> (= (ControlFlow 0 95) 92) anon53_Then_correct) (=> (= (ControlFlow 0 95) 94) anon53_Else_correct)))))))))
(let ((anon51_Else_correct  (=> (not (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)))) (=> (and (= |b$reqreads#12@1| true) (= |b$reqreads#13@1| true)) (and (=> (= (ControlFlow 0 99) 95) anon52_Then_correct) (=> (= (ControlFlow 0 99) 97) anon52_Else_correct))))))
(let ((anon51_Then_correct  (=> (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t))) (and (and (= |b$reqreads#12@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.f))) (= |b$reqreads#13@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.Repr)))) (and (= |b$reqreads#12@1| |b$reqreads#12@0|) (= |b$reqreads#13@1| |b$reqreads#13@0|)))) (and (=> (= (ControlFlow 0 98) 95) anon52_Then_correct) (=> (= (ControlFlow 0 98) 97) anon52_Else_correct)))))
(let ((anon50_Else_correct  (=> (not (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true)))) (=> (and (= |b$reqreads#10@1| true) (= |b$reqreads#11@1| true)) (and (=> (= (ControlFlow 0 101) 98) anon51_Then_correct) (=> (= (ControlFlow 0 101) 99) anon51_Else_correct))))))
(let ((anon50_Then_correct  (=> (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.t)) null)) (not true))) (and (and (= |b$reqreads#10@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.t))) (= |b$reqreads#11@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.Repr)))) (and (= |b$reqreads#10@1| |b$reqreads#10@0|) (= |b$reqreads#11@1| |b$reqreads#11@0|)))) (and (=> (= (ControlFlow 0 100) 98) anon51_Then_correct) (=> (= (ControlFlow 0 100) 99) anon51_Else_correct)))))
(let ((anon49_Else_correct  (=> (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true)))) (= |b$reqreads#9@1| true)) (and (=> (= (ControlFlow 0 103) 100) anon50_Then_correct) (=> (= (ControlFlow 0 103) 101) anon50_Else_correct)))))
(let ((anon49_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.f)) null)) (not true))) (and (= |b$reqreads#9@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.t))) (= |b$reqreads#9@1| |b$reqreads#9@0|))) (and (=> (= (ControlFlow 0 102) 100) anon50_Then_correct) (=> (= (ControlFlow 0 102) 101) anon50_Else_correct)))))
(let ((anon48_Else_correct  (=> (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1))) (= |b$reqreads#8@1| true)) (and (=> (= (ControlFlow 0 105) 102) anon49_Then_correct) (=> (= (ControlFlow 0 105) 103) anon49_Else_correct)))))
(let ((anon48_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)) ($Box refType this@@1)) (=> (and (= |b$reqreads#8@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.f))) (= |b$reqreads#8@1| |b$reqreads#8@0|)) (and (=> (= (ControlFlow 0 104) 102) anon49_Then_correct) (=> (= (ControlFlow 0 104) 103) anon49_Else_correct))))))
(let ((anon47_Then_correct  (=> (and (< 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))) (= |b$reqreads#7@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.Repr)))) (and (=> (= (ControlFlow 0 106) 104) anon48_Then_correct) (=> (= (ControlFlow 0 106) 105) anon48_Else_correct)))))
(let ((anon47_Else_correct  (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n))) 0) (=> (and (and (and (= |b$reqreads#6@1| |b$reqreads#6@0|) (= |b$reqreads#7@1| true)) (and (= |b$reqreads#8@2| true) (= |b$reqreads#9@2| true))) (and (and (= |b$reqreads#11@2| true) (= |b$reqreads#10@2| true)) (and (= |b$reqreads#13@2| true) (= |b$reqreads#12@2| true)))) (=> (and (and (and (and (and (= |b$reqreads#16@2| true) (= |b$reqreads#15@2| true)) (and (= |b$reqreads#14@2| true) (= |b$reqreads#19@2| true))) (and (and (= |b$reqreads#18@2| true) (= |b$reqreads#17@2| true)) (and (= |b$reqreads#21@2| true) (= |b$reqreads#20@2| true)))) (and (and (and (= |b$reqreads#23@2| true) (= |b$reqreads#22@2| true)) (and (= |b$reqreads#25@2| true) (= |b$reqreads#24@2| true))) (and (and (= |b$reqreads#27@2| true) (= |b$reqreads#26@2| true)) (and (= |b$reqreads#34@2| true) (= |b$reqreads#33@2| true))))) (and (and (and (and (= |b$reqreads#32@2| true) (= |b$reqreads#31@2| true)) (and (= |b$reqreads#30@2| true) (= |b$reqreads#29@2| true))) (and (and (= |b$reqreads#28@2| true) (= |b$reqreads#39@3| true)) (and (= |b$reqreads#38@3| true) (= |b$reqreads#37@3| true)))) (and (and (and (= |b$reqreads#36@3| true) (= |b$reqreads#35@3| true)) (and (= |b$reqreads#44@2| true) (= |b$reqreads#43@2| true))) (and (and (= |b$reqreads#42@2| true) (= |b$reqreads#41@2| true)) (and (= |b$reqreads#40@2| true) (= (ControlFlow 0 48) 3)))))) anon41_correct)))))
(let ((anon46_Then_correct  (=> (and (and (SimpleBDD.BDDNode.bitfunc ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))) (=> (= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))) (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.b))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($Box SeqType (Lit SeqType |Seq#Empty|)))))))) (= |b$reqreads#6@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.n)))) (and (=> (= (ControlFlow 0 107) 106) anon47_Then_correct) (=> (= (ControlFlow 0 107) 48) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (not (and (SimpleBDD.BDDNode.bitfunc ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))) (=> (= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))) (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.b))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($Box SeqType (Lit SeqType |Seq#Empty|))))))))) (=> (and (and (and (= |b$reqreads#6@1| true) (= |b$reqreads#7@1| true)) (and (= |b$reqreads#8@2| true) (= |b$reqreads#9@2| true))) (and (and (= |b$reqreads#11@2| true) (= |b$reqreads#10@2| true)) (and (= |b$reqreads#13@2| true) (= |b$reqreads#12@2| true)))) (=> (and (and (and (and (and (= |b$reqreads#16@2| true) (= |b$reqreads#15@2| true)) (and (= |b$reqreads#14@2| true) (= |b$reqreads#19@2| true))) (and (and (= |b$reqreads#18@2| true) (= |b$reqreads#17@2| true)) (and (= |b$reqreads#21@2| true) (= |b$reqreads#20@2| true)))) (and (and (and (= |b$reqreads#23@2| true) (= |b$reqreads#22@2| true)) (and (= |b$reqreads#25@2| true) (= |b$reqreads#24@2| true))) (and (and (= |b$reqreads#27@2| true) (= |b$reqreads#26@2| true)) (and (= |b$reqreads#34@2| true) (= |b$reqreads#33@2| true))))) (and (and (and (and (= |b$reqreads#32@2| true) (= |b$reqreads#31@2| true)) (and (= |b$reqreads#30@2| true) (= |b$reqreads#29@2| true))) (and (and (= |b$reqreads#28@2| true) (= |b$reqreads#39@3| true)) (and (= |b$reqreads#38@3| true) (= |b$reqreads#37@3| true)))) (and (and (and (= |b$reqreads#36@3| true) (= |b$reqreads#35@3| true)) (and (= |b$reqreads#44@2| true) (= |b$reqreads#43@2| true))) (and (and (= |b$reqreads#42@2| true) (= |b$reqreads#41@2| true)) (and (= |b$reqreads#40@2| true) (= (ControlFlow 0 47) 3)))))) anon41_correct)))))
(let ((anon45_Else_correct  (=> (and (and (or (not (= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n))))) (not true)) (= |b$reqreads#3@1| |b$reqreads#3@0|)) (and (= |b$reqreads#4@1| true) (= |b$reqreads#5@1| true))) (and (=> (= (ControlFlow 0 111) 107) anon46_Then_correct) (=> (= (ControlFlow 0 111) 47) anon46_Else_correct)))))
(let ((anon45_Then_correct  (=> (= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))) (=> (and (= |b$reqreads#4@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.b))) (= |b$reqreads#5@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.Contents)))) (and (=> (= (ControlFlow 0 109) (- 0 110)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($Box SeqType (Lit SeqType |Seq#Empty|)))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($Box SeqType (Lit SeqType |Seq#Empty|))) (=> (= |b$reqreads#3@1| |b$reqreads#3@0|) (=> (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= |b$reqreads#5@1| |b$reqreads#5@0|)) (and (=> (= (ControlFlow 0 109) 107) anon46_Then_correct) (=> (= (ControlFlow 0 109) 47) anon46_Else_correct))))))))))
(let ((anon44_Then_correct  (=> (and (SimpleBDD.BDDNode.bitfunc ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))) (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.n)))) (and (=> (= (ControlFlow 0 112) 109) anon45_Then_correct) (=> (= (ControlFlow 0 112) 111) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (and (not (SimpleBDD.BDDNode.bitfunc ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n))))) (= |b$reqreads#3@1| true)) (and (= |b$reqreads#4@1| true) (= |b$reqreads#5@1| true))) (and (=> (= (ControlFlow 0 108) 107) anon46_Then_correct) (=> (= (ControlFlow 0 108) 47) anon46_Else_correct)))))
(let ((anon43_Else_correct  (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.Contents))) (=> (and (= |##f#0@0| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents))) ($IsAlloc MapType |##f#0@0| (TMap (TSeq TBool) TBool) $Heap@@1)) (=> (and (and (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.n))) (= |##n#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n))))) (and ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap@@1) (|SimpleBDD.BDDNode.bitfunc#canCall| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Contents)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.n)))))) (and (=> (= (ControlFlow 0 113) 112) anon44_Then_correct) (=> (= (ControlFlow 0 113) 108) anon44_Else_correct)))))))
(let ((anon43_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc this@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SimpleBDD.BDDNode.Repr)))) (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 SimpleBDD.BDDNode.Repr)))) (and (=> (= (ControlFlow 0 114) (- 0 115)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 114) 1) anon43_Then_correct) (=> (= (ControlFlow 0 114) 113) anon43_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.SimpleBDD.BDDNode) ($IsAlloc refType this@@1 Tclass.SimpleBDD.BDDNode $Heap@@1))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 116) 114))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
