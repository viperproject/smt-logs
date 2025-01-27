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
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun class._module.CharChar? () T@U)
(declare-fun Tagclass._module.CharChar? () T@U)
(declare-fun Tagclass._module.CharChar () T@U)
(declare-fun tytagFamily$CharChar () T@U)
(declare-fun field$c () T@U)
(declare-fun field$d () T@U)
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
(declare-fun Tclass._module.CharChar? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.CharChar () T@U)
(declare-fun _module.CharChar.c () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.CharChar.d () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun charType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#7| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.CharChar.Recurse (T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.CharChar.Recurse#canCall| (T@U T@U T@U) Bool)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun DeclType (T@U) T@U)
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
(assert (distinct TBool TChar TagBool TagChar alloc allocName class._module.CharChar? Tagclass._module.CharChar? Tagclass._module.CharChar tytagFamily$CharChar field$c field$d)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
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
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.CharChar?)  (or (= $o null) (= (dtype $o) Tclass._module.CharChar?)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($Is refType $o Tclass._module.CharChar?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.CharChar $h) ($IsAlloc refType |c#0| Tclass._module.CharChar? $h))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.CharChar $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.CharChar? $h))
)))
(assert (= (FDim _module.CharChar.c) 0))
(assert (= (FieldOfDecl class._module.CharChar? field$c) _module.CharChar.c))
(assert  (not ($IsGhostField _module.CharChar.c)))
(assert (= (FDim _module.CharChar.d) 0))
(assert (= (FieldOfDecl class._module.CharChar? field$d) _module.CharChar.d))
(assert  (not ($IsGhostField _module.CharChar.d)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.CharChar? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.CharChar? $h@@0))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (! (= (|Set#Subset| a@@2 b) (forall ((o@@1 T@U) ) (!  (=> (|Set#IsMember| a@@2 o@@1) (|Set#IsMember| b o@@1))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@2 o@@1))
 :pattern ( (|Set#IsMember| b o@@1))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@2 b))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert ($IsGhostField alloc))
(assert (= (Ctor charType) 7))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.CharChar?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc charType ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.CharChar.c)) TChar $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.CharChar.c)))
)))
(assert (forall (($h@@2 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.CharChar?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))) ($IsAlloc charType ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.CharChar.d)) TChar $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |505|
 :pattern ( ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.CharChar.d)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#7| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (= $o@@3 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |547|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#7| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.CharChar)  (and ($Is refType |c#0@@0| Tclass._module.CharChar?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.CharChar))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.CharChar?))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@3 b@@0) (= a@@3 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@3 b@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (this T@U) (|ch#0| T@U) ) (!  (=> (or (|_module.CharChar.Recurse#canCall| $Heap this |ch#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.CharChar) ($IsAlloc refType this Tclass._module.CharChar $Heap)))) ($Is charType |ch#0| TChar)))) (and (and (=> (< (|char#ToInt| ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.CharChar.c))) (|char#ToInt| |ch#0|)) (|_module.CharChar.Recurse#canCall| $Heap this ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.CharChar.c)))) (=> (<= (|char#ToInt| |ch#0|) (|char#ToInt| ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.CharChar.c)))) (=> (< (|char#ToInt| ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.CharChar.d))) (|char#ToInt| |ch#0|)) (|_module.CharChar.Recurse#canCall| $Heap this ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.CharChar.d)))))) (= (_module.CharChar.Recurse ($LS $ly) $Heap this |ch#0|) (ite (< (|char#ToInt| ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.CharChar.c))) (|char#ToInt| |ch#0|)) (_module.CharChar.Recurse $ly $Heap this ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.CharChar.c))) (ite (< (|char#ToInt| ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.CharChar.d))) (|char#ToInt| |ch#0|)) (_module.CharChar.Recurse $ly $Heap this ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.CharChar.d))) (= |ch#0| (Lit charType (|char#FromInt| 32))))))))
 :qid |Chardfy.17:18|
 :skolemid |516|
 :pattern ( (_module.CharChar.Recurse ($LS $ly) $Heap this |ch#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall (($ly@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) (|ch#0@@0| T@U) ) (! (= (_module.CharChar.Recurse ($LS $ly@@0) $Heap@@0 this@@0 |ch#0@@0|) (_module.CharChar.Recurse $ly@@0 $Heap@@0 this@@0 |ch#0@@0|))
 :qid |Chardfy.17:18|
 :skolemid |510|
 :pattern ( (_module.CharChar.Recurse ($LS $ly@@0) $Heap@@0 this@@0 |ch#0@@0|))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@7))
)))
(assert (forall (($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.CharChar?))) ($Is charType ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.CharChar.c)) TChar))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |502|
 :pattern ( ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.CharChar.c)))
)))
(assert (forall (($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.CharChar?))) ($Is charType ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.CharChar.d)) TChar))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |504|
 :pattern ( ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.CharChar.d)))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (= (Tag Tclass._module.CharChar?) Tagclass._module.CharChar?))
