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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._module.T () T@U)
(declare-fun Tagclass._module.S () T@U)
(declare-fun |##_module.S.S| () T@U)
(declare-fun |##_module.T.T| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$T () T@U)
(declare-fun tytagFamily$S () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#1| (T@U T@U T@U T@U Int Int T@U T@U T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun DatatypeTypeType () T@T)
(declare-fun IndexField (Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.S.G (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.Valid#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.T () T@U)
(declare-fun _module.T.T_q (T@U) Bool)
(declare-fun _module.T.F (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _module.S.S_q (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun _module.T.Repr (T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#0| (Int Int T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.S () T@U)
(declare-fun |#_module.T.T| (T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |#_module.S.S| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._module.T Tagclass._module.S |##_module.S.S| |##_module.T.T| tytagFamily$object tytagFamily$array tytagFamily$T tytagFamily$S)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
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
)))) (= (Ctor refType) 3)) (= (Ctor FieldType) 4)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor DatatypeTypeType) 7)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| Int) (|l#5| Int) (|l#6| T@U) (|l#7| T@U) (|l#8| T@U) (|l#9| T@U) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) (or (= $o@@0 |l#3|) (exists ((|i#0| Int) ) (!  (and (and (<= |l#4| |i#0|) (< |i#0| |l#5|)) (= ($Box refType $o@@0) ($Box refType (_module.S.G ($Unbox DatatypeTypeType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#6| |l#7|) (IndexField |i#0|)))))))
 :qid |gitissue314dfy.8:14|
 :skolemid |488|
 :pattern ( ($Unbox DatatypeTypeType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#8| |l#9|) (IndexField |i#0|))))
)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |526|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9|) $o@@0 $f))
)))
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
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.Valid#canCall| $Heap |t#0|) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |t#0| Tclass._module.T)))) (and (and (_module.T.T_q |t#0|) (let ((|short#0| (_module.T.F |t#0|)))
 (and (_module.T.T_q |t#0|) (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (_System.array.Length |short#0|))) (_module.S.S_q ($Unbox DatatypeTypeType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap |short#0|) (IndexField |i#1|)))))
 :qid |gitissue314dfy.11:18|
 :skolemid |486|
 :pattern ( ($Unbox DatatypeTypeType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap |short#0|) (IndexField |i#1|))))
))))) (= (_module.__default.Valid $Heap |t#0|) (let ((|short#0@@0| (_module.T.F |t#0|)))
(|Set#Equal| (_module.T.Repr |t#0|) (|Set#Union| (|Set#FromBoogieMap| (|lambda#0| (LitInt 0) (_System.array.Length |short#0@@0|) $Heap |short#0@@0| $Heap |short#0@@0|)) (|Set#UnionOne| |Set#Empty| ($Box refType |short#0@@0|))))))))
 :qid |gitissue314dfy.6:17|
 :skolemid |487|
 :pattern ( (_module.__default.Valid $Heap |t#0|) ($IsGoodHeap $Heap))
))))
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
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|l#0@@0| Int) (|l#1@@0| Int) (|l#2@@0| T@U) (|l#3@@0| T@U) (|l#4@@0| T@U) (|l#5@@0| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType1Select BoxType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) |$y#0|)) (exists ((|i#1@@0| Int) ) (!  (and (and (<= |l#0@@0| |i#1@@0|) (< |i#1@@0| |l#1@@0|)) (= |$y#0| ($Box refType (_module.S.G ($Unbox DatatypeTypeType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#2@@0| |l#3@@0|) (IndexField |i#1@@0|)))))))
 :qid |gitissue314dfy.11:18|
 :skolemid |485|
 :pattern ( ($Unbox DatatypeTypeType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#4@@0| |l#5@@0|) (IndexField |i#1@@0|))))
)))
 :qid |unknown.0:0|
 :skolemid |525|
 :pattern ( (MapType1Select BoxType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) |$y#0|))
)))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.S) (_module.S.S_q d))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( (_module.S.S_q d) ($Is DatatypeTypeType d Tclass._module.S))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass._module.T) (_module.T.T_q d@@0))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( (_module.T.T_q d@@0) ($Is DatatypeTypeType d@@0 Tclass._module.T))
)))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.T.T| |a#7#0#0| |a#7#1#0|) Tclass._module.T)  (and ($Is refType |a#7#0#0| (Tclass._System.array Tclass._module.S)) ($Is SetType |a#7#1#0| (TSet Tclass._System.object))))
 :qid |gitissue314dfy.4:16|
 :skolemid |513|
 :pattern ( ($Is DatatypeTypeType (|#_module.T.T| |a#7#0#0| |a#7#1#0|) Tclass._module.T))
)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@2))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.T.T| |a#7#0#0@@0| |a#7#1#0@@0|) Tclass._module.T $h@@3)  (and ($IsAlloc refType |a#7#0#0@@0| (Tclass._System.array Tclass._module.S) $h@@3) ($IsAlloc SetType |a#7#1#0@@0| (TSet Tclass._System.object) $h@@3))))
 :qid |gitissue314dfy.4:16|
 :skolemid |514|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.T.T| |a#7#0#0@@0| |a#7#1#0@@0|) Tclass._module.T $h@@3))
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
(assert (forall ((_System.array$arg@@2 T@U) ($h@@4 T@U) ($o@@3 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@3)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@3) alloc)))) ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@3) (IndexField $i0)) _System.array$arg@@2 $h@@4))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@3) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.S.S_q d@@1) (= (DatatypeCtorId d@@1) |##_module.S.S|))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (_module.S.S_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.T.T_q d@@2) (= (DatatypeCtorId d@@2) |##_module.T.T|))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (_module.T.T_q d@@2))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@2)) (not (|Set#IsMember| b@@4 o@@2)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@7 b@@4))
)))
(assert (forall ((m@@4 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@4) bx) (U_2_bool (MapType1Select BoxType boolType m@@4 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@4) bx))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.T.T_q d@@3) (exists ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= d@@3 (|#_module.T.T| |a#6#0#0| |a#6#1#0|))
 :qid |gitissue314dfy.4:16|
 :skolemid |511|
)))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (_module.T.T_q d@@3))
)))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.S.S_q d@@4) (exists ((|a#1#0#0| T@U) ) (! (= d@@4 (|#_module.S.S| |a#1#0#0|))
 :qid |gitissue314dfy.3:16|
 :skolemid |498|
)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (_module.S.S_q d@@4))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
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
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.T) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass._module.T)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@3 Tclass._module.T))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.S) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass._module.S)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@4 Tclass._module.S))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@4 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@3 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@3)  (or (|Set#IsMember| a@@8 o@@3) (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@3))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@6) a@@9) b@@6) (= (|Set#Difference| (|Set#Union| a@@9 b@@6) b@@6) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@9 b@@6))
)))
(assert (forall ((|a#2#0#0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#_module.S.S| |a#2#0#0|) Tclass._module.S $h@@5) ($IsAlloc refType |a#2#0#0| (Tclass._System.array TInt) $h@@5)))
 :qid |gitissue314dfy.3:16|
 :skolemid |501|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.S.S| |a#2#0#0|) Tclass._module.S $h@@5))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@10 b@@7))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TBool) (and (= ($Box boolType ($Unbox boolType bx@@6)) bx@@6) ($Is boolType ($Unbox boolType bx@@6) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@6 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (_System.array.Length o@@4))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@4))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@7) ($IsAllocBox bx@@7 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.T.T| |a#5#0#0| |a#5#1#0|)) |##_module.T.T|)
 :qid |gitissue314dfy.4:16|
 :skolemid |509|
 :pattern ( (|#_module.T.T| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (= (_module.T.F (|#_module.T.T| |a#9#0#0| |a#9#1#0|)) |a#9#0#0|)
 :qid |gitissue314dfy.4:16|
 :skolemid |518|
 :pattern ( (|#_module.T.T| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.T.Repr (|#_module.T.T| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |gitissue314dfy.4:16|
 :skolemid |519|
 :pattern ( (|#_module.T.T| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall (($o@@5 T@U) ) (! ($Is refType $o@@5 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@5 Tclass._System.object?))
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
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@0))
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
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.S.S| |a#0#0#0|)) |##_module.S.S|)
 :qid |gitissue314dfy.3:16|
 :skolemid |496|
 :pattern ( (|#_module.S.S| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.S.G (|#_module.S.S| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue314dfy.3:16|
 :skolemid |504|
 :pattern ( (|#_module.S.S| |a#4#0#0|))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@6 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@6) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@6)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@6) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@6) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@7 T@U) ($o@@7 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@7)))) ($IsBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@7) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@7) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)) (|Set#Union| a@@11 b@@8))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@11 (|Set#Union| a@@11 b@@8)))
)))
(assert (forall ((bx@@8 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@8 (TSet t@@3)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@9 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@10 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) (d@@5 T@U) ) (!  (=> (|Set#IsMember| |a#11#1#0| ($Box DatatypeTypeType d@@5)) (< (DtRank d@@5) (DtRank (|#_module.T.T| |a#11#0#0| |a#11#1#0|))))
 :qid |gitissue314dfy.4:16|
 :skolemid |520|
 :pattern ( (|Set#IsMember| |a#11#1#0| ($Box DatatypeTypeType d@@5)) (|#_module.T.T| |a#11#0#0| |a#11#1#0|))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.T) Tagclass._module.T))
(assert (= (TagFamily Tclass._module.T) tytagFamily$T))
(assert (= (Tag Tclass._module.S) Tagclass._module.S))
(assert (= (TagFamily Tclass._module.S) tytagFamily$S))
(assert (forall ((|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.S.S| |a#2#0#0@@0|) Tclass._module.S) ($Is refType |a#2#0#0@@0| (Tclass._System.array TInt)))
 :qid |gitissue314dfy.3:16|
 :skolemid |500|
 :pattern ( ($Is DatatypeTypeType (|#_module.S.S| |a#2#0#0@@0|) Tclass._module.S))
)))
(assert (forall ((d@@6 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.S.S_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.S $h@@8))) ($IsAlloc refType (_module.S.G d@@6) (Tclass._System.array TInt) $h@@8))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($IsAlloc refType (_module.S.G d@@6) (Tclass._System.array TInt) $h@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Equal| a@@12 b@@9) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@12 o@@5) (|Set#IsMember| b@@9 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@12 o@@5))
 :pattern ( (|Set#IsMember| b@@9 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@12 b@@9))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (|#_module.T.T| (Lit refType |a#8#0#0|) (Lit SetType |a#8#1#0|)) (Lit DatatypeTypeType (|#_module.T.T| |a#8#0#0| |a#8#1#0|)))
 :qid |gitissue314dfy.4:16|
 :skolemid |517|
 :pattern ( (|#_module.T.T| (Lit refType |a#8#0#0|) (Lit SetType |a#8#1#0|)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.S.S| (Lit refType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.S.S| |a#3#0#0|)))
 :qid |gitissue314dfy.3:16|
 :skolemid |503|
 :pattern ( (|#_module.S.S| (Lit refType |a#3#0#0|)))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((d@@7 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.T.T_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.T $h@@9))) ($IsAlloc refType (_module.T.F d@@7) (Tclass._System.array Tclass._module.S) $h@@9))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsAlloc refType (_module.T.F d@@7) (Tclass._System.array Tclass._module.S) $h@@9))
)))
(assert (forall ((d@@8 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.T.T_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.T $h@@10))) ($IsAlloc SetType (_module.T.Repr d@@8) (TSet Tclass._System.object) $h@@10))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsAlloc SetType (_module.T.Repr d@@8) (TSet Tclass._System.object) $h@@10))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@2))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun |t#0@@0| () T@U)
(declare-fun |short#Z#0@0| () T@U)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |i#4@0| () Int)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |i#3@0| () Int)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |i#2@0| () Int)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.Valid)
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
 (=> (= (ControlFlow 0 0) 36) (let ((anon18_correct  (=> (= (_module.__default.Valid $Heap@@0 |t#0@@0|) (|Set#Equal| (_module.T.Repr |t#0@@0|) (|Set#Union| (|Set#FromBoogieMap| (|lambda#0| (LitInt 0) (_System.array.Length |short#Z#0@0|) $Heap@@0 |short#Z#0@0| $Heap@@0 |short#Z#0@0|)) (|Set#UnionOne| |Set#Empty| ($Box refType |short#Z#0@0|))))) (=> (and (and (_module.T.T_q |t#0@@0|) (forall ((|i#5| Int) ) (!  (=> (and (<= (LitInt 0) |i#5|) (< |i#5| (_System.array.Length |short#Z#0@0|))) (_module.S.S_q ($Unbox DatatypeTypeType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 |short#Z#0@0|) (IndexField |i#5|)))))
 :qid |gitissue314dfy.11:18|
 :skolemid |492|
 :pattern ( ($Unbox DatatypeTypeType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 |short#Z#0@0|) (IndexField |i#5|))))
))) (and ($Is boolType (bool_2_U (_module.__default.Valid $Heap@@0 |t#0@@0|)) TBool) (= (ControlFlow 0 6) (- 0 5)))) |b$reqreads#1@1|))))
(let ((anon29_Else_correct  (=> (not (and (<= (LitInt 0) |i#4@0|) (< |i#4@0| (_System.array.Length |short#Z#0@0|)))) (=> (and (= |b$reqreads#1@1| true) (= (ControlFlow 0 10) 6)) anon18_correct))))
(let ((anon29_Then_correct  (=> (and (<= (LitInt 0) |i#4@0|) (< |i#4@0| (_System.array.Length |short#Z#0@0|))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (or (not (= |short#Z#0@0| null)) (not true))) (=> (or (not (= |short#Z#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (and (<= 0 |i#4@0|) (< |i#4@0| (_System.array.Length |short#Z#0@0|)))) (=> (and (<= 0 |i#4@0|) (< |i#4@0| (_System.array.Length |short#Z#0@0|))) (=> (and (and (= |b$reqreads#1@0| (U_2_bool (MapType0Select refType FieldType boolType $_ReadsFrame@0 |short#Z#0@0| (IndexField |i#4@0|)))) (_module.S.S_q ($Unbox DatatypeTypeType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 |short#Z#0@0|) (IndexField |i#4@0|))))) (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= (ControlFlow 0 7) 6))) anon18_correct))))))))
(let ((anon28_Else_correct  (=> (< |i#4@0| (LitInt 0)) (and (=> (= (ControlFlow 0 13) 7) anon29_Then_correct) (=> (= (ControlFlow 0 13) 10) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> (<= (LitInt 0) |i#4@0|) (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (not (= |short#Z#0@0| null)) (not true))) (=> (or (not (= |short#Z#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 11) 7) anon29_Then_correct) (=> (= (ControlFlow 0 11) 10) anon29_Else_correct)))))))
(let ((anon27_Then_correct  (and (=> (= (ControlFlow 0 14) 11) anon28_Then_correct) (=> (= (ControlFlow 0 14) 13) anon28_Else_correct))))
(let ((anon27_Else_correct true))
(let ((anon26_Else_correct  (=> (and (_module.T.T_q |t#0@@0|) (= |let#0#0#0| (_module.T.F |t#0@@0|))) (=> (and (and (_module.T.T_q |t#0@@0|) ($Is refType |let#0#0#0| (Tclass._System.array Tclass._module.S))) (and (= |short#Z#0@0| |let#0#0#0|) (_module.T.T_q |t#0@@0|))) (and (=> (= (ControlFlow 0 15) 14) anon27_Then_correct) (=> (= (ControlFlow 0 15) 4) anon27_Else_correct))))))
(let ((anon26_Then_correct true))
(let ((anon11_correct  (=> (_module.T.T_q |t#0@@0|) (and (=> (= (ControlFlow 0 16) 3) anon26_Then_correct) (=> (= (ControlFlow 0 16) 15) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#3@0|) (< |i#3@0| (_System.array.Length (_module.T.F |t#0@@0|))))) (= (ControlFlow 0 20) 16)) anon11_correct)))
(let ((anon25_Then_correct  (=> (and (and (<= (LitInt 0) |i#3@0|) (< |i#3@0| (_System.array.Length (_module.T.F |t#0@@0|)))) (_module.T.T_q |t#0@@0|)) (and (=> (= (ControlFlow 0 17) (- 0 19)) (or (not (= (_module.T.F |t#0@@0|) null)) (not true))) (=> (or (not (= (_module.T.F |t#0@@0|) null)) (not true)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (and (<= 0 |i#3@0|) (< |i#3@0| (_System.array.Length (_module.T.F |t#0@@0|))))) (=> (and (<= 0 |i#3@0|) (< |i#3@0| (_System.array.Length (_module.T.F |t#0@@0|)))) (=> (and (_module.S.S_q ($Unbox DatatypeTypeType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 (_module.T.F |t#0@@0|)) (IndexField |i#3@0|)))) (= (ControlFlow 0 17) 16)) anon11_correct))))))))
(let ((anon24_Else_correct  (=> (< |i#3@0| (LitInt 0)) (and (=> (= (ControlFlow 0 23) 17) anon25_Then_correct) (=> (= (ControlFlow 0 23) 20) anon25_Else_correct)))))
(let ((anon24_Then_correct  (=> (and (<= (LitInt 0) |i#3@0|) (_module.T.T_q |t#0@@0|)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (or (not (= (_module.T.F |t#0@@0|) null)) (not true))) (=> (or (not (= (_module.T.F |t#0@@0|) null)) (not true)) (and (=> (= (ControlFlow 0 21) 17) anon25_Then_correct) (=> (= (ControlFlow 0 21) 20) anon25_Else_correct)))))))
(let ((anon23_Then_correct  (and (=> (= (ControlFlow 0 24) 21) anon24_Then_correct) (=> (= (ControlFlow 0 24) 23) anon24_Else_correct))))
(let ((anon23_Else_correct true))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) |b$reqreads#0@1|) (=> |b$reqreads#0@1| (and (=> (= (ControlFlow 0 25) 24) anon23_Then_correct) (=> (= (ControlFlow 0 25) 2) anon23_Else_correct))))))
(let ((anon22_Else_correct  (=> (not (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (_System.array.Length (_module.T.F |t#0@@0|))))) (=> (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 30) 25)) anon6_correct))))
(let ((anon22_Then_correct  (=> (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (_System.array.Length (_module.T.F |t#0@@0|)))) (_module.T.T_q |t#0@@0|)) (and (=> (= (ControlFlow 0 27) (- 0 29)) (or (not (= (_module.T.F |t#0@@0|) null)) (not true))) (=> (or (not (= (_module.T.F |t#0@@0|) null)) (not true)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (and (<= 0 |i#2@0|) (< |i#2@0| (_System.array.Length (_module.T.F |t#0@@0|))))) (=> (and (<= 0 |i#2@0|) (< |i#2@0| (_System.array.Length (_module.T.F |t#0@@0|)))) (=> (and (and (= |b$reqreads#0@0| (U_2_bool (MapType0Select refType FieldType boolType $_ReadsFrame@0 (_module.T.F |t#0@@0|) (IndexField |i#2@0|)))) (_module.S.S_q ($Unbox DatatypeTypeType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 (_module.T.F |t#0@@0|)) (IndexField |i#2@0|))))) (and (= |b$reqreads#0@1| |b$reqreads#0@0|) (= (ControlFlow 0 27) 25))) anon6_correct))))))))
(let ((anon21_Else_correct  (=> (< |i#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 33) 27) anon22_Then_correct) (=> (= (ControlFlow 0 33) 30) anon22_Else_correct)))))
(let ((anon21_Then_correct  (=> (and (<= (LitInt 0) |i#2@0|) (_module.T.T_q |t#0@@0|)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (or (not (= (_module.T.F |t#0@@0|) null)) (not true))) (=> (or (not (= (_module.T.F |t#0@@0|) null)) (not true)) (and (=> (= (ControlFlow 0 31) 27) anon22_Then_correct) (=> (= (ControlFlow 0 31) 30) anon22_Else_correct)))))))
(let ((anon20_Then_correct  (and (=> (= (ControlFlow 0 34) 31) anon21_Then_correct) (=> (= (ControlFlow 0 34) 33) anon21_Else_correct))))
(let ((anon20_Else_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#1| null $Heap@@0 alloc (_module.T.F |t#0@@0|) (LitInt 0) (_System.array.Length (_module.T.F |t#0@@0|)) $Heap@@0 (_module.T.F |t#0@@0|) $Heap@@0 (_module.T.F |t#0@@0|))) (_module.T.T_q |t#0@@0|)) (and (=> (= (ControlFlow 0 35) 34) anon20_Then_correct) (=> (= (ControlFlow 0 35) 1) anon20_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) ($Is DatatypeTypeType |t#0@@0| Tclass._module.T)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 36) 35))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
