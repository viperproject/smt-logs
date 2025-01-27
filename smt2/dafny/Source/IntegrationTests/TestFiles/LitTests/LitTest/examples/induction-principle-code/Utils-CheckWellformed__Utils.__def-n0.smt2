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
(declare-fun TInt () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun Utils.__default.MaxF (T@U T@U Bool T@U T@U T@U Int) Int)
(declare-fun |Utils.__default.MaxF#canCall| (T@U T@U T@U T@U Int) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun refType () T@T)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun Utils.__default.Max (Int Int) Int)
(declare-fun |Utils.__default.Max#canCall| (Int Int) Bool)
(declare-fun reveal_Utils._default.MaxF () Bool)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 tytagFamily$object |tytagFamily$_#Func1|)
)
(assert (= (Tag TInt) TagInt))
(assert  (and (= (Ctor HandleTypeType) 3) (= (Ctor SeqType) 4)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Utils._default.MaxF$T T@U) ($ly T@U) ($reveal Bool) ($Heap T@U) (|f#0| T@U) (|ts#0| T@U) (|default#0| Int) ) (!  (=> (or (|Utils.__default.MaxF#canCall| Utils._default.MaxF$T $Heap |f#0| |ts#0| |default#0|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) (and ($Is HandleTypeType |f#0| (Tclass._System.___hFunc1 Utils._default.MaxF$T TInt)) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 Utils._default.MaxF$T TInt) $Heap))) (and ($Is SeqType |ts#0| (TSeq Utils._default.MaxF$T)) ($IsAlloc SeqType |ts#0| (TSeq Utils._default.MaxF$T) $Heap))) (and (forall ((|t#0| T@U) ) (!  (=> (and ($IsBox |t#0| Utils._default.MaxF$T) (|Seq#Contains| |ts#0| |t#0|)) (Requires1 Utils._default.MaxF$T TInt $Heap |f#0| |t#0|))
 :qid |Utilsdfy.12:21|
 :skolemid |590|
 :pattern ( (Requires1 Utils._default.MaxF$T TInt $Heap |f#0| |t#0|))
 :pattern ( (|Seq#Contains| |ts#0| |t#0|))
)) (forall ((|t#1| T@U) ) (!  (=> (and ($IsBox |t#1| Utils._default.MaxF$T) (|Seq#Contains| |ts#0| |t#1|)) (<= |default#0| (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T TInt $Heap |f#0| |t#1|)))))
 :qid |Utilsdfy.13:21|
 :skolemid |591|
 :pattern ( ($Unbox intType (Apply1 Utils._default.MaxF$T TInt $Heap |f#0| |t#1|)))
 :pattern ( (|Seq#Contains| |ts#0| |t#1|))
)))))) (and (and (ite (|Seq#Equal| |ts#0| |Seq#Empty|) (= (Utils.__default.MaxF Utils._default.MaxF$T $ly $reveal $Heap |f#0| |ts#0| |default#0|) |default#0|) (exists ((|t#2| T@U) ) (!  (and (and ($IsBox |t#2| Utils._default.MaxF$T) (|Seq#Contains| |ts#0| |t#2|)) (= (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T TInt $Heap |f#0| |t#2|))) (Utils.__default.MaxF Utils._default.MaxF$T $ly $reveal $Heap |f#0| |ts#0| |default#0|)))
 :qid |Utilsdfy.14:55|
 :skolemid |592|
 :pattern ( ($Unbox intType (Apply1 Utils._default.MaxF$T TInt $Heap |f#0| |t#2|)))
 :pattern ( (|Seq#Contains| |ts#0| |t#2|))
))) (forall ((|t#3| T@U) ) (!  (=> (and ($IsBox |t#3| Utils._default.MaxF$T) (|Seq#Contains| |ts#0| |t#3|)) (<= (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T TInt $Heap |f#0| |t#3|))) (Utils.__default.MaxF Utils._default.MaxF$T $ly $reveal $Heap |f#0| |ts#0| |default#0|)))
 :qid |Utilsdfy.15:20|
 :skolemid |593|
 :pattern ( ($Unbox intType (Apply1 Utils._default.MaxF$T TInt $Heap |f#0| |t#3|)))
 :pattern ( (|Seq#Contains| |ts#0| |t#3|))
))) (<= |default#0| (Utils.__default.MaxF Utils._default.MaxF$T $ly $reveal $Heap |f#0| |ts#0| |default#0|))))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( (Utils.__default.MaxF Utils._default.MaxF$T $ly $reveal $Heap |f#0| |ts#0| |default#0|))
))))
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
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (= (Ctor refType) 5))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1@@0 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1@@0 (MapType0Store t0@@0 t1@@0 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
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
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@0))
)))
(assert (forall ((s T@U) (n Int) ) (!  (=> (= n 0) (= (|Seq#Drop| s n) s))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s n))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@2 t2 (MapType1Store t0@@2 t1@@2 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|l#7| T@U) (|l#8| T@U) (|l#9| T@U) (|l#10| T@U) (|l#11| T@U) (|l#12| T@U) (|l#13| T@U) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9| |l#10| |l#11| |l#12| |l#13|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) (exists ((|x#0| T@U) (|y#0| T@U) ) (!  (and (and (and ($IsBox |x#0| |l#3|) ($Is refType |y#0| |l#4|)) (and (|Seq#Contains| |l#5| |x#0|) (|Set#IsMember| (Reads1 |l#6| |l#7| |l#8| |l#9| |x#0|) ($Box refType |y#0|)))) (= ($Box refType $o@@0) ($Box refType |y#0|)))
 :qid |Utilsdfy.11:15|
 :skolemid |601|
 :pattern ( (|Set#IsMember| (Reads1 |l#10| |l#11| |l#12| |l#13| |x#0|) ($Box refType |y#0|)))
))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |676|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9| |l#10| |l#11| |l#12| |l#13|) $o@@0 $f))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@0))
 :pattern ( (|Set#IsMember| b o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((s@@0 T@U) (n@@0 Int) ) (!  (=> (and (<= 0 n@@0) (<= n@@0 (|Seq#Length| s@@0))) (= (|Seq#Length| (|Seq#Drop| s@@0 n@@0)) (- (|Seq#Length| s@@0) n@@0)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@0 n@@0)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((m@@4 T@U) (bx@@1 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@4) bx@@1) (U_2_bool (MapType0Select BoxType boolType m@@4 bx@@1)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@4) bx@@1))
)))
(assert (forall ((s@@1 T@U) (i Int) ) (!  (=> (and (< 0 i) (<= i (|Seq#Length| s@@1))) (< (|Seq#Rank| (|Seq#Drop| s@@1 i)) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |268|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@1 i)))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((s@@2 T@U) (n@@1 Int) (j@@0 Int) ) (!  (=> (and (and (<= 0 n@@1) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length| s@@2) n@@1))) (= (|Seq#Index| (|Seq#Drop| s@@2 n@@1) j@@0) (|Seq#Index| s@@2 (+ j@@0 n@@1))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@2 n@@1) j@@0))
)))
(assert (forall ((Utils._default.MaxF$T@@0 T@U) ($ly@@0 T@U) ($reveal@@0 Bool) ($Heap@@0 T@U) (|f#0@@0| T@U) (|ts#0@@0| T@U) (|default#0@@0| Int) ) (! (= (Utils.__default.MaxF Utils._default.MaxF$T@@0 ($LS $ly@@0) $reveal@@0 $Heap@@0 |f#0@@0| |ts#0@@0| |default#0@@0|) (Utils.__default.MaxF Utils._default.MaxF$T@@0 $ly@@0 $reveal@@0 $Heap@@0 |f#0@@0| |ts#0@@0| |default#0@@0|))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( (Utils.__default.MaxF Utils._default.MaxF$T@@0 ($LS $ly@@0) $reveal@@0 $Heap@@0 |f#0@@0| |ts#0@@0| |default#0@@0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@0| Int) (|y#0@@0| Int) ) (!  (=> (or (|Utils.__default.Max#canCall| (LitInt |x#0@@0|) (LitInt |y#0@@0|)) (< 0 $FunctionContextHeight)) (= (Utils.__default.Max (LitInt |x#0@@0|) (LitInt |y#0@@0|)) (ite (> |x#0@@0| |y#0@@0|) |x#0@@0| |y#0@@0|)))
 :qid |Utilsdfy.5:16|
 :weight 3
 :skolemid |584|
 :pattern ( (Utils.__default.Max (LitInt |x#0@@0|) (LitInt |y#0@@0|)))
))))
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
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((f@@1 T@U) (t0@@3 T@U) (t1@@3 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@3 t1@@3) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@3 h@@0) (Requires1 t0@@3 t1@@3 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@3 t1@@3 h@@0 f@@1 bx0@@0) t1@@3 h@@0))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@3 t1@@3 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@3 t1@@3) h@@0))
)))
(assert (forall ((s@@3 T@U) (x@@6 T@U) ) (! (= (|Seq#Contains| s@@3 x@@6) (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@3))) (= (|Seq#Index| s@@3 i@@0) x@@6))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@3 i@@0))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@3 x@@6))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (|Seq#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@1 b@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Utils._default.MaxF$T@@1 T@U) ($ly@@1 T@U) ($Heap@@1 T@U) (|f#0@@1| T@U) (|ts#0@@1| T@U) (|default#0@@1| Int) ) (!  (=> (or (|Utils.__default.MaxF#canCall| Utils._default.MaxF$T@@1 $Heap@@1 |f#0@@1| |ts#0@@1| |default#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) ($Is HandleTypeType |f#0@@1| (Tclass._System.___hFunc1 Utils._default.MaxF$T@@1 TInt))) ($Is SeqType |ts#0@@1| (TSeq Utils._default.MaxF$T@@1))) (and (forall ((|t#4| T@U) ) (!  (=> (and ($IsBox |t#4| Utils._default.MaxF$T@@1) (|Seq#Contains| |ts#0@@1| |t#4|)) (Requires1 Utils._default.MaxF$T@@1 TInt $Heap@@1 |f#0@@1| |t#4|))
 :qid |Utilsdfy.12:21|
 :skolemid |595|
 :pattern ( (Requires1 Utils._default.MaxF$T@@1 TInt $Heap@@1 |f#0@@1| |t#4|))
 :pattern ( (|Seq#Contains| |ts#0@@1| |t#4|))
)) (forall ((|t#5| T@U) ) (!  (=> (and ($IsBox |t#5| Utils._default.MaxF$T@@1) (|Seq#Contains| |ts#0@@1| |t#5|)) (<= |default#0@@1| (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@1 TInt $Heap@@1 |f#0@@1| |t#5|)))))
 :qid |Utilsdfy.13:21|
 :skolemid |596|
 :pattern ( ($Unbox intType (Apply1 Utils._default.MaxF$T@@1 TInt $Heap@@1 |f#0@@1| |t#5|)))
 :pattern ( (|Seq#Contains| |ts#0@@1| |t#5|))
)))))) (and (=> (not (|Seq#Equal| |ts#0@@1| |Seq#Empty|)) (and (|Utils.__default.MaxF#canCall| Utils._default.MaxF$T@@1 $Heap@@1 |f#0@@1| (|Seq#Drop| |ts#0@@1| (LitInt 1)) |default#0@@1|) (|Utils.__default.Max#canCall| (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@1 TInt $Heap@@1 |f#0@@1| (|Seq#Index| |ts#0@@1| (LitInt 0))))) (Utils.__default.MaxF Utils._default.MaxF$T@@1 $ly@@1 reveal_Utils._default.MaxF $Heap@@1 |f#0@@1| (|Seq#Drop| |ts#0@@1| (LitInt 1)) |default#0@@1|)))) (= (Utils.__default.MaxF Utils._default.MaxF$T@@1 ($LS $ly@@1) true $Heap@@1 |f#0@@1| |ts#0@@1| |default#0@@1|) (ite (|Seq#Equal| |ts#0@@1| |Seq#Empty|) |default#0@@1| (Utils.__default.Max (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@1 TInt $Heap@@1 |f#0@@1| (|Seq#Index| |ts#0@@1| (LitInt 0))))) (Utils.__default.MaxF Utils._default.MaxF$T@@1 $ly@@1 reveal_Utils._default.MaxF $Heap@@1 |f#0@@1| (|Seq#Drop| |ts#0@@1| (LitInt 1)) |default#0@@1|))))))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( (Utils.__default.MaxF Utils._default.MaxF$T@@1 ($LS $ly@@1) true $Heap@@1 |f#0@@1| |ts#0@@1| |default#0@@1|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((f@@2 T@U) (t0@@4 T@U) (t1@@4 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@4)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@4)) (Requires1 t0@@4 t1@@4 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@4 t1@@4 h@@1 f@@2 bx0@@1) t1@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@4 t1@@4 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@4)))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@2 T@U) (v@@1 T@U) ) (!  (=> ($IsBox v@@1 ty) ($IsAllocBox v@@1 ty h@@2))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@1 ty h@@2))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall (($o@@1 T@U) ) (! ($Is refType $o@@1 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@1 Tclass._System.object?))
)))
(assert (forall ((v@@2 T@U) (t0@@5 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@5) h@@3) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i@@1) t0@@5 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@2 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@5) h@@3))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((f@@3 T@U) (t0@@6 T@U) (t1@@5 T@U) (h@@4 T@U) ) (!  (=> ($IsGoodHeap h@@4) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@6 t1@@5) h@@4) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@6) ($IsAllocBox bx0@@2 t0@@6 h@@4)) (Requires1 t0@@6 t1@@5 h@@4 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@6 t1@@5 h@@4 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@6 t1@@5 h@@4 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@6 t1@@5 h@@4 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@6 t1@@5 h@@4 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@6 t1@@5) h@@4))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@5)) bx@@5) ($Is HandleTypeType ($Unbox HandleTypeType bx@@5) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@5 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (|Set#Equal| (Reads1 t0@@7 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@7 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@7 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@7 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@7 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert (forall ((s@@5 T@U) (n@@2 Int) (x@@8 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@5 n@@2) x@@8) (exists ((i@@2 Int) ) (!  (and (and (and (<= 0 n@@2) (<= n@@2 i@@2)) (< i@@2 (|Seq#Length| s@@5))) (= (|Seq#Index| s@@5 i@@2) x@@8))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |237|
 :pattern ( (|Seq#Index| s@@5 i@@2))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |238|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@5 n@@2) x@@8))
)))
(assert (forall ((bx@@6 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@6 (TSeq t@@3)))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| T@U) (|l#4@@0| T@U) (|l#5@@0| T@U) (|l#6@@0| T@U) (|l#7@@0| T@U) (|l#8@@0| T@U) (|l#9@@0| T@U) (|l#10@@0| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0| |l#7@@0| |l#8@@0| |l#9@@0| |l#10@@0|) |$y#0|)) (exists ((|x#4| T@U) (|y#4| T@U) ) (!  (and (and (and ($IsBox |x#4| |l#0@@0|) ($Is refType |y#4| |l#1@@0|)) (and (|Seq#Contains| |l#2@@0| |x#4|) (|Set#IsMember| (Reads1 |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0| |x#4|) ($Box refType |y#4|)))) (= |$y#0| ($Box refType |y#4|)))
 :qid |Utilsdfy.11:15|
 :skolemid |615|
 :pattern ( (|Set#IsMember| (Reads1 |l#7@@0| |l#8@@0| |l#9@@0| |l#10@@0| |x#4|) ($Box refType |y#4|)))
)))
 :qid |unknown.0:0|
 :skolemid |677|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0| |l#7@@0| |l#8@@0| |l#9@@0| |l#10@@0|) |$y#0|))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@6 T@U) (n@@3 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@3) (<= n@@3 k)) (< k (|Seq#Length| s@@6))) (= (|Seq#Index| (|Seq#Drop| s@@6 n@@3) (- k n@@3)) (|Seq#Index| s@@6 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@6 k) (|Seq#Drop| s@@6 n@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@1| Int) (|y#0@@1| Int) ) (!  (=> (or (|Utils.__default.Max#canCall| |x#0@@1| |y#0@@1|) (< 0 $FunctionContextHeight)) (= (Utils.__default.Max |x#0@@1| |y#0@@1|) (ite (> |x#0@@1| |y#0@@1|) |x#0@@1| |y#0@@1|)))
 :qid |Utilsdfy.5:16|
 :skolemid |583|
 :pattern ( (Utils.__default.Max |x#0@@1| |y#0@@1|))
))))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@2 b@@2) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@2 o@@1) (|Set#IsMember| b@@2 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@2 o@@1))
 :pattern ( (|Set#IsMember| b@@2 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall ((s@@7 T@U) (m@@5 Int) (n@@4 Int) ) (!  (=> (and (and (<= 0 m@@5) (<= 0 n@@4)) (<= (+ m@@5 n@@4) (|Seq#Length| s@@7))) (= (|Seq#Drop| (|Seq#Drop| s@@7 m@@5) n@@4) (|Seq#Drop| s@@7 (+ m@@5 n@@4))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@7 m@@5) n@@4))
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
(assert (forall ((s@@8 T@U) ) (!  (=> (= (|Seq#Length| s@@8) 0) (= s@@8 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@8))
)))
(assert (forall ((h@@5 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@5))
)))
(assert (forall ((v@@4 T@U) (t0@@8 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@8)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@3) t0@@8))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@4 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@8)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |ts#0@@2| () T@U)
(declare-fun |m#0| () Int)
(declare-fun |default#0@@2| () Int)
(declare-fun Utils._default.MaxF$T@@2 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |f#0@@2| () T@U)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |##x#0@0| () Int)
(declare-fun |##ts#0@0| () T@U)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |##y#0@0| () Int)
(declare-fun $LZ () T@U)
(declare-fun |t#11@0| () T@U)
(declare-fun |t#10@0| () T@U)
(declare-fun |x#2@0| () T@U)
(declare-fun |y#2@0| () T@U)
(declare-fun |b$reqreads#2@2| () Bool)
(declare-fun |x#1@0| () T@U)
(declare-fun |y#1@0| () T@U)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |t#9@0| () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |t#8@0| () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Utils.__default.MaxF)
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
 (=> (= (ControlFlow 0 0) 51) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 10) (- 0 13)) (=> (|Seq#Equal| |ts#0@@2| |Seq#Empty|) (= |m#0| |default#0@@2|))) (=> (=> (|Seq#Equal| |ts#0@@2| |Seq#Empty|) (= |m#0| |default#0@@2|)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (=> (not (|Seq#Equal| |ts#0@@2| |Seq#Empty|)) (exists ((|t#6| T@U) ) (!  (and (and ($IsBox |t#6| Utils._default.MaxF$T@@2) (|Seq#Contains| |ts#0@@2| |t#6|)) (= (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#6|))) |m#0|))
 :qid |Utilsdfy.14:55|
 :skolemid |599|
 :pattern ( ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#6|)))
 :pattern ( (|Seq#Contains| |ts#0@@2| |t#6|))
)))) (=> (=> (not (|Seq#Equal| |ts#0@@2| |Seq#Empty|)) (exists ((|t#6@@0| T@U) ) (!  (and (and ($IsBox |t#6@@0| Utils._default.MaxF$T@@2) (|Seq#Contains| |ts#0@@2| |t#6@@0|)) (= (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#6@@0|))) |m#0|))
 :qid |Utilsdfy.14:55|
 :skolemid |599|
 :pattern ( ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#6@@0|)))
 :pattern ( (|Seq#Contains| |ts#0@@2| |t#6@@0|))
))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((|t#7| T@U) ) (!  (=> (and ($IsBox |t#7| Utils._default.MaxF$T@@2) (|Seq#Contains| |ts#0@@2| |t#7|)) (<= (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#7|))) |m#0|))
 :qid |Utilsdfy.15:20|
 :skolemid |600|
 :pattern ( ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#7|)))
 :pattern ( (|Seq#Contains| |ts#0@@2| |t#7|))
))) (=> (forall ((|t#7@@0| T@U) ) (!  (=> (and ($IsBox |t#7@@0| Utils._default.MaxF$T@@2) (|Seq#Contains| |ts#0@@2| |t#7@@0|)) (<= (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#7@@0|))) |m#0|))
 :qid |Utilsdfy.15:20|
 :skolemid |600|
 :pattern ( ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#7@@0|)))
 :pattern ( (|Seq#Contains| |ts#0@@2| |t#7@@0|))
)) (=> (= (ControlFlow 0 10) (- 0 9)) (<= |default#0@@2| |m#0|))))))))))
(let ((anon40_Else_correct  (=> (not (|Seq#Equal| |ts#0@@2| |Seq#Empty|)) (and (=> (= (ControlFlow 0 15) (- 0 24)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |ts#0@@2|)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |ts#0@@2|))) (and (=> (= (ControlFlow 0 15) (- 0 23)) (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| (|Seq#Index| |ts#0@@2| (LitInt 0)))) (=> (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| (|Seq#Index| |ts#0@@2| (LitInt 0))) (=> (and (and (= |b$reqreads#3@0| (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@2) alloc)))) (|Set#IsMember| (Reads1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| (|Seq#Index| |ts#0@@2| (LitInt 0))) ($Box refType $o@@2))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@2 $f@@0)))
 :qid |Utilsdfy.20:11|
 :skolemid |608|
))) (= |##x#0@0| (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| (|Seq#Index| |ts#0@@2| (LitInt 0))))))) (and ($IsAlloc intType (int_2_U |##x#0@0|) TInt $Heap@@2) ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 Utils._default.MaxF$T@@2 TInt) $Heap@@2))) (and (=> (= (ControlFlow 0 15) (- 0 22)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |ts#0@@2|)))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |ts#0@@2|))) (=> (= |##ts#0@0| (|Seq#Drop| |ts#0@@2| (LitInt 1))) (=> (and ($IsAlloc SeqType |##ts#0@0| (TSeq Utils._default.MaxF$T@@2) $Heap@@2) ($IsAlloc intType (int_2_U |default#0@@2|) TInt $Heap@@2)) (and (=> (= (ControlFlow 0 15) (- 0 21)) (forall ((|t#12| T@U) ) (!  (=> (and ($IsBox |t#12| Utils._default.MaxF$T@@2) (|Seq#Contains| |##ts#0@0| |t#12|)) (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#12|))
 :qid |Utilsdfy.12:21|
 :skolemid |609|
 :pattern ( (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#12|))
 :pattern ( (|Seq#Contains| |##ts#0@0| |t#12|))
))) (=> (forall ((|t#12@@0| T@U) ) (!  (=> (and ($IsBox |t#12@@0| Utils._default.MaxF$T@@2) (|Seq#Contains| |##ts#0@0| |t#12@@0|)) (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#12@@0|))
 :qid |Utilsdfy.12:21|
 :skolemid |610|
 :pattern ( (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#12@@0|))
 :pattern ( (|Seq#Contains| |##ts#0@0| |t#12@@0|))
)) (and (=> (= (ControlFlow 0 15) (- 0 20)) (forall ((|t#13| T@U) ) (!  (=> (and ($IsBox |t#13| Utils._default.MaxF$T@@2) (|Seq#Contains| |##ts#0@0| |t#13|)) (<= |default#0@@2| (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#13|)))))
 :qid |Utilsdfy.13:21|
 :skolemid |611|
 :pattern ( ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#13|)))
 :pattern ( (|Seq#Contains| |##ts#0@0| |t#13|))
))) (=> (and (forall ((|t#13@@0| T@U) ) (!  (=> (and ($IsBox |t#13@@0| Utils._default.MaxF$T@@2) (|Seq#Contains| |##ts#0@0| |t#13@@0|)) (<= |default#0@@2| (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#13@@0|)))))
 :qid |Utilsdfy.13:21|
 :skolemid |612|
 :pattern ( ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#13@@0|)))
 :pattern ( (|Seq#Contains| |##ts#0@0| |t#13@@0|))
)) (= |b$reqreads#4@0| (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@3) alloc)))) (exists ((|x#3| T@U) (|y#3| T@U) ) (!  (and (and (and ($IsBox |x#3| Utils._default.MaxF$T@@2) ($Is refType |y#3| Tclass._System.object?)) (and (|Seq#Contains| |##ts#0@0| |x#3|) (|Set#IsMember| (Reads1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |x#3|) ($Box refType |y#3|)))) (= ($Box refType $o@@3) ($Box refType |y#3|)))
 :qid |Utilsdfy.11:15|
 :skolemid |613|
 :pattern ( (|Set#IsMember| (Reads1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |x#3|) ($Box refType |y#3|)))
))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@3 $f@@1)))
 :qid |Utilsdfy.20:21|
 :skolemid |614|
)))) (and (=> (= (ControlFlow 0 15) (- 0 19)) (or (or (or (<= 0 |default#0@@2|) (and (|Set#Subset| (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |##ts#0@0| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|)) (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |ts#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|))) (not (|Set#Subset| (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |ts#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|)) (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |##ts#0@0| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|)))))) (< (|Seq#Rank| |##ts#0@0|) (|Seq#Rank| |ts#0@@2|))) (= |default#0@@2| |default#0@@2|))) (=> (or (or (or (<= 0 |default#0@@2|) (and (|Set#Subset| (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |##ts#0@0| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|)) (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |ts#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|))) (not (|Set#Subset| (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |ts#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|)) (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |##ts#0@0| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|)))))) (< (|Seq#Rank| |##ts#0@0|) (|Seq#Rank| |ts#0@@2|))) (= |default#0@@2| |default#0@@2|)) (and (=> (= (ControlFlow 0 15) (- 0 18)) (or (and (|Set#Subset| (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |##ts#0@0| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|)) (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |ts#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|))) (not (|Set#Subset| (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |ts#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|)) (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |##ts#0@0| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|))))) (and (|Set#Equal| (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |##ts#0@0| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|)) (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |ts#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|))) (or (< (|Seq#Rank| |##ts#0@0|) (|Seq#Rank| |ts#0@@2|)) (and (= (|Seq#Rank| |##ts#0@0|) (|Seq#Rank| |ts#0@@2|)) (< |default#0@@2| |default#0@@2|)))))) (=> (or (and (|Set#Subset| (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |##ts#0@0| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|)) (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |ts#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|))) (not (|Set#Subset| (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |ts#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|)) (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |##ts#0@0| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|))))) (and (|Set#Equal| (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |##ts#0@0| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|)) (|Set#FromBoogieMap| (|lambda#1| Utils._default.MaxF$T@@2 Tclass._System.object? |ts#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|))) (or (< (|Seq#Rank| |##ts#0@0|) (|Seq#Rank| |ts#0@@2|)) (and (= (|Seq#Rank| |##ts#0@0|) (|Seq#Rank| |ts#0@@2|)) (< |default#0@@2| |default#0@@2|))))) (=> (|Utils.__default.MaxF#canCall| Utils._default.MaxF$T@@2 $Heap@@2 |f#0@@2| (|Seq#Drop| |ts#0@@2| (LitInt 1)) |default#0@@2|) (=> (and (and (and (= |##y#0@0| (Utils.__default.MaxF Utils._default.MaxF$T@@2 ($LS $LZ) reveal_Utils._default.MaxF $Heap@@2 |f#0@@2| (|Seq#Drop| |ts#0@@2| (LitInt 1)) |default#0@@2|)) ($IsAlloc intType (int_2_U |##y#0@0|) TInt $Heap@@2)) (and (|Utils.__default.Max#canCall| (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| (|Seq#Index| |ts#0@@2| (LitInt 0))))) (Utils.__default.MaxF Utils._default.MaxF$T@@2 ($LS $LZ) reveal_Utils._default.MaxF $Heap@@2 |f#0@@2| (|Seq#Drop| |ts#0@@2| (LitInt 1)) |default#0@@2|)) (= (Utils.__default.MaxF Utils._default.MaxF$T@@2 ($LS $LZ) reveal_Utils._default.MaxF $Heap@@2 |f#0@@2| |ts#0@@2| |default#0@@2|) (Utils.__default.Max (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| (|Seq#Index| |ts#0@@2| (LitInt 0))))) (Utils.__default.MaxF Utils._default.MaxF$T@@2 ($LS $LZ) reveal_Utils._default.MaxF $Heap@@2 |f#0@@2| (|Seq#Drop| |ts#0@@2| (LitInt 1)) |default#0@@2|))))) (and (and (|Utils.__default.MaxF#canCall| Utils._default.MaxF$T@@2 $Heap@@2 |f#0@@2| (|Seq#Drop| |ts#0@@2| (LitInt 1)) |default#0@@2|) (|Utils.__default.Max#canCall| (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| (|Seq#Index| |ts#0@@2| (LitInt 0))))) (Utils.__default.MaxF Utils._default.MaxF$T@@2 ($LS $LZ) reveal_Utils._default.MaxF $Heap@@2 |f#0@@2| (|Seq#Drop| |ts#0@@2| (LitInt 1)) |default#0@@2|))) (and ($Is intType (int_2_U (Utils.__default.MaxF Utils._default.MaxF$T@@2 ($LS $LZ) reveal_Utils._default.MaxF $Heap@@2 |f#0@@2| |ts#0@@2| |default#0@@2|)) TInt) (= (Utils.__default.MaxF Utils._default.MaxF$T@@2 ($LS $LZ) reveal_Utils._default.MaxF $Heap@@2 |f#0@@2| |ts#0@@2| |default#0@@2|) |m#0|)))) (and (=> (= (ControlFlow 0 15) (- 0 17)) |b$reqreads#3@0|) (=> |b$reqreads#3@0| (and (=> (= (ControlFlow 0 15) (- 0 16)) |b$reqreads#4@0|) (=> |b$reqreads#4@0| (=> (= (ControlFlow 0 15) 10) GeneratedUnifiedExit_correct)))))))))))))))))))))))))))
(let ((anon40_Then_correct  (=> (|Seq#Equal| |ts#0@@2| |Seq#Empty|) (=> (and (and (= (Utils.__default.MaxF Utils._default.MaxF$T@@2 ($LS $LZ) reveal_Utils._default.MaxF $Heap@@2 |f#0@@2| |ts#0@@2| |default#0@@2|) |default#0@@2|) ($Is intType (int_2_U (Utils.__default.MaxF Utils._default.MaxF$T@@2 ($LS $LZ) reveal_Utils._default.MaxF $Heap@@2 |f#0@@2| |ts#0@@2| |default#0@@2|)) TInt)) (and (= (Utils.__default.MaxF Utils._default.MaxF$T@@2 ($LS $LZ) reveal_Utils._default.MaxF $Heap@@2 |f#0@@2| |ts#0@@2| |default#0@@2|) |m#0|) (= (ControlFlow 0 14) 10))) GeneratedUnifiedExit_correct))))
(let ((anon24_correct true))
(let ((anon39_Else_correct  (=> (and (=> (|Seq#Contains| |ts#0@@2| |t#11@0|) (<= (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#11@0|))) |m#0|)) (= (ControlFlow 0 4) 1)) anon24_correct)))
(let ((anon39_Then_correct  (=> (|Seq#Contains| |ts#0@@2| |t#11@0|) (and (=> (= (ControlFlow 0 2) (- 0 3)) (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#11@0|)) (=> (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#11@0|) (=> (and (<= (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#11@0|))) |m#0|) (= (ControlFlow 0 2) 1)) anon24_correct))))))
(let ((anon21_correct  (=> (and ($IsBox |t#11@0| Utils._default.MaxF$T@@2) ($IsAllocBox |t#11@0| Utils._default.MaxF$T@@2 $Heap@@2)) (and (=> (= (ControlFlow 0 5) 2) anon39_Then_correct) (=> (= (ControlFlow 0 5) 4) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (not (|Seq#Equal| |ts#0@@2| |Seq#Empty|)) (=> (and (and ($IsBox |t#10@0| Utils._default.MaxF$T@@2) ($IsAllocBox |t#10@0| Utils._default.MaxF$T@@2 $Heap@@2)) (|Seq#Contains| |ts#0@@2| |t#10@0|)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#10@0|)) (=> (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#10@0|) (=> (and (= (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#10@0|))) |m#0|) (= (ControlFlow 0 7) 5)) anon21_correct)))))))
(let ((anon38_Then_correct  (=> (|Seq#Equal| |ts#0@@2| |Seq#Empty|) (=> (and (= |m#0| |default#0@@2|) (= (ControlFlow 0 6) 5)) anon21_correct))))
(let ((anon36_Else_correct  (=> (not (and (|Seq#Contains| |ts#0@@2| |x#2@0|) (|Set#IsMember| (Reads1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |x#2@0|) ($Box refType |y#2@0|)))) (and (and (and (=> (= (ControlFlow 0 27) 14) anon40_Then_correct) (=> (= (ControlFlow 0 27) 15) anon40_Else_correct)) (=> (= (ControlFlow 0 27) 6) anon38_Then_correct)) (=> (= (ControlFlow 0 27) 7) anon38_Else_correct)))))
(let ((anon36_Then_correct  (=> (and (|Seq#Contains| |ts#0@@2| |x#2@0|) (|Set#IsMember| (Reads1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |x#2@0|) ($Box refType |y#2@0|))) (and (and (and (=> (= (ControlFlow 0 26) 14) anon40_Then_correct) (=> (= (ControlFlow 0 26) 15) anon40_Else_correct)) (=> (= (ControlFlow 0 26) 6) anon38_Then_correct)) (=> (= (ControlFlow 0 26) 7) anon38_Else_correct)))))
(let ((anon35_Else_correct  (=> (not (|Seq#Contains| |ts#0@@2| |x#2@0|)) (and (=> (= (ControlFlow 0 30) 26) anon36_Then_correct) (=> (= (ControlFlow 0 30) 27) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (|Seq#Contains| |ts#0@@2| |x#2@0|) (=> (and ($IsAllocBox ($Box HandleTypeType |f#0@@2|) (Tclass._System.___hFunc1 Utils._default.MaxF$T@@2 TInt) $Heap@@2) ($IsAllocBox |x#2@0| Utils._default.MaxF$T@@2 $Heap@@2)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |x#2@0|)) (=> (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |x#2@0|) (and (=> (= (ControlFlow 0 28) 26) anon36_Then_correct) (=> (= (ControlFlow 0 28) 27) anon36_Else_correct))))))))
(let ((anon34_Then_correct  (=> (and (and ($IsBox |x#2@0| Utils._default.MaxF$T@@2) ($IsAllocBox |x#2@0| Utils._default.MaxF$T@@2 $Heap@@2)) (and ($Is refType |y#2@0| Tclass._System.object?) ($IsAlloc refType |y#2@0| Tclass._System.object? $Heap@@2))) (and (=> (= (ControlFlow 0 31) 28) anon35_Then_correct) (=> (= (ControlFlow 0 31) 30) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (not (and (and ($IsBox |x#2@0| Utils._default.MaxF$T@@2) ($IsAllocBox |x#2@0| Utils._default.MaxF$T@@2 $Heap@@2)) (and ($Is refType |y#2@0| Tclass._System.object?) ($IsAlloc refType |y#2@0| Tclass._System.object? $Heap@@2)))) (and (and (and (=> (= (ControlFlow 0 25) 14) anon40_Then_correct) (=> (= (ControlFlow 0 25) 15) anon40_Else_correct)) (=> (= (ControlFlow 0 25) 6) anon38_Then_correct)) (=> (= (ControlFlow 0 25) 7) anon38_Else_correct)))))
(let ((anon12_correct  (and (=> (= (ControlFlow 0 32) (- 0 33)) |b$reqreads#2@2|) (=> |b$reqreads#2@2| (and (=> (= (ControlFlow 0 32) 31) anon34_Then_correct) (=> (= (ControlFlow 0 32) 25) anon34_Else_correct))))))
(let ((anon33_Else_correct  (=> (not (and (|Seq#Contains| |ts#0@@2| |x#1@0|) (|Set#IsMember| (Reads1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |x#1@0|) ($Box refType |y#1@0|)))) (=> (and (= |b$reqreads#2@2| |b$reqreads#2@1|) (= (ControlFlow 0 36) 32)) anon12_correct))))
(let ((anon33_Then_correct  (=> (and (and (|Seq#Contains| |ts#0@@2| |x#1@0|) (|Set#IsMember| (Reads1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |x#1@0|) ($Box refType |y#1@0|))) (and (= |b$reqreads#2@2| |b$reqreads#2@1|) (= (ControlFlow 0 35) 32))) anon12_correct)))
(let ((anon32_Else_correct  (=> (and (not (|Seq#Contains| |ts#0@@2| |x#1@0|)) (= |b$reqreads#2@1| true)) (and (=> (= (ControlFlow 0 39) 35) anon33_Then_correct) (=> (= (ControlFlow 0 39) 36) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (|Seq#Contains| |ts#0@@2| |x#1@0|) (=> (and ($IsAllocBox ($Box HandleTypeType |f#0@@2|) (Tclass._System.___hFunc1 Utils._default.MaxF$T@@2 TInt) $Heap@@2) ($IsAllocBox |x#1@0| Utils._default.MaxF$T@@2 $Heap@@2)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |x#1@0|)) (=> (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |x#1@0|) (=> (and (= |b$reqreads#2@0| (forall (($o@@4 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@4) alloc)))) (|Set#IsMember| (Reads1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |x#1@0|) ($Box refType $o@@4))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@4 $f@@2)))
 :qid |Utilsdfy.11:40|
 :skolemid |606|
))) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (and (=> (= (ControlFlow 0 37) 35) anon33_Then_correct) (=> (= (ControlFlow 0 37) 36) anon33_Else_correct)))))))))
(let ((anon31_Then_correct  (=> (and (and ($IsBox |x#1@0| Utils._default.MaxF$T@@2) ($IsAllocBox |x#1@0| Utils._default.MaxF$T@@2 $Heap@@2)) (and ($Is refType |y#1@0| Tclass._System.object?) ($IsAlloc refType |y#1@0| Tclass._System.object? $Heap@@2))) (and (=> (= (ControlFlow 0 40) 37) anon32_Then_correct) (=> (= (ControlFlow 0 40) 39) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (not (and (and ($IsBox |x#1@0| Utils._default.MaxF$T@@2) ($IsAllocBox |x#1@0| Utils._default.MaxF$T@@2 $Heap@@2)) (and ($Is refType |y#1@0| Tclass._System.object?) ($IsAlloc refType |y#1@0| Tclass._System.object? $Heap@@2)))) (=> (and (= |b$reqreads#2@2| true) (= (ControlFlow 0 34) 32)) anon12_correct))))
(let ((anon7_correct  (=> (forall ((|t#1@@0| T@U) ) (!  (=> (and ($IsBox |t#1@@0| Utils._default.MaxF$T@@2) (|Seq#Contains| |ts#0@@2| |t#1@@0|)) (<= |default#0@@2| (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#1@@0|)))))
 :qid |Utilsdfy.13:21|
 :skolemid |605|
 :pattern ( ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#1@@0|)))
 :pattern ( (|Seq#Contains| |ts#0@@2| |t#1@@0|))
)) (and (=> (= (ControlFlow 0 41) (- 0 43)) |b$reqreads#0@1|) (=> |b$reqreads#0@1| (and (=> (= (ControlFlow 0 41) (- 0 42)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 41) 40) anon31_Then_correct) (=> (= (ControlFlow 0 41) 34) anon31_Else_correct)))))))))
(let ((anon30_Else_correct  (=> (=> (|Seq#Contains| |ts#0@@2| |t#9@0|) (<= |default#0@@2| (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#9@0|))))) (=> (and (= |b$reqreads#1@1| true) (= (ControlFlow 0 46) 41)) anon7_correct))))
(let ((anon30_Then_correct  (=> (|Seq#Contains| |ts#0@@2| |t#9@0|) (and (=> (= (ControlFlow 0 44) (- 0 45)) (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#9@0|)) (=> (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#9@0|) (=> (and (and (= |b$reqreads#1@0| (forall (($o@@5 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@5) alloc)))) (|Set#IsMember| (Reads1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#9@0|) ($Box refType $o@@5))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@5 $f@@3)))
 :qid |Utilsdfy.13:47|
 :skolemid |604|
))) (<= |default#0@@2| (U_2_int ($Unbox intType (Apply1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#9@0|))))) (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= (ControlFlow 0 44) 41))) anon7_correct))))))
(let ((anon4_correct  (=> (forall ((|t#0@@0| T@U) ) (!  (=> (and ($IsBox |t#0@@0| Utils._default.MaxF$T@@2) (|Seq#Contains| |ts#0@@2| |t#0@@0|)) (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#0@@0|))
 :qid |Utilsdfy.12:21|
 :skolemid |603|
 :pattern ( (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#0@@0|))
 :pattern ( (|Seq#Contains| |ts#0@@2| |t#0@@0|))
)) (=> (and ($IsBox |t#9@0| Utils._default.MaxF$T@@2) ($IsAllocBox |t#9@0| Utils._default.MaxF$T@@2 $Heap@@2)) (and (=> (= (ControlFlow 0 47) 44) anon30_Then_correct) (=> (= (ControlFlow 0 47) 46) anon30_Else_correct))))))
(let ((anon29_Else_correct  (=> (=> (|Seq#Contains| |ts#0@@2| |t#8@0|) (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#8@0|)) (=> (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 49) 47)) anon4_correct))))
(let ((anon29_Then_correct  (=> (|Seq#Contains| |ts#0@@2| |t#8@0|) (=> (and ($IsAllocBox ($Box HandleTypeType |f#0@@2|) (Tclass._System.___hFunc1 Utils._default.MaxF$T@@2 TInt) $Heap@@2) ($IsAllocBox |t#8@0| Utils._default.MaxF$T@@2 $Heap@@2)) (=> (and (and (= |b$reqreads#0@0| (forall (($o@@6 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@6) alloc)))) (|Set#IsMember| (Reads1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#8@0|) ($Box refType $o@@6))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@6 $f@@4)))
 :qid |Utilsdfy.12:42|
 :skolemid |602|
))) (Requires1 Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| |t#8@0|)) (and (= |b$reqreads#0@1| |b$reqreads#0@0|) (= (ControlFlow 0 48) 47))) anon4_correct)))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc Utils._default.MaxF$T@@2 Tclass._System.object? |ts#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2| Utils._default.MaxF$T@@2 TInt $Heap@@2 |f#0@@2|)) (=> (and ($IsBox |t#8@0| Utils._default.MaxF$T@@2) ($IsAllocBox |t#8@0| Utils._default.MaxF$T@@2 $Heap@@2)) (and (=> (= (ControlFlow 0 50) 48) anon29_Then_correct) (=> (= (ControlFlow 0 50) 49) anon29_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) ($AlwaysAllocated Utils._default.MaxF$T@@2)) (and (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 Utils._default.MaxF$T@@2 TInt)) ($Is SeqType |ts#0@@2| (TSeq Utils._default.MaxF$T@@2))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 51) 50)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