(assert (= (TagFamily Tclass._module.CharChar?) tytagFamily$CharChar))
(assert (= (Tag Tclass._module.CharChar) Tagclass._module.CharChar))
(assert (= (TagFamily Tclass._module.CharChar) tytagFamily$CharChar))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@4 b@@1) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@4 o@@2) (|Set#IsMember| b@@1 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@4 o@@2))
 :pattern ( (|Set#IsMember| b@@1 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@8)) (Lit BoxType ($Box T@@3 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@8)))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc boolType v@@0 TBool h@@0)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@0 TBool h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@1 T@U) ) (! ($IsAlloc charType v@@1 TChar h@@1)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@1 TChar h@@1))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is boolType v@@2 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@2 TBool))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is charType v@@3 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@3 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |ch#0@@1| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun $LZ () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |##ch#1@0| () T@U)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |##ch#0@0| () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.CharChar.Recurse)
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
 (=> (= (ControlFlow 0 0) 25) (let ((anon11_Else_correct  (=> (<= (|char#ToInt| |ch#0@@1|) (|char#ToInt| ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.CharChar.d)))) (=> (and (= (_module.CharChar.Recurse ($LS $LZ) $Heap@@1 this@@1 |ch#0@@1|) (= |ch#0@@1| (Lit charType (|char#FromInt| 32)))) ($Is boolType (bool_2_U (_module.CharChar.Recurse ($LS $LZ) $Heap@@1 this@@1 |ch#0@@1|)) TBool)) (and (=> (= (ControlFlow 0 16) (- 0 21)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 16) (- 0 20)) true) (and (=> (= (ControlFlow 0 16) (- 0 19)) true) (and (=> (= (ControlFlow 0 16) (- 0 18)) |b$reqreads#3@0|) (=> |b$reqreads#3@0| (and (=> (= (ControlFlow 0 16) (- 0 17)) true) (=> (= (ControlFlow 0 16) (- 0 15)) true))))))))))))
(let ((anon11_Then_correct  (=> (and (< (|char#ToInt| ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.CharChar.d))) (|char#ToInt| |ch#0@@1|)) ($IsAllocBox ($Box refType this@@1) Tclass._module.CharChar? $Heap@@1)) (=> (and (and (= |b$reqreads#4@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.CharChar.d))) (= |##ch#1@0| ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.CharChar.d)))) (and ($IsAlloc charType |##ch#1@0| TChar $Heap@@1) (= |b$reqreads#5@0| (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@6) alloc)))) (= $o@@6 this@@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@6 $f@@0)))
 :qid |Chardfy.21:25|
 :skolemid |518|
))))) (and (=> (= (ControlFlow 0 8) (- 0 14)) (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (< (|char#ToInt| |##ch#1@0|) (|char#ToInt| |ch#0@@1|))))) (=> (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (< (|char#ToInt| |##ch#1@0|) (|char#ToInt| |ch#0@@1|)))) (=> (and (and (|_module.CharChar.Recurse#canCall| $Heap@@1 this@@1 ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.CharChar.d))) (= (_module.CharChar.Recurse ($LS $LZ) $Heap@@1 this@@1 |ch#0@@1|) (_module.CharChar.Recurse ($LS $LZ) $Heap@@1 this@@1 ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.CharChar.d))))) (and (|_module.CharChar.Recurse#canCall| $Heap@@1 this@@1 ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.CharChar.d))) ($Is boolType (bool_2_U (_module.CharChar.Recurse ($LS $LZ) $Heap@@1 this@@1 |ch#0@@1|)) TBool))) (and (=> (= (ControlFlow 0 8) (- 0 13)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 8) (- 0 12)) true) (and (=> (= (ControlFlow 0 8) (- 0 11)) true) (and (=> (= (ControlFlow 0 8) (- 0 10)) |b$reqreads#3@0|) (=> |b$reqreads#3@0| (and (=> (= (ControlFlow 0 8) (- 0 9)) |b$reqreads#4@0|) (=> |b$reqreads#4@0| (=> (= (ControlFlow 0 8) (- 0 7)) |b$reqreads#5@0|))))))))))))))))
(let ((anon10_Else_correct  (=> (and (<= (|char#ToInt| |ch#0@@1|) (|char#ToInt| ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.CharChar.c)))) (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.CharChar.d)))) (and (=> (= (ControlFlow 0 22) 8) anon11_Then_correct) (=> (= (ControlFlow 0 22) 16) anon11_Else_correct)))))
(let ((anon10_Then_correct  (=> (and (< (|char#ToInt| ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.CharChar.c))) (|char#ToInt| |ch#0@@1|)) ($IsAllocBox ($Box refType this@@1) Tclass._module.CharChar? $Heap@@1)) (=> (and (and (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.CharChar.c))) (= |##ch#0@0| ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.CharChar.c)))) (and ($IsAlloc charType |##ch#0@0| TChar $Heap@@1) (= |b$reqreads#2@0| (forall (($o@@7 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@7) alloc)))) (= $o@@7 this@@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@7 $f@@1)))
 :qid |Chardfy.20:20|
 :skolemid |517|
))))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (< (|char#ToInt| |##ch#0@0|) (|char#ToInt| |ch#0@@1|))))) (=> (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (< (|char#ToInt| |##ch#0@0|) (|char#ToInt| |ch#0@@1|)))) (=> (and (and (|_module.CharChar.Recurse#canCall| $Heap@@1 this@@1 ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.CharChar.c))) (= (_module.CharChar.Recurse ($LS $LZ) $Heap@@1 this@@1 |ch#0@@1|) (_module.CharChar.Recurse ($LS $LZ) $Heap@@1 this@@1 ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.CharChar.c))))) (and (|_module.CharChar.Recurse#canCall| $Heap@@1 this@@1 ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.CharChar.c))) ($Is boolType (bool_2_U (_module.CharChar.Recurse ($LS $LZ) $Heap@@1 this@@1 |ch#0@@1|)) TBool))) (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#2@0|))))))))))))
(let ((anon9_Else_correct  (=> (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.CharChar.c))) (and (=> (= (ControlFlow 0 23) 3) anon10_Then_correct) (=> (= (ControlFlow 0 23) 22) anon10_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#7| null $Heap@@1 alloc this@@1)) (and (=> (= (ControlFlow 0 24) 1) anon9_Then_correct) (=> (= (ControlFlow 0 24) 23) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.CharChar) ($IsAlloc refType this@@1 Tclass._module.CharChar $Heap@@1))) ($Is charType |ch#0@@1| TChar)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 25) 24))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
