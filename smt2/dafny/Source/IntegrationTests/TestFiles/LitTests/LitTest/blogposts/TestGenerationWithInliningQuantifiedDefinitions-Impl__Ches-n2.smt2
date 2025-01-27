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
(declare-fun Tagclass.Chess.ValidBoard () T@U)
(declare-fun Tagclass.Shared.Piece () T@U)
(declare-fun Tagclass.Shared.Color () T@U)
(declare-fun Tagclass.Shared.PieceKind () T@U)
(declare-fun Tagclass.Shared.ChessPos () T@U)
(declare-fun |##Shared.Color.Black| () T@U)
(declare-fun |##Shared.Color.White| () T@U)
(declare-fun |##Shared.PieceKind.Knight| () T@U)
(declare-fun |##Shared.PieceKind.King| () T@U)
(declare-fun |##Shared.PieceKind.Pawn| () T@U)
(declare-fun |##Shared.Pos.Pos| () T@U)
(declare-fun Tagclass.Shared.Pos () T@U)
(declare-fun |##Shared.Piece.Piece| () T@U)
(declare-fun |##Shared.Board.Board| () T@U)
(declare-fun tytagFamily$Board () T@U)
(declare-fun tytagFamily$ValidBoard () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun Chess.__default.CheckedByPiece (T@U T@U T@U) Bool)
(declare-fun |Chess.__default.CheckedByPiece#canCall| (T@U T@U T@U) Bool)
(declare-fun Tclass.Chess.ValidBoard () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Shared.Board.pieces (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Shared.Board.Board_q (T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |$IsA#Shared.PieceKind| (T@U) Bool)
(declare-fun Shared.Piece.kind (T@U) T@U)
(declare-fun Shared.Piece.Piece_q (T@U) Bool)
(declare-fun |Shared.PieceKind#Equal| (T@U T@U) Bool)
(declare-fun |Shared.Piece.Attacks#canCall| (T@U T@U) Bool)
(declare-fun Shared.Piece.at (T@U) T@U)
(declare-fun Shared.Piece.Attacks (T@U T@U) Bool)
(declare-fun |$IsA#Shared.Pos| (T@U) Bool)
(declare-fun Shared.Pos.Pos_q (T@U) Bool)
(declare-fun |$IsA#Shared.Piece| (T@U) Bool)
(declare-fun |$IsA#Shared.Board| (T@U) Bool)
(declare-fun Shared.__default.abs (Int) Int)
(declare-fun |Shared.Pos#Equal| (T@U T@U) Bool)
(declare-fun Shared.PieceKind.Knight_q (T@U) Bool)
(declare-fun Shared.PieceKind.King_q (T@U) Bool)
(declare-fun Shared.PieceKind.Pawn_q (T@U) Bool)
(declare-fun |Shared.__default.abs#canCall| (Int) Bool)
(declare-fun Shared.Pos.col (T@U) Int)
(declare-fun Shared.Pos.row (T@U) Int)
(declare-fun Shared.PieceKind.c (T@U) T@U)
(declare-fun Shared.Color.White_q (T@U) Bool)
(declare-fun |#Shared.Board.Board| (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Shared.Color.Black| () T@U)
(declare-fun |#Shared.Color.White| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Shared.Board () T@U)
(declare-fun Tclass.Shared.Pos () T@U)
(declare-fun Tclass.Shared.Color () T@U)
(declare-fun |#Shared.Pos.Pos| (Int Int) T@U)
(declare-fun |Shared.Color#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun Shared.Color.Black_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Chess.__default.BoardIsValid (T@U) Bool)
(declare-fun |Chess.__default.BoardIsValid#canCall| (T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |#Shared.PieceKind.Knight| (T@U) T@U)
(declare-fun |#Shared.PieceKind.King| (T@U) T@U)
(declare-fun |#Shared.PieceKind.Pawn| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass.Shared.Board Tagclass.Chess.ValidBoard Tagclass.Shared.Piece Tagclass.Shared.Color Tagclass.Shared.PieceKind Tagclass.Shared.ChessPos |##Shared.Color.Black| |##Shared.Color.White| |##Shared.PieceKind.Knight| |##Shared.PieceKind.King| |##Shared.PieceKind.Pawn| |##Shared.Pos.Pos| Tagclass.Shared.Pos |##Shared.Piece.Piece| |##Shared.Board.Board| tytagFamily$Board tytagFamily$ValidBoard tytagFamily$Piece tytagFamily$Color tytagFamily$PieceKind tytagFamily$ChessPos tytagFamily$Pos)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Shared.Piece.Piece| |a#34#0#0| |a#34#1#0|) Tclass.Shared.Piece)  (and ($Is DatatypeTypeType |a#34#0#0| Tclass.Shared.PieceKind) ($Is DatatypeTypeType |a#34#1#0| Tclass.Shared.ChessPos)))
 :qid |TestGenerationShareddfy.9:26|
 :skolemid |669|
 :pattern ( ($Is DatatypeTypeType (|#Shared.Piece.Piece| |a#34#0#0| |a#34#1#0|) Tclass.Shared.Piece))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|board#0| T@U) (|king#0| T@U) (|byPiece#0| T@U) ) (!  (=> (or (|Chess.__default.CheckedByPiece#canCall| |board#0| |king#0| |byPiece#0|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |board#0| Tclass.Chess.ValidBoard) ($Is DatatypeTypeType |king#0| Tclass.Shared.Piece)) ($Is DatatypeTypeType |byPiece#0| Tclass.Shared.PieceKind)))) (and (forall ((|i#0| Int) ) (!  (=> (<= (LitInt 0) |i#0|) (and (Shared.Board.Board_q |board#0|) (=> (< |i#0| (|Seq#Length| (Shared.Board.pieces |board#0|))) (and (and (and (|$IsA#Shared.PieceKind| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0|) |i#0|)))) (|$IsA#Shared.PieceKind| |byPiece#0|)) (and (Shared.Board.Board_q |board#0|) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0|) |i#0|))))) (=> (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0|) |i#0|))) |byPiece#0|) (and (and (Shared.Board.Board_q |board#0|) (Shared.Piece.Piece_q |king#0|)) (|Shared.Piece.Attacks#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0|) |i#0|)) (Shared.Piece.at |king#0|))))))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.28:12|
 :skolemid |557|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0|) |i#0|)))
)) (= (Chess.__default.CheckedByPiece |board#0| |king#0| |byPiece#0|) (exists ((|i#0@@0| Int) ) (!  (and (and (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| (Shared.Board.pieces |board#0|)))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0|) |i#0@@0|))) |byPiece#0|)) (Shared.Piece.Attacks ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0|) |i#0@@0|)) (Shared.Piece.at |king#0|)))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.28:12|
 :skolemid |556|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0|) |i#0@@0|)))
)))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.27:28|
 :skolemid |558|
 :pattern ( (Chess.__default.CheckedByPiece |board#0| |king#0| |byPiece#0|))
))))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#Shared.Pos| d) (Shared.Pos.Pos_q d))
 :qid |unknown.0:0|
 :skolemid |659|
 :pattern ( (|$IsA#Shared.Pos| d))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#Shared.Piece| d@@0) (Shared.Piece.Piece_q d@@0))
 :qid |unknown.0:0|
 :skolemid |678|
 :pattern ( (|$IsA#Shared.Piece| d@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (|$IsA#Shared.Board| d@@1) (Shared.Board.Board_q d@@1))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( (|$IsA#Shared.Board| d@@1))
)))
(assert (forall ((|n#0| Int) ) (! (= (Shared.__default.abs |n#0|) (ite (> |n#0| 0) |n#0| (- 0 |n#0|)))
 :qid |TestGenerationShareddfy.25:16|
 :skolemid |601|
 :pattern ( (Shared.__default.abs |n#0|))
)))
(assert (forall ((this T@U) (|pos#0| T@U) ) (!  (=> (or (|Shared.Piece.Attacks#canCall| this |pos#0|) (and ($Is DatatypeTypeType this Tclass.Shared.Piece) ($Is DatatypeTypeType |pos#0| Tclass.Shared.ChessPos))) (and (and (and (and (|$IsA#Shared.Pos| (Shared.Piece.at this)) (|$IsA#Shared.Pos| |pos#0|)) (Shared.Piece.Piece_q this)) (=> (not (|Shared.Pos#Equal| (Shared.Piece.at this) |pos#0|)) (and (and (Shared.Piece.Piece_q this) (=> (Shared.PieceKind.Knight_q (Shared.Piece.kind this)) (and (and (Shared.Piece.Piece_q this) (or (or (Shared.PieceKind.Knight_q (Shared.Piece.kind this)) (Shared.PieceKind.King_q (Shared.Piece.kind this))) (Shared.PieceKind.Pawn_q (Shared.Piece.kind this)))) (and (and (and (and (Shared.Pos.Pos_q |pos#0|) (and (Shared.Piece.Piece_q this) (Shared.Pos.Pos_q (Shared.Piece.at this)))) (|Shared.__default.abs#canCall| (- (Shared.Pos.col |pos#0|) (Shared.Pos.col (Shared.Piece.at this))))) (=> (= (Shared.__default.abs (- (Shared.Pos.col |pos#0|) (Shared.Pos.col (Shared.Piece.at this)))) (LitInt 2)) (and (and (Shared.Pos.Pos_q |pos#0|) (and (Shared.Piece.Piece_q this) (Shared.Pos.Pos_q (Shared.Piece.at this)))) (|Shared.__default.abs#canCall| (- (Shared.Pos.row |pos#0|) (Shared.Pos.row (Shared.Piece.at this))))))) (=> (not (and (= (Shared.__default.abs (- (Shared.Pos.col |pos#0|) (Shared.Pos.col (Shared.Piece.at this)))) (LitInt 2)) (= (Shared.__default.abs (- (Shared.Pos.row |pos#0|) (Shared.Pos.row (Shared.Piece.at this)))) (LitInt 1)))) (and (and (and (Shared.Pos.Pos_q |pos#0|) (and (Shared.Piece.Piece_q this) (Shared.Pos.Pos_q (Shared.Piece.at this)))) (|Shared.__default.abs#canCall| (- (Shared.Pos.col |pos#0|) (Shared.Pos.col (Shared.Piece.at this))))) (=> (= (Shared.__default.abs (- (Shared.Pos.col |pos#0|) (Shared.Pos.col (Shared.Piece.at this)))) (LitInt 1)) (and (and (Shared.Pos.Pos_q |pos#0|) (and (Shared.Piece.Piece_q this) (Shared.Pos.Pos_q (Shared.Piece.at this)))) (|Shared.__default.abs#canCall| (- (Shared.Pos.row |pos#0|) (Shared.Pos.row (Shared.Piece.at this)))))))))))) (=> (not (Shared.PieceKind.Knight_q (Shared.Piece.kind this))) (and (and (Shared.Piece.Piece_q this) (=> (Shared.PieceKind.King_q (Shared.Piece.kind this)) (and (and (Shared.Piece.Piece_q this) (or (or (Shared.PieceKind.Knight_q (Shared.Piece.kind this)) (Shared.PieceKind.King_q (Shared.Piece.kind this))) (Shared.PieceKind.Pawn_q (Shared.Piece.kind this)))) (and (and (and (Shared.Pos.Pos_q |pos#0|) (and (Shared.Piece.Piece_q this) (Shared.Pos.Pos_q (Shared.Piece.at this)))) (|Shared.__default.abs#canCall| (- (Shared.Pos.col |pos#0|) (Shared.Pos.col (Shared.Piece.at this))))) (=> (< (Shared.__default.abs (- (Shared.Pos.col |pos#0|) (Shared.Pos.col (Shared.Piece.at this)))) 2) (and (and (Shared.Pos.Pos_q |pos#0|) (and (Shared.Piece.Piece_q this) (Shared.Pos.Pos_q (Shared.Piece.at this)))) (|Shared.__default.abs#canCall| (- (Shared.Pos.row |pos#0|) (Shared.Pos.row (Shared.Piece.at this)))))))))) (=> (not (Shared.PieceKind.King_q (Shared.Piece.kind this))) (and (and (Shared.Piece.Piece_q this) (or (or (Shared.PieceKind.Knight_q (Shared.Piece.kind this)) (Shared.PieceKind.King_q (Shared.Piece.kind this))) (Shared.PieceKind.Pawn_q (Shared.Piece.kind this)))) (let ((|c#5| (Shared.PieceKind.c (Shared.Piece.kind this))))
 (and (and (Shared.Pos.Pos_q |pos#0|) (and (Shared.Piece.Piece_q this) (Shared.Pos.Pos_q (Shared.Piece.at this)))) (=> (= (Shared.Pos.row |pos#0|) (+ (Shared.Pos.row (Shared.Piece.at this)) (ite (Shared.Color.White_q |c#5|) (- 0 1) 1))) (and (and (Shared.Pos.Pos_q |pos#0|) (and (Shared.Piece.Piece_q this) (Shared.Pos.Pos_q (Shared.Piece.at this)))) (=> (or (not (= (Shared.Pos.col |pos#0|) (+ (Shared.Pos.col (Shared.Piece.at this)) 1))) (not true)) (and (Shared.Pos.Pos_q |pos#0|) (and (Shared.Piece.Piece_q this) (Shared.Pos.Pos_q (Shared.Piece.at this)))))))))))))))) (= (Shared.Piece.Attacks this |pos#0|)  (and (not (|Shared.Pos#Equal| (Shared.Piece.at this) |pos#0|)) (ite (Shared.PieceKind.Knight_q (Shared.Piece.kind this))  (or (and (= (Shared.__default.abs (- (Shared.Pos.col |pos#0|) (Shared.Pos.col (Shared.Piece.at this)))) (LitInt 2)) (= (Shared.__default.abs (- (Shared.Pos.row |pos#0|) (Shared.Pos.row (Shared.Piece.at this)))) (LitInt 1))) (and (= (Shared.__default.abs (- (Shared.Pos.col |pos#0|) (Shared.Pos.col (Shared.Piece.at this)))) (LitInt 1)) (= (Shared.__default.abs (- (Shared.Pos.row |pos#0|) (Shared.Pos.row (Shared.Piece.at this)))) (LitInt 2)))) (ite (Shared.PieceKind.King_q (Shared.Piece.kind this))  (and (< (Shared.__default.abs (- (Shared.Pos.col |pos#0|) (Shared.Pos.col (Shared.Piece.at this)))) 2) (< (Shared.__default.abs (- (Shared.Pos.row |pos#0|) (Shared.Pos.row (Shared.Piece.at this)))) 2)) (let ((|c#2| (Shared.PieceKind.c (Shared.Piece.kind this))))
 (and (= (Shared.Pos.row |pos#0|) (+ (Shared.Pos.row (Shared.Piece.at this)) (ite (Shared.Color.White_q |c#2|) (- 0 1) 1))) (or (= (Shared.Pos.col |pos#0|) (+ (Shared.Pos.col (Shared.Piece.at this)) 1)) (= (Shared.Pos.col |pos#0|) (- (Shared.Pos.col (Shared.Piece.at this)) 1)))))))))))
 :qid |TestGenerationShareddfy.10:15|
 :skolemid |684|
 :pattern ( (Shared.Piece.Attacks this |pos#0|))
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
(assert (= (DatatypeCtorId |#Shared.Color.Black|) |##Shared.Color.Black|))
(assert (= (DatatypeCtorId |#Shared.Color.White|) |##Shared.Color.White|))
(assert (forall ((|n#0@@0| Int) ) (! (= (Shared.__default.abs (LitInt |n#0@@0|)) (ite (> |n#0@@0| 0) |n#0@@0| (- 0 |n#0@@0|)))
 :qid |TestGenerationShareddfy.25:16|
 :weight 3
 :skolemid |602|
 :pattern ( (Shared.__default.abs (LitInt |n#0@@0|)))
)))
(assert (forall ((|board#0@@0| T@U) ($h T@U) ) (! (= ($IsAlloc DatatypeTypeType |board#0@@0| Tclass.Chess.ValidBoard $h) ($IsAlloc DatatypeTypeType |board#0@@0| Tclass.Shared.Board $h))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( ($IsAlloc DatatypeTypeType |board#0@@0| Tclass.Chess.ValidBoard $h))
)))
(assert (forall ((|pos#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc DatatypeTypeType |pos#0@@0| Tclass.Shared.ChessPos $h@@0) ($IsAlloc DatatypeTypeType |pos#0@@0| Tclass.Shared.Pos $h@@0))
 :qid |unknown.0:0|
 :skolemid |664|
 :pattern ( ($IsAlloc DatatypeTypeType |pos#0@@0| Tclass.Shared.ChessPos $h@@0))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 Tclass.Shared.Pos) (Shared.Pos.Pos_q d@@2))
 :qid |unknown.0:0|
 :skolemid |660|
 :pattern ( (Shared.Pos.Pos_q d@@2) ($Is DatatypeTypeType d@@2 Tclass.Shared.Pos))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.Shared.Piece) (Shared.Piece.Piece_q d@@3))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( (Shared.Piece.Piece_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.Shared.Piece))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass.Shared.Board) (Shared.Board.Board_q d@@4))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( (Shared.Board.Board_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.Shared.Board))
)))
(assert ($Is DatatypeTypeType |#Shared.Color.Black| Tclass.Shared.Color))
(assert ($Is DatatypeTypeType |#Shared.Color.White| Tclass.Shared.Color))
(assert (forall ((|a#28#0#0| Int) (|a#28#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#Shared.Pos.Pos| |a#28#0#0| |a#28#1#0|) Tclass.Shared.Pos)  (and ($Is intType (int_2_U |a#28#0#0|) TInt) ($Is intType (int_2_U |a#28#1#0|) TInt)))
 :qid |TestGenerationShareddfy.4:22|
 :skolemid |652|
 :pattern ( ($Is DatatypeTypeType (|#Shared.Pos.Pos| |a#28#0#0| |a#28#1#0|) Tclass.Shared.Pos))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Shared.Color#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( (|Shared.Color#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Shared.PieceKind#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |646|
 :pattern ( (|Shared.PieceKind#Equal| a@@1 b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Shared.Pos#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |662|
 :pattern ( (|Shared.Pos#Equal| a@@2 b@@2))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((s T@U) (n Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n)) (< j (|Seq#Length| s))) (= (|Seq#Index| (|Seq#Take| s n) j) (|Seq#Index| s j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s n) j))
 :pattern ( (|Seq#Index| s j) (|Seq#Take| s n))
)))
(assert (forall ((d@@5 T@U) ) (! (= (Shared.Color.Black_q d@@5) (= (DatatypeCtorId d@@5) |##Shared.Color.Black|))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( (Shared.Color.Black_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (Shared.Color.White_q d@@6) (= (DatatypeCtorId d@@6) |##Shared.Color.White|))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (Shared.Color.White_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (Shared.PieceKind.Knight_q d@@7) (= (DatatypeCtorId d@@7) |##Shared.PieceKind.Knight|))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( (Shared.PieceKind.Knight_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (Shared.PieceKind.King_q d@@8) (= (DatatypeCtorId d@@8) |##Shared.PieceKind.King|))
 :qid |unknown.0:0|
 :skolemid |623|
 :pattern ( (Shared.PieceKind.King_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (Shared.PieceKind.Pawn_q d@@9) (= (DatatypeCtorId d@@9) |##Shared.PieceKind.Pawn|))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( (Shared.PieceKind.Pawn_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (Shared.Pos.Pos_q d@@10) (= (DatatypeCtorId d@@10) |##Shared.Pos.Pos|))
 :qid |unknown.0:0|
 :skolemid |648|
 :pattern ( (Shared.Pos.Pos_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (Shared.Piece.Piece_q d@@11) (= (DatatypeCtorId d@@11) |##Shared.Piece.Piece|))
 :qid |unknown.0:0|
 :skolemid |666|
 :pattern ( (Shared.Piece.Piece_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (Shared.Board.Board_q d@@12) (= (DatatypeCtorId d@@12) |##Shared.Board.Board|))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( (Shared.Board.Board_q d@@12))
)))
(assert (forall ((|pos#0@@1| T@U) ) (! (= ($Is DatatypeTypeType |pos#0@@1| Tclass.Shared.ChessPos)  (and ($Is DatatypeTypeType |pos#0@@1| Tclass.Shared.Pos) (and (and (<= (LitInt 0) (Shared.Pos.row |pos#0@@1|)) (< (Shared.Pos.row |pos#0@@1|) 8)) (and (<= (LitInt 0) (Shared.Pos.col |pos#0@@1|)) (< (Shared.Pos.col |pos#0@@1|) 8)))))
 :qid |unknown.0:0|
 :skolemid |663|
 :pattern ( ($Is DatatypeTypeType |pos#0@@1| Tclass.Shared.ChessPos))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SeqType) 8))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|board#0@@1| T@U) ) (!  (=> (or (|Chess.__default.BoardIsValid#canCall| (Lit DatatypeTypeType |board#0@@1|)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |board#0@@1| Tclass.Shared.Board))) (and (forall ((|i#1| Int) (|j#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (<= (LitInt 0) |j#1|)) (=> (<= (LitInt 0) |i#1|) (=> (< |i#1| |j#1|) (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0@@1|)) (=> (< |j#1| (|Seq#Length| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@1|))))) (and (and (|$IsA#Shared.Pos| (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@1|))) |i#1|)))) (|$IsA#Shared.Pos| (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@1|))) |j#1|))))) (and (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0@@1|)) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@1|))) |i#1|)))) (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0@@1|)) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@1|))) |j#1|)))))))))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.18:12|
 :skolemid |539|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) |j#1|)) ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) |i#1|)))
)) (= (Chess.__default.BoardIsValid (Lit DatatypeTypeType |board#0@@1|)) (forall ((|i#1@@0| Int) (|j#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@0|) (<= (LitInt 0) |j#1@@0|)) (=> (and (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| |j#1@@0|)) (< |j#1@@0| (|Seq#Length| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@1|)))))) (not (|Shared.Pos#Equal| (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@1|))) |i#1@@0|))) (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@1|))) |j#1@@0|)))))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.18:12|
 :skolemid |538|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) |j#1@@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@1|) |i#1@@0|)))
)))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.17:26|
 :weight 3
 :skolemid |540|
 :pattern ( (Chess.__default.BoardIsValid (Lit DatatypeTypeType |board#0@@1|)))
))))
(assert (forall ((s@@0 T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@0))) (< (|Seq#Rank| (|Seq#Take| s@@0 i@@0)) (|Seq#Rank| s@@0)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |269|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@0 i@@0)))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (Shared.Pos.Pos_q d@@13) (exists ((|a#27#0#0| Int) (|a#27#1#0| Int) ) (! (= d@@13 (|#Shared.Pos.Pos| |a#27#0#0| |a#27#1#0|))
 :qid |TestGenerationShareddfy.4:22|
 :skolemid |649|
)))
 :qid |unknown.0:0|
 :skolemid |650|
 :pattern ( (Shared.Pos.Pos_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (Shared.Piece.Piece_q d@@14) (exists ((|a#33#0#0| T@U) (|a#33#1#0| T@U) ) (! (= d@@14 (|#Shared.Piece.Piece| |a#33#0#0| |a#33#1#0|))
 :qid |TestGenerationShareddfy.9:26|
 :skolemid |667|
)))
 :qid |unknown.0:0|
 :skolemid |668|
 :pattern ( (Shared.Piece.Piece_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (Shared.Color.Black_q d@@15) (= d@@15 |#Shared.Color.Black|))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (Shared.Color.Black_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (Shared.Color.White_q d@@16) (= d@@16 |#Shared.Color.White|))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( (Shared.Color.White_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> (Shared.PieceKind.Knight_q d@@17) (exists ((|a#9#0#0| T@U) ) (! (= d@@17 (|#Shared.PieceKind.Knight| |a#9#0#0|))
 :qid |TestGenerationShareddfy.3:31|
 :skolemid |615|
)))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( (Shared.PieceKind.Knight_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (Shared.PieceKind.King_q d@@18) (exists ((|a#15#0#0| T@U) ) (! (= d@@18 (|#Shared.PieceKind.King| |a#15#0#0|))
 :qid |TestGenerationShareddfy.3:48|
 :skolemid |624|
)))
 :qid |unknown.0:0|
 :skolemid |625|
 :pattern ( (Shared.PieceKind.King_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> (Shared.PieceKind.Pawn_q d@@19) (exists ((|a#21#0#0| T@U) ) (! (= d@@19 (|#Shared.PieceKind.Pawn| |a#21#0#0|))
 :qid |TestGenerationShareddfy.3:65|
 :skolemid |633|
)))
 :qid |unknown.0:0|
 :skolemid |634|
 :pattern ( (Shared.PieceKind.Pawn_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (Shared.Board.Board_q d@@20) (exists ((|a#1#0#0| T@U) ) (! (= d@@20 (|#Shared.Board.Board| |a#1#0#0|))
 :qid |TestGenerationShareddfy.26:26|
 :skolemid |688|
)))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( (Shared.Board.Board_q d@@20))
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
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.Shared.Board) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass.Shared.Board)))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx@@0 Tclass.Shared.Board))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.Chess.ValidBoard) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.Chess.ValidBoard)))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($IsBox bx@@1 Tclass.Chess.ValidBoard))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.Shared.Piece) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.Shared.Piece)))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( ($IsBox bx@@2 Tclass.Shared.Piece))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.Shared.Color) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.Shared.Color)))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( ($IsBox bx@@3 Tclass.Shared.Color))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.Shared.PieceKind) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.Shared.PieceKind)))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($IsBox bx@@4 Tclass.Shared.PieceKind))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.Shared.ChessPos) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass.Shared.ChessPos)))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsBox bx@@5 Tclass.Shared.ChessPos))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.Shared.Pos) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass.Shared.Pos)))
 :qid |unknown.0:0|
 :skolemid |651|
 :pattern ( ($IsBox bx@@6 Tclass.Shared.Pos))
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
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (Shared.PieceKind.Knight_q a@@3) (Shared.PieceKind.Knight_q b@@3)) (= (|Shared.PieceKind#Equal| a@@3 b@@3) (|Shared.Color#Equal| (Shared.PieceKind.c a@@3) (Shared.PieceKind.c b@@3))))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( (|Shared.PieceKind#Equal| a@@3 b@@3) (Shared.PieceKind.Knight_q a@@3))
 :pattern ( (|Shared.PieceKind#Equal| a@@3 b@@3) (Shared.PieceKind.Knight_q b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (!  (=> (and (Shared.PieceKind.King_q a@@4) (Shared.PieceKind.King_q b@@4)) (= (|Shared.PieceKind#Equal| a@@4 b@@4) (|Shared.Color#Equal| (Shared.PieceKind.c a@@4) (Shared.PieceKind.c b@@4))))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( (|Shared.PieceKind#Equal| a@@4 b@@4) (Shared.PieceKind.King_q a@@4))
 :pattern ( (|Shared.PieceKind#Equal| a@@4 b@@4) (Shared.PieceKind.King_q b@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (!  (=> (and (Shared.PieceKind.Pawn_q a@@5) (Shared.PieceKind.Pawn_q b@@5)) (= (|Shared.PieceKind#Equal| a@@5 b@@5) (|Shared.Color#Equal| (Shared.PieceKind.c a@@5) (Shared.PieceKind.c b@@5))))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( (|Shared.PieceKind#Equal| a@@5 b@@5) (Shared.PieceKind.Pawn_q a@@5))
 :pattern ( (|Shared.PieceKind#Equal| a@@5 b@@5) (Shared.PieceKind.Pawn_q b@@5))
)))
(assert (forall ((|a#2#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Shared.Board.Board| |a#2#0#0|) Tclass.Shared.Board) ($Is SeqType |a#2#0#0| (TSeq Tclass.Shared.Piece)))
 :qid |TestGenerationShareddfy.26:26|
 :skolemid |690|
 :pattern ( ($Is DatatypeTypeType (|#Shared.Board.Board| |a#2#0#0|) Tclass.Shared.Board))
)))
(assert (forall ((s@@1 T@U) (n@@0 Int) ) (!  (=> (and (<= 0 n@@0) (<= n@@0 (|Seq#Length| s@@1))) (= (|Seq#Length| (|Seq#Take| s@@1 n@@0)) n@@0))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@1 n@@0)))
)))
(assert (forall ((d@@21 T@U) ) (!  (=> ($Is DatatypeTypeType d@@21 Tclass.Shared.Color) (or (Shared.Color.Black_q d@@21) (Shared.Color.White_q d@@21)))
 :qid |unknown.0:0|
 :skolemid |609|
 :pattern ( (Shared.Color.White_q d@@21) ($Is DatatypeTypeType d@@21 Tclass.Shared.Color))
 :pattern ( (Shared.Color.Black_q d@@21) ($Is DatatypeTypeType d@@21 Tclass.Shared.Color))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) (c T@U) ) (!  (=> (or (not (= a@@6 c)) (not true)) (=> (and ($HeapSucc a@@6 b@@6) ($HeapSucc b@@6 c)) ($HeapSucc a@@6 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@6 b@@6) ($HeapSucc b@@6 c))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|board#0@@2| T@U) ) (!  (=> (or (|Chess.__default.BoardIsValid#canCall| |board#0@@2|) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |board#0@@2| Tclass.Shared.Board))) (and (forall ((|i#0@@1| Int) (|j#0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@1|) (<= (LitInt 0) |j#0|)) (=> (<= (LitInt 0) |i#0@@1|) (=> (< |i#0@@1| |j#0|) (and (Shared.Board.Board_q |board#0@@2|) (=> (< |j#0| (|Seq#Length| (Shared.Board.pieces |board#0@@2|))) (and (and (|$IsA#Shared.Pos| (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@2|) |i#0@@1|)))) (|$IsA#Shared.Pos| (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@2|) |j#0|))))) (and (and (Shared.Board.Board_q |board#0@@2|) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@2|) |i#0@@1|)))) (and (Shared.Board.Board_q |board#0@@2|) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@2|) |j#0|)))))))))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.18:12|
 :skolemid |536|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@2|) |j#0|)) ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@2|) |i#0@@1|)))
)) (= (Chess.__default.BoardIsValid |board#0@@2|) (forall ((|i#0@@2| Int) (|j#0@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@2|) (<= (LitInt 0) |j#0@@0|)) (=> (and (and (<= (LitInt 0) |i#0@@2|) (< |i#0@@2| |j#0@@0|)) (< |j#0@@0| (|Seq#Length| (Shared.Board.pieces |board#0@@2|)))) (not (|Shared.Pos#Equal| (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@2|) |i#0@@2|))) (Shared.Piece.at ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@2|) |j#0@@0|)))))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.18:12|
 :skolemid |535|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@2|) |j#0@@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@2|) |i#0@@2|)))
)))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.17:26|
 :skolemid |537|
 :pattern ( (Chess.__default.BoardIsValid |board#0@@2|))
))))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (and (Shared.Color.Black_q a@@7) (Shared.Color.Black_q b@@7)) (|Shared.Color#Equal| a@@7 b@@7))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( (|Shared.Color#Equal| a@@7 b@@7) (Shared.Color.Black_q a@@7))
 :pattern ( (|Shared.Color#Equal| a@@7 b@@7) (Shared.Color.Black_q b@@7))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (!  (=> (and (Shared.Color.White_q a@@8) (Shared.Color.White_q b@@8)) (|Shared.Color#Equal| a@@8 b@@8))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( (|Shared.Color#Equal| a@@8 b@@8) (Shared.Color.White_q a@@8))
 :pattern ( (|Shared.Color#Equal| a@@8 b@@8) (Shared.Color.White_q b@@8))
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
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i@@1) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@2 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
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
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (|$IsA#Shared.PieceKind| d@@22) (or (or (Shared.PieceKind.Knight_q d@@22) (Shared.PieceKind.King_q d@@22)) (Shared.PieceKind.Pawn_q d@@22)))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( (|$IsA#Shared.PieceKind| d@@22))
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
(assert (forall ((|n#0@@1| Int) ) (! (<= (LitInt 0) (Shared.__default.abs |n#0@@1|))
 :qid |TestGenerationShareddfy.25:16|
 :skolemid |599|
 :pattern ( (Shared.__default.abs |n#0@@1|))
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
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |701|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((this@@0 T@U) (|pos#0@@2| T@U) ) (!  (=> (or (|Shared.Piece.Attacks#canCall| (Lit DatatypeTypeType this@@0) (Lit DatatypeTypeType |pos#0@@2|)) (and ($Is DatatypeTypeType this@@0 Tclass.Shared.Piece) ($Is DatatypeTypeType |pos#0@@2| Tclass.Shared.ChessPos))) (and (and (and (and (|$IsA#Shared.Pos| (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))) (|$IsA#Shared.Pos| (Lit DatatypeTypeType |pos#0@@2|))) (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0))) (=> (not (|Shared.Pos#Equal| (Shared.Piece.at (Lit DatatypeTypeType this@@0)) |pos#0@@2|)) (and (and (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0)) (=> (U_2_bool (Lit boolType (bool_2_U (Shared.PieceKind.Knight_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0))))))) (and (and (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0)) (or (or (Shared.PieceKind.Knight_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0)))) (Shared.PieceKind.King_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0))))) (Shared.PieceKind.Pawn_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0)))))) (and (and (and (and (Shared.Pos.Pos_q (Lit DatatypeTypeType |pos#0@@2|)) (and (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0)) (Shared.Pos.Pos_q (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))) (|Shared.__default.abs#canCall| (LitInt (- (Shared.Pos.col (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.col (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))))) (=> (= (LitInt (Shared.__default.abs (LitInt (- (Shared.Pos.col (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.col (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))))) (LitInt 2)) (and (and (Shared.Pos.Pos_q (Lit DatatypeTypeType |pos#0@@2|)) (and (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0)) (Shared.Pos.Pos_q (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))) (|Shared.__default.abs#canCall| (LitInt (- (Shared.Pos.row (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.row (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))))))) (=> (not (and (= (LitInt (Shared.__default.abs (LitInt (- (Shared.Pos.col (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.col (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))))) (LitInt 2)) (= (LitInt (Shared.__default.abs (LitInt (- (Shared.Pos.row (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.row (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))))) (LitInt 1)))) (and (and (and (Shared.Pos.Pos_q (Lit DatatypeTypeType |pos#0@@2|)) (and (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0)) (Shared.Pos.Pos_q (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))) (|Shared.__default.abs#canCall| (LitInt (- (Shared.Pos.col (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.col (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))))) (=> (= (LitInt (Shared.__default.abs (LitInt (- (Shared.Pos.col (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.col (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))))) (LitInt 1)) (and (and (Shared.Pos.Pos_q (Lit DatatypeTypeType |pos#0@@2|)) (and (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0)) (Shared.Pos.Pos_q (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))) (|Shared.__default.abs#canCall| (LitInt (- (Shared.Pos.row (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.row (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0))))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (Shared.PieceKind.Knight_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0)))))))) (and (and (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0)) (=> (U_2_bool (Lit boolType (bool_2_U (Shared.PieceKind.King_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0))))))) (and (and (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0)) (or (or (Shared.PieceKind.Knight_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0)))) (Shared.PieceKind.King_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0))))) (Shared.PieceKind.Pawn_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0)))))) (and (and (and (Shared.Pos.Pos_q (Lit DatatypeTypeType |pos#0@@2|)) (and (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0)) (Shared.Pos.Pos_q (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))) (|Shared.__default.abs#canCall| (LitInt (- (Shared.Pos.col (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.col (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (< (Shared.__default.abs (LitInt (- (Shared.Pos.col (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.col (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0))))))) 2)))) (and (and (Shared.Pos.Pos_q (Lit DatatypeTypeType |pos#0@@2|)) (and (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0)) (Shared.Pos.Pos_q (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))) (|Shared.__default.abs#canCall| (LitInt (- (Shared.Pos.row (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.row (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (Shared.PieceKind.King_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0)))))))) (and (and (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0)) (or (or (Shared.PieceKind.Knight_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0)))) (Shared.PieceKind.King_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0))))) (Shared.PieceKind.Pawn_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0)))))) (let ((|c#11| (Lit DatatypeTypeType (Shared.PieceKind.c (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0)))))))
 (and (and (Shared.Pos.Pos_q (Lit DatatypeTypeType |pos#0@@2|)) (and (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0)) (Shared.Pos.Pos_q (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))) (=> (= (LitInt (Shared.Pos.row (Lit DatatypeTypeType |pos#0@@2|))) (+ (Shared.Pos.row (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))) (ite (Shared.Color.White_q |c#11|) (- 0 1) 1))) (and (and (Shared.Pos.Pos_q (Lit DatatypeTypeType |pos#0@@2|)) (and (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0)) (Shared.Pos.Pos_q (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))) (=> (or (not (= (LitInt (Shared.Pos.col (Lit DatatypeTypeType |pos#0@@2|))) (LitInt (+ (Shared.Pos.col (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))) 1)))) (not true)) (and (Shared.Pos.Pos_q (Lit DatatypeTypeType |pos#0@@2|)) (and (Shared.Piece.Piece_q (Lit DatatypeTypeType this@@0)) (Shared.Pos.Pos_q (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))))))))))))))) (= (Shared.Piece.Attacks (Lit DatatypeTypeType this@@0) (Lit DatatypeTypeType |pos#0@@2|))  (and (not (|Shared.Pos#Equal| (Shared.Piece.at (Lit DatatypeTypeType this@@0)) |pos#0@@2|)) (ite (Shared.PieceKind.Knight_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0))))  (or (and (= (LitInt (Shared.__default.abs (LitInt (- (Shared.Pos.col (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.col (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))))) (LitInt 2)) (= (LitInt (Shared.__default.abs (LitInt (- (Shared.Pos.row (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.row (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))))) (LitInt 1))) (and (= (LitInt (Shared.__default.abs (LitInt (- (Shared.Pos.col (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.col (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))))) (LitInt 1)) (= (LitInt (Shared.__default.abs (LitInt (- (Shared.Pos.row (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.row (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))))))) (LitInt 2)))) (ite (Shared.PieceKind.King_q (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0)))) (U_2_bool (Lit boolType (bool_2_U  (and (< (Shared.__default.abs (LitInt (- (Shared.Pos.col (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.col (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0))))))) 2) (< (Shared.__default.abs (LitInt (- (Shared.Pos.row (Lit DatatypeTypeType |pos#0@@2|)) (Shared.Pos.row (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0))))))) 2))))) (let ((|c#8| (Lit DatatypeTypeType (Shared.PieceKind.c (Lit DatatypeTypeType (Shared.Piece.kind (Lit DatatypeTypeType this@@0)))))))
 (and (= (LitInt (Shared.Pos.row (Lit DatatypeTypeType |pos#0@@2|))) (+ (Shared.Pos.row (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))) (ite (Shared.Color.White_q |c#8|) (- 0 1) 1))) (or (= (LitInt (Shared.Pos.col (Lit DatatypeTypeType |pos#0@@2|))) (LitInt (+ (Shared.Pos.col (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))) 1))) (= (LitInt (Shared.Pos.col (Lit DatatypeTypeType |pos#0@@2|))) (LitInt (- (Shared.Pos.col (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType this@@0)))) 1))))))))))))
 :qid |TestGenerationShareddfy.10:15|
 :weight 3
 :skolemid |685|
 :pattern ( (Shared.Piece.Attacks (Lit DatatypeTypeType this@@0) (Lit DatatypeTypeType |pos#0@@2|)))
)))
(assert (forall ((d@@23 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (Shared.Pos.Pos_q d@@23) ($IsAlloc DatatypeTypeType d@@23 Tclass.Shared.Pos $h@@1))) ($IsAlloc intType (int_2_U (Shared.Pos.row d@@23)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |653|
 :pattern ( ($IsAlloc intType (int_2_U (Shared.Pos.row d@@23)) TInt $h@@1))
)))
(assert (forall ((d@@24 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (Shared.Pos.Pos_q d@@24) ($IsAlloc DatatypeTypeType d@@24 Tclass.Shared.Pos $h@@2))) ($IsAlloc intType (int_2_U (Shared.Pos.col d@@24)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |654|
 :pattern ( ($IsAlloc intType (int_2_U (Shared.Pos.col d@@24)) TInt $h@@2))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> ($Is DatatypeTypeType d@@25 Tclass.Shared.PieceKind) (or (or (Shared.PieceKind.Knight_q d@@25) (Shared.PieceKind.King_q d@@25)) (Shared.PieceKind.Pawn_q d@@25)))
 :qid |unknown.0:0|
 :skolemid |642|
 :pattern ( (Shared.PieceKind.Pawn_q d@@25) ($Is DatatypeTypeType d@@25 Tclass.Shared.PieceKind))
 :pattern ( (Shared.PieceKind.King_q d@@25) ($Is DatatypeTypeType d@@25 Tclass.Shared.PieceKind))
 :pattern ( (Shared.PieceKind.Knight_q d@@25) ($Is DatatypeTypeType d@@25 Tclass.Shared.PieceKind))
)))
(assert (forall ((bx@@8 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@8 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@8)) bx@@8) ($Is SeqType ($Unbox SeqType bx@@8) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@8 (TSeq t@@5)))
)))
(assert (forall ((d@@26 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@26 Tclass.Shared.Color)) ($IsAlloc DatatypeTypeType d@@26 Tclass.Shared.Color $h@@3))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( ($IsAlloc DatatypeTypeType d@@26 Tclass.Shared.Color $h@@3))
)))
(assert (forall ((d@@27 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@27 Tclass.Shared.PieceKind)) ($IsAlloc DatatypeTypeType d@@27 Tclass.Shared.PieceKind $h@@4))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( ($IsAlloc DatatypeTypeType d@@27 Tclass.Shared.PieceKind $h@@4))
)))
(assert (forall ((d@@28 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@28 Tclass.Shared.Pos)) ($IsAlloc DatatypeTypeType d@@28 Tclass.Shared.Pos $h@@5))
 :qid |unknown.0:0|
 :skolemid |658|
 :pattern ( ($IsAlloc DatatypeTypeType d@@28 Tclass.Shared.Pos $h@@5))
)))
(assert (forall ((d@@29 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@29 Tclass.Shared.Piece)) ($IsAlloc DatatypeTypeType d@@29 Tclass.Shared.Piece $h@@6))
 :qid |unknown.0:0|
 :skolemid |677|
 :pattern ( ($IsAlloc DatatypeTypeType d@@29 Tclass.Shared.Piece $h@@6))
)))
(assert (forall ((d@@30 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) ($Is DatatypeTypeType d@@30 Tclass.Shared.Board)) ($IsAlloc DatatypeTypeType d@@30 Tclass.Shared.Board $h@@7))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( ($IsAlloc DatatypeTypeType d@@30 Tclass.Shared.Board $h@@7))
)))
(assert (= (Tag Tclass.Shared.Board) Tagclass.Shared.Board))
(assert (= (TagFamily Tclass.Shared.Board) tytagFamily$Board))
(assert (= (Tag Tclass.Chess.ValidBoard) Tagclass.Chess.ValidBoard))
(assert (= (TagFamily Tclass.Chess.ValidBoard) tytagFamily$ValidBoard))
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
(assert (forall ((d@@31 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (Shared.PieceKind.Knight_q d@@31) ($IsAlloc DatatypeTypeType d@@31 Tclass.Shared.PieceKind $h@@8))) ($IsAlloc DatatypeTypeType (Shared.PieceKind.c d@@31) Tclass.Shared.Color $h@@8))
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( ($IsAlloc DatatypeTypeType (Shared.PieceKind.c d@@31) Tclass.Shared.Color $h@@8))
)))
(assert (forall ((d@@32 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (Shared.PieceKind.King_q d@@32) ($IsAlloc DatatypeTypeType d@@32 Tclass.Shared.PieceKind $h@@9))) ($IsAlloc DatatypeTypeType (Shared.PieceKind.c d@@32) Tclass.Shared.Color $h@@9))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( ($IsAlloc DatatypeTypeType (Shared.PieceKind.c d@@32) Tclass.Shared.Color $h@@9))
)))
(assert (forall ((d@@33 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (Shared.PieceKind.Pawn_q d@@33) ($IsAlloc DatatypeTypeType d@@33 Tclass.Shared.PieceKind $h@@10))) ($IsAlloc DatatypeTypeType (Shared.PieceKind.c d@@33) Tclass.Shared.Color $h@@10))
 :qid |unknown.0:0|
 :skolemid |636|
 :pattern ( ($IsAlloc DatatypeTypeType (Shared.PieceKind.c d@@33) Tclass.Shared.Color $h@@10))
)))
(assert (forall ((d@@34 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (Shared.Piece.Piece_q d@@34) ($IsAlloc DatatypeTypeType d@@34 Tclass.Shared.Piece $h@@11))) ($IsAlloc DatatypeTypeType (Shared.Piece.kind d@@34) Tclass.Shared.PieceKind $h@@11))
 :qid |unknown.0:0|
 :skolemid |670|
 :pattern ( ($IsAlloc DatatypeTypeType (Shared.Piece.kind d@@34) Tclass.Shared.PieceKind $h@@11))
)))
(assert (forall ((d@@35 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (Shared.Piece.Piece_q d@@35) ($IsAlloc DatatypeTypeType d@@35 Tclass.Shared.Piece $h@@12))) ($IsAlloc DatatypeTypeType (Shared.Piece.at d@@35) Tclass.Shared.ChessPos $h@@12))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( ($IsAlloc DatatypeTypeType (Shared.Piece.at d@@35) Tclass.Shared.ChessPos $h@@12))
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
(assert (forall ((|board#0@@3| T@U) ) (! (= ($Is DatatypeTypeType |board#0@@3| Tclass.Chess.ValidBoard)  (and ($Is DatatypeTypeType |board#0@@3| Tclass.Shared.Board) (Chess.__default.BoardIsValid |board#0@@3|)))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( ($Is DatatypeTypeType |board#0@@3| Tclass.Chess.ValidBoard))
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
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|board#0@@4| T@U) (|king#0@@0| T@U) (|byPiece#0@@0| T@U) ) (!  (=> (or (|Chess.__default.CheckedByPiece#canCall| (Lit DatatypeTypeType |board#0@@4|) (Lit DatatypeTypeType |king#0@@0|) (Lit DatatypeTypeType |byPiece#0@@0|)) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |board#0@@4| Tclass.Chess.ValidBoard) ($Is DatatypeTypeType |king#0@@0| Tclass.Shared.Piece)) ($Is DatatypeTypeType |byPiece#0@@0| Tclass.Shared.PieceKind)))) (and (forall ((|i#1@@1| Int) ) (!  (=> (<= (LitInt 0) |i#1@@1|) (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0@@4|)) (=> (< |i#1@@1| (|Seq#Length| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@4|))))) (and (and (and (|$IsA#Shared.PieceKind| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@4|))) |i#1@@1|)))) (|$IsA#Shared.PieceKind| (Lit DatatypeTypeType |byPiece#0@@0|))) (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0@@4|)) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@4|))) |i#1@@1|))))) (=> (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@4|))) |i#1@@1|))) |byPiece#0@@0|) (and (and (Shared.Board.Board_q (Lit DatatypeTypeType |board#0@@4|)) (Shared.Piece.Piece_q (Lit DatatypeTypeType |king#0@@0|))) (|Shared.Piece.Attacks#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@4|))) |i#1@@1|)) (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType |king#0@@0|))))))))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.28:12|
 :skolemid |560|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@4|) |i#1@@1|)))
)) (= (Chess.__default.CheckedByPiece (Lit DatatypeTypeType |board#0@@4|) (Lit DatatypeTypeType |king#0@@0|) (Lit DatatypeTypeType |byPiece#0@@0|)) (exists ((|i#1@@2| Int) ) (!  (and (and (and (<= (LitInt 0) |i#1@@2|) (< |i#1@@2| (|Seq#Length| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@4|)))))) (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@4|))) |i#1@@2|))) |byPiece#0@@0|)) (Shared.Piece.Attacks ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (Shared.Board.pieces (Lit DatatypeTypeType |board#0@@4|))) |i#1@@2|)) (Lit DatatypeTypeType (Shared.Piece.at (Lit DatatypeTypeType |king#0@@0|)))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.28:12|
 :skolemid |559|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@4|) |i#1@@2|)))
)))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.27:28|
 :weight 3
 :skolemid |561|
 :pattern ( (Chess.__default.CheckedByPiece (Lit DatatypeTypeType |board#0@@4|) (Lit DatatypeTypeType |king#0@@0|) (Lit DatatypeTypeType |byPiece#0@@0|)))
))))
(assert (forall ((s@@3 T@U) ) (!  (=> (= (|Seq#Length| s@@3) 0) (= s@@3 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((s@@4 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Take| s@@4 n@@1) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@4 n@@1))
)))
(assert (forall ((d@@36 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (Shared.Board.Board_q d@@36) ($IsAlloc DatatypeTypeType d@@36 Tclass.Shared.Board $h@@13))) ($IsAlloc SeqType (Shared.Board.pieces d@@36) (TSeq Tclass.Shared.Piece) $h@@13))
 :qid |unknown.0:0|
 :skolemid |691|
 :pattern ( ($IsAlloc SeqType (Shared.Board.pieces d@@36) (TSeq Tclass.Shared.Piece) $h@@13))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@4))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@2)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@2) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@4 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@2)))
)))
(assert (forall ((s@@5 T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@3))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@3))))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |#result#0@2| () Bool)
(declare-fun |board#0@@5| () T@U)
(declare-fun |king#0@@1| () T@U)
(declare-fun |byPiece#0@@1| () T@U)
(declare-fun |i#4@0| () Int)
(declare-fun |#result#0@1| () Bool)
(declare-fun |i#4#hi@0| () Int)
(declare-fun |#result#0@0| () Bool)
(declare-fun |i#4@1| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap () T@U)
(declare-fun |##pos#1@1| () T@U)
(declare-fun |i#4#lo@0| () Int)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$Chess.__default.CheckedByPiece)
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
 (=> (= (ControlFlow 0 0) 23) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (= |#result#0@2| (Chess.__default.CheckedByPiece |board#0@@5| |king#0@@1| |byPiece#0@@1|)))))
(let ((anon18_Then_correct  (=> (and (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@5|) |i#4@0|))) |byPiece#0@@1|) (Shared.Piece.Attacks ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@5|) |i#4@0|)) (Shared.Piece.at |king#0@@1|))) (=> (and (and (= |#result#0@1| (U_2_bool (Lit boolType (bool_2_U true)))) (|Chess.__default.CheckedByPiece#canCall| |board#0@@5| |king#0@@1| |byPiece#0@@1|)) (and (= |#result#0@2| |#result#0@1|) (= (ControlFlow 0 10) 8))) GeneratedUnifiedExit_correct))))
(let ((anon16_Then_correct  (=> (= |i#4@0| |i#4#hi@0|) (=> (and (and (= |#result#0@0| (U_2_bool (Lit boolType (bool_2_U false)))) (|Chess.__default.CheckedByPiece#canCall| |board#0@@5| |king#0@@1| |byPiece#0@@1|)) (and (= |#result#0@2| |#result#0@0|) (= (ControlFlow 0 9) 8))) GeneratedUnifiedExit_correct))))
(let ((anon18_Else_correct  (=> (and (not (and (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@5|) |i#4@0|))) |byPiece#0@@1|) (Shared.Piece.Attacks ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@5|) |i#4@0|)) (Shared.Piece.at |king#0@@1|)))) (= |i#4@1| (+ |i#4@0| 1))) (=> (and (and (and (Shared.Board.Board_q |board#0@@5|) (|Chess.__default.CheckedByPiece#canCall| (|#Shared.Board.Board| (|Seq#Take| (Shared.Board.pieces |board#0@@5|) |i#4@1|)) |king#0@@1| |byPiece#0@@1|)) (= (ControlFlow 0 6) (- 0 5))) |$w$loop#0@0|) (not (Chess.__default.CheckedByPiece (|#Shared.Board.Board| (|Seq#Take| (Shared.Board.pieces |board#0@@5|) |i#4@1|)) |king#0@@1| |byPiece#0@@1|))))))
(let ((anon7_correct  (=> (and (and (and (|$IsA#Shared.PieceKind| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@5|) |i#4@0|)))) (|$IsA#Shared.PieceKind| |byPiece#0@@1|)) (and (Shared.Board.Board_q |board#0@@5|) (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@5|) |i#4@0|))))) (=> (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@5|) |i#4@0|))) |byPiece#0@@1|) (and (and (Shared.Board.Board_q |board#0@@5|) (Shared.Piece.Piece_q |king#0@@1|)) (|Shared.Piece.Attacks#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@5|) |i#4@0|)) (Shared.Piece.at |king#0@@1|))))) (and (=> (= (ControlFlow 0 11) 10) anon18_Then_correct) (=> (= (ControlFlow 0 11) 6) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (not (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@5|) |i#4@0|))) |byPiece#0@@1|)) (= (ControlFlow 0 14) 11)) anon7_correct)))
(let ((anon17_Then_correct  (=> (and (|Shared.PieceKind#Equal| (Shared.Piece.kind ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@5|) |i#4@0|))) |byPiece#0@@1|) (Shared.Board.Board_q |board#0@@5|)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (<= 0 |i#4@0|) (< |i#4@0| (|Seq#Length| (Shared.Board.pieces |board#0@@5|))))) (=> (and (<= 0 |i#4@0|) (< |i#4@0| (|Seq#Length| (Shared.Board.pieces |board#0@@5|)))) (=> (and ($IsAllocBox (|Seq#Index| (Shared.Board.pieces |board#0@@5|) |i#4@0|) Tclass.Shared.Piece $Heap) (Shared.Piece.Piece_q |king#0@@1|)) (=> (and (and (= |##pos#1@1| (Shared.Piece.at |king#0@@1|)) ($IsAlloc DatatypeTypeType |##pos#1@1| Tclass.Shared.ChessPos $Heap)) (and (|Shared.Piece.Attacks#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@5|) |i#4@0|)) (Shared.Piece.at |king#0@@1|)) (= (ControlFlow 0 12) 11))) anon7_correct)))))))
(let ((anon16_Else_correct  (=> (and (or (not (= |i#4@0| |i#4#hi@0|)) (not true)) (Shared.Board.Board_q |board#0@@5|)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (<= 0 |i#4@0|) (< |i#4@0| (|Seq#Length| (Shared.Board.pieces |board#0@@5|))))) (=> (and (<= 0 |i#4@0|) (< |i#4@0| (|Seq#Length| (Shared.Board.pieces |board#0@@5|)))) (=> (Shared.Piece.Piece_q ($Unbox DatatypeTypeType (|Seq#Index| (Shared.Board.pieces |board#0@@5|) |i#4@0|))) (and (=> (= (ControlFlow 0 15) 12) anon17_Then_correct) (=> (= (ControlFlow 0 15) 14) anon17_Else_correct))))))))
(let ((anon15_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 17) 9) anon16_Then_correct) (=> (= (ControlFlow 0 17) 15) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (and (not |$w$loop#0@0|) (Shared.Board.Board_q |board#0@@5|)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (and (<= 0 |i#4@0|) (<= |i#4@0| (|Seq#Length| (Shared.Board.pieces |board#0@@5|))))) (=> (= (ControlFlow 0 3) (- 0 2)) ($Is DatatypeTypeType (|#Shared.Board.Board| (|Seq#Take| (Shared.Board.pieces |board#0@@5|) |i#4@0|)) Tclass.Chess.ValidBoard))))))
(let ((anon14_LoopBody_correct  (and (=> (= (ControlFlow 0 18) 3) anon15_Then_correct) (=> (= (ControlFlow 0 18) 17) anon15_Else_correct))))
(let ((anon14_LoopDone_correct true))
(let ((anon14_LoopHead_correct  (=> (and (and (and (and (not false) (<= 0 |i#4@0|)) (= |i#4#lo@0| 0)) (<= 0 |i#4#hi@0|)) (and (and (and (<= |i#4#lo@0| |i#4@0|) (<= |i#4@0| |i#4#hi@0|)) (=> |$w$loop#0@0| (and (Shared.Board.Board_q |board#0@@5|) (|Chess.__default.CheckedByPiece#canCall| (|#Shared.Board.Board| (|Seq#Take| (Shared.Board.pieces |board#0@@5|) |i#4@0|)) |king#0@@1| |byPiece#0@@1|)))) (and (and (=> |$w$loop#0@0| (not (Chess.__default.CheckedByPiece (|#Shared.Board.Board| (|Seq#Take| (Shared.Board.pieces |board#0@@5|) |i#4@0|)) |king#0@@1| |byPiece#0@@1|))) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.32:5|
 :skolemid |568|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
))) (and ($HeapSucc $Heap $Heap) (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |TestGenerationWithInliningQuantifiedDefinitionsdfy.32:5|
 :skolemid |569|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)))))) (and (=> (= (ControlFlow 0 19) 1) anon14_LoopDone_correct) (=> (= (ControlFlow 0 19) 18) anon14_LoopBody_correct)))))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |i#4#lo@0| (LitInt 0))) (and (Shared.Board.Board_q |board#0@@5|) (= |i#4#hi@0| (|Seq#Length| (Shared.Board.pieces |board#0@@5|))))) (and (=> (= (ControlFlow 0 20) (- 0 22)) (<= |i#4#lo@0| |i#4#hi@0|)) (=> (<= |i#4#lo@0| |i#4#hi@0|) (and (=> (= (ControlFlow 0 20) (- 0 21)) (=> |$w$loop#0@0| (not (Chess.__default.CheckedByPiece (|#Shared.Board.Board| (|Seq#Take| (Shared.Board.pieces |board#0@@5|) |i#4#lo@0|)) |king#0@@1| |byPiece#0@@1|)))) (=> (=> |$w$loop#0@0| (not (Chess.__default.CheckedByPiece (|#Shared.Board.Board| (|Seq#Take| (Shared.Board.pieces |board#0@@5|) |i#4#lo@0|)) |king#0@@1| |byPiece#0@@1|))) (=> (= (ControlFlow 0 20) 19) anon14_LoopHead_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |board#0@@5| Tclass.Chess.ValidBoard) ($IsAlloc DatatypeTypeType |board#0@@5| Tclass.Chess.ValidBoard $Heap)) (|$IsA#Shared.Board| |board#0@@5|)) (and (and ($Is DatatypeTypeType |king#0@@1| Tclass.Shared.Piece) ($IsAlloc DatatypeTypeType |king#0@@1| Tclass.Shared.Piece $Heap)) (|$IsA#Shared.Piece| |king#0@@1|))) (and (and (and ($Is DatatypeTypeType |byPiece#0@@1| Tclass.Shared.PieceKind) ($IsAlloc DatatypeTypeType |byPiece#0@@1| Tclass.Shared.PieceKind $Heap)) (|$IsA#Shared.PieceKind| |byPiece#0@@1|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 23) 20)))) anon0_correct))))
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
