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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass.Extern.uint64 () T@U)
(declare-fun Tagclass.Extern.GenericClass () T@U)
(declare-fun Tagclass.Extern.GenericClass? () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun tytagFamily$uint64 () T@U)
(declare-fun tytagFamily$GenericClass () T@U)
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
(declare-fun Tclass.Extern.uint64 () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.Extern.GenericClass (T@U) T@U)
(declare-fun Tclass.Extern.GenericClass? (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Test.__default.AddOne#requires| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun |Test.__default.AddOne#Handle| () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Test.__default.AddOne (Int) Int)
(declare-fun |Test.__default.AddOne#canCall| (Int) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass.Extern.GenericClass_0 (T@U) T@U)
(declare-fun Tclass.Extern.GenericClass?_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct alloc Tagclass._System.___hFunc1 Tagclass.Extern.uint64 Tagclass.Extern.GenericClass Tagclass.Extern.GenericClass? |tytagFamily$_#Func1| tytagFamily$uint64 tytagFamily$GenericClass)
)
(assert (forall ((|i#0| T@U) ($h T@U) ) (! ($IsAlloc intType |i#0| Tclass.Extern.uint64 $h)
 :qid |unknown.0:0|
 :skolemid |1124|
 :pattern ( ($IsAlloc intType |i#0| Tclass.Extern.uint64 $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((Extern.GenericClass$A T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.Extern.GenericClass Extern.GenericClass$A) $h@@0) ($IsAlloc refType |c#0| (Tclass.Extern.GenericClass? Extern.GenericClass$A) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1133|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Extern.GenericClass Extern.GenericClass$A) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Extern.GenericClass? Extern.GenericClass$A) $h@@0))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |678|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor HandleTypeType) 4))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |942|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |943|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |944|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (forall ((|x#0| Int) ) (!  (=> (and (<= (LitInt 0) |x#0|) (< |x#0| 18446744073709551616)) (= (|Test.__default.AddOne#requires| |x#0|) (< |x#0| 100)))
 :qid |functionsdfy.39:19|
 :skolemid |1097|
 :pattern ( (|Test.__default.AddOne#requires| |x#0|))
)))
(assert (forall (($heap T@U) (|$fh$0x#0| T@U) ) (! (= (Requires1 Tclass.Extern.uint64 Tclass.Extern.uint64 $heap |Test.__default.AddOne#Handle| |$fh$0x#0|) (|Test.__default.AddOne#requires| (U_2_int ($Unbox intType |$fh$0x#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1104|
 :pattern ( (Requires1 Tclass.Extern.uint64 Tclass.Extern.uint64 $heap |Test.__default.AddOne#Handle| |$fh$0x#0|))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1@@0 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1@@0 (MapType0Store t0@@0 t1@@0 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
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
))))
(assert (forall ((Extern.GenericClass$A@@0 T@U) ($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o (Tclass.Extern.GenericClass? Extern.GenericClass$A@@0) $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1129|
 :pattern ( ($IsAlloc refType $o (Tclass.Extern.GenericClass? Extern.GenericClass$A@@0) $h@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@0| Int) ) (!  (=> (or (|Test.__default.AddOne#canCall| (LitInt |x#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and (<= (LitInt 0) |x#0@@0|) (< |x#0@@0| 18446744073709551616)) (U_2_bool (Lit boolType (bool_2_U (< |x#0@@0| 100))))))) (= (Test.__default.AddOne (LitInt |x#0@@0|)) (LitInt (+ |x#0@@0| 1))))
 :qid |functionsdfy.39:19|
 :weight 3
 :skolemid |1099|
 :pattern ( (Test.__default.AddOne (LitInt |x#0@@0|)))
))))
(assert (forall (($bx T@U) ($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (|Set#IsMember| (Reads1 Tclass.Extern.uint64 Tclass.Extern.uint64 $heap@@0 |Test.__default.AddOne#Handle| |$fh$0x#0@@0|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |1105|
 :pattern ( (|Set#IsMember| (Reads1 Tclass.Extern.uint64 Tclass.Extern.uint64 $heap@@0 |Test.__default.AddOne#Handle| |$fh$0x#0@@0|) $bx))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |671|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |672|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |570|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |568|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |938|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |579|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall (($heap@@1 T@U) (|$fh$0x#0@@1| T@U) ) (! (= (Apply1 Tclass.Extern.uint64 Tclass.Extern.uint64 $heap@@1 |Test.__default.AddOne#Handle| |$fh$0x#0@@1|) ($Box intType (int_2_U (Test.__default.AddOne (U_2_int ($Unbox intType |$fh$0x#0@@1|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1103|
 :pattern ( (Apply1 Tclass.Extern.uint64 Tclass.Extern.uint64 $heap@@1 |Test.__default.AddOne#Handle| |$fh$0x#0@@1|))
)))
(assert (forall ((t0@@2 T@U) (t1@@2 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@0 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@0 t0@@2) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@2 t1@@2)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@2 t1@@2 h0 f@@1 bx0@@0) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |930|
))) (= (Requires1 t0@@2 t1@@2 h0 f@@1 bx0@@0) (Requires1 t0@@2 t1@@2 h1 f@@1 bx0@@0)))
 :qid |unknown.0:0|
 :skolemid |931|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@2 t1@@2 h1 f@@1 bx0@@0))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@1 t0@@3) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@3 t1@@3 h1@@0 f@@2 bx0@@1) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |932|
))) (= (Requires1 t0@@3 t1@@3 h0@@0 f@@2 bx0@@1) (Requires1 t0@@3 t1@@3 h1@@0 f@@2 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |933|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@3 t1@@3 h1@@0 f@@2 bx0@@1))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((Extern.GenericClass$A@@1 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass.Extern.GenericClass Extern.GenericClass$A@@1))  (and ($Is refType |c#0@@0| (Tclass.Extern.GenericClass? Extern.GenericClass$A@@1)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1132|
 :pattern ( ($Is refType |c#0@@0| (Tclass.Extern.GenericClass Extern.GenericClass$A@@1)))
 :pattern ( ($Is refType |c#0@@0| (Tclass.Extern.GenericClass? Extern.GenericClass$A@@1)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |592|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |664|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |663|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@3 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@2 t0@@4) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0@@1 f@@3 bx0@@2) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |926|
))) (= (Reads1 t0@@4 t1@@4 h0@@1 f@@3 bx0@@2) (Reads1 t0@@4 t1@@4 h1@@1 f@@3 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |927|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@4 t1@@4 h1@@1 f@@3 bx0@@2))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@3 t0@@5) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@2 f@@4 bx0@@3) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |928|
))) (= (Reads1 t0@@5 t1@@5 h0@@2 f@@4 bx0@@3) (Reads1 t0@@5 t1@@5 h1@@2 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |929|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@5 t1@@5 h1@@2 f@@4 bx0@@3))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@4 t0@@6) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@6 t1@@6)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@6 t1@@6 h0@@3 f@@5 bx0@@4) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |934|
))) (= (Apply1 t0@@6 t1@@6 h0@@3 f@@5 bx0@@4) (Apply1 t0@@6 t1@@6 h1@@3 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |935|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@6 t1@@6 h1@@3 f@@5 bx0@@4))
)))
(assert (forall ((t0@@7 T@U) (t1@@7 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@5 t0@@7) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@7 t1@@7)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@7 h1@@4 f@@6 bx0@@5) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |936|
))) (= (Apply1 t0@@7 t1@@7 h0@@4 f@@6 bx0@@5) (Apply1 t0@@7 t1@@7 h1@@4 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |937|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@7 t1@@7 h1@@4 f@@6 bx0@@5))
)))
(assert (forall ((Extern.GenericClass$A@@2 T@U) ) (!  (and (= (Tag (Tclass.Extern.GenericClass Extern.GenericClass$A@@2)) Tagclass.Extern.GenericClass) (= (TagFamily (Tclass.Extern.GenericClass Extern.GenericClass$A@@2)) tytagFamily$GenericClass))
 :qid |unknown.0:0|
 :skolemid |1109|
 :pattern ( (Tclass.Extern.GenericClass Extern.GenericClass$A@@2))
)))
(assert (forall ((Extern.GenericClass$A@@3 T@U) ) (!  (and (= (Tag (Tclass.Extern.GenericClass? Extern.GenericClass$A@@3)) Tagclass.Extern.GenericClass?) (= (TagFamily (Tclass.Extern.GenericClass? Extern.GenericClass$A@@3)) tytagFamily$GenericClass))
 :qid |unknown.0:0|
 :skolemid |1125|
 :pattern ( (Tclass.Extern.GenericClass? Extern.GenericClass$A@@3))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.Extern.uint64) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass.Extern.uint64)))
 :qid |unknown.0:0|
 :skolemid |1089|
 :pattern ( ($IsBox bx@@2 Tclass.Extern.uint64))
)))
(assert (forall ((Extern.GenericClass$A@@4 T@U) ($o@@0 T@U) ) (! (= ($Is refType $o@@0 (Tclass.Extern.GenericClass? Extern.GenericClass$A@@4))  (or (= $o@@0 null) (= (dtype $o@@0) (Tclass.Extern.GenericClass? Extern.GenericClass$A@@4))))
 :qid |unknown.0:0|
 :skolemid |1128|
 :pattern ( ($Is refType $o@@0 (Tclass.Extern.GenericClass? Extern.GenericClass$A@@4)))
)))
(assert (forall ((f@@7 T@U) (t0@@8 T@U) (t1@@8 T@U) (h@@3 T@U) ) (!  (=> (and ($IsGoodHeap h@@3) ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@8 t1@@8) h@@3)) (forall ((bx0@@6 T@U) ) (!  (=> (and ($IsAllocBox bx0@@6 t0@@8 h@@3) (Requires1 t0@@8 t1@@8 h@@3 f@@7 bx0@@6)) ($IsAllocBox (Apply1 t0@@8 t1@@8 h@@3 f@@7 bx0@@6) t1@@8 h@@3))
 :qid |unknown.0:0|
 :skolemid |948|
 :pattern ( (Apply1 t0@@8 t1@@8 h@@3 f@@7 bx0@@6))
)))
 :qid |unknown.0:0|
 :skolemid |949|
 :pattern ( ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@8 t1@@8) h@@3))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |703|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |670|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@8 T@U) (t0@@9 T@U) (t1@@9 T@U) ) (! (= ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@9 t1@@9)) (forall ((h@@4 T@U) (bx0@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@4) ($IsBox bx0@@7 t0@@9)) (Requires1 t0@@9 t1@@9 h@@4 f@@8 bx0@@7)) ($IsBox (Apply1 t0@@9 t1@@9 h@@4 f@@8 bx0@@7) t1@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |940|
 :pattern ( (Apply1 t0@@9 t1@@9 h@@4 f@@8 bx0@@7))
)))
 :qid |unknown.0:0|
 :skolemid |941|
 :pattern ( ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@9 t1@@9)))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |591|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |920|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |921|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall ((Extern.GenericClass$A@@5 T@U) ) (! (= (Tclass.Extern.GenericClass_0 (Tclass.Extern.GenericClass Extern.GenericClass$A@@5)) Extern.GenericClass$A@@5)
 :qid |unknown.0:0|
 :skolemid |1110|
 :pattern ( (Tclass.Extern.GenericClass Extern.GenericClass$A@@5))
)))
(assert (forall ((Extern.GenericClass$A@@6 T@U) ) (! (= (Tclass.Extern.GenericClass?_0 (Tclass.Extern.GenericClass? Extern.GenericClass$A@@6)) Extern.GenericClass$A@@6)
 :qid |unknown.0:0|
 :skolemid |1126|
 :pattern ( (Tclass.Extern.GenericClass? Extern.GenericClass$A@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |578|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((f@@9 T@U) (t0@@10 T@U) (t1@@10 T@U) (h@@5 T@U) ) (!  (=> ($IsGoodHeap h@@5) (= ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@10 t1@@10) h@@5) (forall ((bx0@@8 T@U) ) (!  (=> (and (and ($IsBox bx0@@8 t0@@10) ($IsAllocBox bx0@@8 t0@@10 h@@5)) (Requires1 t0@@10 t1@@10 h@@5 f@@9 bx0@@8)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@10 h@@5 f@@9 bx0@@8) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |945|
 :pattern ( (|Set#IsMember| (Reads1 t0@@10 t1@@10 h@@5 f@@9 bx0@@8) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |946|
 :pattern ( (Apply1 t0@@10 t1@@10 h@@5 f@@9 bx0@@8))
 :pattern ( (Reads1 t0@@10 t1@@10 h@@5 f@@9 bx0@@8))
))))
 :qid |unknown.0:0|
 :skolemid |947|
 :pattern ( ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@10 t1@@10) h@@5))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@3)) bx@@3) ($Is HandleTypeType ($Unbox HandleTypeType bx@@3) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |922|
 :pattern ( ($IsBox bx@@3 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert  (and (forall ((t0@@11 T@T) (t1@@11 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@11 t1@@11 t2 (MapType1Store t0@@11 t1@@11 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1134|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |919|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((t0@@12 T@U) (t1@@12 T@U) (heap@@0 T@U) (f@@10 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@9 t0@@12) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@12 t1@@12)))) (|Set#Equal| (Reads1 t0@@12 t1@@12 $OneHeap f@@10 bx0@@9) |Set#Empty|)) (= (Requires1 t0@@12 t1@@12 $OneHeap f@@10 bx0@@9) (Requires1 t0@@12 t1@@12 heap@@0 f@@10 bx0@@9)))
 :qid |unknown.0:0|
 :skolemid |939|
 :pattern ( (Requires1 t0@@12 t1@@12 $OneHeap f@@10 bx0@@9) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@12 t1@@12 heap@@0 f@@10 bx0@@9))
)))
(assert (forall (($heap@@2 T@U) (|$fh$0x#0@@2| Int) ) (! (= (Test.__default.AddOne |$fh$0x#0@@2|) (U_2_int ($Unbox intType (Apply1 Tclass.Extern.uint64 Tclass.Extern.uint64 $heap@@2 |Test.__default.AddOne#Handle| ($Box intType (int_2_U |$fh$0x#0@@2|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1106|
 :pattern ( (Test.__default.AddOne |$fh$0x#0@@2|) ($IsGoodHeap $heap@@2))
)))
(assert (forall ((Extern.GenericClass$A@@7 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.Extern.GenericClass Extern.GenericClass$A@@7)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass.Extern.GenericClass Extern.GenericClass$A@@7))))
 :qid |unknown.0:0|
 :skolemid |1111|
 :pattern ( ($IsBox bx@@4 (Tclass.Extern.GenericClass Extern.GenericClass$A@@7)))
)))
(assert (forall ((Extern.GenericClass$A@@8 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.Extern.GenericClass? Extern.GenericClass$A@@8)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass.Extern.GenericClass? Extern.GenericClass$A@@8))))
 :qid |unknown.0:0|
 :skolemid |1127|
 :pattern ( ($IsBox bx@@5 (Tclass.Extern.GenericClass? Extern.GenericClass$A@@8)))
)))
(assert (= (Tag Tclass.Extern.uint64) Tagclass.Extern.uint64))
(assert (= (TagFamily Tclass.Extern.uint64) tytagFamily$uint64))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@1 o@@7) (|Set#IsMember| b@@1 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |701|
 :pattern ( (|Set#IsMember| a@@1 o@@7))
 :pattern ( (|Set#IsMember| b@@1 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |702|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((|i#0@@0| T@U) ) (! (= ($Is intType |i#0@@0| Tclass.Extern.uint64)  (and (<= (LitInt 0) (U_2_int |i#0@@0|)) (< (U_2_int |i#0@@0|) 18446744073709551616)))
 :qid |unknown.0:0|
 :skolemid |1123|
 :pattern ( ($Is intType |i#0@@0| Tclass.Extern.uint64))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |571|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |569|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@1| Int) ) (!  (=> (or (|Test.__default.AddOne#canCall| |x#0@@1|) (and (< 0 $FunctionContextHeight) (and (and (<= (LitInt 0) |x#0@@1|) (< |x#0@@1| 18446744073709551616)) (< |x#0@@1| 100)))) (= (Test.__default.AddOne |x#0@@1|) (+ |x#0@@1| 1)))
 :qid |functionsdfy.39:19|
 :skolemid |1098|
 :pattern ( (Test.__default.AddOne |x#0@@1|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@2| Int) ) (!  (=> (or (|Test.__default.AddOne#canCall| |x#0@@2|) (and (< 0 $FunctionContextHeight) (and (and (<= (LitInt 0) |x#0@@2|) (< |x#0@@2| 18446744073709551616)) (< |x#0@@2| 100)))) (and (<= (LitInt 0) (Test.__default.AddOne |x#0@@2|)) (< (Test.__default.AddOne |x#0@@2|) 18446744073709551616)))
 :qid |functionsdfy.39:19|
 :skolemid |1096|
 :pattern ( (Test.__default.AddOne |x#0@@2|))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |inc##0@0| () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |x##0@0| () Int)
(declare-fun |call3formal@y#0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call3formal@y#0@0| () Int)
(declare-fun |inc##1@0| () T@U)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |x##1@0| () Int)
(declare-fun |call4formal@y#0| () T@U)
(declare-fun call0formal@Extern._default.GenericCaller$A () T@U)
(declare-fun call0formal@Extern._default.GenericCaller$A@0 () T@U)
(declare-fun |call2formal@x#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call4formal@y#0@0| () T@U)
(declare-fun |$rhs##1@0| () Int)
(declare-fun |inc##2@0| () T@U)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |x##2@0| () Int)
(declare-fun call4formal@this () T@U)
(declare-fun call0formal@Extern.GenericClass$A () T@U)
(declare-fun call0formal@Extern.GenericClass$A@0 () T@U)
(declare-fun |call2formal@x#0@0@@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun call4formal@this@0 () T@U)
(declare-fun |x#0@@3| () Int)
(declare-fun |y#0| () Int)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@1| () T@U)
(declare-fun |z#0| () Int)
(set-info :boogie-vc-id Impl$$Test.__default.CallTest)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (and (= |inc##0@0| |Test.__default.AddOne#Handle|) (= |newtype$check#0@0| (LitInt 5))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 18446744073709551616))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 18446744073709551616)) (=> (= |x##0@0| (LitInt 5)) (=> (and (<= (LitInt 0) |call3formal@y#0|) (< |call3formal@y#0| 18446744073709551616)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (Requires1 Tclass.Extern.uint64 Tclass.Extern.uint64 $Heap |inc##0@0| ($Box intType (int_2_U |x##0@0|)))) (=> (Requires1 Tclass.Extern.uint64 Tclass.Extern.uint64 $Heap |inc##0@0| ($Box intType (int_2_U |x##0@0|))) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (<= (LitInt 0) |call3formal@y#0@0|) (< |call3formal@y#0@0| 18446744073709551616)) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |functionsdfy.7:39|
 :skolemid |1121|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (and (= |inc##1@0| |Test.__default.AddOne#Handle|) (= |newtype$check#1@0| (LitInt 6))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 18446744073709551616))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 18446744073709551616)) (=> (= |x##1@0| (LitInt 6)) (=> (and (and ($IsBox |call4formal@y#0| call0formal@Extern._default.GenericCaller$A) ($IsAllocBox |call4formal@y#0| call0formal@Extern._default.GenericCaller$A $Heap)) (and (= call0formal@Extern._default.GenericCaller$A@0 Tclass.Extern.uint64) (= |call2formal@x#0@0| ($Box intType (int_2_U |x##1@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (Requires1 call0formal@Extern._default.GenericCaller$A@0 call0formal@Extern._default.GenericCaller$A@0 $Heap@0 |inc##1@0| |call2formal@x#0@0|)) (=> (Requires1 call0formal@Extern._default.GenericCaller$A@0 call0formal@Extern._default.GenericCaller$A@0 $Heap@0 |inc##1@0| |call2formal@x#0@0|) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and ($IsBox |call4formal@y#0@0| call0formal@Extern._default.GenericCaller$A@0) ($IsAllocBox |call4formal@y#0@0| call0formal@Extern._default.GenericCaller$A@0 $Heap@1)) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3)))
 :qid |functionsdfy.10:44|
 :skolemid |1122|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |$rhs##1@0| (U_2_int ($Unbox intType |call4formal@y#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (and (= |inc##2@0| |Test.__default.AddOne#Handle|) (= |newtype$check#2@0| (LitInt 7))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 18446744073709551616))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 18446744073709551616)) (=> (= |x##2@0| (LitInt 7)) (=> (and (and (or (not (= call4formal@this null)) (not true)) (and ($Is refType call4formal@this (Tclass.Extern.GenericClass call0formal@Extern.GenericClass$A)) ($IsAlloc refType call4formal@this (Tclass.Extern.GenericClass call0formal@Extern.GenericClass$A) $Heap))) (and (= call0formal@Extern.GenericClass$A@0 Tclass.Extern.uint64) (= |call2formal@x#0@0@@0| ($Box intType (int_2_U |x##2@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (Requires1 call0formal@Extern.GenericClass$A@0 call0formal@Extern.GenericClass$A@0 $Heap@1 |inc##2@0| |call2formal@x#0@0@@0|)) (=> (Requires1 call0formal@Extern.GenericClass$A@0 call0formal@Extern.GenericClass$A@0 $Heap@1 |inc##2@0| |call2formal@x#0@0@@0|) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (or (not (= call4formal@this@0 null)) (not true)) (and ($Is refType call4formal@this@0 (Tclass.Extern.GenericClass call0formal@Extern.GenericClass$A@0)) ($IsAlloc refType call4formal@this@0 (Tclass.Extern.GenericClass call0formal@Extern.GenericClass$A@0) $Heap@2))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call4formal@this@0) alloc))))) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4)))
 :qid |functionsdfy.15:5|
 :skolemid |1130|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= call4formal@this@0 null)) (not true))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (<= (LitInt 0) |x#0@@3|) (< |x#0@@3| 18446744073709551616)) true) (=> (and (and (and (and (<= (LitInt 0) |y#0|) (< |y#0| 18446744073709551616)) true) (and (=> |defass#c#0| (and ($Is refType |c#0@@1| (Tclass.Extern.GenericClass Tclass.Extern.uint64)) ($IsAlloc refType |c#0@@1| (Tclass.Extern.GenericClass Tclass.Extern.uint64) $Heap))) true)) (and (and (and (<= (LitInt 0) |z#0|) (< |z#0| 18446744073709551616)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 13) 2)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
