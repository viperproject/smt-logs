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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.Shared.Board () T@U)
(declare-fun Tagclass.Shared.Piece () T@U)
(declare-fun Tagclass.Shared.Color () T@U)
(declare-fun Tagclass.Shared.PieceKind () T@U)
(declare-fun Tagclass.Shared.ChessPos () T@U)
(declare-fun |##Shared.Color.Black| () T@U)
(declare-fun |##Shared.Color.White| () T@U)
(declare-fun |##Shared.PieceKind.Knight| () T@U)
(declare-fun |##Shared.PieceKind.King| () T@U)
(declare-fun |##Shared.PieceKind.Pawn| () T@U)
(declare-fun Tagclass.Shared.Pos () T@U)
(declare-fun |##Shared.Piece.Piece| () T@U)
(declare-fun |##Shared.Board.Board| () T@U)
(declare-fun tytagFamily$Board () T@U)
(declare-fun tytagFamily$Piece () T@U)
(declare-fun tytagFamily$Color () T@U)
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
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#Shared.Board.Board| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Shared.Color.Black| () T@U)
(declare-fun |#Shared.Color.White| () T@U)
(declare-fun Shared.Piece.Piece_q (T@U) Bool)
(declare-fun Shared.Board.Board_q (T@U) Bool)
(declare-fun Tclass.Shared.Board () T@U)
(declare-fun Tclass.Shared.Color () T@U)
(declare-fun |Shared.Color#Equal| (T@U T@U) Bool)
(declare-fun |Shared.PieceKind#Equal| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Chess.__default.BoardPreset (T@U) Bool)
(declare-fun |Chess.__default.BoardPreset#canCall| (T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun Shared.Board.pieces (T@U) T@U)
(declare-fun |$IsA#Shared.PieceKind| (T@U) Bool)
(declare-fun Shared.Piece.kind (T@U) T@U)
(declare-fun |#Shared.PieceKind.King| (T@U) T@U)
(declare-fun |#Shared.PieceKind.Knight| (T@U) T@U)
(declare-fun |#Shared.PieceKind.Pawn| (T@U) T@U)
(declare-fun Shared.PieceKind.Knight_q (T@U) Bool)
(declare-fun Shared.PieceKind.King_q (T@U) Bool)
(declare-fun Shared.PieceKind.Pawn_q (T@U) Bool)
(declare-fun Tclass.Shared.Pos () T@U)
(declare-fun Shared.Pos.row (T@U) Int)
(declare-fun Shared.Pos.col (T@U) Int)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Shared.PieceKind.c (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun Shared.Piece.at (T@U) T@U)
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
(assert (distinct TBool TagBool TagSeq alloc Tagclass.Shared.Board Tagclass.Shared.Piece Tagclass.Shared.Color Tagclass.Shared.PieceKind Tagclass.Shared.ChessPos |##Shared.Color.Black| |##Shared.Color.White| |##Shared.PieceKind.Knight| |##Shared.PieceKind.King| |##Shared.PieceKind.Pawn| Tagclass.Shared.Pos |##Shared.Piece.Piece| |##Shared.Board.Board| tytagFamily$Board tytagFamily$Piece tytagFamily$Color tytagFamily$PieceKind tytagFamily$ChessPos tytagFamily$Pos)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Shared.Piece.Piece| |a#34#0#0| |a#34#1#0|) Tclass.Shared.Piece)  (and ($Is DatatypeTypeType |a#34#0#0| Tclass.Shared.PieceKind) ($Is DatatypeTypeType |a#34#1#0| Tclass.Shared.ChessPos)))
 :qid |TestGenerationShareddfy.9:26|
 :skolemid |669|
 :pattern ( ($Is DatatypeTypeType (|#Shared.Piece.Piece| |a#34#0#0| |a#34#1#0|) Tclass.Shared.Piece))
)))
(assert (forall ((|a#5#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#5#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#5#0#0| i))) (DtRank (|#Shared.Board.Board| |a#5#0#0|))))
 :qid |TestGenerationShareddfy.26:26|
 :skolemid |694|
 :pattern ( (|Seq#Index| |a#5#0#0| i) (|#Shared.Board.Board| |a#5#0#0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#Shared.Color.Black|) |##Shared.Color.Black|))
(assert (= (DatatypeCtorId |#Shared.Color.White|) |##Shared.Color.White|))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass.Shared.Piece) (Shared.Piece.Piece_q d))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( (Shared.Piece.Piece_q d) ($Is DatatypeTypeType d Tclass.Shared.Piece))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.Shared.Board) (Shared.Board.Board_q d@@0))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( (Shared.Board.Board_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.Shared.Board))
)))
(assert ($Is DatatypeTypeType |#Shared.Color.Black| Tclass.Shared.Color))
(assert ($Is DatatypeTypeType |#Shared.Color.White| Tclass.Shared.Color))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Shared.Color#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( (|Shared.Color#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Shared.PieceKind#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |646|
 :pattern ( (|Shared.PieceKind#Equal| a@@0 b@@0))
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
(assert (= (Ctor SeqType) 4))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|board#0| T@U) ) (!  (=> (or (|Chess.__default.BoardPreset#canCall| (Lit DatatypeTypeType |board#0|)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |board#0| Tclass.Shared.Board))) (and (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0|)) (=> (= (|Seq#Length| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|)))) (LitInt 5)) (and (and (|$IsA#Shared.PieceKind| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 0))))) (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0|)) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 0)))))) (=> (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 0)))) (|#Shared.PieceKind.King| (Lit DatatypeTypeType |#Shared.Color.White|))) (and (and (|$IsA#Shared.PieceKind| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 1))))) (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0|)) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 1)))))) (=> (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 1)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|))) (and (and (|$IsA#Shared.PieceKind| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 2))))) (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0|)) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 2)))))) (=> (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 2)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|))) (and (and (|$IsA#Shared.PieceKind| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 3))))) (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0|)) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 3)))))) (=> (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 3)))) (|#Shared.PieceKind.Pawn| (Lit DatatypeTypeType |#Shared.Color.Black|))) (and (|$IsA#Shared.PieceKind| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 4))))) (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0|)) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 4)))))))))))))))) (= (Chess.__default.BoardPreset (Lit DatatypeTypeType |board#0|))  (and (and (and (and (and (= (|Seq#Length| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|)))) (LitInt 5)) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 0)))) (|#Shared.PieceKind.King| (Lit DatatypeTypeType |#Shared.Color.White|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 1)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 2)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 3)))) (|#Shared.PieceKind.Pawn| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0|))) (LitInt 4)))) (|#Shared.PieceKind.Pawn| (Lit DatatypeTypeType |#Shared.Color.Black|)))))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.41:25|
 :weight 3
 :skolemid |573|
 :pattern ( (Chess.__default.BoardPreset (Lit DatatypeTypeType |board#0|)))
))))
(assert (forall ((d@@1 T@U) ) (! (= (Shared.PieceKind.Knight_q d@@1) (= (DatatypeCtorId d@@1) |##Shared.PieceKind.Knight|))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( (Shared.PieceKind.Knight_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (Shared.PieceKind.King_q d@@2) (= (DatatypeCtorId d@@2) |##Shared.PieceKind.King|))
 :qid |unknown.0:0|
 :skolemid |623|
 :pattern ( (Shared.PieceKind.King_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (Shared.PieceKind.Pawn_q d@@3) (= (DatatypeCtorId d@@3) |##Shared.PieceKind.Pawn|))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( (Shared.PieceKind.Pawn_q d@@3))
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
(assert (forall ((|pos#0| T@U) ) (! (= ($Is DatatypeTypeType |pos#0| Tclass.Shared.ChessPos)  (and ($Is DatatypeTypeType |pos#0| Tclass.Shared.Pos) (and (and (<= (LitInt 0) (Shared.Pos.row |pos#0|)) (< (Shared.Pos.row |pos#0|) 8)) (and (<= (LitInt 0) (Shared.Pos.col |pos#0|)) (< (Shared.Pos.col |pos#0|) 8)))))
 :qid |unknown.0:0|
 :skolemid |663|
 :pattern ( ($Is DatatypeTypeType |pos#0| Tclass.Shared.ChessPos))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (Shared.Piece.Piece_q d@@6) (exists ((|a#33#0#0| T@U) (|a#33#1#0| T@U) ) (! (= d@@6 (|#Shared.Piece.Piece| |a#33#0#0| |a#33#1#0|))
 :qid |TestGenerationShareddfy.9:26|
 :skolemid |667|
)))
 :qid |unknown.0:0|
 :skolemid |668|
 :pattern ( (Shared.Piece.Piece_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (Shared.PieceKind.Knight_q d@@7) (exists ((|a#9#0#0| T@U) ) (! (= d@@7 (|#Shared.PieceKind.Knight| |a#9#0#0|))
 :qid |TestGenerationShareddfy.3:31|
 :skolemid |615|
)))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( (Shared.PieceKind.Knight_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (Shared.PieceKind.King_q d@@8) (exists ((|a#15#0#0| T@U) ) (! (= d@@8 (|#Shared.PieceKind.King| |a#15#0#0|))
 :qid |TestGenerationShareddfy.3:48|
 :skolemid |624|
)))
 :qid |unknown.0:0|
 :skolemid |625|
 :pattern ( (Shared.PieceKind.King_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (Shared.PieceKind.Pawn_q d@@9) (exists ((|a#21#0#0| T@U) ) (! (= d@@9 (|#Shared.PieceKind.Pawn| |a#21#0#0|))
 :qid |TestGenerationShareddfy.3:65|
 :skolemid |633|
)))
 :qid |unknown.0:0|
 :skolemid |634|
 :pattern ( (Shared.PieceKind.Pawn_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (Shared.Board.Board_q d@@10) (exists ((|a#1#0#0| T@U) ) (! (= d@@10 (|#Shared.Board.Board| |a#1#0#0|))
 :qid |TestGenerationShareddfy.26:26|
 :skolemid |688|
)))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( (Shared.Board.Board_q d@@10))
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
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.Shared.Color) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.Shared.Color)))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( ($IsBox bx@@1 Tclass.Shared.Color))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.Shared.PieceKind) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.Shared.PieceKind)))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($IsBox bx@@2 Tclass.Shared.PieceKind))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.Shared.ChessPos) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.Shared.ChessPos)))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsBox bx@@3 Tclass.Shared.ChessPos))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.Shared.Pos) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.Shared.Pos)))
 :qid |unknown.0:0|
 :skolemid |651|
 :pattern ( ($IsBox bx@@4 Tclass.Shared.Pos))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Shared.PieceKind.Knight| |a#10#0#0|) Tclass.Shared.PieceKind) ($Is DatatypeTypeType |a#10#0#0| Tclass.Shared.Color))
 :qid |TestGenerationShareddfy.3:31|
 :skolemid |617|
 :pattern ( ($Is DatatypeTypeType (|#Shared.PieceKind.Knight| |a#10#0#0|) Tclass.Shared.PieceKind))
)))
(assert (forall ((|a#16#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Shared.PieceKind.King| |a#16#0#0|) Tclass.Shared.PieceKind) ($Is DatatypeTypeType |a#16#0#0| Tclass.Shared.Color))
 :qid |TestGenerationShareddfy.3:48|
 :skolemid |626|
 :pattern ( ($Is DatatypeTypeType (|#Shared.PieceKind.King| |a#16#0#0|) Tclass.Shared.PieceKind))
)))
(assert (forall ((|a#22#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Shared.PieceKind.Pawn| |a#22#0#0|) Tclass.Shared.PieceKind) ($Is DatatypeTypeType |a#22#0#0| Tclass.Shared.Color))
 :qid |TestGenerationShareddfy.3:65|
 :skolemid |635|
 :pattern ( ($Is DatatypeTypeType (|#Shared.PieceKind.Pawn| |a#22#0#0|) Tclass.Shared.PieceKind))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (Shared.PieceKind.Knight_q a@@1) (Shared.PieceKind.Knight_q b@@1)) (= (|Shared.PieceKind#Equal| a@@1 b@@1) (|Shared.Color#Equal| (Shared.PieceKind.c a@@1) (Shared.PieceKind.c b@@1))))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( (|Shared.PieceKind#Equal| a@@1 b@@1) (Shared.PieceKind.Knight_q a@@1))
 :pattern ( (|Shared.PieceKind#Equal| a@@1 b@@1) (Shared.PieceKind.Knight_q b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (Shared.PieceKind.King_q a@@2) (Shared.PieceKind.King_q b@@2)) (= (|Shared.PieceKind#Equal| a@@2 b@@2) (|Shared.Color#Equal| (Shared.PieceKind.c a@@2) (Shared.PieceKind.c b@@2))))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( (|Shared.PieceKind#Equal| a@@2 b@@2) (Shared.PieceKind.King_q a@@2))
 :pattern ( (|Shared.PieceKind#Equal| a@@2 b@@2) (Shared.PieceKind.King_q b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (Shared.PieceKind.Pawn_q a@@3) (Shared.PieceKind.Pawn_q b@@3)) (= (|Shared.PieceKind#Equal| a@@3 b@@3) (|Shared.Color#Equal| (Shared.PieceKind.c a@@3) (Shared.PieceKind.c b@@3))))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( (|Shared.PieceKind#Equal| a@@3 b@@3) (Shared.PieceKind.Pawn_q a@@3))
 :pattern ( (|Shared.PieceKind#Equal| a@@3 b@@3) (Shared.PieceKind.Pawn_q b@@3))
)))
(assert (forall ((|a#2#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Shared.Board.Board| |a#2#0#0|) Tclass.Shared.Board) ($Is SeqType |a#2#0#0| (TSeq Tclass.Shared.Piece)))
 :qid |TestGenerationShareddfy.26:26|
 :skolemid |690|
 :pattern ( ($Is DatatypeTypeType (|#Shared.Board.Board| |a#2#0#0|) Tclass.Shared.Board))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|board#0@@0| T@U) ) (!  (=> (or (|Chess.__default.BoardPreset#canCall| |board#0@@0|) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |board#0@@0| Tclass.Shared.Board))) (and (and (Shared.Board.Board_q |board#0@@0|) (=> (= (|Seq#Length| (Shared.Board.pieces |board#0@@0|)) (LitInt 5)) (and (and (|$IsA#Shared.PieceKind| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 0))))) (and (Shared.Board.Board_q |board#0@@0|) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 0)))))) (=> (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 0)))) (|#Shared.PieceKind.King| (Lit DatatypeTypeType |#Shared.Color.White|))) (and (and (|$IsA#Shared.PieceKind| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 1))))) (and (Shared.Board.Board_q |board#0@@0|) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 1)))))) (=> (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 1)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|))) (and (and (|$IsA#Shared.PieceKind| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 2))))) (and (Shared.Board.Board_q |board#0@@0|) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 2)))))) (=> (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 2)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|))) (and (and (|$IsA#Shared.PieceKind| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 3))))) (and (Shared.Board.Board_q |board#0@@0|) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 3)))))) (=> (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 3)))) (|#Shared.PieceKind.Pawn| (Lit DatatypeTypeType |#Shared.Color.Black|))) (and (|$IsA#Shared.PieceKind| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 4))))) (and (Shared.Board.Board_q |board#0@@0|) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 4)))))))))))))))) (= (Chess.__default.BoardPreset |board#0@@0|)  (and (and (and (and (and (= (|Seq#Length| (Shared.Board.pieces |board#0@@0|)) (LitInt 5)) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 0)))) (|#Shared.PieceKind.King| (Lit DatatypeTypeType |#Shared.Color.White|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 1)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 2)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 3)))) (|#Shared.PieceKind.Pawn| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@0|) (LitInt 4)))) (|#Shared.PieceKind.Pawn| (Lit DatatypeTypeType |#Shared.Color.Black|)))))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.41:25|
 :skolemid |572|
 :pattern ( (Chess.__default.BoardPreset |board#0@@0|))
))))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TBool) (and (= ($Box boolType ($Unbox boolType bx@@5)) bx@@5) ($Is boolType ($Unbox boolType bx@@5) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@5 TBool))
)))
(assert (forall ((v T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v) t) ($Is T@@1 v t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v) t))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
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
(assert (forall ((t@@0 T@U) ) (! (= (Inv0_TSeq (TSeq t@@0)) t@@0)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Tag (TSeq t@@1)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (DatatypeCtorId (|#Shared.PieceKind.Knight| |a#8#0#0|)) |##Shared.PieceKind.Knight|)
 :qid |TestGenerationShareddfy.3:31|
 :skolemid |613|
 :pattern ( (|#Shared.PieceKind.Knight| |a#8#0#0|))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (= (Shared.PieceKind.c (|#Shared.PieceKind.Knight| |a#12#0#0|)) |a#12#0#0|)
 :qid |TestGenerationShareddfy.3:31|
 :skolemid |620|
 :pattern ( (|#Shared.PieceKind.Knight| |a#12#0#0|))
)))
(assert (forall ((|a#14#0#0| T@U) ) (! (= (DatatypeCtorId (|#Shared.PieceKind.King| |a#14#0#0|)) |##Shared.PieceKind.King|)
 :qid |TestGenerationShareddfy.3:48|
 :skolemid |622|
 :pattern ( (|#Shared.PieceKind.King| |a#14#0#0|))
)))
(assert (forall ((|a#18#0#0| T@U) ) (! (= (Shared.PieceKind.c (|#Shared.PieceKind.King| |a#18#0#0|)) |a#18#0#0|)
 :qid |TestGenerationShareddfy.3:48|
 :skolemid |629|
 :pattern ( (|#Shared.PieceKind.King| |a#18#0#0|))
)))
(assert (forall ((|a#20#0#0| T@U) ) (! (= (DatatypeCtorId (|#Shared.PieceKind.Pawn| |a#20#0#0|)) |##Shared.PieceKind.Pawn|)
 :qid |TestGenerationShareddfy.3:65|
 :skolemid |631|
 :pattern ( (|#Shared.PieceKind.Pawn| |a#20#0#0|))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= (Shared.PieceKind.c (|#Shared.PieceKind.Pawn| |a#24#0#0|)) |a#24#0#0|)
 :qid |TestGenerationShareddfy.3:65|
 :skolemid |638|
 :pattern ( (|#Shared.PieceKind.Pawn| |a#24#0#0|))
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
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (|$IsA#Shared.PieceKind| d@@11) (or (or (Shared.PieceKind.Knight_q d@@11) (Shared.PieceKind.King_q d@@11)) (Shared.PieceKind.Pawn_q d@@11)))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( (|$IsA#Shared.PieceKind| d@@11))
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
(assert (forall ((|a#13#0#0| T@U) ) (! (< (DtRank |a#13#0#0|) (DtRank (|#Shared.PieceKind.Knight| |a#13#0#0|)))
 :qid |TestGenerationShareddfy.3:31|
 :skolemid |621|
 :pattern ( (|#Shared.PieceKind.Knight| |a#13#0#0|))
)))
(assert (forall ((|a#19#0#0| T@U) ) (! (< (DtRank |a#19#0#0|) (DtRank (|#Shared.PieceKind.King| |a#19#0#0|)))
 :qid |TestGenerationShareddfy.3:48|
 :skolemid |630|
 :pattern ( (|#Shared.PieceKind.King| |a#19#0#0|))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (< (DtRank |a#25#0#0|) (DtRank (|#Shared.PieceKind.Pawn| |a#25#0#0|)))
 :qid |TestGenerationShareddfy.3:65|
 :skolemid |639|
 :pattern ( (|#Shared.PieceKind.Pawn| |a#25#0#0|))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (< (|Seq#Rank| |a#6#0#0|) (DtRank (|#Shared.Board.Board| |a#6#0#0|)))
 :qid |TestGenerationShareddfy.26:26|
 :skolemid |695|
 :pattern ( (|#Shared.Board.Board| |a#6#0#0|))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
(assert (forall ((d@@12 T@U) ) (!  (=> ($Is DatatypeTypeType d@@12 Tclass.Shared.PieceKind) (or (or (Shared.PieceKind.Knight_q d@@12) (Shared.PieceKind.King_q d@@12)) (Shared.PieceKind.Pawn_q d@@12)))
 :qid |unknown.0:0|
 :skolemid |642|
 :pattern ( (Shared.PieceKind.Pawn_q d@@12) ($Is DatatypeTypeType d@@12 Tclass.Shared.PieceKind))
 :pattern ( (Shared.PieceKind.King_q d@@12) ($Is DatatypeTypeType d@@12 Tclass.Shared.PieceKind))
 :pattern ( (Shared.PieceKind.Knight_q d@@12) ($Is DatatypeTypeType d@@12 Tclass.Shared.PieceKind))
)))
(assert (forall ((bx@@6 T@U) (t@@2 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@2)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@2))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@6 (TSeq t@@2)))
)))
(assert (= (Tag Tclass.Shared.Board) Tagclass.Shared.Board))
(assert (= (TagFamily Tclass.Shared.Board) tytagFamily$Board))
(assert (= (Tag Tclass.Shared.Piece) Tagclass.Shared.Piece))
(assert (= (TagFamily Tclass.Shared.Piece) tytagFamily$Piece))
(assert (= (Tag Tclass.Shared.Color) Tagclass.Shared.Color))
(assert (= (TagFamily Tclass.Shared.Color) tytagFamily$Color))
(assert (= (Tag Tclass.Shared.PieceKind) Tagclass.Shared.PieceKind))
(assert (= (TagFamily Tclass.Shared.PieceKind) tytagFamily$PieceKind))
(assert (= (Tag Tclass.Shared.ChessPos) Tagclass.Shared.ChessPos))
(assert (= (TagFamily Tclass.Shared.ChessPos) tytagFamily$ChessPos))
(assert (= (Tag Tclass.Shared.Pos) Tagclass.Shared.Pos))
(assert (= (TagFamily Tclass.Shared.Pos) tytagFamily$Pos))
(assert (= |#Shared.Color.Black| (Lit DatatypeTypeType |#Shared.Color.Black|)))
(assert (= |#Shared.Color.White| (Lit DatatypeTypeType |#Shared.Color.White|)))
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
(assert (forall ((|a#11#0#0| T@U) ) (! (= (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |a#11#0#0|)) (Lit DatatypeTypeType (|#Shared.PieceKind.Knight| |a#11#0#0|)))
 :qid |TestGenerationShareddfy.3:31|
 :skolemid |619|
 :pattern ( (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |a#11#0#0|)))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (= (|#Shared.PieceKind.King| (Lit DatatypeTypeType |a#17#0#0|)) (Lit DatatypeTypeType (|#Shared.PieceKind.King| |a#17#0#0|)))
 :qid |TestGenerationShareddfy.3:48|
 :skolemid |628|
 :pattern ( (|#Shared.PieceKind.King| (Lit DatatypeTypeType |a#17#0#0|)))
)))
(assert (forall ((|a#23#0#0| T@U) ) (! (= (|#Shared.PieceKind.Pawn| (Lit DatatypeTypeType |a#23#0#0|)) (Lit DatatypeTypeType (|#Shared.PieceKind.Pawn| |a#23#0#0|)))
 :qid |TestGenerationShareddfy.3:65|
 :skolemid |637|
 :pattern ( (|#Shared.PieceKind.Pawn| (Lit DatatypeTypeType |a#23#0#0|)))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#Shared.Board.Board| (Lit SeqType |a#3#0#0|)) (Lit DatatypeTypeType (|#Shared.Board.Board| |a#3#0#0|)))
 :qid |TestGenerationShareddfy.26:26|
 :skolemid |692|
 :pattern ( (|#Shared.Board.Board| (Lit SeqType |a#3#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is SeqType v@@0 (TSeq t0@@1)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@0))) ($IsBox (|Seq#Index| v@@0 i@@0) t0@@1))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@0 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@0 (TSeq t0@@1)))
)))
(assert (forall ((s@@1 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is boolType v@@1 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@1 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |board#0@@1| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Chess.__default.BoardPreset)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon13_correct true))
(let ((anon20_Else_correct  (=> (and (not (and (and (and (and (= (|Seq#Length| (Shared.Board.pieces |board#0@@1|)) (LitInt 5)) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 0)))) (|#Shared.PieceKind.King| (Lit DatatypeTypeType |#Shared.Color.White|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 1)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 2)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 3)))) (|#Shared.PieceKind.Pawn| (Lit DatatypeTypeType |#Shared.Color.Black|))))) (= (ControlFlow 0 5) 2)) anon13_correct)))
(let ((anon20_Then_correct  (=> (and (and (and (and (and (= (|Seq#Length| (Shared.Board.pieces |board#0@@1|)) (LitInt 5)) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 0)))) (|#Shared.PieceKind.King| (Lit DatatypeTypeType |#Shared.Color.White|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 1)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 2)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 3)))) (|#Shared.PieceKind.Pawn| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (Shared.Board.Board_q |board#0@@1|)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (and (<= 0 (LitInt 4)) (< (LitInt 4) (|Seq#Length| (Shared.Board.pieces |board#0@@1|))))) (=> (and (<= 0 (LitInt 4)) (< (LitInt 4) (|Seq#Length| (Shared.Board.pieces |board#0@@1|)))) (=> (and (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 4)))) (= (ControlFlow 0 3) 2)) anon13_correct))))))
(let ((anon19_Else_correct  (=> (not (and (and (and (= (|Seq#Length| (Shared.Board.pieces |board#0@@1|)) (LitInt 5)) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 0)))) (|#Shared.PieceKind.King| (Lit DatatypeTypeType |#Shared.Color.White|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 1)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 2)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|))))) (and (=> (= (ControlFlow 0 8) 3) anon20_Then_correct) (=> (= (ControlFlow 0 8) 5) anon20_Else_correct)))))
(let ((anon19_Then_correct  (=> (and (and (and (and (= (|Seq#Length| (Shared.Board.pieces |board#0@@1|)) (LitInt 5)) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 0)))) (|#Shared.PieceKind.King| (Lit DatatypeTypeType |#Shared.Color.White|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 1)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 2)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (Shared.Board.Board_q |board#0@@1|)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (|Seq#Length| (Shared.Board.pieces |board#0@@1|))))) (=> (and (<= 0 (LitInt 3)) (< (LitInt 3) (|Seq#Length| (Shared.Board.pieces |board#0@@1|)))) (=> (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 3)))) (and (=> (= (ControlFlow 0 6) 3) anon20_Then_correct) (=> (= (ControlFlow 0 6) 5) anon20_Else_correct))))))))
(let ((anon18_Else_correct  (=> (not (and (and (= (|Seq#Length| (Shared.Board.pieces |board#0@@1|)) (LitInt 5)) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 0)))) (|#Shared.PieceKind.King| (Lit DatatypeTypeType |#Shared.Color.White|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 1)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|))))) (and (=> (= (ControlFlow 0 11) 6) anon19_Then_correct) (=> (= (ControlFlow 0 11) 8) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (and (and (and (= (|Seq#Length| (Shared.Board.pieces |board#0@@1|)) (LitInt 5)) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 0)))) (|#Shared.PieceKind.King| (Lit DatatypeTypeType |#Shared.Color.White|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 1)))) (|#Shared.PieceKind.Knight| (Lit DatatypeTypeType |#Shared.Color.Black|)))) (Shared.Board.Board_q |board#0@@1|)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| (Shared.Board.pieces |board#0@@1|))))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| (Shared.Board.pieces |board#0@@1|)))) (=> (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 2)))) (and (=> (= (ControlFlow 0 9) 6) anon19_Then_correct) (=> (= (ControlFlow 0 9) 8) anon19_Else_correct))))))))
(let ((anon17_Else_correct  (=> (not (and (= (|Seq#Length| (Shared.Board.pieces |board#0@@1|)) (LitInt 5)) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 0)))) (|#Shared.PieceKind.King| (Lit DatatypeTypeType |#Shared.Color.White|))))) (and (=> (= (ControlFlow 0 14) 9) anon18_Then_correct) (=> (= (ControlFlow 0 14) 11) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (and (and (= (|Seq#Length| (Shared.Board.pieces |board#0@@1|)) (LitInt 5)) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 0)))) (|#Shared.PieceKind.King| (Lit DatatypeTypeType |#Shared.Color.White|)))) (Shared.Board.Board_q |board#0@@1|)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| (Shared.Board.pieces |board#0@@1|))))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| (Shared.Board.pieces |board#0@@1|)))) (=> (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 1)))) (and (=> (= (ControlFlow 0 12) 9) anon18_Then_correct) (=> (= (ControlFlow 0 12) 11) anon18_Else_correct))))))))
(let ((anon16_Else_correct  (=> (or (not (= (|Seq#Length| (Shared.Board.pieces |board#0@@1|)) (LitInt 5))) (not true)) (and (=> (= (ControlFlow 0 17) 12) anon17_Then_correct) (=> (= (ControlFlow 0 17) 14) anon17_Else_correct)))))
(let ((anon16_Then_correct  (=> (and (= (|Seq#Length| (Shared.Board.pieces |board#0@@1|)) (LitInt 5)) (Shared.Board.Board_q |board#0@@1|)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| (Shared.Board.pieces |board#0@@1|))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| (Shared.Board.pieces |board#0@@1|)))) (=> (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) (LitInt 0)))) (and (=> (= (ControlFlow 0 15) 12) anon17_Then_correct) (=> (= (ControlFlow 0 15) 14) anon17_Else_correct))))))))
(let ((anon15_Else_correct  (=> (Shared.Board.Board_q |board#0@@1|) (and (=> (= (ControlFlow 0 18) 15) anon16_Then_correct) (=> (= (ControlFlow 0 18) 17) anon16_Else_correct)))))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 19) 1) anon15_Then_correct) (=> (= (ControlFlow 0 19) 18) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |board#0@@1| Tclass.Shared.Board)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 20) 19))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
