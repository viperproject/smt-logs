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
(declare-fun TChar () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
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
(declare-fun M0.__default.Loc (T@U T@U T@U) T@U)
(declare-fun |M0.__default.Loc#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass.M0.Path () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun M0.__default.PickOne (T@U T@U) T@U)
(declare-fun |M0.__default.PickOne#canCall| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |$let#0_x| (T@U T@U) T@U)
(declare-fun |$let#0$canCall| (T@U T@U) Bool)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass.M0.State () T@U)
(declare-fun M0.__default.Oracle (T@U T@U) T@U)
(declare-fun |M0.__default.Oracle#canCall| (T@U T@U) Bool)
(declare-fun Tclass.M0.Artifact () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun M0.__default.Combine (T@U Bool T@U Bool) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |M0.__default.Combine#canCall| (T@U Bool) Bool)
(declare-fun BoxType () T@T)
(declare-fun |M0.__default.Union#canCall| (T@U T@U Bool) Bool)
(declare-fun reveal_M0._default.Combine () Bool)
(declare-fun M0.__default.Union (T@U T@U Bool) T@U)
(declare-fun M0.__default.ConsistentCache (T@U) Bool)
(declare-fun |M0.__default.ConsistentCache#canCall| (T@U) Bool)
(declare-fun |M0.__default.Hash#canCall| (T@U) Bool)
(declare-fun |M0.__default.DomC#canCall| (T@U) Bool)
(declare-fun M0.__default.DomC (T@U) T@U)
(declare-fun M0.__default.Hash (T@U) T@U)
(declare-fun |M0.__default.DomSt#canCall| (T@U) Bool)
(declare-fun M0.__default.DomSt (T@U) T@U)
(declare-fun M0.__default.Extends (Bool T@U T@U) Bool)
(declare-fun |M0.__default.Extends#canCall| (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun M0.__default.GetSt (T@U T@U) T@U)
(declare-fun |M0.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun M0.__default.ValidState (T@U) Bool)
(declare-fun |M0.__default.ValidState#canCall| (T@U) Bool)
(declare-fun M0.__default.WellFounded (T@U) Bool)
(declare-fun |M0.__default.WellFounded#canCall| (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun Tclass.M0.HashValue () T@U)
(declare-fun charType () T@T)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
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
(assert (distinct TBool TChar TagBool TagChar TagSet TagSeq alloc)
)
(assert  (and (= (Ctor SeqType) 3) (= (Ctor SetType) 4)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|cmd#0| T@U) (|deps#0| T@U) (|exp#0| T@U) ) (!  (=> (or (|M0.__default.Loc#canCall| |cmd#0| |deps#0| |exp#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0| (TSeq TChar)) ($Is SetType |deps#0| (TSet Tclass.M0.Path))) ($Is SeqType |exp#0| (TSeq TChar))))) ($IsBox (M0.__default.Loc |cmd#0| |deps#0| |exp#0|) Tclass.M0.Path))
 :qid |CloudMakeCachedBuildsdfy.248:22|
 :skolemid |1054|
 :pattern ( (M0.__default.Loc |cmd#0| |deps#0| |exp#0|))
))))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (M0._default.PickOne$T T@U) (|s#0| T@U) ) (!  (=> (and (or (|M0.__default.PickOne#canCall| M0._default.PickOne$T |s#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SetType |s#0| (TSet M0._default.PickOne$T)) ($IsAlloc SetType |s#0| (TSet M0._default.PickOne$T) $Heap)) (not (|Set#Equal| |s#0| |Set#Empty|))))) ($IsGoodHeap $Heap)) ($IsAllocBox (M0.__default.PickOne M0._default.PickOne$T |s#0|) M0._default.PickOne$T $Heap))
 :qid |CloudMakeCachedBuildsdfy.73:18|
 :skolemid |788|
 :pattern ( ($IsAllocBox (M0.__default.PickOne M0._default.PickOne$T |s#0|) M0._default.PickOne$T $Heap))
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
(assert (forall ((M0._default.PickOne$T@@0 T@U) (s T@U) ) (!  (=> (|$let#0$canCall| M0._default.PickOne$T@@0 s) (|Set#IsMember| s (|$let#0_x| M0._default.PickOne$T@@0 s)))
 :qid |CloudMakeCachedBuildsdfy.76:5|
 :skolemid |790|
 :pattern ( (|$let#0_x| M0._default.PickOne$T@@0 s))
)))
(assert ($AlwaysAllocated Tclass.M0.State))
(assert ($AlwaysAllocated Tclass.M0.Path))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0| T@U) (|st#0| T@U) ) (!  (=> (or (|M0.__default.Oracle#canCall| |p#0| |st#0|) (and (< 0 $FunctionContextHeight) (and ($IsBox |p#0| Tclass.M0.Path) ($IsBox |st#0| Tclass.M0.State)))) ($IsBox (M0.__default.Oracle |p#0| |st#0|) Tclass.M0.Artifact))
 :qid |CloudMakeCachedBuildsdfy.186:25|
 :skolemid |984|
 :pattern ( (M0.__default.Oracle |p#0| |st#0|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor BoxType) 5))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) (|sts#0| T@U) (|useCache#0| T@U) ) (!  (=> (or (|M0.__default.Combine#canCall| (Lit SetType |sts#0|) (U_2_bool (Lit boolType |useCache#0|))) (and (< 3 $FunctionContextHeight) (and ($Is SetType |sts#0| (TSet Tclass.M0.State)) (not (|Set#Equal| |sts#0| |Set#Empty|))))) (and (and (|M0.__default.PickOne#canCall| Tclass.M0.State (Lit SetType |sts#0|)) (let ((|st#1| (Lit BoxType (M0.__default.PickOne Tclass.M0.State (Lit SetType |sts#0|)))))
 (=> (not (|Set#Equal| |sts#0| (|Set#UnionOne| |Set#Empty| |st#1|))) (and (|M0.__default.Combine#canCall| (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| |st#1|)) (U_2_bool (Lit boolType |useCache#0|))) (|M0.__default.Union#canCall| (M0.__default.Combine ($LS $ly) reveal_M0._default.Combine (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| |st#1|)) (U_2_bool (Lit boolType |useCache#0|))) |st#1| (U_2_bool (Lit boolType |useCache#0|))))))) (= (M0.__default.Combine ($LS $ly) true (Lit SetType |sts#0|) (U_2_bool (Lit boolType |useCache#0|))) (let ((|st#1@@0| (Lit BoxType (M0.__default.PickOne Tclass.M0.State (Lit SetType |sts#0|)))))
(ite (|Set#Equal| |sts#0| (|Set#UnionOne| |Set#Empty| |st#1@@0|)) |st#1@@0| (M0.__default.Union (M0.__default.Combine ($LS $ly) reveal_M0._default.Combine (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| |st#1@@0|)) (U_2_bool (Lit boolType |useCache#0|))) |st#1@@0| (U_2_bool (Lit boolType |useCache#0|))))))))
 :qid |CloudMakeCachedBuildsdfy.64:28|
 :weight 3
 :skolemid |783|
 :pattern ( (M0.__default.Combine ($LS $ly) true (Lit SetType |sts#0|) (U_2_bool (Lit boolType |useCache#0|))))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|stC#0| T@U) ) (!  (=> (or (|M0.__default.ConsistentCache#canCall| |stC#0|) (and (< 1 $FunctionContextHeight) ($IsBox |stC#0| Tclass.M0.State))) (and (forall ((|cmd#0@@0| T@U) (|deps#0@@0| T@U) (|e#0| T@U) ) (!  (=> (and (and ($Is SeqType |cmd#0@@0| (TSeq TChar)) ($Is SetType |deps#0@@0| (TSet Tclass.M0.Path))) ($Is SeqType |e#0| (TSeq TChar))) (and (and (and (|M0.__default.Loc#canCall| |cmd#0@@0| |deps#0@@0| |e#0|) (|M0.__default.Hash#canCall| (M0.__default.Loc |cmd#0@@0| |deps#0@@0| |e#0|))) (|M0.__default.DomC#canCall| |stC#0|)) (=> (|Set#IsMember| (M0.__default.DomC |stC#0|) (M0.__default.Hash (M0.__default.Loc |cmd#0@@0| |deps#0@@0| |e#0|))) (and (|M0.__default.Loc#canCall| |cmd#0@@0| |deps#0@@0| |e#0|) (|M0.__default.DomSt#canCall| |stC#0|)))))
 :qid |CloudMakeCachedBuildsdfy.116:12|
 :skolemid |842|
 :pattern ( (M0.__default.Loc |cmd#0@@0| |deps#0@@0| |e#0|))
)) (= (M0.__default.ConsistentCache |stC#0|) (forall ((|cmd#0@@1| T@U) (|deps#0@@1| T@U) (|e#0@@0| T@U) ) (!  (=> (and (and ($Is SeqType |cmd#0@@1| (TSeq TChar)) ($Is SetType |deps#0@@1| (TSet Tclass.M0.Path))) ($Is SeqType |e#0@@0| (TSeq TChar))) (=> (|Set#IsMember| (M0.__default.DomC |stC#0|) (M0.__default.Hash (M0.__default.Loc |cmd#0@@1| |deps#0@@1| |e#0@@0|))) (|Set#IsMember| (M0.__default.DomSt |stC#0|) (M0.__default.Loc |cmd#0@@1| |deps#0@@1| |e#0@@0|))))
 :qid |CloudMakeCachedBuildsdfy.116:12|
 :skolemid |841|
 :pattern ( (M0.__default.Loc |cmd#0@@1| |deps#0@@1| |e#0@@0|))
)))))
 :qid |CloudMakeCachedBuildsdfy.114:35|
 :skolemid |843|
 :pattern ( (M0.__default.ConsistentCache |stC#0|))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@0| T@U) (|st'#0| T@U) ) (!  (=> (or (|M0.__default.Extends#canCall| |st#0@@0| |st'#0|) (and (< 2 $FunctionContextHeight) (and ($IsBox |st#0@@0| Tclass.M0.State) ($IsBox |st'#0| Tclass.M0.State)))) (and (and (and (|M0.__default.DomSt#canCall| |st#0@@0|) (|M0.__default.DomSt#canCall| |st'#0|)) (=> (|Set#Subset| (M0.__default.DomSt |st#0@@0|) (M0.__default.DomSt |st'#0|)) (and (forall ((|p#0@@0| T@U) ) (!  (=> ($IsBox |p#0@@0| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| |st#0@@0|) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@0|) |p#0@@0|) (and (|M0.__default.GetSt#canCall| |p#0@@0| |st'#0|) (|M0.__default.GetSt#canCall| |p#0@@0| |st#0@@0|)))))
 :qid |CloudMakeCachedBuildsdfy.197:13|
 :skolemid |991|
 :pattern ( (M0.__default.GetSt |p#0@@0| |st#0@@0|))
 :pattern ( (M0.__default.GetSt |p#0@@0| |st'#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@0|) |p#0@@0|))
)) (=> (forall ((|p#0@@1| T@U) ) (!  (=> ($IsBox |p#0@@1| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@0|) |p#0@@1|) (= (M0.__default.GetSt |p#0@@1| |st'#0|) (M0.__default.GetSt |p#0@@1| |st#0@@0|))))
 :qid |CloudMakeCachedBuildsdfy.197:13|
 :skolemid |993|
 :pattern ( (M0.__default.GetSt |p#0@@1| |st#0@@0|))
 :pattern ( (M0.__default.GetSt |p#0@@1| |st'#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@0|) |p#0@@1|))
)) (forall ((|p#1| T@U) ) (!  (=> ($IsBox |p#1| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| |st#0@@0|) (=> (not (|Set#IsMember| (M0.__default.DomSt |st#0@@0|) |p#1|)) (and (|M0.__default.DomSt#canCall| |st'#0|) (=> (|Set#IsMember| (M0.__default.DomSt |st'#0|) |p#1|) (and (|M0.__default.GetSt#canCall| |p#1| |st'#0|) (|M0.__default.Oracle#canCall| |p#1| |st#0@@0|)))))))
 :qid |CloudMakeCachedBuildsdfy.198:13|
 :skolemid |992|
 :pattern ( (M0.__default.Oracle |p#1| |st#0@@0|))
 :pattern ( (M0.__default.GetSt |p#1| |st'#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0|) |p#1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@0|) |p#1|))
)))))) (= (M0.__default.Extends true |st#0@@0| |st'#0|)  (and (and (|Set#Subset| (M0.__default.DomSt |st#0@@0|) (M0.__default.DomSt |st'#0|)) (forall ((|p#0@@2| T@U) ) (!  (=> ($IsBox |p#0@@2| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@0|) |p#0@@2|) (= (M0.__default.GetSt |p#0@@2| |st'#0|) (M0.__default.GetSt |p#0@@2| |st#0@@0|))))
 :qid |CloudMakeCachedBuildsdfy.197:13|
 :skolemid |989|
 :pattern ( (M0.__default.GetSt |p#0@@2| |st#0@@0|))
 :pattern ( (M0.__default.GetSt |p#0@@2| |st'#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@0|) |p#0@@2|))
))) (forall ((|p#1@@0| T@U) ) (!  (=> ($IsBox |p#1@@0| Tclass.M0.Path) (=> (and (not (|Set#IsMember| (M0.__default.DomSt |st#0@@0|) |p#1@@0|)) (|Set#IsMember| (M0.__default.DomSt |st'#0|) |p#1@@0|)) (= (M0.__default.GetSt |p#1@@0| |st'#0|) (M0.__default.Oracle |p#1@@0| |st#0@@0|))))
 :qid |CloudMakeCachedBuildsdfy.198:13|
 :skolemid |990|
 :pattern ( (M0.__default.Oracle |p#1@@0| |st#0@@0|))
 :pattern ( (M0.__default.GetSt |p#1@@0| |st'#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0|) |p#1@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@0|) |p#1@@0|))
))))))
 :qid |CloudMakeCachedBuildsdfy.194:37|
 :skolemid |994|
 :pattern ( (M0.__default.Extends true |st#0@@0| |st'#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@3| T@U) (|st#0@@1| T@U) ) (!  (=> (or (|M0.__default.GetSt#canCall| |p#0@@3| |st#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@3| Tclass.M0.Path) ($IsBox |st#0@@1| Tclass.M0.State)) (|Set#IsMember| (M0.__default.DomSt |st#0@@1|) |p#0@@3|)))) ($IsBox (M0.__default.GetSt |p#0@@3| |st#0@@1|) Tclass.M0.Artifact))
 :qid |CloudMakeCachedBuildsdfy.10:24|
 :skolemid |701|
 :pattern ( (M0.__default.GetSt |p#0@@3| |st#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|p#0@@4| T@U) (|st#0@@2| T@U) ) (!  (=> (and (or (|M0.__default.GetSt#canCall| |p#0@@4| |st#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@4| Tclass.M0.Path) ($IsAllocBox |p#0@@4| Tclass.M0.Path $Heap@@0)) (and ($IsBox |st#0@@2| Tclass.M0.State) ($IsAllocBox |st#0@@2| Tclass.M0.State $Heap@@0))) (|Set#IsMember| (M0.__default.DomSt |st#0@@2|) |p#0@@4|)))) ($IsGoodHeap $Heap@@0)) ($IsAllocBox (M0.__default.GetSt |p#0@@4| |st#0@@2|) Tclass.M0.Artifact $Heap@@0))
 :qid |CloudMakeCachedBuildsdfy.10:18|
 :skolemid |702|
 :pattern ( ($IsAllocBox (M0.__default.GetSt |p#0@@4| |st#0@@2|) Tclass.M0.Artifact $Heap@@0))
))))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@3| T@U) (|st'#0@@0| T@U) (|useCache#0@@0| Bool) ) (!  (=> (or (|M0.__default.Union#canCall| |st#0@@3| |st'#0@@0| |useCache#0@@0|) (and (< 2 $FunctionContextHeight) (and ($IsBox |st#0@@3| Tclass.M0.State) ($IsBox |st'#0@@0| Tclass.M0.State)))) (and (let ((|result#0| (M0.__default.Union |st#0@@3| |st'#0@@0| |useCache#0@@0|)))
 (and (and (|Set#Equal| (M0.__default.DomSt |result#0|) (|Set#Union| (M0.__default.DomSt |st#0@@3|) (M0.__default.DomSt |st'#0@@0|))) (forall ((|p#0@@5| T@U) ) (!  (=> ($IsBox |p#0@@5| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |result#0|) |p#0@@5|) (= (M0.__default.GetSt |p#0@@5| |result#0|) (M0.__default.GetSt |p#0@@5| (ite (|Set#IsMember| (M0.__default.DomSt |st'#0@@0|) |p#0@@5|) |st'#0@@0| |st#0@@3|)))))
 :qid |CloudMakeCachedBuildsdfy.47:15|
 :skolemid |738|
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@0|) |p#0@@5|))
 :pattern ( (M0.__default.GetSt |p#0@@5| |result#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |result#0|) |p#0@@5|))
))) (=> |useCache#0@@0| (|Set#Equal| (M0.__default.DomC |result#0|) (|Set#Union| (M0.__default.DomC |st#0@@3|) (M0.__default.DomC |st'#0@@0|)))))) ($IsBox (M0.__default.Union |st#0@@3| |st'#0@@0| |useCache#0@@0|) Tclass.M0.State)))
 :qid |CloudMakeCachedBuildsdfy.43:24|
 :skolemid |739|
 :pattern ( (M0.__default.Union |st#0@@3| |st'#0@@0| |useCache#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@4| T@U) ) (!  (=> (or (|M0.__default.ValidState#canCall| |st#0@@4|) (and (< 1 $FunctionContextHeight) ($IsBox |st#0@@4| Tclass.M0.State))) (and (forall ((|p#0@@6| T@U) ) (!  (=> ($IsBox |p#0@@6| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| |st#0@@4|) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@4|) |p#0@@6|) (|M0.__default.WellFounded#canCall| |p#0@@6|))))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |726|
 :pattern ( (M0.__default.WellFounded |p#0@@6|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@4|) |p#0@@6|))
)) (= (M0.__default.ValidState |st#0@@4|) (forall ((|p#0@@7| T@U) ) (!  (=> ($IsBox |p#0@@7| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@4|) |p#0@@7|) (M0.__default.WellFounded |p#0@@7|)))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |725|
 :pattern ( (M0.__default.WellFounded |p#0@@7|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@4|) |p#0@@7|))
)))))
 :qid |CloudMakeCachedBuildsdfy.33:30|
 :skolemid |727|
 :pattern ( (M0.__default.ValidState |st#0@@4|))
))))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
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
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|sts#0@@0| T@U) (|useCache#0@@1| Bool) ) (!  (=> (or (|M0.__default.Combine#canCall| |sts#0@@0| |useCache#0@@1|) (and (< 3 $FunctionContextHeight) (and ($Is SetType |sts#0@@0| (TSet Tclass.M0.State)) (not (|Set#Equal| |sts#0@@0| |Set#Empty|))))) (and (and (|M0.__default.PickOne#canCall| Tclass.M0.State |sts#0@@0|) (let ((|st#0@@5| (M0.__default.PickOne Tclass.M0.State |sts#0@@0|)))
 (=> (not (|Set#Equal| |sts#0@@0| (|Set#UnionOne| |Set#Empty| |st#0@@5|))) (and (|M0.__default.Combine#canCall| (|Set#Difference| |sts#0@@0| (|Set#UnionOne| |Set#Empty| |st#0@@5|)) |useCache#0@@1|) (|M0.__default.Union#canCall| (M0.__default.Combine $ly@@0 reveal_M0._default.Combine (|Set#Difference| |sts#0@@0| (|Set#UnionOne| |Set#Empty| |st#0@@5|)) |useCache#0@@1|) |st#0@@5| |useCache#0@@1|))))) (= (M0.__default.Combine ($LS $ly@@0) true |sts#0@@0| |useCache#0@@1|) (let ((|st#0@@6| (M0.__default.PickOne Tclass.M0.State |sts#0@@0|)))
(ite (|Set#Equal| |sts#0@@0| (|Set#UnionOne| |Set#Empty| |st#0@@6|)) |st#0@@6| (M0.__default.Union (M0.__default.Combine $ly@@0 reveal_M0._default.Combine (|Set#Difference| |sts#0@@0| (|Set#UnionOne| |Set#Empty| |st#0@@6|)) |useCache#0@@1|) |st#0@@6| |useCache#0@@1|))))))
 :qid |CloudMakeCachedBuildsdfy.64:28|
 :skolemid |782|
 :pattern ( (M0.__default.Combine ($LS $ly@@0) true |sts#0@@0| |useCache#0@@1|))
))))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M0._default.PickOne$T@@1 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|M0.__default.PickOne#canCall| M0._default.PickOne$T@@1 |s#0@@0|) (and (< 0 $FunctionContextHeight) (and ($Is SetType |s#0@@0| (TSet M0._default.PickOne$T@@1)) (not (|Set#Equal| |s#0@@0| |Set#Empty|))))) ($IsBox (M0.__default.PickOne M0._default.PickOne$T@@1 |s#0@@0|) M0._default.PickOne$T@@1))
 :qid |unknown.0:0|
 :skolemid |787|
 :pattern ( (M0.__default.PickOne M0._default.PickOne$T@@1 |s#0@@0|))
))))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@7| T@U) (|st'#0@@1| T@U) ) (!  (=> (or (|M0.__default.Extends#canCall| (Lit BoxType |st#0@@7|) (Lit BoxType |st'#0@@1|)) (and (< 2 $FunctionContextHeight) (and ($IsBox |st#0@@7| Tclass.M0.State) ($IsBox |st'#0@@1| Tclass.M0.State)))) (and (and (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@7|)) (|M0.__default.DomSt#canCall| (Lit BoxType |st'#0@@1|))) (=> (|Set#Subset| (M0.__default.DomSt (Lit BoxType |st#0@@7|)) (M0.__default.DomSt (Lit BoxType |st'#0@@1|))) (and (forall ((|p#2| T@U) ) (!  (=> ($IsBox |p#2| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@7|)) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@7|)) |p#2|) (and (|M0.__default.GetSt#canCall| |p#2| (Lit BoxType |st'#0@@1|)) (|M0.__default.GetSt#canCall| |p#2| (Lit BoxType |st#0@@7|))))))
 :qid |CloudMakeCachedBuildsdfy.197:13|
 :skolemid |997|
 :pattern ( (M0.__default.GetSt |p#2| |st#0@@7|))
 :pattern ( (M0.__default.GetSt |p#2| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@7|) |p#2|))
)) (=> (forall ((|p#2@@0| T@U) ) (!  (=> ($IsBox |p#2@@0| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@7|)) |p#2@@0|) (= (M0.__default.GetSt |p#2@@0| (Lit BoxType |st'#0@@1|)) (M0.__default.GetSt |p#2@@0| (Lit BoxType |st#0@@7|)))))
 :qid |CloudMakeCachedBuildsdfy.197:13|
 :skolemid |999|
 :pattern ( (M0.__default.GetSt |p#2@@0| |st#0@@7|))
 :pattern ( (M0.__default.GetSt |p#2@@0| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@7|) |p#2@@0|))
)) (forall ((|p#3| T@U) ) (!  (=> ($IsBox |p#3| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@7|)) (=> (not (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@7|)) |p#3|)) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st'#0@@1|)) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st'#0@@1|)) |p#3|) (and (|M0.__default.GetSt#canCall| |p#3| (Lit BoxType |st'#0@@1|)) (|M0.__default.Oracle#canCall| |p#3| (Lit BoxType |st#0@@7|))))))))
 :qid |CloudMakeCachedBuildsdfy.198:13|
 :skolemid |998|
 :pattern ( (M0.__default.Oracle |p#3| |st#0@@7|))
 :pattern ( (M0.__default.GetSt |p#3| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@1|) |p#3|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@7|) |p#3|))
)))))) (= (M0.__default.Extends true (Lit BoxType |st#0@@7|) (Lit BoxType |st'#0@@1|))  (and (and (|Set#Subset| (M0.__default.DomSt (Lit BoxType |st#0@@7|)) (M0.__default.DomSt (Lit BoxType |st'#0@@1|))) (forall ((|p#2@@1| T@U) ) (!  (=> ($IsBox |p#2@@1| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@7|)) |p#2@@1|) (= (M0.__default.GetSt |p#2@@1| (Lit BoxType |st'#0@@1|)) (M0.__default.GetSt |p#2@@1| (Lit BoxType |st#0@@7|)))))
 :qid |CloudMakeCachedBuildsdfy.197:13|
 :skolemid |995|
 :pattern ( (M0.__default.GetSt |p#2@@1| |st#0@@7|))
 :pattern ( (M0.__default.GetSt |p#2@@1| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@7|) |p#2@@1|))
))) (forall ((|p#3@@0| T@U) ) (!  (=> ($IsBox |p#3@@0| Tclass.M0.Path) (=> (and (not (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@7|)) |p#3@@0|)) (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st'#0@@1|)) |p#3@@0|)) (= (M0.__default.GetSt |p#3@@0| (Lit BoxType |st'#0@@1|)) (M0.__default.Oracle |p#3@@0| (Lit BoxType |st#0@@7|)))))
 :qid |CloudMakeCachedBuildsdfy.198:13|
 :skolemid |996|
 :pattern ( (M0.__default.Oracle |p#3@@0| |st#0@@7|))
 :pattern ( (M0.__default.GetSt |p#3@@0| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@1|) |p#3@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@7|) |p#3@@0|))
))))))
 :qid |CloudMakeCachedBuildsdfy.194:37|
 :weight 3
 :skolemid |1000|
 :pattern ( (M0.__default.Extends true (Lit BoxType |st#0@@7|) (Lit BoxType |st'#0@@1|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0@@8| T@U) ) (!  (=> (or (|M0.__default.Hash#canCall| |p#0@@8|) (and (< 0 $FunctionContextHeight) ($IsBox |p#0@@8| Tclass.M0.Path))) ($IsBox (M0.__default.Hash |p#0@@8|) Tclass.M0.HashValue))
 :qid |CloudMakeCachedBuildsdfy.16:23|
 :skolemid |708|
 :pattern ( (M0.__default.Hash |p#0@@8|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@1 T@U) ($reveal Bool) (|sts#0@@1| T@U) (|useCache#0@@2| Bool) ) (!  (=> (or (|M0.__default.Combine#canCall| |sts#0@@1| |useCache#0@@2|) (and (< 3 $FunctionContextHeight) (and ($Is SetType |sts#0@@1| (TSet Tclass.M0.State)) (not (|Set#Equal| |sts#0@@1| |Set#Empty|))))) ($IsBox (M0.__default.Combine $ly@@1 $reveal |sts#0@@1| |useCache#0@@2|) Tclass.M0.State))
 :qid |CloudMakeCachedBuildsdfy.64:28|
 :skolemid |780|
 :pattern ( (M0.__default.Combine $ly@@1 $reveal |sts#0@@1| |useCache#0@@2|))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TBool) (and (= ($Box boolType ($Unbox boolType bx@@0)) bx@@0) ($Is boolType ($Unbox boolType bx@@0) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@0 TBool))
)))
(assert (= (Ctor charType) 6))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TChar) (and (= ($Box charType ($Unbox charType bx@@1)) bx@@1) ($Is charType ($Unbox charType bx@@1) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@1 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@2 T@U) ) (!  (=> ($IsBox v@@2 ty) ($IsAllocBox v@@2 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@2 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M0._default.PickOne$T@@2 T@U) ($Heap@@1 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|M0.__default.PickOne#canCall| M0._default.PickOne$T@@2 |s#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is SetType |s#0@@1| (TSet M0._default.PickOne$T@@2))) (not (|Set#Equal| |s#0@@1| |Set#Empty|))))) (and (|$let#0$canCall| M0._default.PickOne$T@@2 |s#0@@1|) (= (M0.__default.PickOne M0._default.PickOne$T@@2 |s#0@@1|) (let ((|x#0| (|$let#0_x| M0._default.PickOne$T@@2 |s#0@@1|)))
|x#0|))))
 :qid |unknown.0:0|
 :skolemid |791|
 :pattern ( (M0.__default.PickOne M0._default.PickOne$T@@2 |s#0@@1|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((v@@3 T@U) (t0@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@0) h@@1) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@2) ($IsAllocBox bx@@2 t0@@0 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@0) h@@1))
)))
(assert (forall ((v@@4 T@U) (t0@@1 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@1) h@@2) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i) t0@@1 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@1) h@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (|p#0@@9| T@U) ) (!  (=> (and (or (|M0.__default.Hash#canCall| |p#0@@9|) (and (< 0 $FunctionContextHeight) (and ($IsBox |p#0@@9| Tclass.M0.Path) ($IsAllocBox |p#0@@9| Tclass.M0.Path $Heap@@2)))) ($IsGoodHeap $Heap@@2)) ($IsAllocBox (M0.__default.Hash |p#0@@9|) Tclass.M0.HashValue $Heap@@2))
 :qid |CloudMakeCachedBuildsdfy.16:18|
 :skolemid |709|
 :pattern ( ($IsAllocBox (M0.__default.Hash |p#0@@9|) Tclass.M0.HashValue $Heap@@2))
))))
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
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|st#0@@8| T@U) ) (!  (=> (or (|M0.__default.DomSt#canCall| |st#0@@8|) (and (< 0 $FunctionContextHeight) ($IsBox |st#0@@8| Tclass.M0.State))) ($Is SetType (M0.__default.DomSt |st#0@@8|) (TSet Tclass.M0.Path)))
 :qid |CloudMakeCachedBuildsdfy.9:24|
 :skolemid |699|
 :pattern ( (M0.__default.DomSt |st#0@@8|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|st#0@@9| T@U) ) (!  (=> (or (|M0.__default.DomC#canCall| |st#0@@9|) (and (< 0 $FunctionContextHeight) ($IsBox |st#0@@9| Tclass.M0.State))) ($Is SetType (M0.__default.DomC |st#0@@9|) (TSet Tclass.M0.HashValue)))
 :qid |CloudMakeCachedBuildsdfy.15:23|
 :skolemid |705|
 :pattern ( (M0.__default.DomC |st#0@@9|))
))))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert (forall (($ly@@2 T@U) ($reveal@@0 Bool) (|sts#0@@2| T@U) (|useCache#0@@3| Bool) ) (! (= (M0.__default.Combine ($LS $ly@@2) $reveal@@0 |sts#0@@2| |useCache#0@@3|) (M0.__default.Combine $ly@@2 $reveal@@0 |sts#0@@2| |useCache#0@@3|))
 :qid |CloudMakeCachedBuildsdfy.64:28|
 :skolemid |778|
 :pattern ( (M0.__default.Combine ($LS $ly@@2) $reveal@@0 |sts#0@@2| |useCache#0@@3|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (|st#0@@10| T@U) ) (!  (=> (and (or (|M0.__default.DomC#canCall| |st#0@@10|) (and (< 0 $FunctionContextHeight) (and ($IsBox |st#0@@10| Tclass.M0.State) ($IsAllocBox |st#0@@10| Tclass.M0.State $Heap@@3)))) ($IsGoodHeap $Heap@@3)) ($IsAlloc SetType (M0.__default.DomC |st#0@@10|) (TSet Tclass.M0.HashValue) $Heap@@3))
 :qid |CloudMakeCachedBuildsdfy.15:18|
 :skolemid |706|
 :pattern ( ($IsAlloc SetType (M0.__default.DomC |st#0@@10|) (TSet Tclass.M0.HashValue) $Heap@@3))
))))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@2 t1 t2 (MapType0Store t0@@2 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((t0@@3 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 (MapType1Store t0@@3 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 9)
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
 :skolemid |2072|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (|p#0@@10| T@U) (|st#0@@11| T@U) ) (!  (=> (and (or (|M0.__default.Oracle#canCall| |p#0@@10| |st#0@@11|) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |p#0@@10| Tclass.M0.Path) ($IsAllocBox |p#0@@10| Tclass.M0.Path $Heap@@4)) (and ($IsBox |st#0@@11| Tclass.M0.State) ($IsAllocBox |st#0@@11| Tclass.M0.State $Heap@@4))))) ($IsGoodHeap $Heap@@4)) ($IsAllocBox (M0.__default.Oracle |p#0@@10| |st#0@@11|) Tclass.M0.Artifact $Heap@@4))
 :qid |CloudMakeCachedBuildsdfy.186:18|
 :skolemid |985|
 :pattern ( ($IsAllocBox (M0.__default.Oracle |p#0@@10| |st#0@@11|) Tclass.M0.Artifact $Heap@@4))
))))
(assert (forall ((bx@@3 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@3 (TSet t@@5)))
)))
(assert (forall ((bx@@4 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@4 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@4)) bx@@4) ($Is SeqType ($Unbox SeqType bx@@4) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@4 (TSeq t@@6)))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@13 o@@5) (|Set#IsMember| b@@10 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@13 o@@5))
 :pattern ( (|Set#IsMember| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|stC#0@@0| T@U) ) (!  (=> (or (|M0.__default.ConsistentCache#canCall| (Lit BoxType |stC#0@@0|)) (and (< 1 $FunctionContextHeight) ($IsBox |stC#0@@0| Tclass.M0.State))) (and (forall ((|cmd#1| T@U) (|deps#1| T@U) (|e#1| T@U) ) (!  (=> (and (and ($Is SeqType |cmd#1| (TSeq TChar)) ($Is SetType |deps#1| (TSet Tclass.M0.Path))) ($Is SeqType |e#1| (TSeq TChar))) (and (and (and (|M0.__default.Loc#canCall| |cmd#1| |deps#1| |e#1|) (|M0.__default.Hash#canCall| (M0.__default.Loc |cmd#1| |deps#1| |e#1|))) (|M0.__default.DomC#canCall| (Lit BoxType |stC#0@@0|))) (=> (|Set#IsMember| (M0.__default.DomC (Lit BoxType |stC#0@@0|)) (M0.__default.Hash (M0.__default.Loc |cmd#1| |deps#1| |e#1|))) (and (|M0.__default.Loc#canCall| |cmd#1| |deps#1| |e#1|) (|M0.__default.DomSt#canCall| (Lit BoxType |stC#0@@0|))))))
 :qid |CloudMakeCachedBuildsdfy.116:12|
 :skolemid |845|
 :pattern ( (M0.__default.Loc |cmd#1| |deps#1| |e#1|))
)) (= (M0.__default.ConsistentCache (Lit BoxType |stC#0@@0|)) (forall ((|cmd#1@@0| T@U) (|deps#1@@0| T@U) (|e#1@@0| T@U) ) (!  (=> (and (and ($Is SeqType |cmd#1@@0| (TSeq TChar)) ($Is SetType |deps#1@@0| (TSet Tclass.M0.Path))) ($Is SeqType |e#1@@0| (TSeq TChar))) (=> (|Set#IsMember| (M0.__default.DomC (Lit BoxType |stC#0@@0|)) (M0.__default.Hash (M0.__default.Loc |cmd#1@@0| |deps#1@@0| |e#1@@0|))) (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |stC#0@@0|)) (M0.__default.Loc |cmd#1@@0| |deps#1@@0| |e#1@@0|))))
 :qid |CloudMakeCachedBuildsdfy.116:12|
 :skolemid |844|
 :pattern ( (M0.__default.Loc |cmd#1@@0| |deps#1@@0| |e#1@@0|))
)))))
 :qid |CloudMakeCachedBuildsdfy.114:35|
 :weight 3
 :skolemid |846|
 :pattern ( (M0.__default.ConsistentCache (Lit BoxType |stC#0@@0|)))
))))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@12| T@U) ) (!  (=> (or (|M0.__default.ValidState#canCall| (Lit BoxType |st#0@@12|)) (and (< 1 $FunctionContextHeight) ($IsBox |st#0@@12| Tclass.M0.State))) (and (forall ((|p#1@@1| T@U) ) (!  (=> ($IsBox |p#1@@1| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@12|)) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@12|)) |p#1@@1|) (|M0.__default.WellFounded#canCall| |p#1@@1|))))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |729|
 :pattern ( (M0.__default.WellFounded |p#1@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@12|) |p#1@@1|))
)) (= (M0.__default.ValidState (Lit BoxType |st#0@@12|)) (forall ((|p#1@@2| T@U) ) (!  (=> ($IsBox |p#1@@2| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@12|)) |p#1@@2|) (M0.__default.WellFounded |p#1@@2|)))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |728|
 :pattern ( (M0.__default.WellFounded |p#1@@2|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@12|) |p#1@@2|))
)))))
 :qid |CloudMakeCachedBuildsdfy.33:30|
 :weight 3
 :skolemid |730|
 :pattern ( (M0.__default.ValidState (Lit BoxType |st#0@@12|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M0._default.PickOne$T@@3 T@U) ($Heap@@5 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|M0.__default.PickOne#canCall| M0._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@5) ($Is SetType |s#0@@2| (TSet M0._default.PickOne$T@@3))) (not (|Set#Equal| |s#0@@2| |Set#Empty|))))) (and (|$let#0$canCall| M0._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (= (M0.__default.PickOne M0._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (let ((|x#1| (|$let#0_x| M0._default.PickOne$T@@3 (Lit SetType |s#0@@2|))))
|x#1|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |792|
 :pattern ( (M0.__default.PickOne M0._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((h@@3 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@3)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@6 T@U) ) (! ($IsAlloc charType v@@6 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@6 TChar h@@4))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@4)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@0) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@7 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@4)))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is boolType v@@8 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@8 TBool))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is charType v@@9 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@9 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |sts#0@@3| () T@U)
(declare-fun |st#5@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |stCombined#Z#0@0| () T@U)
(declare-fun |h#0@0| () T@U)
(declare-fun |st#4@0| () T@U)
(declare-fun |useCache#0@@4| () Bool)
(declare-fun reveal_M0._default.Extends () Bool)
(declare-fun |parent#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@@6 () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |st#2@0| () T@U)
(declare-fun |st#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id CheckWellFormed$$M0.__default.Lemma__Combine)
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
 (=> (= (ControlFlow 0 0) 40) (let ((anon27_correct true))
(let ((anon44_Else_correct  (=> (and (not (|Set#IsMember| |sts#0@@3| |st#5@0|)) (= (ControlFlow 0 9) 1)) anon27_correct)))
(let ((anon44_Then_correct  (=> (and (and (|Set#IsMember| |sts#0@@3| |st#5@0|) ($IsAllocBox |st#5@0| Tclass.M0.State $Heap@0)) (and (|M0.__default.DomC#canCall| |st#5@0|) (= (ControlFlow 0 8) 1))) anon27_correct)))
(let ((anon43_Then_correct  (=> (and ($IsBox |st#5@0| Tclass.M0.State) ($IsAllocBox |st#5@0| Tclass.M0.State $Heap@0)) (and (=> (= (ControlFlow 0 10) 8) anon44_Then_correct) (=> (= (ControlFlow 0 10) 9) anon44_Else_correct)))))
(let ((anon43_Else_correct  (=> (and (not (and ($IsBox |st#5@0| Tclass.M0.State) ($IsAllocBox |st#5@0| Tclass.M0.State $Heap@0))) (= (ControlFlow 0 7) 1)) anon27_correct)))
(let ((anon42_Then_correct  (=> (|Set#IsMember| (M0.__default.DomC |stCombined#Z#0@0|) |h#0@0|) (and (=> (= (ControlFlow 0 11) 10) anon43_Then_correct) (=> (= (ControlFlow 0 11) 7) anon43_Else_correct)))))
(let ((anon42_Else_correct  (=> (and (not (|Set#IsMember| (M0.__default.DomC |stCombined#Z#0@0|) |h#0@0|)) (= (ControlFlow 0 6) 1)) anon27_correct)))
(let ((anon41_Then_correct  (=> (and (and ($IsBox |h#0@0| Tclass.M0.HashValue) ($IsAllocBox |h#0@0| Tclass.M0.HashValue $Heap@0)) (and ($IsAllocBox |stCombined#Z#0@0| Tclass.M0.State $Heap@0) (|M0.__default.DomC#canCall| |stCombined#Z#0@0|))) (and (=> (= (ControlFlow 0 12) 11) anon42_Then_correct) (=> (= (ControlFlow 0 12) 6) anon42_Else_correct)))))
(let ((anon41_Else_correct  (=> (and (not (and ($IsBox |h#0@0| Tclass.M0.HashValue) ($IsAllocBox |h#0@0| Tclass.M0.HashValue $Heap@0))) (= (ControlFlow 0 5) 1)) anon27_correct)))
(let ((anon40_Then_correct  (=> (and (M0.__default.ConsistentCache |stCombined#Z#0@0|) (forall ((|st#6| T@U) ) (!  (=> ($IsBox |st#6| Tclass.M0.State) (=> (|Set#IsMember| |sts#0@@3| |st#6|) (|Set#Subset| (M0.__default.DomC |st#6|) (M0.__default.DomC |stCombined#Z#0@0|))))
 :qid |CloudMakeCachedBuildsdfy.89:17|
 :skolemid |796|
 :pattern ( (M0.__default.DomC |st#6|))
 :pattern ( (|Set#IsMember| |sts#0@@3| |st#6|))
))) (and (=> (= (ControlFlow 0 13) 12) anon41_Then_correct) (=> (= (ControlFlow 0 13) 5) anon41_Else_correct)))))
(let ((anon40_Else_correct  (=> (and (not (and (M0.__default.ConsistentCache |stCombined#Z#0@0|) (forall ((|st#6@@0| T@U) ) (!  (=> ($IsBox |st#6@@0| Tclass.M0.State) (=> (|Set#IsMember| |sts#0@@3| |st#6@@0|) (|Set#Subset| (M0.__default.DomC |st#6@@0|) (M0.__default.DomC |stCombined#Z#0@0|))))
 :qid |CloudMakeCachedBuildsdfy.89:17|
 :skolemid |796|
 :pattern ( (M0.__default.DomC |st#6@@0|))
 :pattern ( (|Set#IsMember| |sts#0@@3| |st#6@@0|))
)))) (= (ControlFlow 0 4) 1)) anon27_correct)))
(let ((anon39_Else_correct  (=> (not (|Set#IsMember| |sts#0@@3| |st#4@0|)) (and (=> (= (ControlFlow 0 17) 13) anon40_Then_correct) (=> (= (ControlFlow 0 17) 4) anon40_Else_correct)))))
(let ((anon39_Then_correct  (=> (|Set#IsMember| |sts#0@@3| |st#4@0|) (=> (and (and ($IsAllocBox |st#4@0| Tclass.M0.State $Heap@0) (|M0.__default.DomC#canCall| |st#4@0|)) (and ($IsAllocBox |stCombined#Z#0@0| Tclass.M0.State $Heap@0) (|M0.__default.DomC#canCall| |stCombined#Z#0@0|))) (and (=> (= (ControlFlow 0 16) 13) anon40_Then_correct) (=> (= (ControlFlow 0 16) 4) anon40_Else_correct))))))
(let ((anon38_Then_correct  (=> (and ($IsBox |st#4@0| Tclass.M0.State) ($IsAllocBox |st#4@0| Tclass.M0.State $Heap@0)) (and (=> (= (ControlFlow 0 18) 16) anon39_Then_correct) (=> (= (ControlFlow 0 18) 17) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (not (and ($IsBox |st#4@0| Tclass.M0.State) ($IsAllocBox |st#4@0| Tclass.M0.State $Heap@0))) (and (=> (= (ControlFlow 0 15) 13) anon40_Then_correct) (=> (= (ControlFlow 0 15) 4) anon40_Else_correct)))))
(let ((anon37_Then_correct  (=> (M0.__default.ConsistentCache |stCombined#Z#0@0|) (and (=> (= (ControlFlow 0 19) 18) anon38_Then_correct) (=> (= (ControlFlow 0 19) 15) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (not (M0.__default.ConsistentCache |stCombined#Z#0@0|)) (and (=> (= (ControlFlow 0 14) 13) anon40_Then_correct) (=> (= (ControlFlow 0 14) 4) anon40_Else_correct)))))
(let ((anon36_Then_correct  (=> |useCache#0@@4| (=> (and ($IsAllocBox |stCombined#Z#0@0| Tclass.M0.State $Heap@0) (|M0.__default.ConsistentCache#canCall| |stCombined#Z#0@0|)) (and (=> (= (ControlFlow 0 20) 19) anon37_Then_correct) (=> (= (ControlFlow 0 20) 14) anon37_Else_correct))))))
(let ((anon36_Else_correct  (=> (and (not |useCache#0@@4|) (= (ControlFlow 0 3) 1)) anon27_correct)))
(let ((anon35_Then_correct  (=> (and (M0.__default.ValidState |stCombined#Z#0@0|) (M0.__default.Extends reveal_M0._default.Extends |parent#0| |stCombined#Z#0@0|)) (and (=> (= (ControlFlow 0 21) 20) anon36_Then_correct) (=> (= (ControlFlow 0 21) 3) anon36_Else_correct)))))
(let ((anon35_Else_correct  (=> (and (not (and (M0.__default.ValidState |stCombined#Z#0@0|) (M0.__default.Extends reveal_M0._default.Extends |parent#0| |stCombined#Z#0@0|))) (= (ControlFlow 0 2) 1)) anon27_correct)))
(let ((anon34_Else_correct  (=> (not (M0.__default.ValidState |stCombined#Z#0@0|)) (and (=> (= (ControlFlow 0 23) 21) anon35_Then_correct) (=> (= (ControlFlow 0 23) 2) anon35_Else_correct)))))
(let ((anon34_Then_correct  (=> (and (and (M0.__default.ValidState |stCombined#Z#0@0|) ($IsAllocBox |parent#0| Tclass.M0.State $Heap@0)) (and ($IsAllocBox |stCombined#Z#0@0| Tclass.M0.State $Heap@0) (|M0.__default.Extends#canCall| |parent#0| |stCombined#Z#0@0|))) (and (=> (= (ControlFlow 0 22) 21) anon35_Then_correct) (=> (= (ControlFlow 0 22) 2) anon35_Else_correct)))))
(let ((anon10_correct  (=> (=> |useCache#0@@4| (forall ((|st#3| T@U) ) (!  (=> ($IsBox |st#3| Tclass.M0.State) (=> (|Set#IsMember| |sts#0@@3| |st#3|) (M0.__default.ConsistentCache |st#3|)))
 :qid |CloudMakeCachedBuildsdfy.83:28|
 :skolemid |795|
 :pattern ( (M0.__default.ConsistentCache |st#3|))
 :pattern ( (|Set#IsMember| |sts#0@@3| |st#3|))
))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@6 $Heap@0)) (and ($IsAlloc SetType |sts#0@@3| (TSet Tclass.M0.State) $Heap@0) ($IsAlloc boolType (bool_2_U |useCache#0@@4|) TBool $Heap@0))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (not (|Set#Equal| |sts#0@@3| |Set#Empty|))) (=> (and (and (and (not (|Set#Equal| |sts#0@@3| |Set#Empty|)) (|M0.__default.Combine#canCall| |sts#0@@3| |useCache#0@@4|)) (and (= |let#0#0#0| (M0.__default.Combine ($LS $LZ) reveal_M0._default.Combine |sts#0@@3| |useCache#0@@4|)) (|M0.__default.Combine#canCall| |sts#0@@3| |useCache#0@@4|))) (and (and ($IsBox |let#0#0#0| Tclass.M0.State) (= |stCombined#Z#0@0| |let#0#0#0|)) (and ($IsAllocBox |stCombined#Z#0@0| Tclass.M0.State $Heap@0) (|M0.__default.ValidState#canCall| |stCombined#Z#0@0|)))) (and (=> (= (ControlFlow 0 24) 22) anon34_Then_correct) (=> (= (ControlFlow 0 24) 23) anon34_Else_correct))))))))
(let ((anon33_Else_correct  (=> (and (not (|Set#IsMember| |sts#0@@3| |st#2@0|)) (= (ControlFlow 0 29) 24)) anon10_correct)))
(let ((anon33_Then_correct  (=> (and (and (|Set#IsMember| |sts#0@@3| |st#2@0|) ($IsAllocBox |st#2@0| Tclass.M0.State $Heap@@6)) (and (|M0.__default.ConsistentCache#canCall| |st#2@0|) (= (ControlFlow 0 28) 24))) anon10_correct)))
(let ((anon32_Then_correct  (=> (and ($IsBox |st#2@0| Tclass.M0.State) ($IsAllocBox |st#2@0| Tclass.M0.State $Heap@@6)) (and (=> (= (ControlFlow 0 30) 28) anon33_Then_correct) (=> (= (ControlFlow 0 30) 29) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (and (not (and ($IsBox |st#2@0| Tclass.M0.State) ($IsAllocBox |st#2@0| Tclass.M0.State $Heap@@6))) (= (ControlFlow 0 27) 24)) anon10_correct)))
(let ((anon31_Then_correct  (=> |useCache#0@@4| (and (=> (= (ControlFlow 0 31) 30) anon32_Then_correct) (=> (= (ControlFlow 0 31) 27) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (and (not |useCache#0@@4|) (= (ControlFlow 0 26) 24)) anon10_correct)))
(let ((anon5_correct  (=> (forall ((|st#1@@1| T@U) ) (!  (=> ($IsBox |st#1@@1| Tclass.M0.State) (and (=> (|Set#IsMember| |sts#0@@3| |st#1@@1|) (M0.__default.ValidState |st#1@@1|)) (=> (|Set#IsMember| |sts#0@@3| |st#1@@1|) (M0.__default.Extends reveal_M0._default.Extends |parent#0| |st#1@@1|))))
 :qid |CloudMakeCachedBuildsdfy.82:15|
 :skolemid |794|
 :pattern ( (M0.__default.Extends reveal_M0._default.Extends |parent#0| |st#1@@1|))
 :pattern ( (M0.__default.ValidState |st#1@@1|))
 :pattern ( (|Set#IsMember| |sts#0@@3| |st#1@@1|))
)) (and (=> (= (ControlFlow 0 32) 31) anon31_Then_correct) (=> (= (ControlFlow 0 32) 26) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (and (not (M0.__default.ValidState |st#0@0|)) (= (ControlFlow 0 36) 32)) anon5_correct)))
(let ((anon30_Then_correct  (=> (M0.__default.ValidState |st#0@0|) (=> (and (and ($IsAllocBox |parent#0| Tclass.M0.State $Heap@@6) ($IsAllocBox |st#0@0| Tclass.M0.State $Heap@@6)) (and (|M0.__default.Extends#canCall| |parent#0| |st#0@0|) (= (ControlFlow 0 35) 32))) anon5_correct))))
(let ((anon29_Then_correct  (=> (|Set#IsMember| |sts#0@@3| |st#0@0|) (=> (and ($IsAllocBox |st#0@0| Tclass.M0.State $Heap@@6) (|M0.__default.ValidState#canCall| |st#0@0|)) (and (=> (= (ControlFlow 0 37) 35) anon30_Then_correct) (=> (= (ControlFlow 0 37) 36) anon30_Else_correct))))))
(let ((anon29_Else_correct  (=> (and (not (|Set#IsMember| |sts#0@@3| |st#0@0|)) (= (ControlFlow 0 34) 32)) anon5_correct)))
(let ((anon28_Then_correct  (=> (and ($IsBox |st#0@0| Tclass.M0.State) ($IsAllocBox |st#0@0| Tclass.M0.State $Heap@@6)) (and (=> (= (ControlFlow 0 38) 37) anon29_Then_correct) (=> (= (ControlFlow 0 38) 34) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (not (and ($IsBox |st#0@0| Tclass.M0.State) ($IsAllocBox |st#0@0| Tclass.M0.State $Heap@@6))) (= (ControlFlow 0 33) 32)) anon5_correct)))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@6 alloc false)) (not (|Set#Equal| |sts#0@@3| |Set#Empty|))) (and (=> (= (ControlFlow 0 39) 38) anon28_Then_correct) (=> (= (ControlFlow 0 39) 33) anon28_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@6) ($IsHeapAnchor $Heap@@6)) (and ($Is SetType |sts#0@@3| (TSet Tclass.M0.State)) ($IsAlloc SetType |sts#0@@3| (TSet Tclass.M0.State) $Heap@@6))) (and (and ($IsBox |parent#0| Tclass.M0.State) ($IsAllocBox |parent#0| Tclass.M0.State $Heap@@6)) (and (= 5 $FunctionContextHeight) (= (ControlFlow 0 40) 39)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
