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
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun class.Basic.U? () T@U)
(declare-fun Tagclass.Basic.U? () T@U)
(declare-fun Tagclass.Basic.U () T@U)
(declare-fun tytagFamily$U () T@U)
(declare-fun field$aa () T@U)
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
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.Basic.U? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Basic.U () T@U)
(declare-fun Basic.U.aa () T@U)
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
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun Basic.U.R (T@U T@U T@U T@U) Bool)
(declare-fun |Basic.U.R#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
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
(assert (distinct TBool TInt TagBool TagInt alloc allocName class.Basic.U? Tagclass.Basic.U? Tagclass.Basic.U tytagFamily$U field$aa)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.Basic.U?)  (or (= $o null) (= (dtype $o) Tclass.Basic.U?)))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($Is refType $o Tclass.Basic.U?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.Basic.U $h) ($IsAlloc refType |c#0| Tclass.Basic.U? $h))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($IsAlloc refType |c#0| Tclass.Basic.U $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.Basic.U? $h))
)))
(assert (= (FDim Basic.U.aa) 0))
(assert (= (FieldOfDecl class.Basic.U? field$aa) Basic.U.aa))
(assert  (not ($IsGhostField Basic.U.aa)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.Basic.U? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.Basic.U? $h@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((a@@2 T@U) (b T@U) ) (! (= (|Set#Subset| a@@2 b) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@2 o@@2) (|Set#IsMember| b o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@2 o@@2))
 :pattern ( (|Set#IsMember| b o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@2 b))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass.Basic.U?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) Basic.U.aa)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |585|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) Basic.U.aa)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this T@U) (|u#0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.Basic.U))) (or (|Basic.U.R#canCall| $prevHeap $h0 this |u#0|) ($Is refType |u#0| Tclass.Basic.U))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@2 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 |u#0|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@2) $f)))
 :qid |unknown.0:0|
 :skolemid |617|
)) (= (Basic.U.R $prevHeap $h0 this |u#0|) (Basic.U.R $prevHeap $h1 this |u#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |618|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (Basic.U.R $prevHeap $h1 this |u#0|))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f@@0))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (= $o@@3 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2572|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f@@0))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.Basic.U)  (and ($Is refType |c#0@@0| Tclass.Basic.U?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($Is refType |c#0@@0| Tclass.Basic.U))
 :pattern ( ($Is refType |c#0@@0| Tclass.Basic.U?))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@3 b@@0) (= a@@3 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@3 b@@0))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@4 c)) (not true)) (=> (and ($HeapSucc a@@4 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@4 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@4 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall (($h@@2 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.Basic.U?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) Basic.U.aa)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |584|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) Basic.U.aa)))
)))
(assert (= (Tag Tclass.Basic.U?) Tagclass.Basic.U?))
(assert (= (TagFamily Tclass.Basic.U?) tytagFamily$U))
(assert (= (Tag Tclass.Basic.U) Tagclass.Basic.U))
(assert (= (TagFamily Tclass.Basic.U) tytagFamily$U))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@5 b@@2) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@5 o@@3) (|Set#IsMember| b@@2 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@5 o@@3))
 :pattern ( (|Set#IsMember| b@@2 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@5 b@@2))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@0 T@U) ($Heap T@U) (this@@0 T@U) (|u#0@@0| T@U) ) (!  (=> (or (|Basic.U.R#canCall| $prevHeap@@0 $Heap this@@0 |u#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap@@0 $Heap)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.Basic.U) ($IsAlloc refType this@@0 Tclass.Basic.U $prevHeap@@0)))) (and ($Is refType |u#0@@0| Tclass.Basic.U) ($IsAlloc refType |u#0@@0| Tclass.Basic.U $prevHeap@@0))) (<= (LitInt 10) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 |u#0@@0|) Basic.U.aa))))))) (=> (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |u#0@@0|) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 |u#0@@0|) Basic.U.aa)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 |u#0@@0|) Basic.U.aa))) 50)) (Basic.U.R $prevHeap@@0 $Heap this@@0 |u#0@@0|)))
 :qid |TwostateFunctionsdfy.31:24|
 :skolemid |619|
 :pattern ( (Basic.U.R $prevHeap@@0 $Heap this@@0 |u#0@@0|))
))))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@1 T@U) ($Heap@@0 T@U) (this@@1 T@U) (|u#0@@1| T@U) ) (!  (=> (or (|Basic.U.R#canCall| $prevHeap@@1 $Heap@@0 this@@1 |u#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $prevHeap@@1) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@1 $Heap@@0)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.Basic.U) ($IsAlloc refType this@@1 Tclass.Basic.U $prevHeap@@1)))) ($Is refType |u#0@@1| Tclass.Basic.U)) (<= (LitInt 10) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@1 |u#0@@1|) Basic.U.aa))))))) (= (Basic.U.R $prevHeap@@1 $Heap@@0 this@@1 |u#0@@1|) (< (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |u#0@@1|) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@1 |u#0@@1|) Basic.U.aa)))) 100)))
 :qid |TwostateFunctionsdfy.31:24|
 :skolemid |621|
 :pattern ( (Basic.U.R $prevHeap@@1 $Heap@@0 this@@1 |u#0@@1|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun current$Heap () T@U)
(declare-fun |u#0@@2| () T@U)
(declare-fun previous$Heap () T@U)
(declare-fun this@@2 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(set-info :boogie-vc-id CheckWellformed$$Basic.U.R)
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
 (=> (= (ControlFlow 0 0) 26) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 17) (- 0 16)) (=> (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |u#0@@2|) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |u#0@@2|) Basic.U.aa)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |u#0@@2|) Basic.U.aa))) 50)) (Basic.U.R previous$Heap current$Heap this@@2 |u#0@@2|)))))
(let ((anon10_Else_correct  (and (=> (= (ControlFlow 0 18) (- 0 22)) (or (not (= |u#0@@2| null)) (not true))) (=> (or (not (= |u#0@@2| null)) (not true)) (=> (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |u#0@@2| Basic.U.aa))) (and (=> (= (ControlFlow 0 18) (- 0 21)) (or (not (= |u#0@@2| null)) (not true))) (=> (or (not (= |u#0@@2| null)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 20)) ($IsAlloc refType |u#0@@2| Tclass.Basic.U $Heap@@1)) (=> ($IsAlloc refType |u#0@@2| Tclass.Basic.U $Heap@@1) (=> (and (= (Basic.U.R $Heap@@1 current$Heap this@@2 |u#0@@2|) (< (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |u#0@@2|) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |u#0@@2|) Basic.U.aa)))) 100)) ($Is boolType (bool_2_U (Basic.U.R $Heap@@1 current$Heap this@@2 |u#0@@2|)) TBool)) (and (=> (= (ControlFlow 0 18) (- 0 19)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (=> (= (ControlFlow 0 18) 17) GeneratedUnifiedExit_correct)))))))))))))
(let ((anon7_correct true))
(let ((anon5_correct  (=> (and (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |u#0@@2|) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |u#0@@2|) Basic.U.aa)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |u#0@@2|) Basic.U.aa))) 50)) (and ($IsAllocBox ($Box refType this@@2) Tclass.Basic.U? current$Heap) ($IsAlloc refType |u#0@@2| Tclass.Basic.U current$Heap))) (and (=> (= (ControlFlow 0 3) (- 0 7)) ($IsAlloc refType this@@2 Tclass.Basic.U $Heap@@1)) (=> ($IsAlloc refType this@@2 Tclass.Basic.U $Heap@@1) (and (=> (= (ControlFlow 0 3) (- 0 6)) ($IsAlloc refType |u#0@@2| Tclass.Basic.U $Heap@@1)) (=> ($IsAlloc refType |u#0@@2| Tclass.Basic.U $Heap@@1) (and (=> (= (ControlFlow 0 3) (- 0 5)) (<= (LitInt 10) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |u#0@@2|) Basic.U.aa))))) (=> (<= (LitInt 10) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |u#0@@2|) Basic.U.aa)))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (and (= this@@2 this@@2) (= |u#0@@2| |u#0@@2|)) (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |u#0@@2|)) (|Set#UnionOne| |Set#Empty| ($Box refType |u#0@@2|))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |u#0@@2|)) (|Set#UnionOne| |Set#Empty| ($Box refType |u#0@@2|))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType |u#0@@2|)) (|Set#UnionOne| |Set#Empty| ($Box refType |u#0@@2|))) (and (= |u#0@@2| null) (or (not (= |u#0@@2| null)) (not true))))))) (=> (or (and (= this@@2 this@@2) (= |u#0@@2| |u#0@@2|)) (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |u#0@@2|)) (|Set#UnionOne| |Set#Empty| ($Box refType |u#0@@2|))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |u#0@@2|)) (|Set#UnionOne| |Set#Empty| ($Box refType |u#0@@2|))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType |u#0@@2|)) (|Set#UnionOne| |Set#Empty| ($Box refType |u#0@@2|))) (and (= |u#0@@2| null) (or (not (= |u#0@@2| null)) (not true)))))) (=> (or (and (= this@@2 this@@2) (= |u#0@@2| |u#0@@2|)) (|Basic.U.R#canCall| $Heap@@1 current$Heap this@@2 |u#0@@2|)) (=> (and (Basic.U.R $Heap@@1 current$Heap this@@2 |u#0@@2|) (= (ControlFlow 0 3) 1)) anon7_correct)))))))))))))
(let ((anon12_Else_correct  (=> (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |u#0@@2|) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |u#0@@2|) Basic.U.aa)))) (= (ControlFlow 0 11) 3)) anon5_correct)))
(let ((anon12_Then_correct  (=> (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |u#0@@2|) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |u#0@@2|) Basic.U.aa)))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (or (not (= |u#0@@2| null)) (not true))) (=> (or (not (= |u#0@@2| null)) (not true)) (and (=> (= (ControlFlow 0 8) (- 0 9)) ($IsAlloc refType |u#0@@2| Tclass.Basic.U $Heap@@1)) (=> ($IsAlloc refType |u#0@@2| Tclass.Basic.U $Heap@@1) (=> (= (ControlFlow 0 8) 3) anon5_correct))))))))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 12) (- 0 15)) (or (not (= |u#0@@2| null)) (not true))) (=> (or (not (= |u#0@@2| null)) (not true)) (and (=> (= (ControlFlow 0 12) (- 0 14)) (or (not (= |u#0@@2| null)) (not true))) (=> (or (not (= |u#0@@2| null)) (not true)) (and (=> (= (ControlFlow 0 12) (- 0 13)) ($IsAlloc refType |u#0@@2| Tclass.Basic.U $Heap@@1)) (=> ($IsAlloc refType |u#0@@2| Tclass.Basic.U $Heap@@1) (and (=> (= (ControlFlow 0 12) 8) anon12_Then_correct) (=> (= (ControlFlow 0 12) 11) anon12_Else_correct))))))))))
(let ((anon11_Else_correct  (=> (and (=> (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |u#0@@2|) Basic.U.aa))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |u#0@@2|) Basic.U.aa)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |u#0@@2|) Basic.U.aa))) 50)) (Basic.U.R $Heap@@1 current$Heap this@@2 |u#0@@2|)) (= (ControlFlow 0 2) 1)) anon7_correct)))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#4| null current$Heap alloc |u#0@@2|)) (and (=> (= (ControlFlow 0 23) (- 0 25)) (or (not (= |u#0@@2| null)) (not true))) (=> (or (not (= |u#0@@2| null)) (not true)) (and (=> (= (ControlFlow 0 23) (- 0 24)) ($IsAlloc refType |u#0@@2| Tclass.Basic.U $Heap@@1)) (=> ($IsAlloc refType |u#0@@2| Tclass.Basic.U $Heap@@1) (=> (<= (LitInt 10) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |u#0@@2|) Basic.U.aa)))) (and (and (=> (= (ControlFlow 0 23) 18) anon10_Else_correct) (=> (= (ControlFlow 0 23) 12) anon11_Then_correct)) (=> (= (ControlFlow 0 23) 2) anon11_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass.Basic.U) ($IsAlloc refType this@@2 Tclass.Basic.U previous$Heap)))) (=> (and (and (and ($Is refType |u#0@@2| Tclass.Basic.U) ($IsAlloc refType |u#0@@2| Tclass.Basic.U previous$Heap)) (= 1 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@1) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 26) 23))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
