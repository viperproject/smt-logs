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
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass.Reachable5.Node () T@U)
(declare-fun Tagclass.Reachable5.Path () T@U)
(declare-fun class.Reachable5.Node? () T@U)
(declare-fun Tagclass.Reachable5.Node? () T@U)
(declare-fun |##Reachable5.Path.Empty| () T@U)
(declare-fun |##Reachable5.Path.Extend| () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun tytagFamily$Path () T@U)
(declare-fun field$children () T@U)
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
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Reachable5.Path.Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.Reachable5.Node? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Reachable5.__default.Reachable (T@U T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Reachable5.__default.Reachable#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Tclass.Reachable5.Node () T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Reachable5.__default.ReachableVia (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.Reachable5.Path (T@U) T@U)
(declare-fun |Reachable5.__default.ReachableVia#canCall| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Reachable5.Node.children () T@U)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#Reachable5.Path.Extend| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Reachable5.Path.Empty_q (T@U) Bool)
(declare-fun Reachable5.Path._h14 (T@U) T@U)
(declare-fun Reachable5.Path._h13 (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun Reachable5.Path.Extend_q (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.Reachable5.Path_0 (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun $OlderTag (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TagBool TagSet TagSeq alloc allocName Tagclass.Reachable5.Node Tagclass.Reachable5.Path class.Reachable5.Node? Tagclass.Reachable5.Node? |##Reachable5.Path.Empty| |##Reachable5.Path.Extend| tytagFamily$Node tytagFamily$Path field$children)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |4025|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#Reachable5.Path.Empty|) |##Reachable5.Path.Empty|))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.Reachable5.Node?)  (or (= $o null) (= (dtype $o) Tclass.Reachable5.Node?)))
 :qid |unknown.0:0|
 :skolemid |4518|
 :pattern ( ($Is refType $o Tclass.Reachable5.Node?))
)))
(assert  (and (= (Ctor SetType) 4) (= (Ctor DatatypeTypeType) 5)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (|source#0| T@U) (|sink#0| T@U) (|S#0| T@U) ) (!  (=> (or (|Reachable5.__default.Reachable#canCall| $Heap |source#0| |sink#0| |S#0|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) ($Is refType |source#0| Tclass.Reachable5.Node)) ($Is refType |sink#0| Tclass.Reachable5.Node)) ($Is SetType |S#0| (TSet Tclass.Reachable5.Node))))) (and (forall ((|via#0| T@U) ) (!  (=> ($Is DatatypeTypeType |via#0| (Tclass.Reachable5.Path Tclass.Reachable5.Node)) (|Reachable5.__default.ReachableVia#canCall| $Heap |source#0| |via#0| |sink#0| |S#0| |S#0|))
 :qid |OlderVerificationdfy.200:12|
 :skolemid |4501|
 :pattern ( (Reachable5.__default.ReachableVia ($LS $LZ) $Heap |source#0| |via#0| |sink#0| |S#0| |S#0|))
)) (= (Reachable5.__default.Reachable $Heap |source#0| |sink#0| |S#0|) (exists ((|via#0@@0| T@U) ) (!  (and ($Is DatatypeTypeType |via#0@@0| (Tclass.Reachable5.Path Tclass.Reachable5.Node)) (Reachable5.__default.ReachableVia ($LS $LZ) $Heap |source#0| |via#0@@0| |sink#0| |S#0| |S#0|))
 :qid |OlderVerificationdfy.200:12|
 :skolemid |4500|
 :pattern ( (Reachable5.__default.ReachableVia ($LS $LZ) $Heap |source#0| |via#0@@0| |sink#0| |S#0| |S#0|))
)))))
 :qid |OlderVerificationdfy.197:19|
 :skolemid |4502|
 :pattern ( (Reachable5.__default.Reachable $Heap |source#0| |sink#0| |S#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.Reachable5.Node $h) ($IsAlloc refType |c#0| Tclass.Reachable5.Node? $h))
 :qid |unknown.0:0|
 :skolemid |4523|
 :pattern ( ($IsAlloc refType |c#0| Tclass.Reachable5.Node $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.Reachable5.Node? $h))
)))
(assert (forall ((Reachable5.Path$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#Reachable5.Path.Empty| (Tclass.Reachable5.Path Reachable5.Path$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |4527|
 :pattern ( ($IsAlloc DatatypeTypeType |#Reachable5.Path.Empty| (Tclass.Reachable5.Path Reachable5.Path$T) $h@@0))
)))
(assert (= (FDim Reachable5.Node.children) 0))
(assert (= (FieldOfDecl class.Reachable5.Node? field$children) Reachable5.Node.children))
(assert  (not ($IsGhostField Reachable5.Node.children)))
(assert (forall ((Reachable5.Path$T@@0 T@U) ) (! ($Is DatatypeTypeType |#Reachable5.Path.Empty| (Tclass.Reachable5.Path Reachable5.Path$T@@0))
 :qid |unknown.0:0|
 :skolemid |4526|
 :pattern ( ($Is DatatypeTypeType |#Reachable5.Path.Empty| (Tclass.Reachable5.Path Reachable5.Path$T@@0)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.Reachable5.Node? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4519|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.Reachable5.Node? $h@@1))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3808|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((Reachable5.Path$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Reachable5.Path.Extend| |a#6#0#0| |a#6#1#0|) (Tclass.Reachable5.Path Reachable5.Path$T@@1))  (and ($Is DatatypeTypeType |a#6#0#0| (Tclass.Reachable5.Path Reachable5.Path$T@@1)) ($IsBox |a#6#1#0| Reachable5.Path$T@@1)))
 :qid |unknown.0:0|
 :skolemid |4532|
 :pattern ( ($Is DatatypeTypeType (|#Reachable5.Path.Extend| |a#6#0#0| |a#6#1#0|) (Tclass.Reachable5.Path Reachable5.Path$T@@1)))
)))
(assert (= (Ctor SeqType) 9))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) ($Heap@@0 T@U) (|source#0@@0| T@U) (|p#0| T@U) (|sink#0@@0| T@U) (|S#0@@0| T@U) (|T#0| T@U) ) (!  (=> (or (|Reachable5.__default.ReachableVia#canCall| $Heap@@0 |source#0@@0| |p#0| |sink#0@@0| |S#0@@0| |T#0|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $Heap@@0) ($Is refType |source#0@@0| Tclass.Reachable5.Node)) ($Is DatatypeTypeType |p#0| (Tclass.Reachable5.Path Tclass.Reachable5.Node))) ($Is refType |sink#0@@0| Tclass.Reachable5.Node)) ($Is SetType |S#0@@0| (TSet Tclass.Reachable5.Node))) ($Is SetType |T#0| (TSet Tclass.Reachable5.Node))))) (and (=> (not (Reachable5.Path.Empty_q |p#0|)) (let ((|n#1| ($Unbox refType (Reachable5.Path._h14 |p#0|))))
(let ((|prefix#1| (Reachable5.Path._h13 |p#0|)))
 (=> (|Set#IsMember| |S#0@@0| ($Box refType |n#1|)) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#1|) Reachable5.Node.children)) ($Box refType |sink#0@@0|)) (|Reachable5.__default.ReachableVia#canCall| $Heap@@0 |source#0@@0| |prefix#1| |n#1| |S#0@@0| |T#0|)))))) (= (Reachable5.__default.ReachableVia ($LS $ly) $Heap@@0 |source#0@@0| |p#0| |sink#0@@0| |S#0@@0| |T#0|) (ite (Reachable5.Path.Empty_q |p#0|) (= |source#0@@0| |sink#0@@0|) (let ((|n#0| ($Unbox refType (Reachable5.Path._h14 |p#0|))))
(let ((|prefix#0| (Reachable5.Path._h13 |p#0|)))
 (and (and (|Set#IsMember| |S#0@@0| ($Box refType |n#0|)) (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0|) Reachable5.Node.children)) ($Box refType |sink#0@@0|))) (Reachable5.__default.ReachableVia $ly $Heap@@0 |source#0@@0| |prefix#0| |n#0| |S#0@@0| |T#0|))))))))
 :qid |OlderVerificationdfy.203:19|
 :skolemid |4514|
 :pattern ( (Reachable5.__default.ReachableVia ($LS $ly) $Heap@@0 |source#0@@0| |p#0| |sink#0@@0| |S#0@@0| |T#0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((d T@U) ) (! (= (Reachable5.Path.Empty_q d) (= (DatatypeCtorId d) |##Reachable5.Path.Empty|))
 :qid |unknown.0:0|
 :skolemid |4524|
 :pattern ( (Reachable5.Path.Empty_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Reachable5.Path.Extend_q d@@0) (= (DatatypeCtorId d@@0) |##Reachable5.Path.Extend|))
 :qid |unknown.0:0|
 :skolemid |4529|
 :pattern ( (Reachable5.Path.Extend_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3819|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (Reachable5.Path.Extend_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#Reachable5.Path.Extend| |a#5#0#0| |a#5#1#0|))
 :qid |OlderVerificationdfy.195:37|
 :skolemid |4530|
)))
 :qid |unknown.0:0|
 :skolemid |4531|
 :pattern ( (Reachable5.Path.Extend_q d@@1))
)))
(assert (forall (($ly@@0 T@U) ($Heap@@1 T@U) (|source#0@@1| T@U) (|p#0@@0| T@U) (|sink#0@@1| T@U) (|S#0@@1| T@U) (|T#0@@0| T@U) ) (! (= (Reachable5.__default.ReachableVia ($LS $ly@@0) $Heap@@1 |source#0@@1| |p#0@@0| |sink#0@@1| |S#0@@1| |T#0@@0|) (Reachable5.__default.ReachableVia $ly@@0 $Heap@@1 |source#0@@1| |p#0@@0| |sink#0@@1| |S#0@@1| |T#0@@0|))
 :qid |OlderVerificationdfy.203:19|
 :skolemid |4507|
 :pattern ( (Reachable5.__default.ReachableVia ($LS $ly@@0) $Heap@@1 |source#0@@1| |p#0@@0| |sink#0@@1| |S#0@@1| |T#0@@0|))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (Reachable5.Path.Empty_q d@@2) (= d@@2 |#Reachable5.Path.Empty|))
 :qid |unknown.0:0|
 :skolemid |4525|
 :pattern ( (Reachable5.Path.Empty_q d@@2))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |3839|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |3840|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3832|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((Reachable5.Path$T@@2 T@U) ) (!  (and (= (Tag (Tclass.Reachable5.Path Reachable5.Path$T@@2)) Tagclass.Reachable5.Path) (= (TagFamily (Tclass.Reachable5.Path Reachable5.Path$T@@2)) tytagFamily$Path))
 :qid |unknown.0:0|
 :skolemid |4497|
 :pattern ( (Tclass.Reachable5.Path Reachable5.Path$T@@2))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.Reachable5.Node) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass.Reachable5.Node)))
 :qid |unknown.0:0|
 :skolemid |4493|
 :pattern ( ($IsBox bx@@0 Tclass.Reachable5.Node))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.Reachable5.Node?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass.Reachable5.Node?)))
 :qid |unknown.0:0|
 :skolemid |4517|
 :pattern ( ($IsBox bx@@1 Tclass.Reachable5.Node?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.Reachable5.Node)  (and ($Is refType |c#0@@0| Tclass.Reachable5.Node?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4522|
 :pattern ( ($Is refType |c#0@@0| Tclass.Reachable5.Node))
 :pattern ( ($Is refType |c#0@@0| Tclass.Reachable5.Node?))
)))
(assert (forall ((s T@U) (x@@5 T@U) ) (! (= (|Seq#Contains| s x@@5) (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|Seq#Length| s))) (= (|Seq#Index| s i) x@@5))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |4023|
 :pattern ( (|Seq#Index| s i))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |4024|
 :pattern ( (|Seq#Contains| s x@@5))
)))
(assert (forall (($h@@2 T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass.Reachable5.Node?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) Reachable5.Node.children)) (TSeq Tclass.Reachable5.Node)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4520|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) Reachable5.Node.children)))
)))
(assert (forall (($h@@3 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.Reachable5.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) Reachable5.Node.children)) (TSeq Tclass.Reachable5.Node) $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4521|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) Reachable5.Node.children)))
)))
(assert (forall ((Reachable5.Path$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.Reachable5.Path Reachable5.Path$T@@3)) (or (Reachable5.Path.Empty_q d@@3) (Reachable5.Path.Extend_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |4542|
 :pattern ( (Reachable5.Path.Extend_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Reachable5.Path Reachable5.Path$T@@3)))
 :pattern ( (Reachable5.Path.Empty_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Reachable5.Path Reachable5.Path$T@@3)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |3900|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |3822|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3831|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |4014|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |3860|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |3861|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#Reachable5.Path.Extend| |a#4#0#0| |a#4#1#0|)) |##Reachable5.Path.Extend|)
 :qid |OlderVerificationdfy.195:37|
 :skolemid |4528|
 :pattern ( (|#Reachable5.Path.Extend| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (Reachable5.Path._h13 (|#Reachable5.Path.Extend| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |OlderVerificationdfy.195:37|
 :skolemid |4537|
 :pattern ( (|#Reachable5.Path.Extend| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (Reachable5.Path._h14 (|#Reachable5.Path.Extend| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |OlderVerificationdfy.195:37|
 :skolemid |4539|
 :pattern ( (|#Reachable5.Path.Extend| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@0) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |3866|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |3867|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |3794|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |3795|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |3800|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |3801|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((Reachable5.Path$T@@4 T@U) ) (! (= (Tclass.Reachable5.Path_0 (Tclass.Reachable5.Path Reachable5.Path$T@@4)) Reachable5.Path$T@@4)
 :qid |unknown.0:0|
 :skolemid |4498|
 :pattern ( (Tclass.Reachable5.Path Reachable5.Path$T@@4))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3818|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#Reachable5.Path.Extend| |a#9#0#0| |a#9#1#0|)))
 :qid |OlderVerificationdfy.195:37|
 :skolemid |4538|
 :pattern ( (|#Reachable5.Path.Extend| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (BoxRank |a#11#1#0|) (DtRank (|#Reachable5.Path.Extend| |a#11#0#0| |a#11#1#0|)))
 :qid |OlderVerificationdfy.195:37|
 :skolemid |4540|
 :pattern ( (|#Reachable5.Path.Extend| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((d@@4 T@U) (Reachable5.Path$T@@5 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (Reachable5.Path.Extend_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass.Reachable5.Path Reachable5.Path$T@@5) $h@@4))) ($IsAllocBox (Reachable5.Path._h14 d@@4) Reachable5.Path$T@@5 $h@@4))
 :qid |unknown.0:0|
 :skolemid |4535|
 :pattern ( ($IsAllocBox (Reachable5.Path._h14 d@@4) Reachable5.Path$T@@5 $h@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@2 T@U) (|source#0@@2| T@U) (|p#0@@1| T@U) (|sink#0@@2| T@U) (|S#0@@2| T@U) (|T#0@@1| T@U) ) (!  (=> (or (|Reachable5.__default.ReachableVia#canCall| $Heap@@2 |source#0@@2| |p#0@@1| |sink#0@@2| |S#0@@2| |T#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $Heap@@2) (and ($Is refType |source#0@@2| Tclass.Reachable5.Node) ($IsAlloc refType |source#0@@2| Tclass.Reachable5.Node $Heap@@2))) (and ($Is DatatypeTypeType |p#0@@1| (Tclass.Reachable5.Path Tclass.Reachable5.Node)) ($IsAlloc DatatypeTypeType |p#0@@1| (Tclass.Reachable5.Path Tclass.Reachable5.Node) $Heap@@2))) (and ($Is refType |sink#0@@2| Tclass.Reachable5.Node) ($IsAlloc refType |sink#0@@2| Tclass.Reachable5.Node $Heap@@2))) (and ($Is SetType |S#0@@2| (TSet Tclass.Reachable5.Node)) ($IsAlloc SetType |S#0@@2| (TSet Tclass.Reachable5.Node) $Heap@@2))) (and ($Is SetType |T#0@@1| (TSet Tclass.Reachable5.Node)) ($IsAlloc SetType |T#0@@1| (TSet Tclass.Reachable5.Node) $Heap@@2))))) (forall (($olderHeap T@U) ) (!  (=> (and (and ($IsGoodHeap $olderHeap) ($OlderTag $olderHeap)) (and (Reachable5.__default.ReachableVia $ly@@1 $Heap@@2 |source#0@@2| |p#0@@1| |sink#0@@2| |S#0@@2| |T#0@@1|) (and (and (and ($IsAlloc refType |source#0@@2| Tclass.Reachable5.Node $olderHeap) ($IsAlloc refType |sink#0@@2| Tclass.Reachable5.Node $olderHeap)) ($IsAlloc SetType |S#0@@2| (TSet Tclass.Reachable5.Node) $olderHeap)) ($IsAlloc SetType |T#0@@1| (TSet Tclass.Reachable5.Node) $olderHeap)))) ($IsAlloc DatatypeTypeType |p#0@@1| (Tclass.Reachable5.Path Tclass.Reachable5.Node) $olderHeap))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4511|
 :pattern ( ($OlderTag $olderHeap))
)))
 :qid |OlderVerificationdfy.203:19|
 :skolemid |4512|
 :pattern ( (Reachable5.__default.ReachableVia $ly@@1 $Heap@@2 |source#0@@2| |p#0@@1| |sink#0@@2| |S#0@@2| |T#0@@1|))
))))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |3877|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((bx@@4 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |3825|
 :pattern ( ($IsBox bx@@4 (TSet t@@5)))
)))
(assert (forall ((bx@@5 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@5 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@5)) bx@@5) ($Is SeqType ($Unbox SeqType bx@@5) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |3828|
 :pattern ( ($IsBox bx@@5 (TSeq t@@6)))
)))
(assert (forall ((Reachable5.Path$T@@6 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass.Reachable5.Path Reachable5.Path$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass.Reachable5.Path Reachable5.Path$T@@6))))
 :qid |unknown.0:0|
 :skolemid |4499|
 :pattern ( ($IsBox bx@@6 (Tclass.Reachable5.Path Reachable5.Path$T@@6)))
)))
(assert (forall ((d@@6 T@U) (Reachable5.Path$T@@7 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (Reachable5.Path.Extend_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass.Reachable5.Path Reachable5.Path$T@@7) $h@@5))) ($IsAlloc DatatypeTypeType (Reachable5.Path._h13 d@@6) (Tclass.Reachable5.Path Reachable5.Path$T@@7) $h@@5))
 :qid |unknown.0:0|
 :skolemid |4534|
 :pattern ( ($IsAlloc DatatypeTypeType (Reachable5.Path._h13 d@@6) (Tclass.Reachable5.Path Reachable5.Path$T@@7) $h@@5))
)))
(assert (= (Tag Tclass.Reachable5.Node) Tagclass.Reachable5.Node))
(assert (= (TagFamily Tclass.Reachable5.Node) tytagFamily$Node))
(assert (= (Tag Tclass.Reachable5.Node?) Tagclass.Reachable5.Node?))
(assert (= (TagFamily Tclass.Reachable5.Node?) tytagFamily$Node))
(assert (= |#Reachable5.Path.Empty| (Lit DatatypeTypeType |#Reachable5.Path.Empty|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#Reachable5.Path.Extend| (Lit DatatypeTypeType |a#7#0#0|) (Lit BoxType |a#7#1#0|)) (Lit DatatypeTypeType (|#Reachable5.Path.Extend| |a#7#0#0| |a#7#1#0|)))
 :qid |OlderVerificationdfy.195:37|
 :skolemid |4536|
 :pattern ( (|#Reachable5.Path.Extend| (Lit DatatypeTypeType |a#7#0#0|) (Lit BoxType |a#7#1#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3809|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |4015|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@3))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8035|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((Reachable5.Path$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#Reachable5.Path.Extend| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Reachable5.Path Reachable5.Path$T@@8) $h@@6)  (and ($IsAlloc DatatypeTypeType |a#6#0#0@@0| (Tclass.Reachable5.Path Reachable5.Path$T@@8) $h@@6) ($IsAllocBox |a#6#1#0@@0| Reachable5.Path$T@@8 $h@@6))))
 :qid |unknown.0:0|
 :skolemid |4533|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Reachable5.Path.Extend| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Reachable5.Path Reachable5.Path$T@@8) $h@@6))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |3856|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |3846|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |3847|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@4)))
)))
(assert (forall ((s@@2 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |4060|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |3835|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@3 () T@U)
(declare-fun |source#0@@3| () T@U)
(declare-fun |sink#0@@3| () T@U)
(declare-fun |S#0@@3| () T@U)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |via#1@0| () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Reachable5.__default.Reachable)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon5_correct  (=> (and (and (= (Reachable5.__default.Reachable $Heap@@3 |source#0@@3| |sink#0@@3| |S#0@@3|) (exists ((|via#2| T@U) ) (!  (and ($Is DatatypeTypeType |via#2| (Tclass.Reachable5.Path Tclass.Reachable5.Node)) (Reachable5.__default.ReachableVia ($LS $LZ) $Heap@@3 |source#0@@3| |via#2| |sink#0@@3| |S#0@@3| |S#0@@3|))
 :qid |OlderVerificationdfy.200:12|
 :skolemid |4505|
 :pattern ( (Reachable5.__default.ReachableVia ($LS $LZ) $Heap@@3 |source#0@@3| |via#2| |sink#0@@3| |S#0@@3| |S#0@@3|))
))) (forall ((|via#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |via#2@@0| (Tclass.Reachable5.Path Tclass.Reachable5.Node)) (|Reachable5.__default.ReachableVia#canCall| $Heap@@3 |source#0@@3| |via#2@@0| |sink#0@@3| |S#0@@3| |S#0@@3|))
 :qid |OlderVerificationdfy.200:12|
 :skolemid |4506|
 :pattern ( (Reachable5.__default.ReachableVia ($LS $LZ) $Heap@@3 |source#0@@3| |via#2@@0| |sink#0@@3| |S#0@@3| |S#0@@3|))
))) (and ($Is boolType (bool_2_U (Reachable5.__default.Reachable $Heap@@3 |source#0@@3| |sink#0@@3| |S#0@@3|)) TBool) (= (ControlFlow 0 3) (- 0 2)))) |b$reqreads#0@1|)))
(let ((anon8_Else_correct  (=> (not (and ($Is DatatypeTypeType |via#1@0| (Tclass.Reachable5.Path Tclass.Reachable5.Node)) ($IsAlloc DatatypeTypeType |via#1@0| (Tclass.Reachable5.Path Tclass.Reachable5.Node) $Heap@@3))) (=> (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 5) 3)) anon5_correct))))
(let ((anon8_Then_correct  (=> (and (and ($Is DatatypeTypeType |via#1@0| (Tclass.Reachable5.Path Tclass.Reachable5.Node)) ($IsAlloc DatatypeTypeType |via#1@0| (Tclass.Reachable5.Path Tclass.Reachable5.Node) $Heap@@3)) ($IsAlloc refType |source#0@@3| Tclass.Reachable5.Node $Heap@@3)) (=> (and (and (and ($IsAlloc DatatypeTypeType |via#1@0| (Tclass.Reachable5.Path Tclass.Reachable5.Node) $Heap@@3) ($IsAlloc refType |sink#0@@3| Tclass.Reachable5.Node $Heap@@3)) (and ($IsAlloc SetType |S#0@@3| (TSet Tclass.Reachable5.Node) $Heap@@3) ($IsAlloc SetType |S#0@@3| (TSet Tclass.Reachable5.Node) $Heap@@3))) (and (and (= |b$reqreads#0@0| (forall (($o@@4 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@4) alloc)))) (or (|Set#IsMember| |S#0@@3| ($Box refType $o@@4)) (|Set#IsMember| |S#0@@3| ($Box refType $o@@4)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@4 $f@@0)))
 :qid |OlderVerificationdfy.200:31|
 :skolemid |4503|
))) (|Reachable5.__default.ReachableVia#canCall| $Heap@@3 |source#0@@3| |via#1@0| |sink#0@@3| |S#0@@3| |S#0@@3|)) (and (= |b$reqreads#0@1| |b$reqreads#0@0|) (= (ControlFlow 0 4) 3)))) anon5_correct))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@3 alloc |S#0@@3|)) (and (and (=> (= (ControlFlow 0 6) 1) anon7_Then_correct) (=> (= (ControlFlow 0 6) 4) anon8_Then_correct)) (=> (= (ControlFlow 0 6) 5) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) ($Is refType |source#0@@3| Tclass.Reachable5.Node)) (and (and ($Is refType |sink#0@@3| Tclass.Reachable5.Node) ($Is SetType |S#0@@3| (TSet Tclass.Reachable5.Node))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 7) 6)))) anon0_correct)))
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
