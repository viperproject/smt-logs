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
(declare-fun Tagclass.Shared.Board () T@U)
(declare-fun Tagclass.Shared.Piece () T@U)
(declare-fun Tagclass.Shared.PieceKind () T@U)
(declare-fun Tagclass.Shared.ChessPos () T@U)
(declare-fun |##Shared.Pos.Pos| () T@U)
(declare-fun Tagclass.Shared.Pos () T@U)
(declare-fun |##Shared.Piece.Piece| () T@U)
(declare-fun |##Shared.Board.Board| () T@U)
(declare-fun tytagFamily$Board () T@U)
(declare-fun tytagFamily$Piece () T@U)
(declare-fun tytagFamily$PieceKind () T@U)
(declare-fun tytagFamily$ChessPos () T@U)
(declare-fun tytagFamily$Pos () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#Shared.Piece.Piece| (T@U T@U) T@U)
(declare-fun Tclass.Shared.Piece () T@U)
(declare-fun Tclass.Shared.PieceKind () T@U)
(declare-fun Tclass.Shared.ChessPos () T@U)
(declare-fun |$IsA#Shared.Pos| (T@U) Bool)
(declare-fun Shared.Pos.Pos_q (T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#Shared.Board.Board| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Shared.Pos#Equal| (T@U T@U) Bool)
(declare-fun Shared.Pos.row (T@U) Int)
(declare-fun Shared.Pos.col (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Shared.Pos () T@U)
(declare-fun Shared.Piece.Piece_q (T@U) Bool)
(declare-fun Shared.Board.Board_q (T@U) Bool)
(declare-fun Tclass.Shared.Board () T@U)
(declare-fun |#Shared.Pos.Pos| (Int Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Chess.__default.BoardIsValid (T@U) Bool)
(declare-fun |Chess.__default.BoardIsValid#canCall| (T@U) Bool)
(declare-fun Shared.Board.pieces (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun Shared.Piece.at (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun Shared.Piece.kind (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass.Shared.Board Tagclass.Shared.Piece Tagclass.Shared.PieceKind Tagclass.Shared.ChessPos |##Shared.Pos.Pos| Tagclass.Shared.Pos |##Shared.Piece.Piece| |##Shared.Board.Board| tytagFamily$Board tytagFamily$Piece tytagFamily$PieceKind tytagFamily$ChessPos tytagFamily$Pos)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Shared.Piece.Piece| |a#34#0#0| |a#34#1#0|) Tclass.Shared.Piece)  (and ($Is DatatypeTypeType |a#34#0#0| Tclass.Shared.PieceKind) ($Is DatatypeTypeType |a#34#1#0| Tclass.Shared.ChessPos)))
 :qid |TestGenerationShareddfy.9:26|
 :skolemid |669|
 :pattern ( ($Is DatatypeTypeType (|#Shared.Piece.Piece| |a#34#0#0| |a#34#1#0|) Tclass.Shared.Piece))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#Shared.Pos| d) (Shared.Pos.Pos_q d))
 :qid |unknown.0:0|
 :skolemid |659|
 :pattern ( (|$IsA#Shared.Pos| d))
)))
(assert (forall ((|a#5#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#5#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#5#0#0| i))) (DtRank (|#Shared.Board.Board| |a#5#0#0|))))
 :qid |TestGenerationShareddfy.26:26|
 :skolemid |694|
 :pattern ( (|Seq#Index| |a#5#0#0| i) (|#Shared.Board.Board| |a#5#0#0|))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Shared.Pos#Equal| a b)  (and (= (Shared.Pos.row a) (Shared.Pos.row b)) (= (Shared.Pos.col a) (Shared.Pos.col b))))
 :qid |unknown.0:0|
 :skolemid |661|
 :pattern ( (|Shared.Pos#Equal| a b))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((|pos#0| T@U) ($h T@U) ) (! (= ($IsAlloc DatatypeTypeType |pos#0| Tclass.Shared.ChessPos $h) ($IsAlloc DatatypeTypeType |pos#0| Tclass.Shared.Pos $h))
 :qid |unknown.0:0|
 :skolemid |664|
 :pattern ( ($IsAlloc DatatypeTypeType |pos#0| Tclass.Shared.ChessPos $h))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.Shared.Pos) (Shared.Pos.Pos_q d@@0))
 :qid |unknown.0:0|
 :skolemid |660|
 :pattern ( (Shared.Pos.Pos_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.Shared.Pos))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 Tclass.Shared.Piece) (Shared.Piece.Piece_q d@@1))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( (Shared.Piece.Piece_q d@@1) ($Is DatatypeTypeType d@@1 Tclass.Shared.Piece))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 Tclass.Shared.Board) (Shared.Board.Board_q d@@2))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( (Shared.Board.Board_q d@@2) ($Is DatatypeTypeType d@@2 Tclass.Shared.Board))
)))
(assert (forall ((|a#28#0#0| Int) (|a#28#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#Shared.Pos.Pos| |a#28#0#0| |a#28#1#0|) Tclass.Shared.Pos)  (and ($Is intType (int_2_U |a#28#0#0|) TInt) ($Is intType (int_2_U |a#28#1#0|) TInt)))
 :qid |TestGenerationShareddfy.4:22|
 :skolemid |652|
 :pattern ( ($Is DatatypeTypeType (|#Shared.Pos.Pos| |a#28#0#0| |a#28#1#0|) Tclass.Shared.Pos))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Shared.Pos#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |662|
 :pattern ( (|Shared.Pos#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@3 T@U) ) (! (= (Shared.Pos.Pos_q d@@3) (= (DatatypeCtorId d@@3) |##Shared.Pos.Pos|))
 :qid |unknown.0:0|
 :skolemid |648|
 :pattern ( (Shared.Pos.Pos_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (Shared.Piece.Piece_q d@@4) (= (DatatypeCtorId d@@4) |##Shared.Piece.Piece|))
 :qid |unknown.0:0|
 :skolemid |666|
 :pattern ( (Shared.Piece.Piece_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (Shared.Board.Board_q d@@5) (= (DatatypeCtorId d@@5) |##Shared.Board.Board|))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( (Shared.Board.Board_q d@@5))
)))
(assert (forall ((|pos#0@@0| T@U) ) (! (= ($Is DatatypeTypeType |pos#0@@0| Tclass.Shared.ChessPos)  (and ($Is DatatypeTypeType |pos#0@@0| Tclass.Shared.Pos) (and (and (<= (LitInt 0) (Shared.Pos.row |pos#0@@0|)) (< (Shared.Pos.row |pos#0@@0|) 8)) (and (<= (LitInt 0) (Shared.Pos.col |pos#0@@0|)) (< (Shared.Pos.col |pos#0@@0|) 8)))))
 :qid |unknown.0:0|
 :skolemid |663|
 :pattern ( ($Is DatatypeTypeType |pos#0@@0| Tclass.Shared.ChessPos))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SeqType) 4))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|board#0| T@U) ) (!  (=> (or (|Chess.__default.BoardIsValid#canCall| (Lit DatatypeTypeType |board#0|)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |board#0| Tclass.Shared.Board))) (and (forall ((|i#1| Int) (|j#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (<= (LitInt 0) |j#1|)) (=> (<= (LitInt 0) |i#1|) (=> (< |i#1| |j#1|) (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0|)) (=> (< |j#1| (|Seq#Length| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))))) (and (and (|$IsA#Shared.Pos| (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) |i#1|)))) (|$IsA#Shared.Pos| (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) |j#1|))))) (and (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0|)) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) |i#1|)))) (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0|)) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) |j#1|)))))))))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.18:12|
 :skolemid |539|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0|) |j#1|)) ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0|) |i#1|)))
)) (= (Chess.__default.BoardIsValid (Lit DatatypeTypeType |board#0|)) (forall ((|i#1@@0| Int) (|j#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@0|) (<= (LitInt 0) |j#1@@0|)) (=> (and (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| |j#1@@0|)) (< |j#1@@0| (|Seq#Length| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|)))))) (not (|Shared.Pos#Equal| (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) |i#1@@0|))) (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) |j#1@@0|)))))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.18:12|
 :skolemid |538|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0|) |j#1@@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0|) |i#1@@0|)))
)))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.17:26|
 :weight 3
 :skolemid |540|
 :pattern ( (Chess.__default.BoardIsValid (Lit DatatypeTypeType |board#0|)))
))))
(assert (forall ((d@@6 T@U) ) (!  (=> (Shared.Pos.Pos_q d@@6) (exists ((|a#27#0#0| Int) (|a#27#1#0| Int) ) (! (= d@@6 (|#Shared.Pos.Pos| |a#27#0#0| |a#27#1#0|))
 :qid |TestGenerationShareddfy.4:22|
 :skolemid |649|
)))
 :qid |unknown.0:0|
 :skolemid |650|
 :pattern ( (Shared.Pos.Pos_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (Shared.Piece.Piece_q d@@7) (exists ((|a#33#0#0| T@U) (|a#33#1#0| T@U) ) (! (= d@@7 (|#Shared.Piece.Piece| |a#33#0#0| |a#33#1#0|))
 :qid |TestGenerationShareddfy.9:26|
 :skolemid |667|
)))
 :qid |unknown.0:0|
 :skolemid |668|
 :pattern ( (Shared.Piece.Piece_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (Shared.Board.Board_q d@@8) (exists ((|a#1#0#0| T@U) ) (! (= d@@8 (|#Shared.Board.Board| |a#1#0#0|))
 :qid |TestGenerationShareddfy.26:26|
 :skolemid |688|
)))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( (Shared.Board.Board_q d@@8))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass.Shared.Board) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass.Shared.Board)))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx Tclass.Shared.Board))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.Shared.Piece) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass.Shared.Piece)))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( ($IsBox bx@@0 Tclass.Shared.Piece))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.Shared.PieceKind) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.Shared.PieceKind)))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($IsBox bx@@1 Tclass.Shared.PieceKind))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.Shared.ChessPos) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.Shared.ChessPos)))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsBox bx@@2 Tclass.Shared.ChessPos))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.Shared.Pos) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.Shared.Pos)))
 :qid |unknown.0:0|
 :skolemid |651|
 :pattern ( ($IsBox bx@@3 Tclass.Shared.Pos))
)))
(assert (forall ((|a#2#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Shared.Board.Board| |a#2#0#0|) Tclass.Shared.Board) ($Is SeqType |a#2#0#0| (TSeq Tclass.Shared.Piece)))
 :qid |TestGenerationShareddfy.26:26|
 :skolemid |690|
 :pattern ( ($Is DatatypeTypeType (|#Shared.Board.Board| |a#2#0#0|) Tclass.Shared.Board))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|board#0@@0| T@U) ) (!  (=> (or (|Chess.__default.BoardIsValid#canCall| |board#0@@0|) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |board#0@@0| Tclass.Shared.Board))) (and (forall ((|i#0| Int) (|j#0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0|) (<= (LitInt 0) |j#0|)) (=> (<= (LitInt 0) |i#0|) (=> (< |i#0| |j#0|) (and (Shared.Board.Board_q |board#0@@0|) (=> (< |j#0| (|Seq#Length| (Shared.Board.pieces |board#0@@0|))) (and (and (|$IsA#Shared.Pos| (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) |i#0|)))) (|$IsA#Shared.Pos| (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) |j#0|))))) (and (and (Shared.Board.Board_q |board#0@@0|) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) |i#0|)))) (and (Shared.Board.Board_q |board#0@@0|) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) |j#0|)))))))))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.18:12|
 :skolemid |536|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) |j#0|)) ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) |i#0|)))
)) (= (Chess.__default.BoardIsValid |board#0@@0|) (forall ((|i#0@@0| Int) (|j#0@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@0|) (<= (LitInt 0) |j#0@@0|)) (=> (and (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| |j#0@@0|)) (< |j#0@@0| (|Seq#Length| (Shared.Board.pieces |board#0@@0|)))) (not (|Shared.Pos#Equal| (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) |i#0@@0|))) (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) |j#0@@0|)))))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.18:12|
 :skolemid |535|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) |j#0@@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) |i#0@@0|)))
)))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.17:26|
 :skolemid |537|
 :pattern ( (Chess.__default.BoardIsValid |board#0@@0|))
))))
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
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((|a#26#0#0| Int) (|a#26#1#0| Int) ) (! (= (DatatypeCtorId (|#Shared.Pos.Pos| |a#26#0#0| |a#26#1#0|)) |##Shared.Pos.Pos|)
 :qid |TestGenerationShareddfy.4:22|
 :skolemid |647|
 :pattern ( (|#Shared.Pos.Pos| |a#26#0#0| |a#26#1#0|))
)))
(assert (forall ((|a#30#0#0| Int) (|a#30#1#0| Int) ) (! (= (Shared.Pos.row (|#Shared.Pos.Pos| |a#30#0#0| |a#30#1#0|)) |a#30#0#0|)
 :qid |TestGenerationShareddfy.4:22|
 :skolemid |656|
 :pattern ( (|#Shared.Pos.Pos| |a#30#0#0| |a#30#1#0|))
)))
(assert (forall ((|a#31#0#0| Int) (|a#31#1#0| Int) ) (! (= (Shared.Pos.col (|#Shared.Pos.Pos| |a#31#0#0| |a#31#1#0|)) |a#31#1#0|)
 :qid |TestGenerationShareddfy.4:22|
 :skolemid |657|
 :pattern ( (|#Shared.Pos.Pos| |a#31#0#0| |a#31#1#0|))
)))
(assert (forall ((|a#32#0#0| T@U) (|a#32#1#0| T@U) ) (! (= (DatatypeCtorId (|#Shared.Piece.Piece| |a#32#0#0| |a#32#1#0|)) |##Shared.Piece.Piece|)
 :qid |TestGenerationShareddfy.9:26|
 :skolemid |665|
 :pattern ( (|#Shared.Piece.Piece| |a#32#0#0| |a#32#1#0|))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) ) (! (= (Shared.Piece.kind (|#Shared.Piece.Piece| |a#36#0#0| |a#36#1#0|)) |a#36#0#0|)
 :qid |TestGenerationShareddfy.9:26|
 :skolemid |673|
 :pattern ( (|#Shared.Piece.Piece| |a#36#0#0| |a#36#1#0|))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) ) (! (= (Shared.Piece.at (|#Shared.Piece.Piece| |a#38#0#0| |a#38#1#0|)) |a#38#1#0|)
 :qid |TestGenerationShareddfy.9:26|
 :skolemid |675|
 :pattern ( (|#Shared.Piece.Piece| |a#38#0#0| |a#38#1#0|))
)))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@0) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0) h@@0))
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
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#Shared.Board.Board| |a#0#0#0|)) |##Shared.Board.Board|)
 :qid |TestGenerationShareddfy.26:26|
 :skolemid |686|
 :pattern ( (|#Shared.Board.Board| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (Shared.Board.pieces (|#Shared.Board.Board| |a#4#0#0|)) |a#4#0#0|)
 :qid |TestGenerationShareddfy.26:26|
 :skolemid |693|
 :pattern ( (|#Shared.Board.Board| |a#4#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) ) (! (< (DtRank |a#37#0#0|) (DtRank (|#Shared.Piece.Piece| |a#37#0#0| |a#37#1#0|)))
 :qid |TestGenerationShareddfy.9:26|
 :skolemid |674|
 :pattern ( (|#Shared.Piece.Piece| |a#37#0#0| |a#37#1#0|))
)))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) ) (! (< (DtRank |a#39#1#0|) (DtRank (|#Shared.Piece.Piece| |a#39#0#0| |a#39#1#0|)))
 :qid |TestGenerationShareddfy.9:26|
 :skolemid |676|
 :pattern ( (|#Shared.Piece.Piece| |a#39#0#0| |a#39#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (< (|Seq#Rank| |a#6#0#0|) (DtRank (|#Shared.Board.Board| |a#6#0#0|)))
 :qid |TestGenerationShareddfy.26:26|
 :skolemid |695|
 :pattern ( (|#Shared.Board.Board| |a#6#0#0|))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
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
 :skolemid |701|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@9 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (Shared.Pos.Pos_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass.Shared.Pos $h@@0))) ($IsAlloc intType (int_2_U (Shared.Pos.row d@@9)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |653|
 :pattern ( ($IsAlloc intType (int_2_U (Shared.Pos.row d@@9)) TInt $h@@0))
)))
(assert (forall ((d@@10 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (Shared.Pos.Pos_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass.Shared.Pos $h@@1))) ($IsAlloc intType (int_2_U (Shared.Pos.col d@@10)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |654|
 :pattern ( ($IsAlloc intType (int_2_U (Shared.Pos.col d@@10)) TInt $h@@1))
)))
(assert (forall ((bx@@5 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@5 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@5)) bx@@5) ($Is SeqType ($Unbox SeqType bx@@5) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@5 (TSeq t@@3)))
)))
(assert (forall ((d@@11 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@11 Tclass.Shared.PieceKind)) ($IsAlloc DatatypeTypeType d@@11 Tclass.Shared.PieceKind $h@@2))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 Tclass.Shared.PieceKind $h@@2))
)))
(assert (forall ((d@@12 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@12 Tclass.Shared.Pos)) ($IsAlloc DatatypeTypeType d@@12 Tclass.Shared.Pos $h@@3))
 :qid |unknown.0:0|
 :skolemid |658|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 Tclass.Shared.Pos $h@@3))
)))
(assert (forall ((d@@13 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@13 Tclass.Shared.Piece)) ($IsAlloc DatatypeTypeType d@@13 Tclass.Shared.Piece $h@@4))
 :qid |unknown.0:0|
 :skolemid |677|
 :pattern ( ($IsAlloc DatatypeTypeType d@@13 Tclass.Shared.Piece $h@@4))
)))
(assert (forall ((d@@14 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@14 Tclass.Shared.Board)) ($IsAlloc DatatypeTypeType d@@14 Tclass.Shared.Board $h@@5))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 Tclass.Shared.Board $h@@5))
)))
(assert (= (Tag Tclass.Shared.Board) Tagclass.Shared.Board))
(assert (= (TagFamily Tclass.Shared.Board) tytagFamily$Board))
(assert (= (Tag Tclass.Shared.Piece) Tagclass.Shared.Piece))
(assert (= (TagFamily Tclass.Shared.Piece) tytagFamily$Piece))
(assert (= (Tag Tclass.Shared.PieceKind) Tagclass.Shared.PieceKind))
(assert (= (TagFamily Tclass.Shared.PieceKind) tytagFamily$PieceKind))
(assert (= (Tag Tclass.Shared.ChessPos) Tagclass.Shared.ChessPos))
(assert (= (TagFamily Tclass.Shared.ChessPos) tytagFamily$ChessPos))
(assert (= (Tag Tclass.Shared.Pos) Tagclass.Shared.Pos))
(assert (= (TagFamily Tclass.Shared.Pos) tytagFamily$Pos))
(assert (forall ((d@@15 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (Shared.Piece.Piece_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass.Shared.Piece $h@@6))) ($IsAlloc DatatypeTypeType (Shared.Piece.kind d@@15) Tclass.Shared.PieceKind $h@@6))
 :qid |unknown.0:0|
 :skolemid |670|
 :pattern ( ($IsAlloc DatatypeTypeType (Shared.Piece.kind d@@15) Tclass.Shared.PieceKind $h@@6))
)))
(assert (forall ((d@@16 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (Shared.Piece.Piece_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass.Shared.Piece $h@@7))) ($IsAlloc DatatypeTypeType (Shared.Piece.at d@@16) Tclass.Shared.ChessPos $h@@7))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( ($IsAlloc DatatypeTypeType (Shared.Piece.at d@@16) Tclass.Shared.ChessPos $h@@7))
)))
(assert (forall ((|a#29#0#0| Int) (|a#29#1#0| Int) ) (! (= (|#Shared.Pos.Pos| (LitInt |a#29#0#0|) (LitInt |a#29#1#0|)) (Lit DatatypeTypeType (|#Shared.Pos.Pos| |a#29#0#0| |a#29#1#0|)))
 :qid |TestGenerationShareddfy.4:22|
 :skolemid |655|
 :pattern ( (|#Shared.Pos.Pos| (LitInt |a#29#0#0|) (LitInt |a#29#1#0|)))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| T@U) ) (! (= (|#Shared.Piece.Piece| (Lit DatatypeTypeType |a#35#0#0|) (Lit DatatypeTypeType |a#35#1#0|)) (Lit DatatypeTypeType (|#Shared.Piece.Piece| |a#35#0#0| |a#35#1#0|)))
 :qid |TestGenerationShareddfy.9:26|
 :skolemid |672|
 :pattern ( (|#Shared.Piece.Piece| (Lit DatatypeTypeType |a#35#0#0|) (Lit DatatypeTypeType |a#35#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#Shared.Board.Board| (Lit SeqType |a#3#0#0|)) (Lit DatatypeTypeType (|#Shared.Board.Board| |a#3#0#0|)))
 :qid |TestGenerationShareddfy.26:26|
 :skolemid |692|
 :pattern ( (|#Shared.Board.Board| (Lit SeqType |a#3#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((d@@17 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (Shared.Board.Board_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass.Shared.Board $h@@8))) ($IsAlloc SeqType (Shared.Board.pieces d@@17) (TSeq Tclass.Shared.Piece) $h@@8))
 :qid |unknown.0:0|
 :skolemid |691|
 :pattern ( ($IsAlloc SeqType (Shared.Board.pieces d@@17) (TSeq Tclass.Shared.Piece) $h@@8))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@3 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@3))) ($IsBox (|Seq#Index| v@@3 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@3 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@3 (TSeq t0@@2)))
)))
(assert (forall ((s@@1 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$Chess.ValidBoard)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon6_Then_correct  (=> (and (and (|Chess.__default.BoardIsValid#canCall| (Lit DatatypeTypeType (|#Shared.Board.Board| (Lit SeqType |Seq#Empty|)))) (= (ControlFlow 0 3) (- 0 2))) (|Chess.__default.BoardIsValid#canCall| (Lit DatatypeTypeType (|#Shared.Board.Board| (Lit SeqType |Seq#Empty|))))) (or (U_2_bool (Lit boolType (bool_2_U (Chess.__default.BoardIsValid (Lit DatatypeTypeType (|#Shared.Board.Board| (Lit SeqType |Seq#Empty|))))))) (forall ((|i#0@@1| Int) (|j#0@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@1|) (<= (LitInt 0) |j#0@@1|)) (=> (and (and (<= (LitInt 0) |i#0@@1|) (< |i#0@@1| |j#0@@1|)) (< |j#0@@1| (|Seq#Length| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType (|#Shared.Board.Board| (Lit SeqType |Seq#Empty|)))))))) (not (|Shared.Pos#Equal| (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType (|#Shared.Board.Board| (Lit SeqType |Seq#Empty|))))) |i#0@@1|))) (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType (|#Shared.Board.Board| (Lit SeqType |Seq#Empty|))))) |j#0@@1|)))))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.18:12|
 :skolemid |595|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces (|#Shared.Board.Board| |Seq#Empty|)) |j#0@@1|)) ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces (|#Shared.Board.Board| |Seq#Empty|)) |i#0@@1|)))
))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon6_Then_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
