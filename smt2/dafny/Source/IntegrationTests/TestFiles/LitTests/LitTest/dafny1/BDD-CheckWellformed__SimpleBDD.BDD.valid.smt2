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
(declare-fun class.SimpleBDD.BDD? () T@U)
(declare-fun Tagclass.SimpleBDD.BDD? () T@U)
(declare-fun Tagclass.SimpleBDD.BDD () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$BDDNode () T@U)
(declare-fun tytagFamily$BDD () T@U)
(declare-fun field$Contents () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$n () T@U)
(declare-fun field$f () T@U)
(declare-fun field$t () T@U)
(declare-fun field$b () T@U)
(declare-fun field$root () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun SimpleBDD.BDD.valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |SimpleBDD.BDD.valid#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.SimpleBDD.BDD () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun SimpleBDD.BDD.Repr () T@U)
(declare-fun SimpleBDD.BDD.root () T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun SimpleBDD.BDDNode.Repr () T@U)
(declare-fun |SimpleBDD.BDDNode.valid#canCall| (T@U T@U) Bool)
(declare-fun SimpleBDD.BDDNode.valid (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun SimpleBDD.BDD.n () T@U)
(declare-fun SimpleBDD.BDDNode.n () T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun SimpleBDD.BDD.Contents () T@U)
(declare-fun SimpleBDD.BDDNode.Contents () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun Tclass.SimpleBDD.BDDNode () T@U)
(declare-fun |SimpleBDD.BDDNode.bitfunc#canCall| (T@U Int) Bool)
(declare-fun SimpleBDD.BDDNode.bitfunc (T@U Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun SimpleBDD.BDDNode.b () T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun SimpleBDD.BDDNode.f () T@U)
(declare-fun SimpleBDD.BDDNode.t () T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun Tclass._System.nat () T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun Tclass.SimpleBDD.BDDNode? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.SimpleBDD.BDD? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
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
(assert (distinct TBool TagBool TagSet TagSeq TagMap alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 class.SimpleBDD.BDDNode? Tagclass.SimpleBDD.BDDNode? Tagclass.SimpleBDD.BDDNode class.SimpleBDD.BDD? Tagclass.SimpleBDD.BDD? Tagclass.SimpleBDD.BDD tytagFamily$nat tytagFamily$object |tytagFamily$_tuple#2| tytagFamily$BDDNode tytagFamily$BDD field$Contents field$Repr field$n field$f field$t field$b field$root)
)
(assert  (and (and (and (and (and (and (and (and (and (= (Ctor refType) 3) (= (Ctor SetType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
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
))) (= (Ctor MapType) 8)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|SimpleBDD.BDD.valid#canCall| $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.SimpleBDD.BDD) ($IsAlloc refType this Tclass.SimpleBDD.BDD $Heap)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDD.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDD.root)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDD.Repr))) (|SimpleBDD.BDDNode.valid#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDD.root))))) (= (SimpleBDD.BDD.valid $Heap this)  (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDD.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDD.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDD.Repr)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDD.root)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDD.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.n))))) (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDD.Contents)) ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.Contents)))))))
 :qid |BDDdfy.36:21|
 :skolemid |583|
 :pattern ( (SimpleBDD.BDD.valid $Heap this) ($IsGoodHeap $Heap))
))))
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor SeqType) 9))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|SimpleBDD.BDDNode.valid#canCall| $Heap@@0 this@@0) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.SimpleBDD.BDDNode) ($IsAlloc refType this@@0 Tclass.SimpleBDD.BDDNode $Heap@@0)))))) (and (and (|SimpleBDD.BDDNode.bitfunc#canCall| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Contents)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.n)))) (=> (SimpleBDD.BDDNode.bitfunc ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Contents)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.n)))) (=> (=> (= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.n)))) (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.b))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Contents))) ($Box SeqType (Lit SeqType |Seq#Empty|))))))) (=> (< 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.n)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Repr)) ($Box refType this@@0)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f)) null)) (not true)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Repr))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@0))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@0))) (and (|SimpleBDD.BDDNode.valid#canCall| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t))) (=> (SimpleBDD.BDDNode.valid $ly $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t))) (|SimpleBDD.BDDNode.valid#canCall| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f)))))))))))))))))) (= (SimpleBDD.BDDNode.valid ($LS $ly) $Heap@@0 this@@0)  (and (and (SimpleBDD.BDDNode.bitfunc ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Contents)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.n)))) (=> (= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.n)))) (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.b))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Contents))) ($Box SeqType (Lit SeqType |Seq#Empty|)))))))) (=> (< 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.n)))) (and (and (and (and (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Repr)) ($Box refType this@@0)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f)) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t)) null)) (not true))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@0)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Repr)) ($Box refType this@@0)))) (SimpleBDD.BDDNode.valid $ly $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t)))) (SimpleBDD.BDDNode.valid $ly $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f)))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.n))) (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.n))) 1)))) (forall ((|s#0| T@U) ) (!  (=> (and ($Is SeqType |s#0| (TSeq TBool)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#0|))) (= (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Contents))) ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U true)))) |s#0|))))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#0|))))))
 :qid |BDDdfy.29:17|
 :skolemid |558|
 :pattern ( ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#0|))))
 :pattern ( (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (bool_2_U true))) |s#0|))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.t))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#0|)))
))) (forall ((|s#1| T@U) ) (!  (=> (and ($Is SeqType |s#1| (TSeq TBool)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#1|))) (= (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.Contents))) ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (Lit boolType (bool_2_U false)))) |s#1|))))) (U_2_bool ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#1|))))))
 :qid |BDDdfy.30:17|
 :skolemid |559|
 :pattern ( ($Unbox boolType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#1|))))
 :pattern ( (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box boolType (bool_2_U false))) |s#1|))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SimpleBDD.BDDNode.f))) SimpleBDD.BDDNode.Contents))) ($Box SeqType |s#1|)))
))))))))
 :qid |BDDdfy.17:21|
 :skolemid |561|
 :pattern ( (SimpleBDD.BDDNode.valid ($LS $ly) $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
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
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.SimpleBDD.BDDNode?)  (or (= $o null) (= (dtype $o) Tclass.SimpleBDD.BDDNode?)))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( ($Is refType $o Tclass.SimpleBDD.BDDNode?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.SimpleBDD.BDD?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.SimpleBDD.BDD?)))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($Is refType $o@@0 Tclass.SimpleBDD.BDD?))
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
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.SimpleBDD.BDD $h@@2) ($IsAlloc refType |c#0@@1| Tclass.SimpleBDD.BDD? $h@@2))
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.SimpleBDD.BDD $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.SimpleBDD.BDD? $h@@2))
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
(assert (= (FDim SimpleBDD.BDD.Repr) 0))
(assert (= (FieldOfDecl class.SimpleBDD.BDD? field$Repr) SimpleBDD.BDD.Repr))
(assert ($IsGhostField SimpleBDD.BDD.Repr))
(assert (= (FDim SimpleBDD.BDD.Contents) 0))
(assert (= (FieldOfDecl class.SimpleBDD.BDD? field$Contents) SimpleBDD.BDD.Contents))
(assert ($IsGhostField SimpleBDD.BDD.Contents))
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
(assert (= (FDim SimpleBDD.BDD.root) 0))
(assert (= (FieldOfDecl class.SimpleBDD.BDD? field$root) SimpleBDD.BDD.root))
(assert  (not ($IsGhostField SimpleBDD.BDD.root)))
(assert (= (FDim SimpleBDD.BDD.n) 0))
(assert (= (FieldOfDecl class.SimpleBDD.BDD? field$n) SimpleBDD.BDD.n))
(assert  (not ($IsGhostField SimpleBDD.BDD.n)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.SimpleBDD.BDDNode? $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.SimpleBDD.BDDNode? $h@@4))
)))
(assert (forall (($o@@3 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.SimpleBDD.BDD? $h@@5)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.SimpleBDD.BDD? $h@@5))
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
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
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
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@6)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@6) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@6))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@6))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@4 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) (or (= $o@@4 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@4)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |619|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall (($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.SimpleBDD.BDDNode?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) SimpleBDD.BDDNode.b)) TBool $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |550|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) SimpleBDD.BDDNode.b)))
)))
(assert (forall (($ly@@0 T@U) ($Heap@@1 T@U) (this@@1 T@U) ) (! (= (SimpleBDD.BDDNode.valid ($LS $ly@@0) $Heap@@1 this@@1) (SimpleBDD.BDDNode.valid $ly@@0 $Heap@@1 this@@1))
 :qid |BDDdfy.17:21|
 :skolemid |551|
 :pattern ( (SimpleBDD.BDDNode.valid ($LS $ly@@0) $Heap@@1 this@@1))
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
(assert (forall (($h@@8 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.SimpleBDD.BDDNode?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) SimpleBDD.BDDNode.n)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |543|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) SimpleBDD.BDDNode.n)))
)))
(assert (forall (($h@@9 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.SimpleBDD.BDDNode?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) SimpleBDD.BDDNode.f)) Tclass.SimpleBDD.BDDNode?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |545|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) SimpleBDD.BDDNode.f)))
)))
(assert (forall (($h@@10 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.SimpleBDD.BDDNode?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) SimpleBDD.BDDNode.t)) Tclass.SimpleBDD.BDDNode?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |547|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) SimpleBDD.BDDNode.t)))
)))
(assert (forall (($h@@11 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.SimpleBDD.BDD?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) SimpleBDD.BDD.root)) Tclass.SimpleBDD.BDDNode))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |576|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) SimpleBDD.BDD.root)))
)))
(assert (forall (($h@@12 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.SimpleBDD.BDD?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) SimpleBDD.BDD.n)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |590|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) SimpleBDD.BDD.n)))
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
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.SimpleBDD.BDD?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.SimpleBDD.BDD?)))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( ($IsBox bx@@6 Tclass.SimpleBDD.BDD?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.SimpleBDD.BDD) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass.SimpleBDD.BDD)))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( ($IsBox bx@@7 Tclass.SimpleBDD.BDD))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.SimpleBDD.BDDNode)  (and ($Is refType |c#0@@3| Tclass.SimpleBDD.BDDNode?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( ($Is refType |c#0@@3| Tclass.SimpleBDD.BDDNode))
 :pattern ( ($Is refType |c#0@@3| Tclass.SimpleBDD.BDDNode?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.SimpleBDD.BDD)  (and ($Is refType |c#0@@4| Tclass.SimpleBDD.BDD?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( ($Is refType |c#0@@4| Tclass.SimpleBDD.BDD))
 :pattern ( ($Is refType |c#0@@4| Tclass.SimpleBDD.BDD?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@2 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) v@@2)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i))
)))
(assert (forall (($h@@13 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.SimpleBDD.BDDNode?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) alloc)))) ($IsAlloc MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) SimpleBDD.BDDNode.Contents)) (TMap (TSeq TBool) TBool) $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |540|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) SimpleBDD.BDDNode.Contents)))
)))
(assert (forall (($h@@14 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass.SimpleBDD.BDD?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) alloc)))) ($IsAlloc MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) SimpleBDD.BDD.Contents)) (TMap (TSeq TBool) TBool) $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |589|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) SimpleBDD.BDD.Contents)))
)))
(assert (forall (($h@@15 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass.SimpleBDD.BDDNode?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@13) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@13) SimpleBDD.BDDNode.n)) Tclass._System.nat $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |544|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@13) SimpleBDD.BDDNode.n)))
)))
(assert (forall (($h@@16 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass.SimpleBDD.BDDNode?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@14) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@14) SimpleBDD.BDDNode.f)) Tclass.SimpleBDD.BDDNode? $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |546|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@14) SimpleBDD.BDDNode.f)))
)))
(assert (forall (($h@@17 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass.SimpleBDD.BDDNode?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@15) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@15) SimpleBDD.BDDNode.t)) Tclass.SimpleBDD.BDDNode? $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |548|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@15) SimpleBDD.BDDNode.t)))
)))
(assert (forall (($h@@18 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass.SimpleBDD.BDD?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) SimpleBDD.BDD.root)) Tclass.SimpleBDD.BDDNode $h@@18))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |577|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) SimpleBDD.BDD.root)))
)))
(assert (forall (($h@@19 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass.SimpleBDD.BDD?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) SimpleBDD.BDD.n)) Tclass._System.nat $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |591|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) SimpleBDD.BDD.n)))
)))
(assert (forall ((m@@4 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@4 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@4) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |297|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@4) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@4) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |298|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |299|
 :pattern ( (|Map#Equal| m@@4 |m'|))
)))
(assert (forall (($h@@20 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass.SimpleBDD.BDDNode?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@18) SimpleBDD.BDDNode.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |541|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@18) SimpleBDD.BDDNode.Repr)))
)))
(assert (forall (($h@@21 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass.SimpleBDD.BDD?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@19) SimpleBDD.BDD.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |592|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@19) SimpleBDD.BDD.Repr)))
)))
(assert (forall (($h@@22 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass.SimpleBDD.BDDNode?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@20) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@20) SimpleBDD.BDDNode.Repr)) (TSet Tclass._System.object) $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |542|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@20) SimpleBDD.BDDNode.Repr)))
)))
(assert (forall (($h@@23 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass.SimpleBDD.BDD?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@21) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@21) SimpleBDD.BDD.Repr)) (TSet Tclass._System.object) $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |593|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@21) SimpleBDD.BDD.Repr)))
)))
(assert (forall ((m@@5 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@5 |m'@@0|) (= m@@5 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |300|
 :pattern ( (|Map#Equal| m@@5 |m'@@0|))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TBool) (and (= ($Box boolType ($Unbox boolType bx@@8)) bx@@8) ($Is boolType ($Unbox boolType bx@@8) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@8 TBool))
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
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@2) h@@0) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@9) ($IsAllocBox bx@@9 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@4 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@2) h@@0))
)))
(assert (forall ((t@@2 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@2 u@@1)) t@@2)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@2 u@@1))
)))
(assert (forall ((t@@3 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@3 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@3 u@@2))
)))
(assert (forall ((t@@4 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@4 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@4 u@@3))
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
(assert (forall (($o@@22 T@U) ) (! ($Is refType $o@@22 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@22 Tclass._System.object?))
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
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) (t1@@1 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@6 (TMap t0@@4 t1@@1) h@@2) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@10) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@10) t1@@1 h@@2) ($IsAllocBox bx@@10 t0@@4 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@10))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@10))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@6 (TMap t0@@4 t1@@1) h@@2))
)))
(assert (forall (($h@@24 T@U) ($o@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass.SimpleBDD.BDDNode?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@23) SimpleBDD.BDDNode.b)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |549|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@23) SimpleBDD.BDDNode.b)))
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
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((bx@@11 T@U) (s@@3 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@11 (TMap s@@3 t@@9)) (and (= ($Box MapType ($Unbox MapType bx@@11)) bx@@11) ($Is MapType ($Unbox MapType bx@@11) (TMap s@@3 t@@9))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@11 (TMap s@@3 t@@9)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
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
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@6) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((v@@7 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@7) v@@7)
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
(assert (forall ((m@@9 T@U) (v@@8 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@9) v@@8) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@9) u@@5) (= v@@8 (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@9) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@9) v@@8))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@13 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@10)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@10))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@13 (TSet t@@10)))
)))
(assert (forall ((bx@@14 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@14 (TSeq t@@11)) (and (= ($Box SeqType ($Unbox SeqType bx@@14)) bx@@14) ($Is SeqType ($Unbox SeqType bx@@14) (TSeq t@@11))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@14 (TSeq t@@11)))
)))
(assert (forall ((v@@9 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@9 (TMap t0@@5 t1@@2)) (forall ((bx@@15 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@9) bx@@15) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@15) t1@@2) ($IsBox bx@@15 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@15))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@9) bx@@15))
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
(assert (= (Tag Tclass.SimpleBDD.BDD?) Tagclass.SimpleBDD.BDD?))
(assert (= (TagFamily Tclass.SimpleBDD.BDD?) tytagFamily$BDD))
(assert (= (Tag Tclass.SimpleBDD.BDD) Tagclass.SimpleBDD.BDD))
(assert (= (TagFamily Tclass.SimpleBDD.BDD) tytagFamily$BDD))
(assert (forall (($h@@25 T@U) ($o@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) Tclass.SimpleBDD.BDDNode?))) ($Is MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@24) SimpleBDD.BDDNode.Contents)) (TMap (TSeq TBool) TBool)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |539|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@24) SimpleBDD.BDDNode.Contents)))
)))
(assert (forall (($h@@26 T@U) ($o@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) Tclass.SimpleBDD.BDD?))) ($Is MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@25) SimpleBDD.BDD.Contents)) (TMap (TSeq TBool) TBool)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |588|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@25) SimpleBDD.BDD.Contents)))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@27)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@27))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@27))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@27))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@28)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@28))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@28))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@28))
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
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
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
(assert (forall ((m@@10 T@U) ) (!  (or (= m@@10 |Map#Empty|) (exists ((k@@0 T@U) (v@@12 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@10) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@12)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@10))
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
(declare-fun $Heap@@2 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |b$reqreads#5@1| () Bool)
(declare-fun |b$reqreads#6@1| () Bool)
(declare-fun |b$reqreads#7@1| () Bool)
(declare-fun |b$reqreads#8@1| () Bool)
(declare-fun |b$reqreads#9@1| () Bool)
(declare-fun |b$reqreads#10@1| () Bool)
(declare-fun |b$reqreads#11@1| () Bool)
(declare-fun |b$reqreads#12@1| () Bool)
(declare-fun |b$reqreads#13@1| () Bool)
(declare-fun |b$reqreads#11@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#12@0| () Bool)
(declare-fun |b$reqreads#13@0| () Bool)
(declare-fun |b$reqreads#8@0| () Bool)
(declare-fun |b$reqreads#9@0| () Bool)
(declare-fun |b$reqreads#10@0| () Bool)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun |b$reqreads#7@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$SimpleBDD.BDD.valid)
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
 (=> (= (ControlFlow 0 0) 31) (let ((anon11_correct  (=> (= (SimpleBDD.BDD.valid $Heap@@2 this@@2)  (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.n))))) (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Contents)) ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.Contents))))) (=> (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr))) (|SimpleBDD.BDDNode.valid#canCall| $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))))) ($Is boolType (bool_2_U (SimpleBDD.BDD.valid $Heap@@2 this@@2)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 15)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 3) (- 0 14)) |b$reqreads#2@0|) (=> |b$reqreads#2@0| (and (=> (= (ControlFlow 0 3) (- 0 13)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (and (=> (= (ControlFlow 0 3) (- 0 12)) |b$reqreads#4@1|) (=> |b$reqreads#4@1| (and (=> (= (ControlFlow 0 3) (- 0 11)) |b$reqreads#5@1|) (=> |b$reqreads#5@1| (and (=> (= (ControlFlow 0 3) (- 0 10)) |b$reqreads#6@1|) (=> |b$reqreads#6@1| (and (=> (= (ControlFlow 0 3) (- 0 9)) |b$reqreads#7@1|) (=> |b$reqreads#7@1| (and (=> (= (ControlFlow 0 3) (- 0 8)) |b$reqreads#8@1|) (=> |b$reqreads#8@1| (and (=> (= (ControlFlow 0 3) (- 0 7)) |b$reqreads#9@1|) (=> |b$reqreads#9@1| (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#10@1|) (=> |b$reqreads#10@1| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#11@1|) (=> |b$reqreads#11@1| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#12@1|) (=> |b$reqreads#12@1| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#13@1|)))))))))))))))))))))))))))))
(let ((anon17_Else_correct  (=> (not (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.n)))))) (=> (and (and (= |b$reqreads#11@1| true) (= |b$reqreads#12@1| true)) (and (= |b$reqreads#13@1| true) (= (ControlFlow 0 18) 3))) anon11_correct))))
(let ((anon17_Then_correct  (=> (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.n))))) (and (= |b$reqreads#11@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 SimpleBDD.BDD.Contents))) (= |b$reqreads#12@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 SimpleBDD.BDD.root))))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) null)) (not true)) (=> (= |b$reqreads#13@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) SimpleBDD.BDDNode.Contents))) (=> (and (and (= |b$reqreads#11@1| |b$reqreads#11@0|) (= |b$reqreads#12@1| |b$reqreads#12@0|)) (and (= |b$reqreads#13@1| |b$reqreads#13@0|) (= (ControlFlow 0 16) 3))) anon11_correct)))))))
(let ((anon16_Else_correct  (=> (and (and (not (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))))) (= |b$reqreads#8@1| true)) (and (= |b$reqreads#9@1| true) (= |b$reqreads#10@1| true))) (and (=> (= (ControlFlow 0 21) 16) anon17_Then_correct) (=> (= (ControlFlow 0 21) 18) anon17_Else_correct)))))
(let ((anon16_Then_correct  (=> (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)))) (SimpleBDD.BDDNode.valid ($LS $LZ) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)))) (and (= |b$reqreads#8@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 SimpleBDD.BDD.n))) (= |b$reqreads#9@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 SimpleBDD.BDD.root))))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) null)) (not true)) (=> (and (and (= |b$reqreads#10@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) SimpleBDD.BDDNode.n))) (= |b$reqreads#8@1| |b$reqreads#8@0|)) (and (= |b$reqreads#9@1| |b$reqreads#9@0|) (= |b$reqreads#10@1| |b$reqreads#10@0|))) (and (=> (= (ControlFlow 0 19) 16) anon17_Then_correct) (=> (= (ControlFlow 0 19) 18) anon17_Else_correct))))))))
(let ((anon15_Else_correct  (=> (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr))))) (=> (and (= |b$reqreads#6@1| true) (= |b$reqreads#7@1| true)) (and (=> (= (ControlFlow 0 24) 19) anon16_Then_correct) (=> (= (ControlFlow 0 24) 21) anon16_Else_correct))))))
(let ((anon15_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)))) (= |b$reqreads#6@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 SimpleBDD.BDD.root)))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) null)) (not true)) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root) Tclass.SimpleBDD.BDDNode? $Heap@@2) (=> (and (and (= |b$reqreads#7@0| (forall (($o@@26 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@26) alloc)))) (or (= $o@@26 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) SimpleBDD.BDDNode.Repr)) ($Box refType $o@@26)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@26 $f@@0)))
 :qid |BDDdfy.39:49|
 :skolemid |584|
))) (|SimpleBDD.BDDNode.valid#canCall| $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)))) (and (= |b$reqreads#6@1| |b$reqreads#6@0|) (= |b$reqreads#7@1| |b$reqreads#7@0|))) (and (=> (= (ControlFlow 0 22) 19) anon16_Then_correct) (=> (= (ControlFlow 0 22) 21) anon16_Else_correct)))))))))
(let ((anon14_Else_correct  (=> (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root))) (= |b$reqreads#3@1| true)) (and (= |b$reqreads#4@1| true) (= |b$reqreads#5@1| true))) (and (=> (= (ControlFlow 0 27) 22) anon15_Then_correct) (=> (= (ControlFlow 0 27) 24) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 SimpleBDD.BDD.root)))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) null)) (not true)) (=> (= |b$reqreads#4@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.root)) SimpleBDD.BDDNode.Repr))) (=> (and (and (= |b$reqreads#5@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 SimpleBDD.BDD.Repr))) (= |b$reqreads#3@1| |b$reqreads#3@0|)) (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= |b$reqreads#5@1| |b$reqreads#5@0|))) (and (=> (= (ControlFlow 0 25) 22) anon15_Then_correct) (=> (= (ControlFlow 0 25) 24) anon15_Else_correct)))))))))
(let ((anon13_Else_correct  (=> (and (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 SimpleBDD.BDD.root))) (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 SimpleBDD.BDD.Repr)))) (and (=> (= (ControlFlow 0 28) 25) anon14_Then_correct) (=> (= (ControlFlow 0 28) 27) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc this@@2 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) SimpleBDD.BDD.Repr)))) (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 SimpleBDD.BDD.Repr)))) (and (=> (= (ControlFlow 0 29) (- 0 30)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 29) 1) anon13_Then_correct) (=> (= (ControlFlow 0 29) 28) anon13_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass.SimpleBDD.BDD) ($IsAlloc refType this@@2 Tclass.SimpleBDD.BDD $Heap@@2))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 31) 29))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
