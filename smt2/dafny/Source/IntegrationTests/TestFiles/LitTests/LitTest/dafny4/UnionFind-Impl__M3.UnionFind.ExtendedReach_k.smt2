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
(declare-fun TagSet () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.M3.Element () T@U)
(declare-fun Tagclass.M3.Contents () T@U)
(declare-fun Tagclass.M3.Element? () T@U)
(declare-fun Tagclass.M3.UnionFind? () T@U)
(declare-fun Tagclass.M3.UnionFind () T@U)
(declare-fun |##M3.Contents.Root| () T@U)
(declare-fun |##M3.Contents.Link| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Element () T@U)
(declare-fun tytagFamily$Contents () T@U)
(declare-fun tytagFamily$UnionFind () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.M3.UnionFind? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.M3.Element? () T@U)
(declare-fun Tclass.M3.UnionFind () T@U)
(declare-fun Tclass.M3.Element () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M3.__default.GoodCMap (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |M3.__default.GoodCMap#canCall| (T@U) Bool)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M3.Contents () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun M3.Contents.Link_q (T@U) Bool)
(declare-fun M3.Contents.next (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M3.Contents.Root_q (T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |#M3.Contents.Root| (Int) T@U)
(declare-fun |#M3.Contents.Link| (T@U) T@U)
(declare-fun M3.UnionFind.Reaches (T@U T@U Int T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |M3.UnionFind.Reaches#canCall| (T@U Int T@U T@U T@U) Bool)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun M3.Contents.depth (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
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
(assert (distinct TagSet TagMap alloc Tagclass._System.nat |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M3.Element Tagclass.M3.Contents Tagclass.M3.Element? Tagclass.M3.UnionFind? Tagclass.M3.UnionFind |##M3.Contents.Root| |##M3.Contents.Link| tytagFamily$nat |tytagFamily$_tuple#2| tytagFamily$Element tytagFamily$Contents tytagFamily$UnionFind)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |2705|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |2828|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.M3.UnionFind?)  (or (= $o null) (= (dtype $o) Tclass.M3.UnionFind?)))
 :qid |unknown.0:0|
 :skolemid |2914|
 :pattern ( ($Is refType $o Tclass.M3.UnionFind?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.M3.Element?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.M3.Element?)))
 :qid |unknown.0:0|
 :skolemid |3612|
 :pattern ( ($Is refType $o@@0 Tclass.M3.Element?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.M3.UnionFind $h@@0) ($IsAlloc refType |c#0| Tclass.M3.UnionFind? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3588|
 :pattern ( ($IsAlloc refType |c#0| Tclass.M3.UnionFind $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.M3.UnionFind? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.M3.Element $h@@1) ($IsAlloc refType |c#0@@0| Tclass.M3.Element? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3617|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M3.Element $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M3.Element? $h@@1))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |2816|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (= (Ctor MapType) 5) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|C#0| T@U) ) (!  (=> (or (|M3.__default.GoodCMap#canCall| (Lit MapType |C#0|)) (and (< 3 $FunctionContextHeight) ($Is MapType |C#0| (TMap Tclass.M3.Element Tclass.M3.Contents)))) (= (M3.__default.GoodCMap (Lit MapType |C#0|)) (forall ((|f#1| T@U) ) (!  (=> ($Is refType |f#1| Tclass.M3.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C#0|) ($Box refType |f#1|)) (M3.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0|)) ($Box refType |f#1|))))) (|Set#IsMember| (|Map#Domain| |C#0|) ($Box refType (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0|)) ($Box refType |f#1|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |2903|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0|) ($Box refType |f#1|))))
))))
 :qid |UnionFinddfy.48:28|
 :weight 3
 :skolemid |2904|
 :pattern ( (M3.__default.GoodCMap (Lit MapType |C#0|)))
))))
(assert  (and (and (and (= (Ctor FieldType) 7) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.M3.UnionFind? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2915|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.M3.UnionFind? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.M3.Element? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3613|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.M3.Element? $h@@3))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2377|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2375|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o T@U) ) (!  (=> (|Set#IsMember| a o) (|Set#IsMember| b o))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |2506|
 :pattern ( (|Set#IsMember| a o))
 :pattern ( (|Set#IsMember| b o))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |2507|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@4)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@4) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@4))))
 :qid |unknown.0:0|
 :skolemid |2817|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@4))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |2809|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (M3.Contents.Root_q d@@1) (= (DatatypeCtorId d@@1) |##M3.Contents.Root|))
 :qid |unknown.0:0|
 :skolemid |3590|
 :pattern ( (M3.Contents.Root_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (M3.Contents.Link_q d@@2) (= (DatatypeCtorId d@@2) |##M3.Contents.Link|))
 :qid |unknown.0:0|
 :skolemid |3599|
 :pattern ( (M3.Contents.Link_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2386|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |2810|
)))
 :qid |unknown.0:0|
 :skolemid |2811|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (= (Ctor SetType) 9))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2406|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2407|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (M3.Contents.Root_q d@@4) (exists ((|a#1#0#0@@0| Int) ) (! (= d@@4 (|#M3.Contents.Root| |a#1#0#0@@0|))
 :qid |UnionFinddfy.42:28|
 :skolemid |3591|
)))
 :qid |unknown.0:0|
 :skolemid |3592|
 :pattern ( (M3.Contents.Root_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (M3.Contents.Link_q d@@5) (exists ((|a#6#0#0| T@U) ) (! (= d@@5 (|#M3.Contents.Link| |a#6#0#0|))
 :qid |UnionFinddfy.42:47|
 :skolemid |3600|
)))
 :qid |unknown.0:0|
 :skolemid |3601|
 :pattern ( (M3.Contents.Link_q d@@5))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |2704|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2399|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly T@U) (this T@U) (|d#0| Int) (|e#0| T@U) (|r#0| T@U) (|C#0@@0| T@U) ) (!  (=> (or (|M3.UnionFind.Reaches#canCall| (Lit refType this) (LitInt |d#0|) (Lit refType |e#0|) (Lit refType |r#0|) (Lit MapType |C#0@@0|)) (and (< 4 $FunctionContextHeight) (and (and (and (and (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass.M3.UnionFind)) (<= (LitInt 0) |d#0|)) ($Is refType |e#0| Tclass.M3.Element)) ($Is refType |r#0| Tclass.M3.Element)) ($Is MapType |C#0@@0| (TMap Tclass.M3.Element Tclass.M3.Contents))) (and (U_2_bool (Lit boolType (bool_2_U (M3.__default.GoodCMap (Lit MapType |C#0@@0|))))) (|Set#IsMember| (|Map#Domain| |C#0@@0|) ($Box refType |e#0|)))))) (and (=> (not (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@0|)) ($Box refType (Lit refType |e#0|)))))) (let ((|next#5| (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@0|)) ($Box refType (Lit refType |e#0|)))))))
 (=> (U_2_bool (Lit boolType (bool_2_U  (or (not (= |d#0| 0)) (not true))))) (|M3.UnionFind.Reaches#canCall| (Lit refType this) (LitInt (- |d#0| 1)) |next#5| (Lit refType |r#0|) (Lit MapType |C#0@@0|))))) (= (M3.UnionFind.Reaches ($LS $ly) (Lit refType this) (LitInt |d#0|) (Lit refType |e#0|) (Lit refType |r#0|) (Lit MapType |C#0@@0|)) (ite (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@0|)) ($Box refType (Lit refType |e#0|))))) (= (Lit refType |e#0|) (Lit refType |r#0|)) (let ((|next#4| (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@0|)) ($Box refType (Lit refType |e#0|)))))))
 (and (or (not (= |d#0| 0)) (not true)) (M3.UnionFind.Reaches ($LS $ly) (Lit refType this) (LitInt (- |d#0| 1)) |next#4| (Lit refType |r#0|) (Lit MapType |C#0@@0|))))))))
 :qid |UnionFinddfy.70:44|
 :weight 3
 :skolemid |3420|
 :pattern ( (M3.UnionFind.Reaches ($LS $ly) (Lit refType this) (LitInt |d#0|) (Lit refType |e#0|) (Lit refType |r#0|) (Lit MapType |C#0@@0|)))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |2703|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.M3.Element) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass.M3.Element)))
 :qid |unknown.0:0|
 :skolemid |2896|
 :pattern ( ($IsBox bx@@1 Tclass.M3.Element))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M3.Contents) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.M3.Contents)))
 :qid |unknown.0:0|
 :skolemid |2897|
 :pattern ( ($IsBox bx@@2 Tclass.M3.Contents))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M3.Element?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.M3.Element?)))
 :qid |unknown.0:0|
 :skolemid |2900|
 :pattern ( ($IsBox bx@@3 Tclass.M3.Element?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M3.UnionFind?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.M3.UnionFind?)))
 :qid |unknown.0:0|
 :skolemid |2913|
 :pattern ( ($IsBox bx@@4 Tclass.M3.UnionFind?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.M3.UnionFind) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.M3.UnionFind)))
 :qid |unknown.0:0|
 :skolemid |2916|
 :pattern ( ($IsBox bx@@5 Tclass.M3.UnionFind))
)))
(assert (forall ((|a#2#0#0@@1| Int) ) (! (= ($Is DatatypeTypeType (|#M3.Contents.Root| |a#2#0#0@@1|) Tclass.M3.Contents) ($Is intType (int_2_U |a#2#0#0@@1|) Tclass._System.nat))
 :qid |UnionFinddfy.42:28|
 :skolemid |3593|
 :pattern ( ($Is DatatypeTypeType (|#M3.Contents.Root| |a#2#0#0@@1|) Tclass.M3.Contents))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Contents.Link| |a#7#0#0|) Tclass.M3.Contents) ($Is refType |a#7#0#0| Tclass.M3.Element))
 :qid |UnionFinddfy.42:47|
 :skolemid |3602|
 :pattern ( ($Is DatatypeTypeType (|#M3.Contents.Link| |a#7#0#0|) Tclass.M3.Contents))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.M3.UnionFind)  (and ($Is refType |c#0@@1| Tclass.M3.UnionFind?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3587|
 :pattern ( ($Is refType |c#0@@1| Tclass.M3.UnionFind))
 :pattern ( ($Is refType |c#0@@1| Tclass.M3.UnionFind?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.M3.Element)  (and ($Is refType |c#0@@2| Tclass.M3.Element?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3616|
 :pattern ( ($Is refType |c#0@@2| Tclass.M3.Element))
 :pattern ( ($Is refType |c#0@@2| Tclass.M3.Element?))
)))
(assert (forall ((m@@1 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@1 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@1) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |2657|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@1) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@1) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |2658|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |2659|
 :pattern ( (|Map#Equal| m@@1 |m'|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@0 T@U) (this@@0 T@U) (|d#0@@0| Int) (|e#0@@0| T@U) (|r#0@@0| T@U) (|C#0@@1| T@U) ) (!  (=> (or (|M3.UnionFind.Reaches#canCall| this@@0 |d#0@@0| |e#0@@0| |r#0@@0| |C#0@@1|) (and (< 4 $FunctionContextHeight) (and (and (and (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.M3.UnionFind)) (<= (LitInt 0) |d#0@@0|)) ($Is refType |e#0@@0| Tclass.M3.Element)) ($Is refType |r#0@@0| Tclass.M3.Element)) ($Is MapType |C#0@@1| (TMap Tclass.M3.Element Tclass.M3.Contents))) (and (M3.__default.GoodCMap |C#0@@1|) (|Set#IsMember| (|Map#Domain| |C#0@@1|) ($Box refType |e#0@@0|)))))) (and (=> (not (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@1|) ($Box refType |e#0@@0|))))) (let ((|next#1| (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@1|) ($Box refType |e#0@@0|))))))
 (=> (or (not (= |d#0@@0| 0)) (not true)) (|M3.UnionFind.Reaches#canCall| this@@0 (- |d#0@@0| 1) |next#1| |r#0@@0| |C#0@@1|)))) (= (M3.UnionFind.Reaches ($LS $ly@@0) this@@0 |d#0@@0| |e#0@@0| |r#0@@0| |C#0@@1|) (ite (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@1|) ($Box refType |e#0@@0|)))) (= |e#0@@0| |r#0@@0|) (let ((|next#0| (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@1|) ($Box refType |e#0@@0|))))))
 (and (or (not (= |d#0@@0| 0)) (not true)) (M3.UnionFind.Reaches $ly@@0 this@@0 (- |d#0@@0| 1) |next#0| |r#0@@0| |C#0@@1|)))))))
 :qid |UnionFinddfy.70:44|
 :skolemid |3418|
 :pattern ( (M3.UnionFind.Reaches ($LS $ly@@0) this@@0 |d#0@@0| |e#0@@0| |r#0@@0| |C#0@@1|))
))))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2510|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((m@@2 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@2 |m'@@0|) (= m@@2 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |2660|
 :pattern ( (|Map#Equal| m@@2 |m'@@0|))
)))
(assert (forall (($ly@@1 T@U) (this@@1 T@U) (|d#0@@1| Int) (|e#0@@1| T@U) (|r#0@@1| T@U) (|C#0@@2| T@U) ) (! (= (M3.UnionFind.Reaches ($LS $ly@@1) this@@1 |d#0@@1| |e#0@@1| |r#0@@1| |C#0@@2|) (M3.UnionFind.Reaches $ly@@1 this@@1 |d#0@@1| |e#0@@1| |r#0@@1| |C#0@@2|))
 :qid |UnionFinddfy.70:44|
 :skolemid |3414|
 :pattern ( (M3.UnionFind.Reaches ($LS $ly@@1) this@@1 |d#0@@1| |e#0@@1| |r#0@@1| |C#0@@2|))
)))
(assert (forall ((|a#2#0#0@@2| Int) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#M3.Contents.Root| |a#2#0#0@@2|) Tclass.M3.Contents $h@@5) ($IsAlloc intType (int_2_U |a#2#0#0@@2|) Tclass._System.nat $h@@5)))
 :qid |UnionFinddfy.42:28|
 :skolemid |3594|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M3.Contents.Root| |a#2#0#0@@2|) Tclass.M3.Contents $h@@5))
)))
(assert (forall ((|a#7#0#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#M3.Contents.Link| |a#7#0#0@@0|) Tclass.M3.Contents $h@@6) ($IsAlloc refType |a#7#0#0@@0| Tclass.M3.Element $h@@6)))
 :qid |UnionFinddfy.42:47|
 :skolemid |3603|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M3.Contents.Link| |a#7#0#0@@0|) Tclass.M3.Contents $h@@6))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.M3.Contents) (or (M3.Contents.Root_q d@@6) (M3.Contents.Link_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |3608|
 :pattern ( (M3.Contents.Link_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M3.Contents))
 :pattern ( (M3.Contents.Root_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M3.Contents))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2398|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@6) ($IsAllocBox bx@@6 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2427|
 :pattern ( (|Set#IsMember| v@@2 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2428|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@1 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@1 u@@1)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |2369|
 :pattern ( (TMap t@@1 u@@1))
)))
(assert (forall ((t@@2 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |2370|
 :pattern ( (TMap t@@2 u@@2))
)))
(assert (forall ((t@@3 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@3 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |2371|
 :pattern ( (TMap t@@3 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |2808|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |2813|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |2814|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |2823|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |2825|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2361|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2362|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((|a#0#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#M3.Contents.Root| |a#0#0#0@@0|)) |##M3.Contents.Root|)
 :qid |UnionFinddfy.42:28|
 :skolemid |3589|
 :pattern ( (|#M3.Contents.Root| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) ) (! (= (M3.Contents.depth (|#M3.Contents.Root| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |UnionFinddfy.42:28|
 :skolemid |3597|
 :pattern ( (|#M3.Contents.Root| |a#4#0#0@@0|))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Contents.Link| |a#5#0#0|)) |##M3.Contents.Link|)
 :qid |UnionFinddfy.42:47|
 :skolemid |3598|
 :pattern ( (|#M3.Contents.Link| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (M3.Contents.next (|#M3.Contents.Link| |a#9#0#0|)) |a#9#0#0|)
 :qid |UnionFinddfy.42:47|
 :skolemid |3606|
 :pattern ( (|#M3.Contents.Link| |a#9#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2385|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (t1@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc MapType v@@3 (TMap t0@@2 t1@@0) h@@1) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@3) bx@@7) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@7) t1@@0 h@@1) ($IsAllocBox bx@@7 t0@@2 h@@1)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |2435|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@7))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@3) bx@@7))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |2436|
 :pattern ( ($IsAlloc MapType v@@3 (TMap t0@@2 t1@@0) h@@1))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2824|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0@@1| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0@@1| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2826|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0@@1| |a#7#1#0|))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |2645|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((bx@@8 T@U) (s T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@8 (TMap s t@@6)) (and (= ($Box MapType ($Unbox MapType bx@@8)) bx@@8) ($Is MapType ($Unbox MapType bx@@8) (TMap s t@@6))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |2396|
 :pattern ( ($IsBox bx@@8 (TMap s t@@6)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |2815|
 :pattern ( ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@3 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@1 t2 (MapType1Store t0@@3 t1@@1 t2 m@@3 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@4 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@4 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@4 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@5 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@5 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@5 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |4532|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |2812|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@6) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |2633|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |2634|
 :pattern ( (|Map#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((v@@4 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@7) v@@4)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |2635|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |2636|
 :pattern ( (|Map#Values| m@@7))
)))
(assert (forall ((m@@8 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@8) item)  (and (|Set#IsMember| (|Map#Domain| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |2644|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@8) item))
)))
(assert (forall ((m@@9 T@U) (v@@5 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@9) v@@5) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@9) u@@5) (= v@@5 (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |2642|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@9) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |2643|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@9) v@@5))
)))
(assert (forall ((m@@10 T@U) (u@@6 T@U) (|u'| T@U) (v@@6 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@6)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@6)) |u'|) v@@6))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@6)) |u'|) (|Set#IsMember| (|Map#Domain| m@@10) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@6)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@10) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |2650|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@6)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@6)) |u'|))
)))
(assert (forall ((d@@7 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@7)) (DtRank d@@7))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2444|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@7)))
)))
(assert (forall ((bx@@10 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2392|
 :pattern ( ($IsBox bx@@10 (TSet t@@7)))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@7 (TMap t0@@4 t1@@2)) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@11) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@11) t1@@2) ($IsBox bx@@11 t0@@4)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |2415|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@11))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@11))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |2416|
 :pattern ( ($Is MapType v@@7 (TMap t0@@4 t1@@2)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.M3.Element) Tagclass.M3.Element))
(assert (= (TagFamily Tclass.M3.Element) tytagFamily$Element))
(assert (= (Tag Tclass.M3.Contents) Tagclass.M3.Contents))
(assert (= (TagFamily Tclass.M3.Contents) tytagFamily$Contents))
(assert (= (Tag Tclass.M3.Element?) Tagclass.M3.Element?))
(assert (= (TagFamily Tclass.M3.Element?) tytagFamily$Element))
(assert (= (Tag Tclass.M3.UnionFind?) Tagclass.M3.UnionFind?))
(assert (= (TagFamily Tclass.M3.UnionFind?) tytagFamily$UnionFind))
(assert (= (Tag Tclass.M3.UnionFind) Tagclass.M3.UnionFind))
(assert (= (TagFamily Tclass.M3.UnionFind) tytagFamily$UnionFind))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@1 o@@0) (|Set#IsMember| b@@1 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2508|
 :pattern ( (|Set#IsMember| a@@1 o@@0))
 :pattern ( (|Set#IsMember| b@@1 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2509|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((d@@8 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_System.Tuple2.___hMake2_q d@@8) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@7)
 :qid |unknown.0:0|
 :skolemid |2818|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@7))
)))) ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@7))
 :qid |unknown.0:0|
 :skolemid |2819|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@7))
)))
(assert (forall ((d@@9 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_System.Tuple2.___hMake2_q d@@9) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@8)
 :qid |unknown.0:0|
 :skolemid |2820|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@8))
)))) ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@8))
 :qid |unknown.0:0|
 :skolemid |2821|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@8))
)))
(assert (forall ((d@@10 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (M3.Contents.Root_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass.M3.Contents $h@@9))) ($IsAlloc intType (int_2_U (M3.Contents.depth d@@10)) Tclass._System.nat $h@@9))
 :qid |unknown.0:0|
 :skolemid |3595|
 :pattern ( ($IsAlloc intType (int_2_U (M3.Contents.depth d@@10)) Tclass._System.nat $h@@9))
)))
(assert (forall ((d@@11 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (M3.Contents.Link_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass.M3.Contents $h@@10))) ($IsAlloc refType (M3.Contents.next d@@11) Tclass.M3.Element $h@@10))
 :qid |unknown.0:0|
 :skolemid |3604|
 :pattern ( ($IsAlloc refType (M3.Contents.next d@@11) Tclass.M3.Element $h@@10))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2822|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2378|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0@@0| Int) ) (! (= (|#M3.Contents.Root| (LitInt |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#M3.Contents.Root| |a#3#0#0@@0|)))
 :qid |UnionFinddfy.42:28|
 :skolemid |3596|
 :pattern ( (|#M3.Contents.Root| (LitInt |a#3#0#0@@0|)))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (|#M3.Contents.Link| (Lit refType |a#8#0#0|)) (Lit DatatypeTypeType (|#M3.Contents.Link| |a#8#0#0|)))
 :qid |UnionFinddfy.42:47|
 :skolemid |3605|
 :pattern ( (|#M3.Contents.Link| (Lit refType |a#8#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2376|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|C#0@@3| T@U) ) (!  (=> (or (|M3.__default.GoodCMap#canCall| |C#0@@3|) (and (< 3 $FunctionContextHeight) ($Is MapType |C#0@@3| (TMap Tclass.M3.Element Tclass.M3.Contents)))) (= (M3.__default.GoodCMap |C#0@@3|) (forall ((|f#0| T@U) ) (!  (=> ($Is refType |f#0| Tclass.M3.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C#0@@3|) ($Box refType |f#0|)) (M3.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@3|) ($Box refType |f#0|))))) (|Set#IsMember| (|Map#Domain| |C#0@@3|) ($Box refType (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@3|) ($Box refType |f#0|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |2901|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@3|) ($Box refType |f#0|))))
))))
 :qid |UnionFinddfy.48:28|
 :skolemid |2902|
 :pattern ( (M3.__default.GoodCMap |C#0@@3|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@2 T@U) (this@@2 T@U) (|d#0@@2| Int) (|e#0@@2| T@U) (|r#0@@2| T@U) (|C#0@@4| T@U) ) (!  (=> (or (|M3.UnionFind.Reaches#canCall| this@@2 (LitInt |d#0@@2|) (Lit refType |e#0@@2|) (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|)) (and (< 4 $FunctionContextHeight) (and (and (and (and (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass.M3.UnionFind)) (<= (LitInt 0) |d#0@@2|)) ($Is refType |e#0@@2| Tclass.M3.Element)) ($Is refType |r#0@@2| Tclass.M3.Element)) ($Is MapType |C#0@@4| (TMap Tclass.M3.Element Tclass.M3.Contents))) (and (U_2_bool (Lit boolType (bool_2_U (M3.__default.GoodCMap (Lit MapType |C#0@@4|))))) (|Set#IsMember| (|Map#Domain| |C#0@@4|) ($Box refType |e#0@@2|)))))) (and (=> (not (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@4|)) ($Box refType (Lit refType |e#0@@2|)))))) (let ((|next#3| (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@4|)) ($Box refType (Lit refType |e#0@@2|)))))))
 (=> (U_2_bool (Lit boolType (bool_2_U  (or (not (= |d#0@@2| 0)) (not true))))) (|M3.UnionFind.Reaches#canCall| this@@2 (LitInt (- |d#0@@2| 1)) |next#3| (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|))))) (= (M3.UnionFind.Reaches ($LS $ly@@2) this@@2 (LitInt |d#0@@2|) (Lit refType |e#0@@2|) (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|)) (ite (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@4|)) ($Box refType (Lit refType |e#0@@2|))))) (= (Lit refType |e#0@@2|) (Lit refType |r#0@@2|)) (let ((|next#2| (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |C#0@@4|)) ($Box refType (Lit refType |e#0@@2|)))))))
 (and (or (not (= |d#0@@2| 0)) (not true)) (M3.UnionFind.Reaches ($LS $ly@@2) this@@2 (LitInt (- |d#0@@2| 1)) |next#2| (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|))))))))
 :qid |UnionFinddfy.70:44|
 :weight 3
 :skolemid |3419|
 :pattern ( (M3.UnionFind.Reaches ($LS $ly@@2) this@@2 (LitInt |d#0@@2|) (Lit refType |e#0@@2|) (Lit refType |r#0@@2|) (Lit MapType |C#0@@4|)))
))))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((k@@0 T@U) (v@@8 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@11) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@8)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |2637|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |2638|
 :pattern ( (|Map#Items| m@@11))
)))
(assert (forall ((v@@9 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@9 (TMap t0@@5 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@9) (TSet t0@@5)) ($Is SetType (|Map#Values| v@@9) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@9) (TSet (Tclass._System.Tuple2 t0@@5 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |2417|
 :pattern ( ($Is MapType v@@9 (TMap t0@@5 t1@@3)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@3 () T@U)
(declare-fun |d1#0| () Int)
(declare-fun |e#0@@3| () T@U)
(declare-fun |r1#0| () T@U)
(declare-fun |C'#0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |C#0@@5| () T@U)
(declare-fun |_mcc#1#0_0@0| () T@U)
(declare-fun |next#0_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |d0#0| () Int)
(declare-fun |d0##0_0@0| () Int)
(declare-fun |d1##0_0@0| () Int)
(declare-fun |r0#0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |_mcc#0#1_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(set-info :boogie-vc-id Impl$$M3.UnionFind.ExtendedReach_k)
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
 (=> (= (ControlFlow 0 0) 34) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 3) (- 0 5)) (=> (|M3.UnionFind.Reaches#canCall| this@@3 |d1#0| |e#0@@3| |r1#0| |C'#0|) (or (M3.UnionFind.Reaches ($LS $LZ) this@@3 |d1#0| |e#0@@3| |r1#0| |C'#0|) (=> (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |e#0@@3|)))) (= |e#0@@3| |r1#0|))))) (=> (=> (|M3.UnionFind.Reaches#canCall| this@@3 |d1#0| |e#0@@3| |r1#0| |C'#0|) (or (M3.UnionFind.Reaches ($LS $LZ) this@@3 |d1#0| |e#0@@3| |r1#0| |C'#0|) (=> (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |e#0@@3|)))) (= |e#0@@3| |r1#0|)))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> (|M3.UnionFind.Reaches#canCall| this@@3 |d1#0| |e#0@@3| |r1#0| |C'#0|) (or (M3.UnionFind.Reaches ($LS $LZ) this@@3 |d1#0| |e#0@@3| |r1#0| |C'#0|) (=> (not (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |e#0@@3|))))) (or (not (= |d1#0| 0)) (not true)))))) (=> (=> (|M3.UnionFind.Reaches#canCall| this@@3 |d1#0| |e#0@@3| |r1#0| |C'#0|) (or (M3.UnionFind.Reaches ($LS $LZ) this@@3 |d1#0| |e#0@@3| |r1#0| |C'#0|) (=> (not (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |e#0@@3|))))) (or (not (= |d1#0| 0)) (not true))))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> (|M3.UnionFind.Reaches#canCall| this@@3 |d1#0| |e#0@@3| |r1#0| |C'#0|) (or (M3.UnionFind.Reaches ($LS $LZ) this@@3 |d1#0| |e#0@@3| |r1#0| |C'#0|) (=> (not (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |e#0@@3|))))) (let ((|next#6| (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |e#0@@3|))))))
(M3.UnionFind.Reaches ($LS ($LS $LZ)) this@@3 (- |d1#0| 1) |next#6| |r1#0| |C'#0|))))))))))))
(let ((anon5_Then_correct  (=> (and (= ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |e#0@@3|))) (|#M3.Contents.Link| |_mcc#1#0_0@0|)) ($Is refType |_mcc#1#0_0@0| Tclass.M3.Element)) (=> (and (and (and ($Is refType |next#0_0@0| Tclass.M3.Element) ($IsAlloc refType |next#0_0@0| Tclass.M3.Element $Heap@0)) (= |let#0_0#0#0| |_mcc#1#0_0@0|)) (and ($Is refType |let#0_0#0#0| Tclass.M3.Element) (= |next#0_0@0| |let#0_0#0#0|))) (and (=> (= (ControlFlow 0 7) (- 0 30)) ($Is intType (int_2_U (- |d0#0| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |d0#0| 1)) Tclass._System.nat) (=> (= |d0##0_0@0| (- |d0#0| 1)) (and (=> (= (ControlFlow 0 7) (- 0 29)) ($Is intType (int_2_U (- |d1#0| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |d1#0| 1)) Tclass._System.nat) (=> (= |d1##0_0@0| (- |d1#0| 1)) (and (=> (= (ControlFlow 0 7) (- 0 28)) (or (or (or (<= 0 |d0#0|) (and (= |next#0_0@0| null) (or (not (= |e#0@@3| null)) (not true)))) (and (|Set#Subset| (|Map#Domain| |C#0@@5|) (|Map#Domain| |C#0@@5|)) (not (|Set#Subset| (|Map#Domain| |C#0@@5|) (|Map#Domain| |C#0@@5|))))) (= |d0##0_0@0| |d0#0|))) (=> (or (or (or (<= 0 |d0#0|) (and (= |next#0_0@0| null) (or (not (= |e#0@@3| null)) (not true)))) (and (|Set#Subset| (|Map#Domain| |C#0@@5|) (|Map#Domain| |C#0@@5|)) (not (|Set#Subset| (|Map#Domain| |C#0@@5|) (|Map#Domain| |C#0@@5|))))) (= |d0##0_0@0| |d0#0|)) (and (=> (= (ControlFlow 0 7) (- 0 27)) (or (or (or (or (<= 0 |d1#0|) (and (= |next#0_0@0| null) (or (not (= |e#0@@3| null)) (not true)))) (and (|Set#Subset| (|Map#Domain| |C#0@@5|) (|Map#Domain| |C#0@@5|)) (not (|Set#Subset| (|Map#Domain| |C#0@@5|) (|Map#Domain| |C#0@@5|))))) (< |d0##0_0@0| |d0#0|)) (= |d1##0_0@0| |d1#0|))) (=> (or (or (or (or (<= 0 |d1#0|) (and (= |next#0_0@0| null) (or (not (= |e#0@@3| null)) (not true)))) (and (|Set#Subset| (|Map#Domain| |C#0@@5|) (|Map#Domain| |C#0@@5|)) (not (|Set#Subset| (|Map#Domain| |C#0@@5|) (|Map#Domain| |C#0@@5|))))) (< |d0##0_0@0| |d0#0|)) (= |d1##0_0@0| |d1#0|)) (and (=> (= (ControlFlow 0 7) (- 0 26)) (or (and (= |next#0_0@0| null) (or (not (= |e#0@@3| null)) (not true))) (and (=  (or (not (= |next#0_0@0| null)) (not true))  (or (not (= |e#0@@3| null)) (not true))) (or (and (|Set#Subset| (|Map#Domain| |C#0@@5|) (|Map#Domain| |C#0@@5|)) (not (|Set#Subset| (|Map#Domain| |C#0@@5|) (|Map#Domain| |C#0@@5|)))) (and (|Set#Equal| (|Map#Domain| |C#0@@5|) (|Map#Domain| |C#0@@5|)) (or (< |d0##0_0@0| |d0#0|) (and (= |d0##0_0@0| |d0#0|) (or (< |d1##0_0@0| |d1#0|) (and (= |d1##0_0@0| |d1#0|) (or (and (= |r0#0| null) (or (not (= |r0#0| null)) (not true))) (and (=  (or (not (= |r0#0| null)) (not true))  (or (not (= |r0#0| null)) (not true))) (or (and (= |r1#0| null) (or (not (= |r1#0| null)) (not true))) (and (=  (or (not (= |r1#0| null)) (not true))  (or (not (= |r1#0| null)) (not true))) (and (|Set#Subset| (|Map#Domain| |C'#0|) (|Map#Domain| |C'#0|)) (not (|Set#Subset| (|Map#Domain| |C'#0|) (|Map#Domain| |C'#0|))))))))))))))))) (=> (or (and (= |next#0_0@0| null) (or (not (= |e#0@@3| null)) (not true))) (and (=  (or (not (= |next#0_0@0| null)) (not true))  (or (not (= |e#0@@3| null)) (not true))) (or (and (|Set#Subset| (|Map#Domain| |C#0@@5|) (|Map#Domain| |C#0@@5|)) (not (|Set#Subset| (|Map#Domain| |C#0@@5|) (|Map#Domain| |C#0@@5|)))) (and (|Set#Equal| (|Map#Domain| |C#0@@5|) (|Map#Domain| |C#0@@5|)) (or (< |d0##0_0@0| |d0#0|) (and (= |d0##0_0@0| |d0#0|) (or (< |d1##0_0@0| |d1#0|) (and (= |d1##0_0@0| |d1#0|) (or (and (= |r0#0| null) (or (not (= |r0#0| null)) (not true))) (and (=  (or (not (= |r0#0| null)) (not true))  (or (not (= |r0#0| null)) (not true))) (or (and (= |r1#0| null) (or (not (= |r1#0| null)) (not true))) (and (=  (or (not (= |r1#0| null)) (not true))  (or (not (= |r1#0| null)) (not true))) (and (|Set#Subset| (|Map#Domain| |C'#0|) (|Map#Domain| |C'#0|)) (not (|Set#Subset| (|Map#Domain| |C'#0|) (|Map#Domain| |C'#0|)))))))))))))))) (and (=> (= (ControlFlow 0 7) (- 0 25)) (=> (|M3.__default.GoodCMap#canCall| |C#0@@5|) (or (M3.__default.GoodCMap |C#0@@5|) (forall ((|f#2| T@U) ) (!  (=> ($Is refType |f#2| Tclass.M3.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType |f#2|)) (M3.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |f#2|))))) (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |f#2|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |3079|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |f#2|))))
))))) (=> (=> (|M3.__default.GoodCMap#canCall| |C#0@@5|) (or (M3.__default.GoodCMap |C#0@@5|) (forall ((|f#2@@0| T@U) ) (!  (=> ($Is refType |f#2@@0| Tclass.M3.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType |f#2@@0|)) (M3.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |f#2@@0|))))) (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |f#2@@0|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |3079|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |f#2@@0|))))
)))) (and (=> (= (ControlFlow 0 7) (- 0 24)) (=> (|M3.__default.GoodCMap#canCall| |C'#0|) (or (M3.__default.GoodCMap |C'#0|) (forall ((|f#3| T@U) ) (!  (=> ($Is refType |f#3| Tclass.M3.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C'#0|) ($Box refType |f#3|)) (M3.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |f#3|))))) (|Set#IsMember| (|Map#Domain| |C'#0|) ($Box refType (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |f#3|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |3081|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |f#3|))))
))))) (=> (=> (|M3.__default.GoodCMap#canCall| |C'#0|) (or (M3.__default.GoodCMap |C'#0|) (forall ((|f#3@@0| T@U) ) (!  (=> ($Is refType |f#3@@0| Tclass.M3.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C'#0|) ($Box refType |f#3@@0|)) (M3.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |f#3@@0|))))) (|Set#IsMember| (|Map#Domain| |C'#0|) ($Box refType (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |f#3@@0|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |3081|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |f#3@@0|))))
)))) (and (=> (= (ControlFlow 0 7) (- 0 23)) (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType |r0#0|))) (=> (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType |r0#0|)) (and (=> (= (ControlFlow 0 7) (- 0 22)) (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType |r1#0|))) (=> (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType |r1#0|)) (and (=> (= (ControlFlow 0 7) (- 0 21)) (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r0#0|))))) (=> (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r0#0|)))) (and (=> (= (ControlFlow 0 7) (- 0 20)) (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r1#0|))))) (=> (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r1#0|)))) (and (=> (= (ControlFlow 0 7) (- 0 19)) (= (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r0#0|)))) (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r1#0|)))))) (=> (= (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r0#0|)))) (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r1#0|))))) (and (=> (= (ControlFlow 0 7) (- 0 18)) (or (not (= |r0#0| |r1#0|)) (not true))) (=> (or (not (= |r0#0| |r1#0|)) (not true)) (and (=> (= (ControlFlow 0 7) (- 0 17)) (|Map#Equal| |C'#0| (|Map#Build| (|Map#Build| |C#0@@5| ($Box refType |r0#0|) ($Box DatatypeTypeType (|#M3.Contents.Link| |r1#0|))) ($Box refType |r1#0|) ($Box DatatypeTypeType (|#M3.Contents.Root| (+ (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r1#0|)))) 1)))))) (=> (|Map#Equal| |C'#0| (|Map#Build| (|Map#Build| |C#0@@5| ($Box refType |r0#0|) ($Box DatatypeTypeType (|#M3.Contents.Link| |r1#0|))) ($Box refType |r1#0|) ($Box DatatypeTypeType (|#M3.Contents.Root| (+ (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r1#0|)))) 1))))) (and (=> (= (ControlFlow 0 7) (- 0 16)) (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r0#0|))))) (=> (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r0#0|)))) (and (=> (= (ControlFlow 0 7) (- 0 15)) (<= |d0##0_0@0| (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r0#0|)))))) (=> (<= |d0##0_0@0| (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r0#0|))))) (and (=> (= (ControlFlow 0 7) (- 0 14)) (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r1#0|))))) (=> (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r1#0|)))) (and (=> (= (ControlFlow 0 7) (- 0 13)) (<= |d1##0_0@0| (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |r1#0|)))))) (=> (<= |d1##0_0@0| (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |r1#0|))))) (and (=> (= (ControlFlow 0 7) (- 0 12)) (< |d0##0_0@0| |d1##0_0@0|)) (=> (< |d0##0_0@0| |d1##0_0@0|) (and (=> (= (ControlFlow 0 7) (- 0 11)) (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType |next#0_0@0|))) (=> (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType |next#0_0@0|)) (and (=> (= (ControlFlow 0 7) (- 0 10)) (=> (|M3.UnionFind.Reaches#canCall| this@@3 |d0##0_0@0| |next#0_0@0| |r0#0| |C#0@@5|) (or (M3.UnionFind.Reaches ($LS $LZ) this@@3 |d0##0_0@0| |next#0_0@0| |r0#0| |C#0@@5|) (=> (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |next#0_0@0|)))) (= |next#0_0@0| |r0#0|))))) (=> (=> (|M3.UnionFind.Reaches#canCall| this@@3 |d0##0_0@0| |next#0_0@0| |r0#0| |C#0@@5|) (or (M3.UnionFind.Reaches ($LS $LZ) this@@3 |d0##0_0@0| |next#0_0@0| |r0#0| |C#0@@5|) (=> (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |next#0_0@0|)))) (= |next#0_0@0| |r0#0|)))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (=> (|M3.UnionFind.Reaches#canCall| this@@3 |d0##0_0@0| |next#0_0@0| |r0#0| |C#0@@5|) (or (M3.UnionFind.Reaches ($LS $LZ) this@@3 |d0##0_0@0| |next#0_0@0| |r0#0| |C#0@@5|) (=> (not (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |next#0_0@0|))))) (or (not (= |d0##0_0@0| 0)) (not true)))))) (=> (=> (|M3.UnionFind.Reaches#canCall| this@@3 |d0##0_0@0| |next#0_0@0| |r0#0| |C#0@@5|) (or (M3.UnionFind.Reaches ($LS $LZ) this@@3 |d0##0_0@0| |next#0_0@0| |r0#0| |C#0@@5|) (=> (not (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |next#0_0@0|))))) (or (not (= |d0##0_0@0| 0)) (not true))))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (=> (|M3.UnionFind.Reaches#canCall| this@@3 |d0##0_0@0| |next#0_0@0| |r0#0| |C#0@@5|) (or (M3.UnionFind.Reaches ($LS $LZ) this@@3 |d0##0_0@0| |next#0_0@0| |r0#0| |C#0@@5|) (=> (not (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |next#0_0@0|))))) (let ((|next#0@@0| (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |next#0_0@0|))))))
(M3.UnionFind.Reaches ($LS ($LS $LZ)) this@@3 (- |d0##0_0@0| 1) |next#0@@0| |r0#0| |C#0@@5|)))))) (=> (=> (|M3.UnionFind.Reaches#canCall| this@@3 |d0##0_0@0| |next#0_0@0| |r0#0| |C#0@@5|) (or (M3.UnionFind.Reaches ($LS $LZ) this@@3 |d0##0_0@0| |next#0_0@0| |r0#0| |C#0@@5|) (=> (not (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |next#0_0@0|))))) (let ((|next#0@@1| (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |next#0_0@0|))))))
(M3.UnionFind.Reaches ($LS ($LS $LZ)) this@@3 (- |d0##0_0@0| 1) |next#0@@1| |r0#0| |C#0@@5|))))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|M3.UnionFind.Reaches#canCall| this@@3 |d1##0_0@0| |next#0_0@0| |r1#0| |C'#0|)) (and (and (|M3.UnionFind.Reaches#canCall| this@@3 |d1##0_0@0| |next#0_0@0| |r1#0| |C'#0|) (and (M3.UnionFind.Reaches ($LS $LZ) this@@3 |d1##0_0@0| |next#0_0@0| |r1#0| |C'#0|) (ite (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |next#0_0@0|)))) (= |next#0_0@0| |r1#0|) (let ((|next#3@@0| (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |next#0_0@0|))))))
 (and (or (not (= |d1##0_0@0| 0)) (not true)) (M3.UnionFind.Reaches ($LS $LZ) this@@3 (- |d1##0_0@0| 1) |next#3@@0| |r1#0| |C'#0|)))))) (and (= $Heap@0 $Heap@1) (= (ControlFlow 0 7) 3)))) GeneratedUnifiedExit_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon4_Then_correct  (=> (= ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |e#0@@3|))) (|#M3.Contents.Root| |_mcc#0#1_0@0|)) (=> (and (<= (LitInt 0) |_mcc#0#1_0@0|) (= (ControlFlow 0 6) 3)) GeneratedUnifiedExit_correct))))
(let ((anon5_Else_correct true))
(let ((anon4_Else_correct  (=> (or (not (= ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |e#0@@3|))) (|#M3.Contents.Root| |_mcc#0#1_0@0|))) (not true)) (and (=> (= (ControlFlow 0 31) 7) anon5_Then_correct) (=> (= (ControlFlow 0 31) 1) anon5_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#e0#0| T@U) (|$ih#C0#0| T@U) (|$ih#d00#0| Int) (|$ih#d10#0| Int) (|$ih#r00#0| T@U) (|$ih#r10#0| T@U) (|$ih#C'0#0| T@U) ) (!  (=> (and (and (and (and (and (and (and (and ($Is refType |$ih#e0#0| Tclass.M3.Element) ($Is MapType |$ih#C0#0| (TMap Tclass.M3.Element Tclass.M3.Contents))) (<= (LitInt 0) |$ih#d00#0|)) (<= (LitInt 0) |$ih#d10#0|)) ($Is refType |$ih#r00#0| Tclass.M3.Element)) ($Is refType |$ih#r10#0| Tclass.M3.Element)) ($Is MapType |$ih#C'0#0| (TMap Tclass.M3.Element Tclass.M3.Contents))) (and (and (and (and (and (M3.__default.GoodCMap |$ih#C0#0|) (M3.__default.GoodCMap |$ih#C'0#0|)) (and (and (and (and (and (|Set#IsMember| (|Map#Domain| |$ih#C0#0|) ($Box refType |$ih#r00#0|)) (|Set#IsMember| (|Map#Domain| |$ih#C0#0|) ($Box refType |$ih#r10#0|))) (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |$ih#C0#0|) ($Box refType |$ih#r00#0|))))) (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |$ih#C0#0|) ($Box refType |$ih#r10#0|))))) (= (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |$ih#C0#0|) ($Box refType |$ih#r00#0|)))) (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |$ih#C0#0|) ($Box refType |$ih#r10#0|)))))) (or (not (= |$ih#r00#0| |$ih#r10#0|)) (not true)))) (|Map#Equal| |$ih#C'0#0| (|Map#Build| (|Map#Build| |$ih#C0#0| ($Box refType |$ih#r00#0|) ($Box DatatypeTypeType (|#M3.Contents.Link| |$ih#r10#0|))) ($Box refType |$ih#r10#0|) ($Box DatatypeTypeType (|#M3.Contents.Root| (+ (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |$ih#C0#0|) ($Box refType |$ih#r10#0|)))) 1)))))) (and (and (and (and (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |$ih#C0#0|) ($Box refType |$ih#r00#0|)))) (<= |$ih#d00#0| (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |$ih#C0#0|) ($Box refType |$ih#r00#0|)))))) (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |$ih#C0#0|) ($Box refType |$ih#r10#0|))))) (<= |$ih#d10#0| (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |$ih#C'0#0|) ($Box refType |$ih#r10#0|)))))) (< |$ih#d00#0| |$ih#d10#0|))) (and (|Set#IsMember| (|Map#Domain| |$ih#C0#0|) ($Box refType |$ih#e0#0|)) (M3.UnionFind.Reaches ($LS $LZ) this@@3 |$ih#d00#0| |$ih#e0#0| |$ih#r00#0| |$ih#C0#0|)))) (or (and (= |$ih#e0#0| null) (or (not (= |e#0@@3| null)) (not true))) (and (=  (or (not (= |$ih#e0#0| null)) (not true))  (or (not (= |e#0@@3| null)) (not true))) (or (and (|Set#Subset| (|Map#Domain| |$ih#C0#0|) (|Map#Domain| |C#0@@5|)) (not (|Set#Subset| (|Map#Domain| |C#0@@5|) (|Map#Domain| |$ih#C0#0|)))) (and (|Set#Equal| (|Map#Domain| |$ih#C0#0|) (|Map#Domain| |C#0@@5|)) (or (and (<= 0 |$ih#d00#0|) (< |$ih#d00#0| |d0#0|)) (and (= |$ih#d00#0| |d0#0|) (or (and (<= 0 |$ih#d10#0|) (< |$ih#d10#0| |d1#0|)) (and (= |$ih#d10#0| |d1#0|) (or (and (= |$ih#r00#0| null) (or (not (= |r0#0| null)) (not true))) (and (=  (or (not (= |$ih#r00#0| null)) (not true))  (or (not (= |r0#0| null)) (not true))) (or (and (= |$ih#r10#0| null) (or (not (= |r1#0| null)) (not true))) (and (=  (or (not (= |$ih#r10#0| null)) (not true))  (or (not (= |r1#0| null)) (not true))) (and (|Set#Subset| (|Map#Domain| |$ih#C'0#0|) (|Map#Domain| |C'#0|)) (not (|Set#Subset| (|Map#Domain| |C'#0|) (|Map#Domain| |$ih#C'0#0|))))))))))))))))) (M3.UnionFind.Reaches ($LS $LZ) this@@3 |$ih#d10#0| |$ih#e0#0| |$ih#r10#0| |$ih#C'0#0|))
 :qid |UnionFinddfy.278:49|
 :skolemid |3087|
 :pattern ( (M3.UnionFind.Reaches ($LS $LZ) this@@3 |$ih#d10#0| |$ih#e0#0| |$ih#r10#0| |$ih#C'0#0|) (M3.UnionFind.Reaches ($LS $LZ) this@@3 |$ih#d00#0| |$ih#e0#0| |$ih#r00#0| |$ih#C0#0|))
)))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType |e#0@@3|))) (=> (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType |e#0@@3|)) (and (=> (= (ControlFlow 0 32) 6) anon4_Then_correct) (=> (= (ControlFlow 0 32) 31) anon4_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass.M3.UnionFind) ($IsAlloc refType this@@3 Tclass.M3.UnionFind $Heap))) (and ($Is refType |e#0@@3| Tclass.M3.Element) ($IsAlloc refType |e#0@@3| Tclass.M3.Element $Heap))) (=> (and (and (and ($Is MapType |C#0@@5| (TMap Tclass.M3.Element Tclass.M3.Contents)) ($IsAlloc MapType |C#0@@5| (TMap Tclass.M3.Element Tclass.M3.Contents) $Heap)) (and (<= (LitInt 0) |d0#0|) (<= (LitInt 0) |d1#0|))) (and (and ($Is refType |r0#0| Tclass.M3.Element) ($IsAlloc refType |r0#0| Tclass.M3.Element $Heap)) (and ($Is refType |r1#0| Tclass.M3.Element) ($IsAlloc refType |r1#0| Tclass.M3.Element $Heap)))) (=> (and (and (and (and (and ($Is MapType |C'#0| (TMap Tclass.M3.Element Tclass.M3.Contents)) ($IsAlloc MapType |C'#0| (TMap Tclass.M3.Element Tclass.M3.Contents) $Heap)) (= 5 $FunctionContextHeight)) (and (|M3.__default.GoodCMap#canCall| |C#0@@5|) (and (M3.__default.GoodCMap |C#0@@5|) (forall ((|f#4| T@U) ) (!  (=> ($Is refType |f#4| Tclass.M3.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType |f#4|)) (M3.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |f#4|))))) (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |f#4|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |3084|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |f#4|))))
))))) (and (and (|M3.__default.GoodCMap#canCall| |C'#0|) (and (M3.__default.GoodCMap |C'#0|) (forall ((|f#5| T@U) ) (!  (=> ($Is refType |f#5| Tclass.M3.Element?) (=> (and (|Set#IsMember| (|Map#Domain| |C'#0|) ($Box refType |f#5|)) (M3.Contents.Link_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |f#5|))))) (|Set#IsMember| (|Map#Domain| |C'#0|) ($Box refType (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |f#5|))))))))
 :qid |UnionFinddfy.50:12|
 :skolemid |3086|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |f#5|))))
)))) (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType |r0#0|)))) (and (and (and (and (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType |r1#0|)) (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r0#0|))))) (and (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r1#0|)))) (= (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r0#0|)))) (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r1#0|))))))) (and (and (or (not (= |r0#0| |r1#0|)) (not true)) (|Map#Equal| |C'#0| (|Map#Build| (|Map#Build| |C#0@@5| ($Box refType |r0#0|) ($Box DatatypeTypeType (|#M3.Contents.Link| |r1#0|))) ($Box refType |r1#0|) ($Box DatatypeTypeType (|#M3.Contents.Root| (+ (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r1#0|)))) 1)))))) (and (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r0#0|)))) (<= |d0#0| (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r0#0|)))))))) (and (and (and (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |r1#0|)))) (<= |d1#0| (M3.Contents.depth ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C'#0|) ($Box refType |r1#0|)))))) (and (< |d0#0| |d1#0|) (|Set#IsMember| (|Map#Domain| |C#0@@5|) ($Box refType |e#0@@3|)))) (and (and (|M3.UnionFind.Reaches#canCall| this@@3 |d0#0| |e#0@@3| |r0#0| |C#0@@5|) (and (M3.UnionFind.Reaches ($LS $LZ) this@@3 |d0#0| |e#0@@3| |r0#0| |C#0@@5|) (ite (M3.Contents.Root_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |e#0@@3|)))) (= |e#0@@3| |r0#0|) (let ((|next#5@@0| (M3.Contents.next ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |C#0@@5|) ($Box refType |e#0@@3|))))))
 (and (or (not (= |d0#0| 0)) (not true)) (M3.UnionFind.Reaches ($LS $LZ) this@@3 (- |d0#0| 1) |next#5@@0| |r0#0| |C#0@@5|)))))) (= (ControlFlow 0 34) 32))))) anon0_correct))))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
