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
(declare-fun TReal () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._module.Iter () T@U)
(declare-fun Tagclass._module.Iter? () T@U)
(declare-fun class._module.Iter? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun tytagFamily$Iter () T@U)
(declare-fun field$xs () T@U)
(declare-fun field$_new () T@U)
(declare-fun field$x () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _module.Iter.stop (T@U) T@U)
(declare-fun Tclass._module.Iter? (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Iter.__decreases1 (T@U) T@U)
(declare-fun |lambda#2| (T@U) T@U)
(declare-fun _module.Iter.x () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._module.Iter (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun _module.Iter.a (T@U) T@U)
(declare-fun _module.Iter.__decreases0 (T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun _module.Iter.xs () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Iter.__new () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun IndexField (Int) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#3| (Bool) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun q@Real (Int) Real)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._module.Iter_0 (T@U) T@U)
(declare-fun Tclass._module.Iter?_0 (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.Iter.Valid (T@U T@U T@U) Bool)
(declare-fun _module.Iter.__reads (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun _module.Iter.__modifies (T@U) T@U)
(declare-fun |lambda#1| () T@U)
(declare-fun |lambda#4| (T@U) T@U)
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
(assert (distinct TInt TReal TagInt TagReal TagSet TagSeq alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._System.___hFunc1 Tagclass._module.Iter Tagclass._module.Iter? class._module.Iter? tytagFamily$nat tytagFamily$object tytagFamily$array |tytagFamily$_#Func1| tytagFamily$Iter field$xs field$_new field$x)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (DeclName alloc) allocName))
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
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((_module.Iter$X T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.Iter? _module.Iter$X))) ($IsBox (_module.Iter.stop $o@@0) _module.Iter$X))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (_module.Iter.stop $o@@0) (Tclass._module.Iter? _module.Iter$X))
)))
(assert (forall ((_module.Iter$X@@0 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._module.Iter? _module.Iter$X@@0))) ($IsBox (_module.Iter.__decreases1 $o@@1) _module.Iter$X@@0))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( (_module.Iter.__decreases1 $o@@1) (Tclass._module.Iter? _module.Iter$X@@0))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#i#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#2| |l#0|) |$l#0#heap#0| |$l#0#i#0|)) ($IsBox |$l#0#i#0| |l#0|))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#2| |l#0|) |$l#0#heap#0| |$l#0#i#0|))
)))
(assert (forall ((_module.Iter$X@@1 T@U) ($h T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._module.Iter? _module.Iter$X@@1)))) ($IsBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h $o@@2) _module.Iter.x) _module.Iter$X@@1))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h $o@@2) _module.Iter.x) (Tclass._module.Iter? _module.Iter$X@@1))
)))
(assert (forall ((_module.Iter$X@@2 T@U) ($h@@0 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._module.Iter? _module.Iter$X@@2)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@0 $o@@3) alloc)))) ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@0 $o@@3) _module.Iter.x) _module.Iter$X@@2 $h@@0))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@0 $o@@3) _module.Iter.x) (Tclass._module.Iter? _module.Iter$X@@2))
)))
(assert (forall ((|x#0| T@U) ($h@@1 T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h@@1)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h@@1))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@2) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@2))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@2))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@2))
)))
(assert (forall ((_module.Iter$X@@3 T@U) (|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.Iter _module.Iter$X@@3) $h@@3) ($IsAlloc refType |c#0@@0| (Tclass._module.Iter? _module.Iter$X@@3) $h@@3))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Iter _module.Iter$X@@3) $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Iter? _module.Iter$X@@3) $h@@3))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((_module.Iter$X@@4 T@U) ($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._module.Iter? _module.Iter$X@@4))) ($Is refType (_module.Iter.a $o@@4) (Tclass._System.array _module.Iter$X@@4)))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( (_module.Iter.a $o@@4) (Tclass._module.Iter? _module.Iter$X@@4))
)))
(assert (forall ((_module.Iter$X@@5 T@U) ($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.Iter? _module.Iter$X@@5))) ($Is refType (_module.Iter.__decreases0 $o@@5) (Tclass._System.array? _module.Iter$X@@5)))
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( (_module.Iter.__decreases0 $o@@5) (Tclass._module.Iter? _module.Iter$X@@5))
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
(assert (forall ((|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@4) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@4))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@4))
)))
(assert (= (FDim _module.Iter.xs) 0))
(assert (= (FieldOfDecl class._module.Iter? field$xs) _module.Iter.xs))
(assert ($IsGhostField _module.Iter.xs))
(assert (= (FDim _module.Iter.__new) 0))
(assert (= (FieldOfDecl class._module.Iter? field$_new) _module.Iter.__new))
(assert ($IsGhostField _module.Iter.__new))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@6 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@6 (Tclass._System.array? _System.array$arg@@1) $h@@5)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@5 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@6 (Tclass._System.array? _System.array$arg@@1) $h@@5))
)))
(assert (forall ((_module.Iter$X@@6 T@U) ($o@@7 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@7 (Tclass._module.Iter? _module.Iter$X@@6) $h@@6)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsAlloc refType $o@@7 (Tclass._module.Iter? _module.Iter$X@@6) $h@@6))
)))
(assert (= (FDim _module.Iter.x) 0))
(assert (= (FieldOfDecl class._module.Iter? field$x) _module.Iter.x))
(assert  (not ($IsGhostField _module.Iter.x)))
(assert (forall (($o@@8 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._System.object? $h@@7)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._System.object? $h@@7))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 Real) ) (! (= (LitReal x@@3) x@@3)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |19|
 :pattern ( (LitReal x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (= (Ctor SeqType) 9))
(assert (forall ((s T@U) (bx@@2 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx@@2 t)) ($Is SeqType (|Seq#Build| s bx@@2) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx@@2) (TSeq t)))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@8 T@U) ($o@@9 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@9)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@9) alloc)))) ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@9) (IndexField $i0)) _System.array$arg@@2 $h@@8))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@9) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
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
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
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
(assert (= (Ctor LayerTypeType) 10))
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
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_module.Iter$X@@7 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._module.Iter _module.Iter$X@@7))  (and ($Is refType |c#0@@3| (Tclass._module.Iter? _module.Iter$X@@7)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Iter _module.Iter$X@@7)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Iter? _module.Iter$X@@7)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@1) ($IsAlloc T@@1 v@@1 t@@0 h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@4 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@4 t@@1 h@@2) ($IsAllocBox bx@@4 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@4 t@@1 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@2 h@@3) ($IsAlloc T@@2 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@2 t@@2 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
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
(assert (forall ((_module.Iter$X@@8 T@U) ) (!  (and (= (Tag (Tclass._module.Iter _module.Iter$X@@8)) Tagclass._module.Iter) (= (TagFamily (Tclass._module.Iter _module.Iter$X@@8)) tytagFamily$Iter))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Tclass._module.Iter _module.Iter$X@@8))
)))
(assert (forall ((_module.Iter$X@@9 T@U) ) (!  (and (= (Tag (Tclass._module.Iter? _module.Iter$X@@9)) Tagclass._module.Iter?) (= (TagFamily (Tclass._module.Iter? _module.Iter$X@@9)) tytagFamily$Iter))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (Tclass._module.Iter? _module.Iter$X@@9))
)))
(assert (forall ((_module.Iter$X@@10 T@U) ($h@@9 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._module.Iter? _module.Iter$X@@10)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@9 $o@@10) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@9 $o@@10) _module.Iter.xs)) (TSeq _module.Iter$X@@10) $h@@9))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@9 $o@@10) _module.Iter.xs)) (Tclass._module.Iter? _module.Iter$X@@10))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((s@@1 T@U) (bx@@5 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s@@1) bx@@5) (U_2_bool (MapType1Select refType boolType s@@1 ($Unbox refType bx@@5))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s@@1) bx@@5))
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
(assert (forall ((_System.array$arg@@6 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@11 null) (= (dtype $o@@11) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@11 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_module.Iter$X@@11 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass._module.Iter? _module.Iter$X@@11))  (or (= $o@@12 null) (= (dtype $o@@12) (Tclass._module.Iter? _module.Iter$X@@11))))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($Is refType $o@@12 (Tclass._module.Iter? _module.Iter$X@@11)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((s@@2 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i) (|Seq#Index| s@@2 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@3) i))
)))
(assert (forall ((_module.Iter$X@@12 T@U) ($h@@10 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass._module.Iter? _module.Iter$X@@12)))) ($Is SetType ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@10 $o@@13) _module.Iter.__new)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@10 $o@@13) _module.Iter.__new)) (Tclass._module.Iter? _module.Iter$X@@12))
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
(assert (forall ((_module.Iter$X@@13 T@U) ($h@@11 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._module.Iter? _module.Iter$X@@13)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@11 $o@@14) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@11 $o@@14) _module.Iter.__new)) (TSet Tclass._System.object?) $h@@11))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@11 $o@@14) _module.Iter.__new)) (Tclass._module.Iter? _module.Iter$X@@13))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#3| |l#0@@0|) |$l#0#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (MapType1Select refType boolType (|lambda#3| |l#0@@0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@1|) |$l#0#ly#0|) |l#0@@1|)
 :qid |Iteratorsdfy.40:24|
 :skolemid |607|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@1|) |$l#0#ly#0|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@6 Int) ) (! (= (q@Real x@@6) (to_real x@@6))
 :qid |DafnyPreludebpl.579:15|
 :skolemid |114|
 :pattern ( (q@Real x@@6))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
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
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TInt) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@9 TInt))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TReal) (and (= ($Box realType ($Unbox realType bx@@10)) bx@@10) ($Is realType ($Unbox realType bx@@10) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@10 TReal))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((o@@7 T@U) ) (! (<= 0 (_System.array.Length o@@7))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@7))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Seq#Length| s@@3))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((v@@5 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@15) h@@8) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@11) ($IsAllocBox bx@@11 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@5 bx@@11))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@15) h@@8))
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
(assert (forall (($o@@15 T@U) ) (! ($Is refType $o@@15 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@15 Tclass._System.object?))
)))
(assert (forall ((v@@6 T@U) (t0@@16 T@U) (h@@9 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@16) h@@9) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@0) t0@@16 h@@9))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@16) h@@9))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((i@@1 Int) ) (! (= (FDim (IndexField i@@1)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((i@@2 Int) ) (! (= (IndexField_Inverse (IndexField i@@2)) i@@2)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@2))
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
(assert (forall ((_module.Iter$X@@14 T@U) ) (! (= (Tclass._module.Iter_0 (Tclass._module.Iter _module.Iter$X@@14)) _module.Iter$X@@14)
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Tclass._module.Iter _module.Iter$X@@14))
)))
(assert (forall ((_module.Iter$X@@15 T@U) ) (! (= (Tclass._module.Iter?_0 (Tclass._module.Iter? _module.Iter$X@@15)) _module.Iter$X@@15)
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (Tclass._module.Iter? _module.Iter$X@@15))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@7))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@12 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@12 $o@@16) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@16)) TInt $h@@12))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@16) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@12 $o@@16) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_module.Iter$X@@16 T@U) ($h@@13 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass._module.Iter? _module.Iter$X@@16)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@13 $o@@17) alloc)))) ($IsAllocBox (_module.Iter.stop $o@@17) _module.Iter$X@@16 $h@@13))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (_module.Iter.stop $o@@17) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@13 $o@@17) alloc)) (Tclass._module.Iter? _module.Iter$X@@16))
)))
(assert (forall ((_module.Iter$X@@17 T@U) ($h@@14 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._module.Iter? _module.Iter$X@@17)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@14 $o@@18) alloc)))) ($IsAllocBox (_module.Iter.__decreases1 $o@@18) _module.Iter$X@@17 $h@@14))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( (_module.Iter.__decreases1 $o@@18) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@14 $o@@18) alloc)) (Tclass._module.Iter? _module.Iter$X@@17))
)))
(assert (forall ((_module.Iter$X@@18 T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass._module.Iter _module.Iter$X@@18)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@19 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (or (or (= $o@@19 this) (|Set#IsMember| (_module.Iter.__reads this) ($Box refType $o@@19))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h0 this) _module.Iter.__new)) ($Box refType $o@@19)))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h0 $o@@19) $f) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h1 $o@@19) $f)))
 :qid |unknown.0:0|
 :skolemid |549|
)) (= (_module.Iter.Valid _module.Iter$X@@18 $h0 this) (_module.Iter.Valid _module.Iter$X@@18 $h1 this))))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Iter.Valid _module.Iter$X@@18 $h1 this))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@15 T@U) ($o@@20 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@20)))) ($IsBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@15 $o@@20) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@15 $o@@20) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
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
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@12)) bx@@12) ($Is HandleTypeType ($Unbox HandleTypeType bx@@12) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@12 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@21 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@21 $f@@0))  (=> (and (or (not (= $o@@21 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@21) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |602|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@21 $f@@0))
)))
(assert (forall ((_module.Iter$X@@19 T@U) ($h@@16 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) (Tclass._module.Iter? _module.Iter$X@@19)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@16 $o@@22) alloc)))) ($IsAlloc refType (_module.Iter.a $o@@22) (Tclass._System.array _module.Iter$X@@19) $h@@16))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (_module.Iter.a $o@@22) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@16 $o@@22) alloc)) (Tclass._module.Iter? _module.Iter$X@@19))
)))
(assert (forall ((_module.Iter$X@@20 T@U) ($h@@17 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) (Tclass._module.Iter? _module.Iter$X@@20)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@17 $o@@23) alloc)))) ($IsAlloc refType (_module.Iter.__decreases0 $o@@23) (Tclass._System.array? _module.Iter$X@@20) $h@@17))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( (_module.Iter.__decreases0 $o@@23) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@17 $o@@23) alloc)) (Tclass._module.Iter? _module.Iter$X@@20))
)))
(assert (forall ((s@@4 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@4 val@@4)) s@@4) (= (|Seq#Build_inv1| (|Seq#Build| s@@4 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@4 val@@4))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((_module.Iter$X@@21 T@U) ($h@@18 T@U) ($o@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) (Tclass._module.Iter? _module.Iter$X@@21)))) ($Is SeqType ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@18 $o@@24) _module.Iter.xs)) (TSeq _module.Iter$X@@21)))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@18 $o@@24) _module.Iter.xs)) (Tclass._module.Iter? _module.Iter$X@@21))
)))
(assert (forall ((t0@@18 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@18) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@18 t1@@15)))) (|Set#Equal| (Reads1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@18 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@18 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((bx@@13 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@13 (TSet t@@8)))
)))
(assert (forall ((bx@@14 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@14 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@14)) bx@@14) ($Is SeqType ($Unbox SeqType bx@@14) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@14 (TSeq t@@9)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@15 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@16 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_module.Iter$X@@22 T@U) (bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 (Tclass._module.Iter _module.Iter$X@@22)) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) (Tclass._module.Iter _module.Iter$X@@22))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@17 (Tclass._module.Iter _module.Iter$X@@22)))
)))
(assert (forall ((_module.Iter$X@@23 T@U) (bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 (Tclass._module.Iter? _module.Iter$X@@23)) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) (Tclass._module.Iter? _module.Iter$X@@23))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsBox bx@@18 (Tclass._module.Iter? _module.Iter$X@@23)))
)))
(assert (forall ((h@@11 T@U) (r@@3 T@U) (f@@13 T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType1Store refType (MapType1Type FieldType BoxType) h@@11 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@11 r@@3) f@@13 x@@8))) ($HeapSucc h@@11 (MapType1Store refType (MapType1Type FieldType BoxType) h@@11 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@11 r@@3) f@@13 x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType1Store refType (MapType1Type FieldType BoxType) h@@11 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@11 r@@3) f@@13 x@@8)))
)))
(assert (forall ((_module.Iter$X@@24 T@U) ($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) (Tclass._module.Iter? _module.Iter$X@@24))) ($Is SetType (_module.Iter.__reads $o@@25) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (_module.Iter.__reads $o@@25) (Tclass._module.Iter? _module.Iter$X@@24))
)))
(assert (forall ((_module.Iter$X@@25 T@U) ($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) (Tclass._module.Iter? _module.Iter$X@@25))) ($Is SetType (_module.Iter.__modifies $o@@26) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( (_module.Iter.__modifies $o@@26) (Tclass._module.Iter? _module.Iter$X@@25))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@5 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@5) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@5))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@2 b@@2) (forall ((o@@8 T@U) ) (! (= (|Set#IsMember| a@@2 o@@8) (|Set#IsMember| b@@2 o@@8))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@2 o@@8))
 :pattern ( (|Set#IsMember| b@@2 o@@8))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall ((_module.Iter$X@@26 T@U) ($h@@19 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) (Tclass._module.Iter? _module.Iter$X@@26)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@19 $o@@27) alloc)))) ($IsAlloc SetType (_module.Iter.__reads $o@@27) (TSet Tclass._System.object?) $h@@19))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (_module.Iter.__reads $o@@27) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@19 $o@@27) alloc)) (Tclass._module.Iter? _module.Iter$X@@26))
)))
(assert (forall ((_module.Iter$X@@27 T@U) ($h@@20 T@U) ($o@@28 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@28 null)) (not true)) (= (dtype $o@@28) (Tclass._module.Iter? _module.Iter$X@@27)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@20 $o@@28) alloc)))) ($IsAlloc SetType (_module.Iter.__modifies $o@@28) (TSet Tclass._System.object?) $h@@20))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (_module.Iter.__modifies $o@@28) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@20 $o@@28) alloc)) (Tclass._module.Iter? _module.Iter$X@@27))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall ((|$l#0#heap#0@@0| T@U) (|$l#0#i#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#1| |$l#0#heap#0@@0| |$l#0#i#0@@0|) ($Box realType (real_2_U (q@Real (U_2_int ($Unbox intType |$l#0#i#0@@0|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |603|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#1| |$l#0#heap#0@@0| |$l#0#i#0@@0|))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@10))) (Lit BoxType ($Box realType (real_2_U x@@10))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |20|
 :pattern ( ($Box realType (real_2_U (LitReal x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((h@@12 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@12)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@12))
)))
(assert (forall ((h@@13 T@U) (v@@8 T@U) ) (! ($IsAlloc realType v@@8 TReal h@@13)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@8 TReal h@@13))
)))
(assert (forall ((v@@9 T@U) (t0@@19 T@U) ) (! (= ($Is SeqType v@@9 (TSeq t0@@19)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@9))) ($IsBox (|Seq#Index| v@@9 i@@3) t0@@19))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@9 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@9 (TSeq t0@@19)))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#i#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#4| |l#0@@3|) |$l#0#heap#0@@1| |$l#0#i#0@@1|) |l#0@@3|)
 :qid |Iteratorsdfy.40:24|
 :skolemid |606|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#4| |l#0@@3|) |$l#0#heap#0@@1| |$l#0#i#0@@1|))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is intType v@@10 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@10 TInt))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is realType v@@11 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@11 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@0| () Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun |lambdaResult#0| () Real)
(declare-fun $Heap () T@U)
(declare-fun |_module.Iter.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun call4formal@this@0 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap@6 () T@U)
(declare-fun call4formal@this@0@@0 () T@U)
(declare-fun |$w$loop#1@0| () Bool)
(declare-fun |call3formal@more#0@0| () Bool)
(declare-fun |$decr$loop#10@1| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |stop##0@0| () Real)
(declare-fun |stop##1@0| () Real)
(declare-fun $Heap@5 () T@U)
(declare-fun |$decr_init$loop#10@0| () Int)
(declare-fun call4formal@this () T@U)
(declare-fun call0formal@_module.Iter$X () T@U)
(declare-fun |call2formal@stop#0@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |call3formal@more#0@0@@0| () Bool)
(declare-fun $Heap@3 () T@U)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun $LZ () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call4formal@this@@0 () T@U)
(declare-fun call0formal@_module.Iter$X@@0 () T@U)
(declare-fun |call2formal@stop#0@0@@0| () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |defass#iter#0| () Bool)
(declare-fun |iter#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Client)
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
 (=> (= (ControlFlow 0 0) 73) (let ((anon3_correct true))
(let ((anon28_Else_correct  (=> (and (< |i#0@0| (LitInt 0)) (= (ControlFlow 0 69) 67)) anon3_correct)))
(let ((anon28_Then_correct  (=> (<= (LitInt 0) |i#0@0|) (=> (and (and (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false)) (= |lambdaResult#0| (q@Real |i#0@0|))) (and ($Is realType (real_2_U |lambdaResult#0|) TReal) (= (ControlFlow 0 68) 67))) anon3_correct))))
(let ((anon27_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap |$lambdaHeap#0@0|) ($HeapSucc $Heap |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 70) 68) anon28_Then_correct) (=> (= (ControlFlow 0 70) 69) anon28_Else_correct)))))
(let ((anon8_correct  (=> (|_module.Iter.Valid#canCall| TReal $Heap@2 call4formal@this@0) (=> (and (_module.Iter.Valid TReal $Heap@2 call4formal@this@0) (and (forall (($o@@29 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@29)) (or (not (= $o@@29 null)) (not true)))
 :qid |Iteratorsdfy.44:31|
 :skolemid |491|
 :pattern (  (or (not (= $o@@29 null)) (not true)))
)) (forall (($o@@30 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@30)) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@30) alloc)))))
 :qid |Iteratorsdfy.44:31|
 :skolemid |492|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@30)))
)))) (and (=> (= (ControlFlow 0 51) (- 0 53)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 51) (- 0 52)) true) (=> (= (ControlFlow 0 51) (- 0 50)) (or (not (= call4formal@this@0 null)) (not true))))))))))
(let ((anon31_Else_correct  (=> (and (not (_module.Iter.Valid TReal $Heap@2 call4formal@this@0)) (= (ControlFlow 0 57) 51)) anon8_correct)))
(let ((anon31_Then_correct  (=> (_module.Iter.Valid TReal $Heap@2 call4formal@this@0) (and (=> (= (ControlFlow 0 54) (- 0 56)) true) (and (=> (= (ControlFlow 0 54) (- 0 55)) (or (not (= call4formal@this@0 null)) (not true))) (=> (= (ControlFlow 0 54) 51) anon8_correct))))))
(let ((anon30_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 58) (- 0 60)) true) (and (=> (= (ControlFlow 0 58) (- 0 59)) (or (not (= call4formal@this@0 null)) (not true))) (=> (and ($IsAllocBox ($Box refType call4formal@this@0) (Tclass._module.Iter? TReal) $Heap@2) (|_module.Iter.Valid#canCall| TReal $Heap@2 call4formal@this@0)) (and (=> (= (ControlFlow 0 58) 54) anon31_Then_correct) (=> (= (ControlFlow 0 58) 57) anon31_Else_correct))))))))
(let ((anon19_correct  (=> (|_module.Iter.Valid#canCall| TReal $Heap@6 call4formal@this@0@@0) (=> (and (_module.Iter.Valid TReal $Heap@6 call4formal@this@0@@0) (and (forall (($o@@31 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@31)) (or (not (= $o@@31 null)) (not true)))
 :qid |Iteratorsdfy.55:31|
 :skolemid |499|
 :pattern (  (or (not (= $o@@31 null)) (not true)))
)) (forall (($o@@32 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@32)) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@32) alloc)))))
 :qid |Iteratorsdfy.55:31|
 :skolemid |500|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@32)))
)))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 27) (- 0 28)) true) (=> (= (ControlFlow 0 27) (- 0 26)) (or (not (= call4formal@this@0@@0 null)) (not true))))))))))
(let ((anon36_Else_correct  (=> (and (not (_module.Iter.Valid TReal $Heap@6 call4formal@this@0@@0)) (= (ControlFlow 0 33) 27)) anon19_correct)))
(let ((anon36_Then_correct  (=> (_module.Iter.Valid TReal $Heap@6 call4formal@this@0@@0) (and (=> (= (ControlFlow 0 30) (- 0 32)) true) (and (=> (= (ControlFlow 0 30) (- 0 31)) (or (not (= call4formal@this@0@@0 null)) (not true))) (=> (= (ControlFlow 0 30) 27) anon19_correct))))))
(let ((anon35_Then_correct  (=> (not |$w$loop#1@0|) (and (=> (= (ControlFlow 0 34) (- 0 36)) true) (and (=> (= (ControlFlow 0 34) (- 0 35)) (or (not (= call4formal@this@0@@0 null)) (not true))) (=> (and ($IsAllocBox ($Box refType call4formal@this@0@@0) (Tclass._module.Iter? TReal) $Heap@6) (|_module.Iter.Valid#canCall| TReal $Heap@6 call4formal@this@0@@0)) (and (=> (= (ControlFlow 0 34) 30) anon36_Then_correct) (=> (= (ControlFlow 0 34) 33) anon36_Else_correct))))))))
(let ((after_1_correct true))
(let ((anon38_Then_correct  (=> (and (not |call3formal@more#0@0|) (= (ControlFlow 0 19) 17)) after_1_correct)))
(let ((anon37_Then_correct  (=> (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (= (ControlFlow 0 18) 17)) after_1_correct)))
(let ((anon38_Else_correct  (=> |call3formal@more#0@0| (and (=> (= (ControlFlow 0 11) (- 0 16)) true) (and (=> (= (ControlFlow 0 11) (- 0 15)) (or (not (= call4formal@this@0@@0 null)) (not true))) (and (=> (= (ControlFlow 0 11) (- 0 14)) (or (<= 0 |$decr$loop#10@1|) (= (- (_System.array.Length $nw@0) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 call4formal@this@0@@0) _module.Iter.xs)))) |$decr$loop#10@1|))) (=> (or (<= 0 |$decr$loop#10@1|) (= (- (_System.array.Length $nw@0) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 call4formal@this@0@@0) _module.Iter.xs)))) |$decr$loop#10@1|)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (< (- (_System.array.Length $nw@0) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 call4formal@this@0@@0) _module.Iter.xs)))) |$decr$loop#10@1|)) (=> (< (- (_System.array.Length $nw@0) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 call4formal@this@0@@0) _module.Iter.xs)))) |$decr$loop#10@1|) (=> (|_module.Iter.Valid#canCall| TReal $Heap@7 call4formal@this@0@@0) (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> |$w$loop#1@0| (_module.Iter.Valid TReal $Heap@7 call4formal@this@0@@0))) (=> (=> |$w$loop#1@0| (_module.Iter.Valid TReal $Heap@7 call4formal@this@0@@0)) (=> (= (ControlFlow 0 11) (- 0 10)) (=> |$w$loop#1@0| (and (forall (($o@@33 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@33)) (or (not (= $o@@33 null)) (not true)))
 :qid |Iteratorsdfy.55:31|
 :skolemid |501|
 :pattern (  (or (not (= $o@@33 null)) (not true)))
)) (forall (($o@@34 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@34)) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@34) alloc)))))
 :qid |Iteratorsdfy.55:31|
 :skolemid |502|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@34)))
)))))))))))))))))
(let ((anon37_Else_correct  (=> (and (U_2_bool (Lit boolType (bool_2_U true))) (= |$decr$loop#10@1| (- (_System.array.Length $nw@0) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.xs)))))) (and (=> (= (ControlFlow 0 20) (- 0 24)) true) (and (=> (= (ControlFlow 0 20) (- 0 23)) (or (not (= call4formal@this@0@@0 null)) (not true))) (=> (or (not (= call4formal@this@0@@0 null)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (forall (($o@@35 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@35) alloc)))) (or (or (= $o@@35 call4formal@this@0@@0) (|Set#IsMember| (_module.Iter.__modifies call4formal@this@0@@0) ($Box refType $o@@35))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@35)))) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@35 $f@@1)))
 :qid |Iteratorsdfy.58:30|
 :skolemid |505|
))) (=> (forall (($o@@36 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@36) alloc)))) (or (or (= $o@@36 call4formal@this@0@@0) (|Set#IsMember| (_module.Iter.__modifies call4formal@this@0@@0) ($Box refType $o@@36))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@36)))) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@36 $f@@2)))
 :qid |Iteratorsdfy.58:30|
 :skolemid |505|
)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (_module.Iter.Valid TReal $Heap@6 call4formal@this@0@@0)) (=> (_module.Iter.Valid TReal $Heap@6 call4formal@this@0@@0) (=> (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (forall (($o@@37 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@37)) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@37)))) (or (not (= $o@@37 null)) (not true)))
 :qid |Iteratorsdfy.16:10|
 :skolemid |553|
 :pattern (  (or (not (= $o@@37 null)) (not true)))
)) (forall (($o@@38 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@38)) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@38)))) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@38) alloc)))))
 :qid |Iteratorsdfy.16:10|
 :skolemid |554|
 :pattern ( ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@38) alloc)))
)))) (=> (and (and (and (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType null))) (=> |call3formal@more#0@0| (|_module.Iter.Valid#canCall| TReal $Heap@7 call4formal@this@0@@0))) (and (=> |call3formal@more#0@0| (_module.Iter.Valid TReal $Heap@7 call4formal@this@0@@0)) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 call4formal@this@0@@0) _module.Iter.xs)) (ite |call3formal@more#0@0| (|Seq#Append| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.xs)) (|Seq#Build| |Seq#Empty| (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 call4formal@this@0@@0) _module.Iter.x))) ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.xs)))))) (and (and (=> |call3formal@more#0@0| (<= (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 call4formal@this@0@@0) _module.Iter.xs))) (_System.array.Length (_module.Iter.a call4formal@this@0@@0)))) (=> (not |call3formal@more#0@0|) (<= (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 call4formal@this@0@@0) _module.Iter.xs))) (_System.array.Length (_module.Iter.a call4formal@this@0@@0))))) (and (forall (($o@@39 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@39) alloc)))) (or (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $o@@39) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@39)) (or (or (= $o@@39 call4formal@this@0@@0) (|Set#IsMember| (_module.Iter.__modifies call4formal@this@0@@0) ($Box refType $o@@39))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@39)))))
 :qid |Iteratorsdfy.16:10|
 :skolemid |555|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $o@@39))
)) ($HeapSucc $Heap@6 $Heap@7)))) (and (=> (= (ControlFlow 0 20) 19) anon38_Then_correct) (=> (= (ControlFlow 0 20) 11) anon38_Else_correct))))))))))))))
(let ((anon35_Else_correct  (=> |$w$loop#1@0| (and (=> (= (ControlFlow 0 25) 18) anon37_Then_correct) (=> (= (ControlFlow 0 25) 20) anon37_Else_correct)))))
(let ((anon34_LoopBody_correct  (and (=> (= (ControlFlow 0 37) 34) anon35_Then_correct) (=> (= (ControlFlow 0 37) 25) anon35_Else_correct))))
(let ((anon34_LoopDone_correct true))
(let ((anon34_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (=> (and (and (and (and (and (and (and (not false) true) (and (<= 2.0 |stop##0@0|) (<= |stop##0@0| 3.0))) |$w$loop#0@0|) (= |stop##1@0| 2.0)) (=> |$w$loop#1@0| (|_module.Iter.Valid#canCall| TReal $Heap@6 call4formal@this@0@@0))) (and (=> |$w$loop#1@0| (_module.Iter.Valid TReal $Heap@6 call4formal@this@0@@0)) (=> |$w$loop#1@0| (and (forall (($o@@40 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@40)) (or (not (= $o@@40 null)) (not true)))
 :qid |Iteratorsdfy.55:31|
 :skolemid |501|
 :pattern (  (or (not (= $o@@40 null)) (not true)))
)) (forall (($o@@41 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@41)) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@41) alloc)))))
 :qid |Iteratorsdfy.55:31|
 :skolemid |502|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@41)))
)))))) (and (and (forall (($o@@42 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@42) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@42) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@42)))
 :qid |Iteratorsdfy.54:3|
 :skolemid |503|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@42))
)) ($HeapSucc $Heap@5 $Heap@6)) (and (forall (($o@@43 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@43) alloc)))) (or (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@43) $f@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@43) $f@@3)) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@43 $f@@3))))
 :qid |Iteratorsdfy.54:3|
 :skolemid |504|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@43) $f@@3))
)) (<= (- (_System.array.Length $nw@0) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 call4formal@this@0@@0) _module.Iter.xs)))) |$decr_init$loop#10@0|)))) (and (=> (= (ControlFlow 0 38) 9) anon34_LoopDone_correct) (=> (= (ControlFlow 0 38) 37) anon34_LoopBody_correct))))))
(let ((after_0_correct  (=> (= |stop##1@0| (LitReal 2.0)) (=> (and (and (and (or (not (= call4formal@this null)) (not true)) (and ($Is refType call4formal@this (Tclass._module.Iter call0formal@_module.Iter$X)) ($IsAlloc refType call4formal@this (Tclass._module.Iter call0formal@_module.Iter$X) $Heap))) (= |call2formal@stop#0@0| ($Box realType (real_2_U |stop##1@0|)))) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5))) (=> (and (and (and (and (or (not (= call4formal@this@0@@0 null)) (not true)) (and ($Is refType call4formal@this@0@@0 (Tclass._module.Iter TReal)) ($IsAlloc refType call4formal@this@0@@0 (Tclass._module.Iter TReal) $Heap@5))) (and (= (_module.Iter.a call4formal@this@0@@0) $nw@0) (= (_module.Iter.stop call4formal@this@0@@0) |call2formal@stop#0@0|))) (and (and (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 call4formal@this@0@@0) _module.Iter.xs)) |Seq#Empty|) (|_module.Iter.Valid#canCall| TReal $Heap@5 call4formal@this@0@@0)) (and (_module.Iter.Valid TReal $Heap@5 call4formal@this@0@@0) (|Set#Equal| (_module.Iter.__reads call4formal@this@0@@0) |Set#Empty|)))) (and (and (and (|Set#Equal| (_module.Iter.__modifies call4formal@this@0@@0) |Set#Empty|) (|Set#Equal| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 call4formal@this@0@@0) _module.Iter.__new)) |Set#Empty|)) (and (= (_module.Iter.__decreases0 call4formal@this@0@@0) $nw@0) (= (_module.Iter.__decreases1 call4formal@this@0@@0) |call2formal@stop#0@0|))) (and (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 call4formal@this@0@@0) alloc)))) (forall (($o@@44 T@U) ) (!  (=> (and (or (not (= $o@@44 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $o@@44) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@44) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $o@@44)))
 :qid |Iteratorsdfy.16:10|
 :skolemid |548|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@44))
))) (and ($HeapSucc $Heap@4 $Heap@5) (= |$decr_init$loop#10@0| (- (_System.array.Length $nw@0) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 call4formal@this@0@@0) _module.Iter.xs))))))))) (and (=> (= (ControlFlow 0 39) (- 0 41)) (=> |$w$loop#1@0| (_module.Iter.Valid TReal $Heap@5 call4formal@this@0@@0))) (=> (=> |$w$loop#1@0| (_module.Iter.Valid TReal $Heap@5 call4formal@this@0@@0)) (and (=> (= (ControlFlow 0 39) (- 0 40)) (=> |$w$loop#1@0| (and (forall (($o@@45 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@45)) (or (not (= $o@@45 null)) (not true)))
 :qid |Iteratorsdfy.55:31|
 :skolemid |501|
 :pattern (  (or (not (= $o@@45 null)) (not true)))
)) (forall (($o@@46 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@46)) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@46) alloc)))))
 :qid |Iteratorsdfy.55:31|
 :skolemid |502|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@46)))
))))) (=> (=> |$w$loop#1@0| (and (forall (($o@@47 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@47)) (or (not (= $o@@47 null)) (not true)))
 :qid |Iteratorsdfy.55:31|
 :skolemid |501|
 :pattern (  (or (not (= $o@@47 null)) (not true)))
)) (forall (($o@@48 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@48)) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@48) alloc)))))
 :qid |Iteratorsdfy.55:31|
 :skolemid |502|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 call4formal@this@0@@0) _module.Iter.__new)) ($Box refType $o@@48)))
)))) (=> (= (ControlFlow 0 39) 38) anon34_LoopHead_correct))))))))))
(let ((anon33_Then_correct  (=> (not |call3formal@more#0@0@@0|) (=> (and (= $Heap@4 $Heap@3) (= (ControlFlow 0 43) 39)) after_0_correct))))
(let ((anon32_Then_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= $Heap@4 $Heap@2) (= (ControlFlow 0 42) 39)) after_0_correct))))
(let ((anon33_Else_correct  (=> |call3formal@more#0@0@@0| (and (=> (= (ControlFlow 0 3) (- 0 8)) true) (and (=> (= (ControlFlow 0 3) (- 0 7)) (or (not (= call4formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (or (<= 0 |$decr$loop#00@1|) (= (- (_System.array.Length $nw@0) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.Iter.xs)))) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- (_System.array.Length $nw@0) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.Iter.xs)))) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (< (- (_System.array.Length $nw@0) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.Iter.xs)))) |$decr$loop#00@1|)) (=> (< (- (_System.array.Length $nw@0) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.Iter.xs)))) |$decr$loop#00@1|) (=> (|_module.Iter.Valid#canCall| TReal $Heap@3 call4formal@this@0) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> |$w$loop#0@0| (_module.Iter.Valid TReal $Heap@3 call4formal@this@0))) (=> (=> |$w$loop#0@0| (_module.Iter.Valid TReal $Heap@3 call4formal@this@0)) (=> (= (ControlFlow 0 3) (- 0 2)) (=> |$w$loop#0@0| (and (forall (($o@@49 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@49)) (or (not (= $o@@49 null)) (not true)))
 :qid |Iteratorsdfy.44:31|
 :skolemid |493|
 :pattern (  (or (not (= $o@@49 null)) (not true)))
)) (forall (($o@@50 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@50)) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@50) alloc)))))
 :qid |Iteratorsdfy.44:31|
 :skolemid |494|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@50)))
)))))))))))))))))
(let ((anon32_Else_correct  (=> (and (U_2_bool (Lit boolType (bool_2_U true))) (= |$decr$loop#00@1| (- (_System.array.Length $nw@0) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.xs)))))) (and (=> (= (ControlFlow 0 44) (- 0 48)) true) (and (=> (= (ControlFlow 0 44) (- 0 47)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 44) (- 0 46)) (forall (($o@@51 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@51 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@51) alloc)))) (or (or (= $o@@51 call4formal@this@0) (|Set#IsMember| (_module.Iter.__modifies call4formal@this@0) ($Box refType $o@@51))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@51)))) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@51 $f@@4)))
 :qid |Iteratorsdfy.47:30|
 :skolemid |497|
))) (=> (forall (($o@@52 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@52 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@52) alloc)))) (or (or (= $o@@52 call4formal@this@0) (|Set#IsMember| (_module.Iter.__modifies call4formal@this@0) ($Box refType $o@@52))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@52)))) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@52 $f@@5)))
 :qid |Iteratorsdfy.47:30|
 :skolemid |497|
)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (_module.Iter.Valid TReal $Heap@2 call4formal@this@0)) (=> (_module.Iter.Valid TReal $Heap@2 call4formal@this@0) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@53 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@53)) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@53)))) (or (not (= $o@@53 null)) (not true)))
 :qid |Iteratorsdfy.16:10|
 :skolemid |553|
 :pattern (  (or (not (= $o@@53 null)) (not true)))
)) (forall (($o@@54 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@54)) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@54)))) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@54) alloc)))))
 :qid |Iteratorsdfy.16:10|
 :skolemid |554|
 :pattern ( ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@54) alloc)))
)))) (=> (and (and (and (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.Iter.__new)) ($Box refType null))) (=> |call3formal@more#0@0@@0| (|_module.Iter.Valid#canCall| TReal $Heap@3 call4formal@this@0))) (and (=> |call3formal@more#0@0@@0| (_module.Iter.Valid TReal $Heap@3 call4formal@this@0)) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.Iter.xs)) (ite |call3formal@more#0@0@@0| (|Seq#Append| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.xs)) (|Seq#Build| |Seq#Empty| (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.Iter.x))) ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.xs)))))) (and (and (=> |call3formal@more#0@0@@0| (<= (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.Iter.xs))) (_System.array.Length (_module.Iter.a call4formal@this@0)))) (=> (not |call3formal@more#0@0@@0|) (<= (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.Iter.xs))) (_System.array.Length (_module.Iter.a call4formal@this@0))))) (and (forall (($o@@55 T@U) ) (!  (=> (and (or (not (= $o@@55 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@55) alloc)))) (or (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@55) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@55)) (or (or (= $o@@55 call4formal@this@0) (|Set#IsMember| (_module.Iter.__modifies call4formal@this@0) ($Box refType $o@@55))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@55)))))
 :qid |Iteratorsdfy.16:10|
 :skolemid |555|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@55))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 44) 43) anon33_Then_correct) (=> (= (ControlFlow 0 44) 3) anon33_Else_correct))))))))))))))
