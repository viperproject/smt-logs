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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
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
(declare-fun |lambda#3| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |lambda#0| (T@U T@U) T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |lambda#30| (T@U Int Int) T@U)
(declare-fun |lambda#4| (Bool) T@U)
(declare-fun |lambda#6| (T@U) T@U)
(declare-fun |$let#0_x| (T@U T@U) Int)
(declare-fun |$let#0$canCall| (T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#23| (T@U T@U T@U Bool) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.missing__number (T@U) Int)
(declare-fun |_module.__default.missing__number#canCall| (T@U) Bool)
(declare-fun |lambda#2| (Int Int T@U) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun $LZ () T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet TagSeq alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 tytagFamily$nat tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1|)
)
(assert (= (Tag TBool) TagBool))
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
(assert (forall ((|l#0| T@U) (|$l#2#heap#0| T@U) (|$l#2#x#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#3| |l#0|) |$l#2#heap#0| |$l#2#x#0|)) ($IsBox |$l#2#x#0| |l#0|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |503|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#3| |l#0|) |$l#2#heap#0| |$l#2#x#0|))
)))
(assert (forall ((a T@U) (b T@U) (y T@U) ) (!  (=> (|Set#IsMember| a y) (|Set#IsMember| (|Set#Union| a b) y))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a b) (|Set#IsMember| a y))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@0) (|Set#IsMember| (|Set#Union| a@@0 b@@0) y@@0))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@0 b@@0) (|Set#IsMember| b@@0 y@@0))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType1Select BoxType boolType (|lambda#0| |l#0@@0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0@@0|) (|Seq#Contains| |l#1| |$y#0|)))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |501|
 :pattern ( (MapType1Select BoxType boolType (|lambda#0| |l#0@@0| |l#1|) |$y#0|))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@1 b@@1) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@1 b@@1) (|Set#IsMember| b@@1 y@@1))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (o@@0 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@2 b@@2) o@@0)  (and (|Set#IsMember| a@@2 o@@0) (|Set#IsMember| b@@2 o@@0)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |137|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@2 b@@2) o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@3 b@@3) b@@3) (|Set#Union| a@@3 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@3 b@@3) b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@4 b@@4) b@@4) (|Set#Intersection| a@@4 b@@4))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |140|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@4 b@@4) b@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@5 b@@5) o@@1)  (and (|Set#IsMember| a@@5 o@@1) (not (|Set#IsMember| b@@5 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@5 b@@5) o@@1))
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
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@3 T@U) ) (! (|Set#IsMember| s x@@3)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s x@@3))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s))
)))
(assert (forall (($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@1))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (! (= (+ (|Set#Card| (|Set#Union| a@@6 b@@6)) (|Set#Card| (|Set#Intersection| a@@6 b@@6))) (+ (|Set#Card| a@@6) (|Set#Card| b@@6)))
 :qid |DafnyPreludebpl.745:15|
 :skolemid |142|
 :pattern ( (|Set#Card| (|Set#Union| a@@6 b@@6)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@6 b@@6)))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((x@@4 Int) ) (! (= (LitInt x@@4) x@@4)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@7) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@3)) (not (|Set#IsMember| b@@7 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@7 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@7 b@@7))
)))
(assert (forall ((m@@4 T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@4) bx@@2) (U_2_bool (MapType1Select BoxType boolType m@@4 bx@@2)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@4) bx@@2))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@4 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@4) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@4) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@5 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@5) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@5) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |379|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v bx@@3) ($IsBox bx@@3 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@3))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 9))
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
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@4 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@4 t@@0 h@@2) ($IsAllocBox bx@@4 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@4 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@3) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@6 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@6) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@6) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@7 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@7))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@7) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@7) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@8 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@8 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@8))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@8) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@8) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@9 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@9 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@9))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@9) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@9) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (forall ((s@@0 T@U) (bx@@5 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s@@0) bx@@5) (U_2_bool (MapType1Select refType boolType s@@0 ($Unbox refType bx@@5))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s@@0) bx@@5))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@2) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@2))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@2))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@3) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@3))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@3))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
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
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) (o@@10 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@8) o@@10)  (or (|Set#IsMember| a@@8 o@@10) (|Set#IsMember| b@@8 o@@10)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@8) o@@10))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@9) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@9) a@@9) b@@9) (= (|Set#Difference| (|Set#Union| a@@9 b@@9) b@@9) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@9 b@@9))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall ((s@@1 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| s@@1 x@@7) (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|Seq#Length| s@@1))) (= (|Seq#Index| s@@1 i) x@@7))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@1 i))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@1 x@@7))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@0| Int) (|l#2| Int) (|$y#0_0| T@U) ) (! (= (U_2_bool (MapType1Select BoxType boolType (|lambda#30| |l#0@@1| |l#1@@0| |l#2|) |$y#0_0|))  (and ($IsBox |$y#0_0| |l#0@@1|) (and (<= |l#1@@0| (U_2_int ($Unbox intType |$y#0_0|))) (<= (U_2_int ($Unbox intType |$y#0_0|)) |l#2|))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |508|
 :pattern ( (MapType1Select BoxType boolType (|lambda#30| |l#0@@1| |l#1@@0| |l#2|) |$y#0_0|))
)))
(assert (forall ((|l#0@@2| Bool) (|$l#2#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#4| |l#0@@2|) |$l#2#o#0|)) |l#0@@2|)
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( (MapType1Select refType boolType (|lambda#4| |l#0@@2|) |$l#2#o#0|))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#2#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@3|) |$l#2#ly#0|) |l#0@@3|)
 :qid |gitissue897adfy.8:12|
 :skolemid |506|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@3|) |$l#2#ly#0|))
)))
(assert (forall (($heap T@U) (p T@U) ) (!  (=> (|$let#0$canCall| $heap p) (U_2_bool ($Unbox boolType (Apply1 TInt TBool $heap p ($Box intType (int_2_U (|$let#0_x| $heap p)))))))
 :qid |gitissue897adfy.21:3|
 :skolemid |483|
 :pattern ( (|$let#0_x| $heap p))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (!  (=> (|Set#Equal| a@@10 b@@10) (= a@@10 b@@10))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@10 b@@10))
)))
(assert (forall ((a@@11 T@U) (b@@11 T@U) (c T@U) ) (!  (=> (or (not (= a@@11 c)) (not true)) (=> (and ($HeapSucc a@@11 b@@11) ($HeapSucc b@@11 c)) ($HeapSucc a@@11 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@11 b@@11) ($HeapSucc b@@11 c))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
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
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TBool) (and (= ($Box boolType ($Unbox boolType bx@@10)) bx@@10) ($Is boolType ($Unbox boolType bx@@10) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@10 TBool))
)))
(assert (forall ((a@@12 T@U) (b@@12 T@U) ) (!  (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@12 b@@12)) (|Set#Card| (|Set#Difference| b@@12 a@@12))) (|Set#Card| (|Set#Intersection| a@@12 b@@12))) (|Set#Card| (|Set#Union| a@@12 b@@12))) (= (|Set#Card| (|Set#Difference| a@@12 b@@12)) (- (|Set#Card| a@@12) (|Set#Card| (|Set#Intersection| a@@12 b@@12)))))
 :qid |DafnyPreludebpl.761:15|
 :skolemid |145|
 :pattern ( (|Set#Card| (|Set#Difference| a@@12 b@@12)))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Set#Card| s@@2))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@2))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Seq#Length| s@@3))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((v@@3 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@11) ($IsAllocBox bx@@11 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@11))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert (= (Ctor SeqType) 10))
(assert (forall ((v@@4 T@U) (t0@@16 T@U) (h@@9 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@16) h@@9) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@0) t0@@16 h@@9))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@16) h@@9))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((a@@13 T@U) (b@@13 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@13)) (|Set#Union| a@@13 b@@13))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@13)))
)))
(assert (forall ((a@@14 T@U) (b@@14 T@U) ) (! (= (|Set#Intersection| a@@14 (|Set#Intersection| a@@14 b@@14)) (|Set#Intersection| a@@14 b@@14))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |141|
 :pattern ( (|Set#Intersection| a@@14 (|Set#Intersection| a@@14 b@@14)))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@17 T@U) (t1@@14 T@U) (h@@10 T@U) ) (!  (=> ($IsGoodHeap h@@10) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@17 t1@@14) h@@10) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@17) ($IsAllocBox bx0@@11 t0@@17 h@@10)) (Requires1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@10 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@17 t1@@14) h@@10))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@12)) bx@@12) ($Is HandleTypeType ($Unbox HandleTypeType bx@@12) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@12 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@13)) bx@@13) ($Is HandleTypeType ($Unbox HandleTypeType bx@@13) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@13 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@14)) bx@@14) ($Is HandleTypeType ($Unbox HandleTypeType bx@@14) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@14 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#23| |l#0@@4| |l#1@@1| |l#2@@0| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@4|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@1| $o@@1) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |507|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#23| |l#0@@4| |l#1@@1| |l#2@@0| |l#3|) $o@@1 $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (|nums#0| T@U) ) (!  (=> (or (|_module.__default.missing__number#canCall| |nums#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SeqType |nums#0| (TSeq Tclass._System.nat))) (and (= (|Set#Card| (|Set#FromBoogieMap| (|lambda#0| TInt |nums#0|))) (|Seq#Length| |nums#0|)) (forall ((|x#1| Int) ) (!  (and (=> (|Seq#Contains| |nums#0| ($Box intType (int_2_U |x#1|))) (<= (LitInt 0) |x#1|)) (=> (|Seq#Contains| |nums#0| ($Box intType (int_2_U |x#1|))) (<= |x#1| (|Seq#Length| |nums#0|))))
 :qid |gitissue897adfy.6:19|
 :skolemid |481|
 :pattern ( (|Seq#Contains| |nums#0| ($Box intType (int_2_U |x#1|))))
)))))) (and (let ((|p#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#2| (LitInt 0) (|Seq#Length| |nums#0|) |nums#0|) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))))
(|$let#0$canCall| $Heap |p#0|)) (= (_module.__default.missing__number |nums#0|) (let ((|p#0@@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#2| (LitInt 0) (|Seq#Length| |nums#0|) |nums#0|) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))))
(let ((|x#2| (|$let#0_x| $Heap |p#0@@0|)))
|x#2|)))))
 :qid |gitissue897adfy.4:16|
 :skolemid |484|
 :pattern ( (_module.__default.missing__number |nums#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((t0@@18 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@18) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@18 t1@@15)))) (|Set#Equal| (Reads1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@18 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@18 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((bx@@15 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@15 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@15)) bx@@15) ($Is SetType ($Unbox SetType bx@@15) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@15 (TSet t@@7)))
)))
(assert (forall ((bx@@16 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@16 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@16)) bx@@16) ($Is SeqType ($Unbox SeqType bx@@16) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@16 (TSeq t@@8)))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@2| Int) (|l#2@@1| T@U) (|$l#2#heap#0@@0| T@U) (|$l#2#x#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#2| |l#0@@5| |l#1@@2| |l#2@@1|) |$l#2#heap#0@@0| |$l#2#x#0@@0|) ($Box boolType (bool_2_U  (and (and (<= |l#0@@5| (U_2_int ($Unbox intType |$l#2#x#0@@0|))) (<= (U_2_int ($Unbox intType |$l#2#x#0@@0|)) |l#1@@2|)) (not (|Seq#Contains| |l#2@@1| |$l#2#x#0@@0|))))))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#2| |l#0@@5| |l#1@@2| |l#2@@1|) |$l#2#heap#0@@0| |$l#2#x#0@@0|))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@4 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@4) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@4))
)))
(assert (forall ((a@@15 T@U) (b@@15 T@U) ) (! (= (|Set#Equal| a@@15 b@@15) (forall ((o@@11 T@U) ) (! (= (|Set#IsMember| a@@15 o@@11) (|Set#IsMember| b@@15 o@@11))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@15 o@@11))
 :pattern ( (|Set#IsMember| b@@15 o@@11))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@15 b@@15))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((s@@5 T@U) ) (!  (=> (= (|Seq#Length| s@@5) 0) (= s@@5 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|nums#0@@0| T@U) ) (!  (=> (or (|_module.__default.missing__number#canCall| (Lit SeqType |nums#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is SeqType |nums#0@@0| (TSeq Tclass._System.nat))) (and (= (|Set#Card| (|Set#FromBoogieMap| (|lambda#0| TInt |nums#0@@0|))) (|Seq#Length| (Lit SeqType |nums#0@@0|))) (forall ((|x#3| Int) ) (!  (and (=> (|Seq#Contains| |nums#0@@0| ($Box intType (int_2_U |x#3|))) (<= (LitInt 0) |x#3|)) (=> (|Seq#Contains| |nums#0@@0| ($Box intType (int_2_U |x#3|))) (<= |x#3| (|Seq#Length| (Lit SeqType |nums#0@@0|)))))
 :qid |gitissue897adfy.6:19|
 :skolemid |485|
 :pattern ( (|Seq#Contains| |nums#0@@0| ($Box intType (int_2_U |x#3|))))
)))))) (and (let ((|p#2| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#2| (LitInt 0) (|Seq#Length| (Lit SeqType |nums#0@@0|)) |nums#0@@0|) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))))
(|$let#0$canCall| $Heap@@0 |p#2|)) (= (_module.__default.missing__number (Lit SeqType |nums#0@@0|)) (let ((|p#2@@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#2| (LitInt 0) (|Seq#Length| (Lit SeqType |nums#0@@0|)) |nums#0@@0|) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))))
(let ((|x#4| (|$let#0_x| $Heap@@0 |p#2@@0|)))
|x#4|)))))
 :qid |gitissue897adfy.4:16|
 :weight 3
 :skolemid |486|
 :pattern ( (_module.__default.missing__number (Lit SeqType |nums#0@@0|)) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|nums#0@@1| T@U) ) (!  (=> (or (|_module.__default.missing__number#canCall| |nums#0@@1|) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |nums#0@@1| (TSeq Tclass._System.nat)) (and (= (|Set#Card| (|Set#FromBoogieMap| (|lambda#0| TInt |nums#0@@1|))) (|Seq#Length| |nums#0@@1|)) (forall ((|x#0@@1| Int) ) (!  (and (=> (|Seq#Contains| |nums#0@@1| ($Box intType (int_2_U |x#0@@1|))) (<= (LitInt 0) |x#0@@1|)) (=> (|Seq#Contains| |nums#0@@1| ($Box intType (int_2_U |x#0@@1|))) (<= |x#0@@1| (|Seq#Length| |nums#0@@1|))))
 :qid |gitissue897adfy.6:19|
 :skolemid |479|
 :pattern ( (|Seq#Contains| |nums#0@@1| ($Box intType (int_2_U |x#0@@1|))))
)))))) (<= (LitInt 0) (_module.__default.missing__number |nums#0@@1|)))
 :qid |gitissue897adfy.4:31|
 :skolemid |480|
 :pattern ( (_module.__default.missing__number |nums#0@@1|))
))))
(assert (forall ((h@@11 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@11)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@11))
)))
(assert (forall ((h@@12 T@U) (v@@6 T@U) ) (! ($IsAlloc boolType v@@6 TBool h@@12)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@6 TBool h@@12))
)))
(assert (forall ((v@@7 T@U) (t0@@19 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@19)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@1) t0@@19))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@7 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@19)))
)))
(assert (forall ((|l#0@@6| T@U) (|$l#2#heap#0@@1| T@U) (|$l#2#x#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#5| |l#0@@6|) |$l#2#heap#0@@1| |$l#2#x#0@@1|) |l#0@@6|)
 :qid |gitissue897adfy.8:12|
 :skolemid |505|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#5| |l#0@@6|) |$l#2#heap#0@@1| |$l#2#x#0@@1|))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is intType v@@8 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@8 TInt))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is boolType v@@9 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@9 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#6@0| () Int)
(declare-fun |nums#0@@2| () T@U)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |missing#0_0@0| () T@U)
(declare-fun |y#0_0_0@0| () Int)
(declare-fun |p#Z#0@0| () T@U)
(declare-fun |y#0_1_0@0| () Int)
(declare-fun |x#0_0@0| () Int)
(declare-fun |y#0@0| () Int)
(declare-fun |x#7@0| () Int)
(declare-fun |x#0_2@0| () Int)
(declare-fun |y#0_1@0| () Int)
(declare-fun |range#0_0@0| () T@U)
(declare-fun |i#0_2@0| () Int)
(declare-fun |i#0_0@0| () Int)
(declare-fun |x#10@0| () Int)
(declare-fun |y#2@0| () Int)
(declare-fun |x#9@0| () Int)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |x#5@0| () Int)
(declare-fun |i#0@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |range#0_0| () T@U)
(declare-fun |missing#0_0| () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.missing__number)
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
 (=> (= (ControlFlow 0 0) 81) (let ((anon17_correct true))
(let ((anon70_Else_correct  (=> (and (not (and (<= (LitInt 0) |x#6@0|) (<= |x#6@0| (|Seq#Length| |nums#0@@2|)))) (= (ControlFlow 0 65) 63)) anon17_correct)))
(let ((anon70_Then_correct  (=> (and (and (<= (LitInt 0) |x#6@0|) (<= |x#6@0| (|Seq#Length| |nums#0@@2|))) (= (ControlFlow 0 64) 63)) anon17_correct)))
(let ((anon69_Else_correct  (=> (< |x#6@0| (LitInt 0)) (and (=> (= (ControlFlow 0 67) 64) anon70_Then_correct) (=> (= (ControlFlow 0 67) 65) anon70_Else_correct)))))
(let ((anon69_Then_correct  (=> (<= (LitInt 0) |x#6@0|) (and (=> (= (ControlFlow 0 66) 64) anon70_Then_correct) (=> (= (ControlFlow 0 66) 65) anon70_Else_correct)))))
(let ((anon68_Then_correct  (=> (= |$_Frame#l0@0| (|lambda#23| null |$lambdaHeap#0@0| alloc false)) (and (=> (= (ControlFlow 0 68) 66) anon69_Then_correct) (=> (= (ControlFlow 0 68) 67) anon69_Else_correct)))))
(let ((anon68_Else_correct true))
(let ((anon67_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@@1 |$lambdaHeap#0@0|) ($HeapSucc $Heap@@1 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 69) 68) anon68_Then_correct) (=> (= (ControlFlow 0 69) 62) anon68_Else_correct)))))
(let ((anon79_Else_correct  (=> (= (ControlFlow 0 44) (- 0 43)) (|Set#IsMember| |missing#0_0@0| ($Box intType (int_2_U |y#0_0_0@0|))))))
(let ((anon79_Then_correct true))
(let ((anon78_Then_correct  (=> (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |y#0_0_0@0|))))) (and (=> (= (ControlFlow 0 45) 42) anon79_Then_correct) (=> (= (ControlFlow 0 45) 44) anon79_Else_correct)))))
(let ((anon84_Else_correct  (=> (= (ControlFlow 0 33) (- 0 32)) (= |y#0_1_0@0| |x#0_0@0|))))
(let ((anon84_Then_correct true))
(let ((anon83_Then_correct  (=> (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |y#0_1_0@0|))))) (and (=> (= (ControlFlow 0 34) 31) anon84_Then_correct) (=> (= (ControlFlow 0 34) 33) anon84_Else_correct)))))
(let ((anon87_Else_correct true))
(let ((anon51_correct  (=> (= (ControlFlow 0 22) (- 0 21)) (exists ((|x#8| T@U) ) (!  (and (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType |x#8|)))) (forall ((|y#1| Int) ) (!  (=> (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |y#1|))))) (= |y#1| (U_2_int |x#8|)))
 :qid |gitissue897adfy.9:37|
 :skolemid |494|
 :pattern ( ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |y#1|)))))
)))
 :qid |gitissue897adfy.9:17|
 :skolemid |495|
 :pattern ( ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType |x#8|))))
)))))
(let ((anon88_Else_correct  (=> (and (not (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |y#0@0|)))))) (= (ControlFlow 0 26) 22)) anon51_correct)))
(let ((anon88_Then_correct  (=> (and (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |y#0@0|))))) (= (ControlFlow 0 25) 22)) anon51_correct)))
(let ((anon87_Then_correct  (and (=> (= (ControlFlow 0 27) 25) anon88_Then_correct) (=> (= (ControlFlow 0 27) 26) anon88_Else_correct))))
(let ((anon86_Then_correct  (=> (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |x#7@0|))))) (and (=> (= (ControlFlow 0 28) 27) anon87_Then_correct) (=> (= (ControlFlow 0 28) 24) anon87_Else_correct)))))
(let ((anon86_Else_correct  (=> (and (not (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |x#7@0|)))))) (= (ControlFlow 0 23) 22)) anon51_correct)))
(let ((anon85_Then_correct  (and (=> (= (ControlFlow 0 29) 28) anon86_Then_correct) (=> (= (ControlFlow 0 29) 23) anon86_Else_correct))))
(let ((anon85_Else_correct true))
(let ((anon83_Else_correct  (=> (forall ((|y#0_1_1| T@U) ) (!  (=> (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType |y#0_1_1|)))) (= (U_2_int |y#0_1_1|) |x#0_0@0|))
 :qid |gitissue897adfy.19:12|
 :skolemid |491|
 :pattern ( ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType |y#0_1_1|))))
)) (and (=> (= (ControlFlow 0 30) 29) anon85_Then_correct) (=> (= (ControlFlow 0 30) 20) anon85_Else_correct)))))
(let ((anon40_correct  (=> (forall ((|x#0_3| T@U) (|y#0_2| T@U) ) (!  (=> (and (|Set#IsMember| |missing#0_0@0| ($Box intType |x#0_3|)) (|Set#IsMember| |missing#0_0@0| ($Box intType |y#0_2|))) (= (U_2_int |x#0_3|) (U_2_int |y#0_2|)))
 :qid |gitissue897adfy.18:19|
 :skolemid |490|
 :pattern ( (|Set#IsMember| |missing#0_0@0| ($Box intType |y#0_2|)) (|Set#IsMember| |missing#0_0@0| ($Box intType |x#0_3|)))
)) (and (=> (= (ControlFlow 0 35) 34) anon83_Then_correct) (=> (= (ControlFlow 0 35) 30) anon83_Else_correct)))))
(let ((anon82_Else_correct  (=> (and (not (and (|Set#IsMember| |missing#0_0@0| ($Box intType (int_2_U |x#0_2@0|))) (|Set#IsMember| |missing#0_0@0| ($Box intType (int_2_U |y#0_1@0|))))) (= (ControlFlow 0 37) 35)) anon40_correct)))
(let ((anon82_Then_correct  (=> (and (and (|Set#IsMember| |missing#0_0@0| ($Box intType (int_2_U |x#0_2@0|))) (|Set#IsMember| |missing#0_0@0| ($Box intType (int_2_U |y#0_1@0|)))) (= (ControlFlow 0 36) 35)) anon40_correct)))
(let ((anon81_Else_correct  (=> (not (|Set#IsMember| |missing#0_0@0| ($Box intType (int_2_U |x#0_2@0|)))) (and (=> (= (ControlFlow 0 39) 36) anon82_Then_correct) (=> (= (ControlFlow 0 39) 37) anon82_Else_correct)))))
(let ((anon81_Then_correct  (=> (|Set#IsMember| |missing#0_0@0| ($Box intType (int_2_U |x#0_2@0|))) (and (=> (= (ControlFlow 0 38) 36) anon82_Then_correct) (=> (= (ControlFlow 0 38) 37) anon82_Else_correct)))))
(let ((anon80_Then_correct  (and (=> (= (ControlFlow 0 40) 38) anon81_Then_correct) (=> (= (ControlFlow 0 40) 39) anon81_Else_correct))))
(let ((anon80_Else_correct true))
(let ((anon78_Else_correct  (=> (forall ((|y#0_0_1| T@U) ) (!  (=> (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType |y#0_0_1|)))) (|Set#IsMember| |missing#0_0@0| ($Box intType |y#0_0_1|)))
 :qid |gitissue897adfy.17:12|
 :skolemid |489|
 :pattern ( (|Set#IsMember| |missing#0_0@0| ($Box intType |y#0_0_1|)))
 :pattern ( ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType |y#0_0_1|))))
)) (and (=> (= (ControlFlow 0 41) 40) anon80_Then_correct) (=> (= (ControlFlow 0 41) 19) anon80_Else_correct)))))
(let ((anon77_Then_correct  (and (=> (= (ControlFlow 0 46) (- 0 48)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Set#IsMember| |missing#0_0@0| ($Box intType (int_2_U (LitInt 0))))) (exists ((|$as#x0_0#0_0| T@U) ) (! (|Set#IsMember| |missing#0_0@0| ($Box intType |$as#x0_0#0_0|))
 :qid |gitissue897adfy.14:9|
 :skolemid |488|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Set#IsMember| |missing#0_0@0| ($Box intType (int_2_U (LitInt 0))))) (exists ((|$as#x0_0#0_0@@0| Int) ) (! (|Set#IsMember| |missing#0_0@0| ($Box intType (int_2_U |$as#x0_0#0_0@@0|)))
 :qid |gitissue897adfy.14:9|
 :skolemid |488|
))) (=> (|Set#IsMember| |missing#0_0@0| ($Box intType (int_2_U |x#0_0@0|))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |x#0_0@0|)))))) (=> (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |x#0_0@0|))))) (and (=> (= (ControlFlow 0 46) 45) anon78_Then_correct) (=> (= (ControlFlow 0 46) 41) anon78_Else_correct)))))))))
(let ((anon77_Else_correct true))
(let ((anon28_correct  (=> (= |missing#0_0@0| (|Set#Difference| |range#0_0@0| (|Set#FromBoogieMap| (|lambda#0| TInt |nums#0@@2|)))) (and (=> (= (ControlFlow 0 49) (- 0 50)) (= (|Set#Card| |missing#0_0@0|) (LitInt 1))) (=> (= (|Set#Card| |missing#0_0@0|) (LitInt 1)) (and (=> (= (ControlFlow 0 49) 46) anon77_Then_correct) (=> (= (ControlFlow 0 49) 18) anon77_Else_correct)))))))
(let ((anon76_Else_correct  (=> (and (not (|Seq#Contains| |nums#0@@2| ($Box intType (int_2_U |i#0_2@0|)))) (= (ControlFlow 0 52) 49)) anon28_correct)))
(let ((anon76_Then_correct  (=> (and (|Seq#Contains| |nums#0@@2| ($Box intType (int_2_U |i#0_2@0|))) (= (ControlFlow 0 51) 49)) anon28_correct)))
(let ((anon75_Then_correct  (and (=> (= (ControlFlow 0 53) 51) anon76_Then_correct) (=> (= (ControlFlow 0 53) 52) anon76_Else_correct))))
(let ((anon75_Else_correct true))
(let ((anon25_correct  (=> (and (= |range#0_0@0| (|Set#FromBoogieMap| (|lambda#30| TInt (LitInt 0) (|Seq#Length| |nums#0@@2|)))) (= (|Set#Card| |range#0_0@0|) (+ (|Seq#Length| |nums#0@@2|) 1))) (and (=> (= (ControlFlow 0 54) 53) anon75_Then_correct) (=> (= (ControlFlow 0 54) 17) anon75_Else_correct)))))
(let ((anon74_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0_0@0|) (<= |i#0_0@0| (|Seq#Length| |nums#0@@2|)))) (= (ControlFlow 0 56) 54)) anon25_correct)))
(let ((anon74_Then_correct  (=> (and (and (<= (LitInt 0) |i#0_0@0|) (<= |i#0_0@0| (|Seq#Length| |nums#0@@2|))) (= (ControlFlow 0 55) 54)) anon25_correct)))
(let ((anon73_Else_correct  (=> (< |i#0_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 58) 55) anon74_Then_correct) (=> (= (ControlFlow 0 58) 56) anon74_Else_correct)))))
(let ((anon73_Then_correct  (=> (<= (LitInt 0) |i#0_0@0|) (and (=> (= (ControlFlow 0 57) 55) anon74_Then_correct) (=> (= (ControlFlow 0 57) 56) anon74_Else_correct)))))
(let ((anon72_Then_correct  (and (=> (= (ControlFlow 0 59) 57) anon73_Then_correct) (=> (= (ControlFlow 0 59) 58) anon73_Else_correct))))
(let ((anon72_Else_correct true))
(let ((anon71_Then_correct  (and (=> (= (ControlFlow 0 60) 59) anon72_Then_correct) (=> (= (ControlFlow 0 60) 16) anon72_Else_correct))))
(let ((anon91_Else_correct true))
(let ((anon93_Else_correct true))
(let ((anon93_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U (LitInt 0))))))) (exists ((|x#11| T@U) ) (! (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType |x#11|))))
 :qid |gitissue897adfy.21:7|
 :skolemid |500|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U (LitInt 0))))))) (exists ((|x#11@@0| Int) ) (! (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |x#11@@0|)))))
 :qid |gitissue897adfy.21:7|
 :skolemid |500|
))) (=> (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |x#10@0|))))) (=> (and (|$let#0$canCall| $Heap@@1 |p#Z#0@0|) (= (ControlFlow 0 5) (- 0 4))) ($Is intType (int_2_U |x#10@0|) Tclass._System.nat)))))))
(let ((anon58_correct  (=> (exists ((|x#8@@0| Int) ) (!  (and (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |x#8@@0|))))) (forall ((|y#1@@0| T@U) ) (!  (=> (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType |y#1@@0|)))) (= (U_2_int |y#1@@0|) |x#8@@0|))
 :qid |gitissue897adfy.9:37|
 :skolemid |498|
 :pattern ( ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType |y#1@@0|))))
)))
 :qid |gitissue897adfy.9:17|
 :skolemid |499|
 :pattern ( ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |x#8@@0|)))))
)) (and (=> (= (ControlFlow 0 8) 5) anon93_Then_correct) (=> (= (ControlFlow 0 8) 7) anon93_Else_correct)))))
(let ((anon92_Else_correct  (=> (and (not (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |y#2@0|)))))) (= (ControlFlow 0 12) 8)) anon58_correct)))
(let ((anon92_Then_correct  (=> (and (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |y#2@0|))))) (= (ControlFlow 0 11) 8)) anon58_correct)))
(let ((anon91_Then_correct  (and (=> (= (ControlFlow 0 13) 11) anon92_Then_correct) (=> (= (ControlFlow 0 13) 12) anon92_Else_correct))))
(let ((anon90_Then_correct  (=> (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |x#9@0|))))) (and (=> (= (ControlFlow 0 14) 13) anon91_Then_correct) (=> (= (ControlFlow 0 14) 10) anon91_Else_correct)))))
(let ((anon90_Else_correct  (=> (and (not (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@1 |p#Z#0@0| ($Box intType (int_2_U |x#9@0|)))))) (= (ControlFlow 0 9) 8)) anon58_correct)))
(let ((anon89_Then_correct  (and (=> (= (ControlFlow 0 15) 14) anon90_Then_correct) (=> (= (ControlFlow 0 15) 9) anon90_Else_correct))))
(let ((anon89_Else_correct true))
(let ((anon67_Else_correct  (=> (= |let#0#0#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 (|lambda#2| (LitInt 0) (|Seq#Length| |nums#0@@2|) |nums#0@@2|) (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (=> (and ($Is HandleTypeType |let#0#0#0| (Tclass._System.___hTotalFunc1 TInt TBool)) (= |p#Z#0@0| |let#0#0#0|)) (and (and (=> (= (ControlFlow 0 61) 60) anon71_Then_correct) (=> (= (ControlFlow 0 61) 15) anon89_Then_correct)) (=> (= (ControlFlow 0 61) 3) anon89_Else_correct))))))
(let ((anon66_Then_correct true))
(let ((anon9_correct  (=> (forall ((|x#0@@2| T@U) ) (!  (and (=> (|Seq#Contains| |nums#0@@2| ($Box intType |x#0@@2|)) (<= (LitInt 0) (U_2_int |x#0@@2|))) (=> (|Seq#Contains| |nums#0@@2| ($Box intType |x#0@@2|)) (<= (U_2_int |x#0@@2|) (|Seq#Length| |nums#0@@2|))))
 :qid |gitissue897adfy.6:19|
 :skolemid |487|
 :pattern ( (|Seq#Contains| |nums#0@@2| ($Box intType |x#0@@2|)))
)) (and (and (=> (= (ControlFlow 0 70) 2) anon66_Then_correct) (=> (= (ControlFlow 0 70) 69) anon67_Then_correct)) (=> (= (ControlFlow 0 70) 61) anon67_Else_correct)))))
(let ((anon7_correct  (=> (and (and (<= (LitInt 0) |x#5@0|) (<= |x#5@0| (|Seq#Length| |nums#0@@2|))) (= (ControlFlow 0 72) 70)) anon9_correct)))
(let ((anon65_Else_correct  (=> (and (< |x#5@0| (LitInt 0)) (= (ControlFlow 0 74) 72)) anon7_correct)))
(let ((anon65_Then_correct  (=> (and (<= (LitInt 0) |x#5@0|) (= (ControlFlow 0 73) 72)) anon7_correct)))
(let ((anon64_Then_correct  (=> (|Seq#Contains| |nums#0@@2| ($Box intType (int_2_U |x#5@0|))) (and (=> (= (ControlFlow 0 75) 73) anon65_Then_correct) (=> (= (ControlFlow 0 75) 74) anon65_Else_correct)))))
(let ((anon64_Else_correct  (=> (and (=> (|Seq#Contains| |nums#0@@2| ($Box intType (int_2_U |x#5@0|))) (and (<= (LitInt 0) |x#5@0|) (<= |x#5@0| (|Seq#Length| |nums#0@@2|)))) (= (ControlFlow 0 71) 70)) anon9_correct)))
(let ((anon4_correct  (=> (= (|Set#Card| (|Set#FromBoogieMap| (|lambda#0| TInt |nums#0@@2|))) (|Seq#Length| |nums#0@@2|)) (and (=> (= (ControlFlow 0 76) 75) anon64_Then_correct) (=> (= (ControlFlow 0 76) 71) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (and (not (|Seq#Contains| |nums#0@@2| ($Box intType (int_2_U |i#0@0|)))) (= (ControlFlow 0 78) 76)) anon4_correct)))
(let ((anon63_Then_correct  (=> (and (|Seq#Contains| |nums#0@@2| ($Box intType (int_2_U |i#0@0|))) (= (ControlFlow 0 77) 76)) anon4_correct)))
(let ((anon62_Then_correct  (and (=> (= (ControlFlow 0 79) 77) anon63_Then_correct) (=> (= (ControlFlow 0 79) 78) anon63_Else_correct))))
(let ((anon62_Else_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#23| null $Heap@@1 alloc false)) (and (=> (= (ControlFlow 0 80) 79) anon62_Then_correct) (=> (= (ControlFlow 0 80) 1) anon62_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) ($Is SeqType |nums#0@@2| (TSeq Tclass._System.nat))) (and (and ($Is SetType |range#0_0| (TSet TInt)) ($IsAlloc SetType |range#0_0| (TSet TInt) $Heap@@1)) true)) (and (and (and ($Is SetType |missing#0_0| (TSet TInt)) ($IsAlloc SetType |missing#0_0| (TSet TInt) $Heap@@1)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 81) 80)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