(let ((anon30_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 49) 42) anon32_Then_correct) (=> (= (ControlFlow 0 49) 44) anon32_Else_correct)))))
(let ((anon29_LoopBody_correct  (and (=> (= (ControlFlow 0 61) 58) anon30_Then_correct) (=> (= (ControlFlow 0 61) 49) anon30_Else_correct))))
(let ((anon29_LoopDone_correct true))
(let ((anon29_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (and (and (not false) true) (and (<= 2.0 |stop##0@0|) (<= |stop##0@0| 3.0))) (=> |$w$loop#0@0| (|_module.Iter.Valid#canCall| TReal $Heap@2 call4formal@this@0))) (and (=> |$w$loop#0@0| (_module.Iter.Valid TReal $Heap@2 call4formal@this@0)) (=> |$w$loop#0@0| (and (forall (($o@@56 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@56)) (or (not (= $o@@56 null)) (not true)))
 :qid |Iteratorsdfy.44:31|
 :skolemid |493|
 :pattern (  (or (not (= $o@@56 null)) (not true)))
)) (forall (($o@@57 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@57)) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@57) alloc)))))
 :qid |Iteratorsdfy.44:31|
 :skolemid |494|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@57)))
)))))) (and (and (forall (($o@@58 T@U) ) (!  (=> (and (or (not (= $o@@58 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@58) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@58) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@58)))
 :qid |Iteratorsdfy.43:3|
 :skolemid |495|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@58))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (forall (($o@@59 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@59 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@59) alloc)))) (or (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@59) $f@@6) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@59) $f@@6)) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@59 $f@@6))))
 :qid |Iteratorsdfy.43:3|
 :skolemid |496|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@59) $f@@6))
)) (<= (- (_System.array.Length $nw@0) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.Iter.xs)))) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 62) 1) anon29_LoopDone_correct) (=> (= (ControlFlow 0 62) 61) anon29_LoopBody_correct))))))
(let ((anon27_Else_correct  (=> (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? TReal))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc)))) (= (_System.array.Length $nw@0) (LitInt 6)))) (and (=> (= (ControlFlow 0 63) (- 0 66)) (forall ((|arrayinit#0#i0#0| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0|) (< |arrayinit#0#i0#0| (LitInt 6))) (Requires1 Tclass._System.nat TReal $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 |lambda#1| (|lambda#2| Tclass._System.nat) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0|))))
 :qid |Iteratorsdfy.40:12|
 :skolemid |482|
))) (=> (forall ((|arrayinit#0#i0#0@@0| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0@@0|) (< |arrayinit#0#i0#0@@0| (LitInt 6))) (= (U_2_real ($Unbox realType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) (IndexField |arrayinit#0#i0#0@@0|)))) (U_2_real ($Unbox realType (Apply1 Tclass._System.nat TReal $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 |lambda#1| (|lambda#2| Tclass._System.nat) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0@@0|)))))))
 :qid |Iteratorsdfy.40:12|
 :skolemid |483|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) (IndexField |arrayinit#0#i0#0@@0|)))
)) (=> (and (and (= $Heap@0 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap $nw@0 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@0)) (and ($IsHeapAnchor $Heap@0) (= |stop##0@0| (LitReal 2.4)))) (=> (and (and (and (or (not (= call4formal@this@@0 null)) (not true)) (and ($Is refType call4formal@this@@0 (Tclass._module.Iter call0formal@_module.Iter$X@@0)) ($IsAlloc refType call4formal@this@@0 (Tclass._module.Iter call0formal@_module.Iter$X@@0) $Heap))) (= |call2formal@stop#0@0@@0| ($Box realType (real_2_U |stop##0@0|)))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (=> (and (and (and (and (or (not (= call4formal@this@0 null)) (not true)) (and ($Is refType call4formal@this@0 (Tclass._module.Iter TReal)) ($IsAlloc refType call4formal@this@0 (Tclass._module.Iter TReal) $Heap@1))) (and (= (_module.Iter.a call4formal@this@0) $nw@0) (= (_module.Iter.stop call4formal@this@0) |call2formal@stop#0@0@@0|))) (and (and (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call4formal@this@0) _module.Iter.xs)) |Seq#Empty|) (|_module.Iter.Valid#canCall| TReal $Heap@1 call4formal@this@0)) (and (_module.Iter.Valid TReal $Heap@1 call4formal@this@0) (|Set#Equal| (_module.Iter.__reads call4formal@this@0) |Set#Empty|)))) (and (and (and (|Set#Equal| (_module.Iter.__modifies call4formal@this@0) |Set#Empty|) (|Set#Equal| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call4formal@this@0) _module.Iter.__new)) |Set#Empty|)) (and (= (_module.Iter.__decreases0 call4formal@this@0) $nw@0) (= (_module.Iter.__decreases1 call4formal@this@0) |call2formal@stop#0@0@@0|))) (and (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call4formal@this@0) alloc)))) (forall (($o@@60 T@U) ) (!  (=> (and (or (not (= $o@@60 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@60) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@60) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@60)))
 :qid |Iteratorsdfy.16:10|
 :skolemid |548|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@60))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |$decr_init$loop#00@0| (- (_System.array.Length $nw@0) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call4formal@this@0) _module.Iter.xs))))))))) (and (=> (= (ControlFlow 0 63) (- 0 65)) (=> |$w$loop#0@0| (_module.Iter.Valid TReal $Heap@1 call4formal@this@0))) (=> (=> |$w$loop#0@0| (_module.Iter.Valid TReal $Heap@1 call4formal@this@0)) (and (=> (= (ControlFlow 0 63) (- 0 64)) (=> |$w$loop#0@0| (and (forall (($o@@61 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@61)) (or (not (= $o@@61 null)) (not true)))
 :qid |Iteratorsdfy.44:31|
 :skolemid |493|
 :pattern (  (or (not (= $o@@61 null)) (not true)))
)) (forall (($o@@62 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@62)) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@62) alloc)))))
 :qid |Iteratorsdfy.44:31|
 :skolemid |494|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@62)))
))))) (=> (=> |$w$loop#0@0| (and (forall (($o@@63 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@63)) (or (not (= $o@@63 null)) (not true)))
 :qid |Iteratorsdfy.44:31|
 :skolemid |493|
 :pattern (  (or (not (= $o@@63 null)) (not true)))
)) (forall (($o@@64 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@64)) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@64) alloc)))))
 :qid |Iteratorsdfy.44:31|
 :skolemid |494|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call4formal@this@0) _module.Iter.__new)) ($Box refType $o@@64)))
)))) (=> (= (ControlFlow 0 63) 62) anon29_LoopHead_correct)))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 71) (- 0 72)) (<= 0 (LitInt 6))) (=> (<= 0 (LitInt 6)) (and (=> (= (ControlFlow 0 71) 70) anon27_Then_correct) (=> (= (ControlFlow 0 71) 63) anon27_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is refType |a#0| (Tclass._System.array TReal)) ($IsAlloc refType |a#0| (Tclass._System.array TReal) $Heap)) true) (and (and (=> |defass#iter#0| (and ($Is refType |iter#0| (Tclass._module.Iter TReal)) ($IsAlloc refType |iter#0| (Tclass._module.Iter TReal) $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 73) 71)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
