(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 19:51:26
; Silicon.version: 1.1-SNAPSHOT (457c6eca@(detached))
; Input file: <unknown>
; Verifier id: 00
; ------------------------------------------------------------
; Begin preamble
; ////////// Static preamble
; 
; ; /z3config.smt2
(set-option :print-success true) ; Boogie: false
(set-option :global-decls true) ; Necessary for push pop mode
(set-option :auto_config false)
(set-option :smt.case_split 3)
(set-option :smt.delay_units true)
(set-option :type_check true)
(set-option :smt.mbqi false)
(set-option :pp.bv_literals false)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.arith.solver 2)
(set-option :model.v2 true)
(set-option :smt.qi.max_multi_patterns 1000)
; 
; ; /preamble.smt2
(declare-datatypes (($Snap 0)) ((
    ($Snap.unit)
    ($Snap.combine ($Snap.first $Snap) ($Snap.second $Snap)))))
(declare-sort $Ref 0)
(declare-const $Ref.null $Ref)
(declare-sort $FPM 0)
(declare-sort $PPM 0)
(define-sort $Perm () Real)
(define-const $Perm.Write $Perm 1.0)
(define-const $Perm.No $Perm 0.0)
(define-fun $Perm.isValidVar ((p $Perm)) Bool
	(<= $Perm.No p))
(define-fun $Perm.isReadVar ((p $Perm)) Bool
    (and ($Perm.isValidVar p)
         (not (= p $Perm.No))))
(define-fun $Perm.min ((p1 $Perm) (p2 $Perm)) Real
    (ite (<= p1 p2) p1 p2))
(define-fun $Math.min ((a Int) (b Int)) Int
    (ite (<= a b) a b))
(define-fun $Math.clip ((a Int)) Int
    (ite (< a 0) 0 a))
; ////////// Sorts
(declare-sort Seq<Int> 0)
(declare-sort s$struct$self 0)
(declare-sort $Struct 0)
(declare-sort s$resource$$creator 0)
(declare-sort $Contract 0)
(declare-sort $Convert 0)
(declare-sort $StructOps<$Struct> 0)
(declare-sort $StructOps<Seq<Int>> 0)
(declare-sort $Range 0)
(declare-sort $Int 0)
(declare-sort $StructOps<$Map<Int~_Int>> 0)
(declare-sort $Math 0)
(declare-sort $StructOps<Int> 0)
(declare-sort $Map<Int~_$Struct> 0)
(declare-sort $StructOps<Bool> 0)
(declare-sort $Blockchain 0)
(declare-sort $Array<Int> 0)
(declare-sort $MapInt<Int> 0)
(declare-sort $Map<Int~_Int> 0)
; ////////// Sort wrappers
; Declaring additional sort wrappers
(declare-fun $SortWrappers.IntTo$Snap (Int) $Snap)
(declare-fun $SortWrappers.$SnapToInt ($Snap) Int)
(assert (forall ((x Int)) (!
    (= x ($SortWrappers.$SnapToInt($SortWrappers.IntTo$Snap x)))
    :pattern (($SortWrappers.IntTo$Snap x))
    :qid |$Snap.$SnapToIntTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.IntTo$Snap($SortWrappers.$SnapToInt x)))
    :pattern (($SortWrappers.$SnapToInt x))
    :qid |$Snap.IntTo$SnapToInt|
    )))
(declare-fun $SortWrappers.BoolTo$Snap (Bool) $Snap)
(declare-fun $SortWrappers.$SnapToBool ($Snap) Bool)
(assert (forall ((x Bool)) (!
    (= x ($SortWrappers.$SnapToBool($SortWrappers.BoolTo$Snap x)))
    :pattern (($SortWrappers.BoolTo$Snap x))
    :qid |$Snap.$SnapToBoolTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.BoolTo$Snap($SortWrappers.$SnapToBool x)))
    :pattern (($SortWrappers.$SnapToBool x))
    :qid |$Snap.BoolTo$SnapToBool|
    )))
(declare-fun $SortWrappers.$RefTo$Snap ($Ref) $Snap)
(declare-fun $SortWrappers.$SnapTo$Ref ($Snap) $Ref)
(assert (forall ((x $Ref)) (!
    (= x ($SortWrappers.$SnapTo$Ref($SortWrappers.$RefTo$Snap x)))
    :pattern (($SortWrappers.$RefTo$Snap x))
    :qid |$Snap.$SnapTo$RefTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$RefTo$Snap($SortWrappers.$SnapTo$Ref x)))
    :pattern (($SortWrappers.$SnapTo$Ref x))
    :qid |$Snap.$RefTo$SnapTo$Ref|
    )))
(declare-fun $SortWrappers.$PermTo$Snap ($Perm) $Snap)
(declare-fun $SortWrappers.$SnapTo$Perm ($Snap) $Perm)
(assert (forall ((x $Perm)) (!
    (= x ($SortWrappers.$SnapTo$Perm($SortWrappers.$PermTo$Snap x)))
    :pattern (($SortWrappers.$PermTo$Snap x))
    :qid |$Snap.$SnapTo$PermTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PermTo$Snap($SortWrappers.$SnapTo$Perm x)))
    :pattern (($SortWrappers.$SnapTo$Perm x))
    :qid |$Snap.$PermTo$SnapTo$Perm|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.Seq<Int>To$Snap (Seq<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToSeq<Int> ($Snap) Seq<Int>)
(assert (forall ((x Seq<Int>)) (!
    (= x ($SortWrappers.$SnapToSeq<Int>($SortWrappers.Seq<Int>To$Snap x)))
    :pattern (($SortWrappers.Seq<Int>To$Snap x))
    :qid |$Snap.$SnapToSeq<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Seq<Int>To$Snap($SortWrappers.$SnapToSeq<Int> x)))
    :pattern (($SortWrappers.$SnapToSeq<Int> x))
    :qid |$Snap.Seq<Int>To$SnapToSeq<Int>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.s$struct$selfTo$Snap (s$struct$self) $Snap)
(declare-fun $SortWrappers.$SnapTos$struct$self ($Snap) s$struct$self)
(assert (forall ((x s$struct$self)) (!
    (= x ($SortWrappers.$SnapTos$struct$self($SortWrappers.s$struct$selfTo$Snap x)))
    :pattern (($SortWrappers.s$struct$selfTo$Snap x))
    :qid |$Snap.$SnapTos$struct$selfTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.s$struct$selfTo$Snap($SortWrappers.$SnapTos$struct$self x)))
    :pattern (($SortWrappers.$SnapTos$struct$self x))
    :qid |$Snap.s$struct$selfTo$SnapTos$struct$self|
    )))
(declare-fun $SortWrappers.$StructTo$Snap ($Struct) $Snap)
(declare-fun $SortWrappers.$SnapTo$Struct ($Snap) $Struct)
(assert (forall ((x $Struct)) (!
    (= x ($SortWrappers.$SnapTo$Struct($SortWrappers.$StructTo$Snap x)))
    :pattern (($SortWrappers.$StructTo$Snap x))
    :qid |$Snap.$SnapTo$StructTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$StructTo$Snap($SortWrappers.$SnapTo$Struct x)))
    :pattern (($SortWrappers.$SnapTo$Struct x))
    :qid |$Snap.$StructTo$SnapTo$Struct|
    )))
(declare-fun $SortWrappers.s$resource$$creatorTo$Snap (s$resource$$creator) $Snap)
(declare-fun $SortWrappers.$SnapTos$resource$$creator ($Snap) s$resource$$creator)
(assert (forall ((x s$resource$$creator)) (!
    (= x ($SortWrappers.$SnapTos$resource$$creator($SortWrappers.s$resource$$creatorTo$Snap x)))
    :pattern (($SortWrappers.s$resource$$creatorTo$Snap x))
    :qid |$Snap.$SnapTos$resource$$creatorTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.s$resource$$creatorTo$Snap($SortWrappers.$SnapTos$resource$$creator x)))
    :pattern (($SortWrappers.$SnapTos$resource$$creator x))
    :qid |$Snap.s$resource$$creatorTo$SnapTos$resource$$creator|
    )))
(declare-fun $SortWrappers.$ContractTo$Snap ($Contract) $Snap)
(declare-fun $SortWrappers.$SnapTo$Contract ($Snap) $Contract)
(assert (forall ((x $Contract)) (!
    (= x ($SortWrappers.$SnapTo$Contract($SortWrappers.$ContractTo$Snap x)))
    :pattern (($SortWrappers.$ContractTo$Snap x))
    :qid |$Snap.$SnapTo$ContractTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$ContractTo$Snap($SortWrappers.$SnapTo$Contract x)))
    :pattern (($SortWrappers.$SnapTo$Contract x))
    :qid |$Snap.$ContractTo$SnapTo$Contract|
    )))
(declare-fun $SortWrappers.$ConvertTo$Snap ($Convert) $Snap)
(declare-fun $SortWrappers.$SnapTo$Convert ($Snap) $Convert)
(assert (forall ((x $Convert)) (!
    (= x ($SortWrappers.$SnapTo$Convert($SortWrappers.$ConvertTo$Snap x)))
    :pattern (($SortWrappers.$ConvertTo$Snap x))
    :qid |$Snap.$SnapTo$ConvertTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$ConvertTo$Snap($SortWrappers.$SnapTo$Convert x)))
    :pattern (($SortWrappers.$SnapTo$Convert x))
    :qid |$Snap.$ConvertTo$SnapTo$Convert|
    )))
(declare-fun $SortWrappers.$StructOps<$Struct>To$Snap ($StructOps<$Struct>) $Snap)
(declare-fun $SortWrappers.$SnapTo$StructOps<$Struct> ($Snap) $StructOps<$Struct>)
(assert (forall ((x $StructOps<$Struct>)) (!
    (= x ($SortWrappers.$SnapTo$StructOps<$Struct>($SortWrappers.$StructOps<$Struct>To$Snap x)))
    :pattern (($SortWrappers.$StructOps<$Struct>To$Snap x))
    :qid |$Snap.$SnapTo$StructOps<$Struct>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$StructOps<$Struct>To$Snap($SortWrappers.$SnapTo$StructOps<$Struct> x)))
    :pattern (($SortWrappers.$SnapTo$StructOps<$Struct> x))
    :qid |$Snap.$StructOps<$Struct>To$SnapTo$StructOps<$Struct>|
    )))
(declare-fun $SortWrappers.$StructOps<Seq<Int>>To$Snap ($StructOps<Seq<Int>>) $Snap)
(declare-fun $SortWrappers.$SnapTo$StructOps<Seq<Int>> ($Snap) $StructOps<Seq<Int>>)
(assert (forall ((x $StructOps<Seq<Int>>)) (!
    (= x ($SortWrappers.$SnapTo$StructOps<Seq<Int>>($SortWrappers.$StructOps<Seq<Int>>To$Snap x)))
    :pattern (($SortWrappers.$StructOps<Seq<Int>>To$Snap x))
    :qid |$Snap.$SnapTo$StructOps<Seq<Int>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$StructOps<Seq<Int>>To$Snap($SortWrappers.$SnapTo$StructOps<Seq<Int>> x)))
    :pattern (($SortWrappers.$SnapTo$StructOps<Seq<Int>> x))
    :qid |$Snap.$StructOps<Seq<Int>>To$SnapTo$StructOps<Seq<Int>>|
    )))
(declare-fun $SortWrappers.$RangeTo$Snap ($Range) $Snap)
(declare-fun $SortWrappers.$SnapTo$Range ($Snap) $Range)
(assert (forall ((x $Range)) (!
    (= x ($SortWrappers.$SnapTo$Range($SortWrappers.$RangeTo$Snap x)))
    :pattern (($SortWrappers.$RangeTo$Snap x))
    :qid |$Snap.$SnapTo$RangeTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$RangeTo$Snap($SortWrappers.$SnapTo$Range x)))
    :pattern (($SortWrappers.$SnapTo$Range x))
    :qid |$Snap.$RangeTo$SnapTo$Range|
    )))
(declare-fun $SortWrappers.$IntTo$Snap ($Int) $Snap)
(declare-fun $SortWrappers.$SnapTo$Int ($Snap) $Int)
(assert (forall ((x $Int)) (!
    (= x ($SortWrappers.$SnapTo$Int($SortWrappers.$IntTo$Snap x)))
    :pattern (($SortWrappers.$IntTo$Snap x))
    :qid |$Snap.$SnapTo$IntTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$IntTo$Snap($SortWrappers.$SnapTo$Int x)))
    :pattern (($SortWrappers.$SnapTo$Int x))
    :qid |$Snap.$IntTo$SnapTo$Int|
    )))
(declare-fun $SortWrappers.$StructOps<$Map<Int~_Int>>To$Snap ($StructOps<$Map<Int~_Int>>) $Snap)
(declare-fun $SortWrappers.$SnapTo$StructOps<$Map<Int~_Int>> ($Snap) $StructOps<$Map<Int~_Int>>)
(assert (forall ((x $StructOps<$Map<Int~_Int>>)) (!
    (= x ($SortWrappers.$SnapTo$StructOps<$Map<Int~_Int>>($SortWrappers.$StructOps<$Map<Int~_Int>>To$Snap x)))
    :pattern (($SortWrappers.$StructOps<$Map<Int~_Int>>To$Snap x))
    :qid |$Snap.$SnapTo$StructOps<$Map<Int~_Int>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$StructOps<$Map<Int~_Int>>To$Snap($SortWrappers.$SnapTo$StructOps<$Map<Int~_Int>> x)))
    :pattern (($SortWrappers.$SnapTo$StructOps<$Map<Int~_Int>> x))
    :qid |$Snap.$StructOps<$Map<Int~_Int>>To$SnapTo$StructOps<$Map<Int~_Int>>|
    )))
(declare-fun $SortWrappers.$MathTo$Snap ($Math) $Snap)
(declare-fun $SortWrappers.$SnapTo$Math ($Snap) $Math)
(assert (forall ((x $Math)) (!
    (= x ($SortWrappers.$SnapTo$Math($SortWrappers.$MathTo$Snap x)))
    :pattern (($SortWrappers.$MathTo$Snap x))
    :qid |$Snap.$SnapTo$MathTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$MathTo$Snap($SortWrappers.$SnapTo$Math x)))
    :pattern (($SortWrappers.$SnapTo$Math x))
    :qid |$Snap.$MathTo$SnapTo$Math|
    )))
(declare-fun $SortWrappers.$StructOps<Int>To$Snap ($StructOps<Int>) $Snap)
(declare-fun $SortWrappers.$SnapTo$StructOps<Int> ($Snap) $StructOps<Int>)
(assert (forall ((x $StructOps<Int>)) (!
    (= x ($SortWrappers.$SnapTo$StructOps<Int>($SortWrappers.$StructOps<Int>To$Snap x)))
    :pattern (($SortWrappers.$StructOps<Int>To$Snap x))
    :qid |$Snap.$SnapTo$StructOps<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$StructOps<Int>To$Snap($SortWrappers.$SnapTo$StructOps<Int> x)))
    :pattern (($SortWrappers.$SnapTo$StructOps<Int> x))
    :qid |$Snap.$StructOps<Int>To$SnapTo$StructOps<Int>|
    )))
(declare-fun $SortWrappers.$Map<Int~_$Struct>To$Snap ($Map<Int~_$Struct>) $Snap)
(declare-fun $SortWrappers.$SnapTo$Map<Int~_$Struct> ($Snap) $Map<Int~_$Struct>)
(assert (forall ((x $Map<Int~_$Struct>)) (!
    (= x ($SortWrappers.$SnapTo$Map<Int~_$Struct>($SortWrappers.$Map<Int~_$Struct>To$Snap x)))
    :pattern (($SortWrappers.$Map<Int~_$Struct>To$Snap x))
    :qid |$Snap.$SnapTo$Map<Int~_$Struct>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$Map<Int~_$Struct>To$Snap($SortWrappers.$SnapTo$Map<Int~_$Struct> x)))
    :pattern (($SortWrappers.$SnapTo$Map<Int~_$Struct> x))
    :qid |$Snap.$Map<Int~_$Struct>To$SnapTo$Map<Int~_$Struct>|
    )))
(declare-fun $SortWrappers.$StructOps<Bool>To$Snap ($StructOps<Bool>) $Snap)
(declare-fun $SortWrappers.$SnapTo$StructOps<Bool> ($Snap) $StructOps<Bool>)
(assert (forall ((x $StructOps<Bool>)) (!
    (= x ($SortWrappers.$SnapTo$StructOps<Bool>($SortWrappers.$StructOps<Bool>To$Snap x)))
    :pattern (($SortWrappers.$StructOps<Bool>To$Snap x))
    :qid |$Snap.$SnapTo$StructOps<Bool>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$StructOps<Bool>To$Snap($SortWrappers.$SnapTo$StructOps<Bool> x)))
    :pattern (($SortWrappers.$SnapTo$StructOps<Bool> x))
    :qid |$Snap.$StructOps<Bool>To$SnapTo$StructOps<Bool>|
    )))
(declare-fun $SortWrappers.$BlockchainTo$Snap ($Blockchain) $Snap)
(declare-fun $SortWrappers.$SnapTo$Blockchain ($Snap) $Blockchain)
(assert (forall ((x $Blockchain)) (!
    (= x ($SortWrappers.$SnapTo$Blockchain($SortWrappers.$BlockchainTo$Snap x)))
    :pattern (($SortWrappers.$BlockchainTo$Snap x))
    :qid |$Snap.$SnapTo$BlockchainTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$BlockchainTo$Snap($SortWrappers.$SnapTo$Blockchain x)))
    :pattern (($SortWrappers.$SnapTo$Blockchain x))
    :qid |$Snap.$BlockchainTo$SnapTo$Blockchain|
    )))
(declare-fun $SortWrappers.$Array<Int>To$Snap ($Array<Int>) $Snap)
(declare-fun $SortWrappers.$SnapTo$Array<Int> ($Snap) $Array<Int>)
(assert (forall ((x $Array<Int>)) (!
    (= x ($SortWrappers.$SnapTo$Array<Int>($SortWrappers.$Array<Int>To$Snap x)))
    :pattern (($SortWrappers.$Array<Int>To$Snap x))
    :qid |$Snap.$SnapTo$Array<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$Array<Int>To$Snap($SortWrappers.$SnapTo$Array<Int> x)))
    :pattern (($SortWrappers.$SnapTo$Array<Int> x))
    :qid |$Snap.$Array<Int>To$SnapTo$Array<Int>|
    )))
(declare-fun $SortWrappers.$MapInt<Int>To$Snap ($MapInt<Int>) $Snap)
(declare-fun $SortWrappers.$SnapTo$MapInt<Int> ($Snap) $MapInt<Int>)
(assert (forall ((x $MapInt<Int>)) (!
    (= x ($SortWrappers.$SnapTo$MapInt<Int>($SortWrappers.$MapInt<Int>To$Snap x)))
    :pattern (($SortWrappers.$MapInt<Int>To$Snap x))
    :qid |$Snap.$SnapTo$MapInt<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$MapInt<Int>To$Snap($SortWrappers.$SnapTo$MapInt<Int> x)))
    :pattern (($SortWrappers.$SnapTo$MapInt<Int> x))
    :qid |$Snap.$MapInt<Int>To$SnapTo$MapInt<Int>|
    )))
(declare-fun $SortWrappers.$Map<Int~_Int>To$Snap ($Map<Int~_Int>) $Snap)
(declare-fun $SortWrappers.$SnapTo$Map<Int~_Int> ($Snap) $Map<Int~_Int>)
(assert (forall ((x $Map<Int~_Int>)) (!
    (= x ($SortWrappers.$SnapTo$Map<Int~_Int>($SortWrappers.$Map<Int~_Int>To$Snap x)))
    :pattern (($SortWrappers.$Map<Int~_Int>To$Snap x))
    :qid |$Snap.$SnapTo$Map<Int~_Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$Map<Int~_Int>To$Snap($SortWrappers.$SnapTo$Map<Int~_Int> x)))
    :pattern (($SortWrappers.$SnapTo$Map<Int~_Int> x))
    :qid |$Snap.$Map<Int~_Int>To$SnapTo$Map<Int~_Int>|
    )))
; ////////// Symbols
(declare-fun Seq_length (Seq<Int>) Int)
(declare-const Seq_empty Seq<Int>)
(declare-fun Seq_singleton (Int) Seq<Int>)
(declare-fun Seq_append (Seq<Int> Seq<Int>) Seq<Int>)
(declare-fun Seq_index (Seq<Int> Int) Int)
(declare-fun Seq_add (Int Int) Int)
(declare-fun Seq_sub (Int Int) Int)
(declare-fun Seq_update (Seq<Int> Int Int) Seq<Int>)
(declare-fun Seq_take (Seq<Int> Int) Seq<Int>)
(declare-fun Seq_drop (Seq<Int> Int) Seq<Int>)
(declare-fun Seq_contains (Seq<Int> Int) Bool)
(declare-fun Seq_contains_trigger (Seq<Int> Int) Bool)
(declare-fun Seq_skolem (Seq<Int> Int) Int)
(declare-fun Seq_equal (Seq<Int> Seq<Int>) Bool)
(declare-fun Seq_skolem_diff (Seq<Int> Seq<Int>) Int)
(declare-fun Seq_range (Int Int) Seq<Int>)
(declare-fun $map_init<$Map<Int~_$Struct>> ($Struct) $Map<Int~_$Struct>)
(declare-fun $map_eq<Bool> ($Map<Int~_$Struct> $Map<Int~_$Struct>) Bool)
(declare-fun $map_get<$Struct> ($Map<Int~_$Struct> Int) $Struct)
(declare-fun $map_set<$Map<Int~_$Struct>> ($Map<Int~_$Struct> Int $Struct) $Map<Int~_$Struct>)
(declare-fun $bytes32_to_signed_int<Int> (Seq<Int>) Int)
(declare-fun $bytes32_to_unsigned_int<Int> (Seq<Int>) Int)
(declare-fun $signed_int_to_bytes32<Seq<Int>> (Int) Seq<Int>)
(declare-fun $unsigned_int_to_bytes32<Seq<Int>> (Int) Seq<Int>)
(declare-fun $pad32<Seq<Int>> (Seq<Int>) Seq<Int>)
(declare-fun $struct_get<Int> (Int) Int)
(declare-fun $struct_set<$Struct> ($Struct Int Int) $Struct)
(declare-fun $struct_get<Bool> (Int) Bool)
(declare-fun $struct_set<$Struct> ($Struct Int Bool) $Struct)
(declare-fun $blockhash<Seq<Int>> (Int) Seq<Int>)
(declare-fun $method_id<Seq<Int>> (Seq<Int> Int) Seq<Int>)
(declare-fun $keccak256<Seq<Int>> (Seq<Int>) Seq<Int>)
(declare-fun $sha256<Seq<Int>> (Seq<Int>) Seq<Int>)
(declare-fun $ecrecover<Int> (Seq<Int> Int Int Int) Int)
(declare-fun $ecadd<Seq<Int>> (Seq<Int> Seq<Int>) Seq<Int>)
(declare-fun $ecmul<Seq<Int>> (Seq<Int> Int) Seq<Int>)
(declare-fun $array_init<Seq<Int>> (Int Int) Seq<Int>)
(declare-fun s$struct$self$init<$Struct> (Seq<Int> Int Int Int Int Bool $Map<Int~_Int> $Map<Int~_Int> Bool) $Struct)
(declare-fun s$struct$self$eq<Bool> ($Struct $Struct) Bool)
(declare-fun $wrap<$Int> (Int) $Int)
(declare-fun $unwrap<Int> ($Int) Int)
(declare-fun $w_mul<$Int> ($Int $Int) $Int)
(declare-fun $w_mulI<$Int> ($Int $Int) $Int)
(declare-fun $w_mulL<$Int> ($Int $Int) $Int)
(declare-fun $w_abs<Int> ($Int) Int)
(declare-fun $w_mod<$Int> ($Int $Int) $Int)
(declare-fun $w_modL<$Int> ($Int $Int) $Int)
(declare-fun $w_div<$Int> ($Int $Int) $Int)
(declare-fun $w_div_down<$Int> ($Int $Int) $Int)
(declare-fun $w_div_nat<$Int> ($Int $Int) $Int)
(declare-fun $w_div_natL<$Int> ($Int $Int) $Int)
(declare-fun $struct_loc<Int> ($Struct Int) Int)
(declare-fun $map_init<$Map<Int~_Int>> (Int) $Map<Int~_Int>)
(declare-fun $map_eq<Bool> ($Map<Int~_Int> $Map<Int~_Int>) Bool)
(declare-fun $map_get<Int> ($Map<Int~_Int> Int) Int)
(declare-fun $map_set<$Map<Int~_Int>> ($Map<Int~_Int> Int Int) $Map<Int~_Int>)
(declare-fun $sign<Int> (Int) Int)
(declare-fun $div<Int> (Int Int Int) Int)
(declare-fun $mod<Int> (Int Int Int) Int)
(declare-fun $pow<Int> (Int Int) Int)
(declare-fun $sqrt<Int> (Int) Int)
(declare-fun $floor<Int> (Int Int) Int)
(declare-fun $ceil<Int> (Int Int) Int)
(declare-fun $shift<Int> (Int Int) Int)
(declare-fun $bitwise_not<Int> (Int) Int)
(declare-fun $bitwise_and<Int> (Int Int) Int)
(declare-fun $bitwise_or<Int> (Int Int) Int)
(declare-fun $bitwise_xor<Int> (Int Int) Int)
(declare-const $self_address<Int> Int)
(declare-fun $implements<Bool> (Int Int) Bool)
(declare-fun $struct_get<$Struct> (Int) $Struct)
(declare-fun $struct_set<$Struct> ($Struct Int $Struct) $Struct)
(declare-fun $range<Seq<Int>> (Int Int) Seq<Int>)
(declare-fun $struct_get<$Map<Int~_Int>> (Int) $Map<Int~_Int>)
(declare-fun $struct_set<$Struct> ($Struct Int $Map<Int~_Int>) $Struct)
(declare-fun $struct_get<Seq<Int>> (Int) Seq<Int>)
(declare-fun $struct_set<$Struct> ($Struct Int Seq<Int>) $Struct)
(declare-fun s$resource$$creator$init<$Struct> ($Struct) $Struct)
(declare-fun s$resource$$creator$eq<Bool> ($Struct $Struct) Bool)
(declare-fun $map_sum<Int> ($Map<Int~_Int>) Int)
; Declaring symbols related to program functions (from program analysis)
(declare-fun $pure$success_get ($Snap $Struct) Bool)
(declare-fun $pure$success_get%limited ($Snap $Struct) Bool)
(declare-fun $pure$success_get%stateless ($Struct) Bool)
(declare-fun $pure$success_get%precondition ($Snap $Struct) Bool)
(declare-fun $pure$return_get ($Snap $Struct) Int)
(declare-fun $pure$return_get%limited ($Snap $Struct) Int)
(declare-fun $pure$return_get%stateless ($Struct) Bool)
(declare-fun $pure$return_get%precondition ($Snap $Struct) Bool)
(declare-fun $range_sum ($Snap Int Int) Int)
(declare-fun $range_sum%limited ($Snap Int Int) Int)
(declare-fun $range_sum%stateless (Int Int) Bool)
(declare-fun $range_sum%precondition ($Snap Int Int) Bool)
(declare-fun lemma$mul_div_same ($Snap $Int $Int) Bool)
(declare-fun lemma$mul_div_same%limited ($Snap $Int $Int) Bool)
(declare-fun lemma$mul_div_same%stateless ($Int $Int) Bool)
(declare-fun lemma$mul_div_same%precondition ($Snap $Int $Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun $failed%trigger ($Snap Int) Bool)
(declare-fun $failed_0%trigger ($Snap Int) Bool)
(declare-fun $allocation%trigger ($Snap $Struct Int) Bool)
(declare-fun $allocation_0%trigger ($Snap $Struct Int) Bool)
(declare-fun $offer%trigger ($Snap $Struct $Struct Int Int Int Int) Bool)
(declare-fun $offer_0%trigger ($Snap $Struct $Struct Int Int Int Int) Bool)
(declare-fun $trust%trigger ($Snap Int Int) Bool)
(declare-fun $trust_0%trigger ($Snap Int Int) Bool)
(declare-fun $performs$create%trigger ($Snap $Struct Int Int Int) Bool)
(declare-fun $performs$create_0%trigger ($Snap $Struct Int Int Int) Bool)
(declare-fun $performs$destroy%trigger ($Snap $Struct Int Int) Bool)
(declare-fun $performs$destroy_0%trigger ($Snap $Struct Int Int) Bool)
(declare-fun $performs$reallocate%trigger ($Snap $Struct Int Int Int) Bool)
(declare-fun $performs$reallocate_0%trigger ($Snap $Struct Int Int Int) Bool)
(declare-fun $performs$offer%trigger ($Snap $Struct $Struct Int Int Int Int Int) Bool)
(declare-fun $performs$offer_0%trigger ($Snap $Struct $Struct Int Int Int Int Int) Bool)
(declare-fun $performs$revoke%trigger ($Snap $Struct $Struct Int Int Int Int) Bool)
(declare-fun $performs$revoke_0%trigger ($Snap $Struct $Struct Int Int Int Int) Bool)
(declare-fun $performs$trust%trigger ($Snap Int Int Bool) Bool)
(declare-fun $performs$trust_0%trigger ($Snap Int Int Bool) Bool)
(declare-fun $accessible$_xp%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$_xp_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$get_D%trigger ($Snap Int Int Int Seq<Int>) Bool)
(declare-fun $accessible$get_D_0%trigger ($Snap Int Int Int Seq<Int>) Bool)
(declare-fun $accessible$get_virtual_price%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$get_virtual_price_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$__init__%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$__init___0%trigger ($Snap Int Int Int) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((s Seq<Int>)) (!
  (<= 0 (Seq_length s))
  :pattern ((Seq_length s))
  )))
(assert (= (Seq_length (as Seq_empty  Seq<Int>)) 0))
(assert (forall ((s Seq<Int>)) (!
  (=> (= (Seq_length s) 0) (= s (as Seq_empty  Seq<Int>)))
  :pattern ((Seq_length s))
  )))
(assert (forall ((e Int)) (!
  (= (Seq_length (Seq_singleton e)) 1)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (not (= s1 (as Seq_empty  Seq<Int>))))
    (= (Seq_length (Seq_append s0 s1)) (+ (Seq_length s0) (Seq_length s1))))
  :pattern ((Seq_length (Seq_append s0 s1)))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>)) (!
  (and
    (=> (= s0 (as Seq_empty  Seq<Int>)) (= (Seq_append s0 s1) s1))
    (=> (= s1 (as Seq_empty  Seq<Int>)) (= (Seq_append s0 s1) s0)))
  :pattern ((Seq_append s0 s1))
  )))
(assert (forall ((e Int)) (!
  (= (Seq_index (Seq_singleton e) 0) e)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((i Int) (j Int)) (!
  (= (Seq_add i j) (+ i j))
  :pattern ((Seq_add i j))
  )))
(assert (forall ((i Int) (j Int)) (!
  (= (Seq_sub i j) (- i j))
  :pattern ((Seq_sub i j))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Int>)))
        (and (<= 0 n) (< n (Seq_length s0)))))
    (= (Seq_index (Seq_append s0 s1) n) (Seq_index s0 n)))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  :pattern ((Seq_index s0 n) (Seq_append s0 s1))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Int>)))
        (and (<= (Seq_length s0) n) (< n (Seq_length (Seq_append s0 s1))))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s0)) (Seq_length s0)) n)
      (=
        (Seq_index (Seq_append s0 s1) n)
        (Seq_index s1 (Seq_sub n (Seq_length s0))))))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>) (m Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Int>)))
        (and (<= 0 m) (< m (Seq_length s1)))))
    (and
      (= (Seq_sub (Seq_add m (Seq_length s0)) (Seq_length s0)) m)
      (=
        (Seq_index (Seq_append s0 s1) (Seq_add m (Seq_length s0)))
        (Seq_index s1 m))))
  :pattern ((Seq_index s1 m) (Seq_append s0 s1))
  )))
(assert (forall ((s Seq<Int>) (i Int) (v Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (= (Seq_length (Seq_update s i v)) (Seq_length s)))
  :pattern ((Seq_length (Seq_update s i v)))
  :pattern ((Seq_length s) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Int>) (i Int) (v Int) (n Int)) (!
  (=>
    (and (<= 0 n) (< n (Seq_length s)))
    (and
      (=> (= i n) (= (Seq_index (Seq_update s i v) n) v))
      (=> (not (= i n)) (= (Seq_index (Seq_update s i v) n) (Seq_index s n)))))
  :pattern ((Seq_index (Seq_update s i v) n))
  :pattern ((Seq_index s n) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (and
    (=>
      (<= 0 n)
      (and
        (=> (<= n (Seq_length s)) (= (Seq_length (Seq_take s n)) n))
        (=> (< (Seq_length s) n) (= (Seq_length (Seq_take s n)) (Seq_length s)))))
    (=> (< n 0) (= (Seq_length (Seq_take s n)) 0)))
  :pattern ((Seq_length (Seq_take s n)))
  :pattern ((Seq_take s n) (Seq_length s))
  )))
(assert (forall ((s Seq<Int>) (n Int) (j Int)) (!
  (=>
    (and (<= 0 j) (and (< j n) (< j (Seq_length s))))
    (= (Seq_index (Seq_take s n) j) (Seq_index s j)))
  :pattern ((Seq_index (Seq_take s n) j))
  :pattern ((Seq_index s j) (Seq_take s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (and
    (=>
      (<= 0 n)
      (and
        (=>
          (<= n (Seq_length s))
          (= (Seq_length (Seq_drop s n)) (- (Seq_length s) n)))
        (=> (< (Seq_length s) n) (= (Seq_length (Seq_drop s n)) 0))))
    (=> (< n 0) (= (Seq_length (Seq_drop s n)) (Seq_length s))))
  :pattern ((Seq_length (Seq_drop s n)))
  :pattern ((Seq_length s) (Seq_drop s n))
  )))
(assert (forall ((s Seq<Int>) (n Int) (j Int)) (!
  (=>
    (and (< 0 n) (and (<= 0 j) (< j (- (Seq_length s) n))))
    (and
      (= (Seq_sub (Seq_add j n) n) j)
      (= (Seq_index (Seq_drop s n) j) (Seq_index s (Seq_add j n)))))
  :pattern ((Seq_index (Seq_drop s n) j))
  )))
(assert (forall ((s Seq<Int>) (n Int) (i Int)) (!
  (=>
    (and (< 0 n) (and (<= n i) (< i (Seq_length s))))
    (and
      (= (Seq_add (Seq_sub i n) n) i)
      (= (Seq_index (Seq_drop s n) (Seq_sub i n)) (Seq_index s i))))
  :pattern ((Seq_drop s n) (Seq_index s i))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_take (Seq_append s t) n) (Seq_take s n)))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (> n 0) (and (> n (Seq_length s)) (< n (Seq_length (Seq_append s t)))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (=
        (Seq_take (Seq_append s t) n)
        (Seq_append s (Seq_take t (Seq_sub n (Seq_length s)))))))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_drop (Seq_append s t) n) (Seq_append (Seq_drop s n) t)))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (> n 0) (> n (Seq_length s)))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (= (Seq_drop (Seq_append s t) n) (Seq_drop t (Seq_sub n (Seq_length s))))))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (<= n 0) (= (Seq_take s n) (as Seq_empty  Seq<Int>)))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (<= n 0) (= (Seq_drop s n) s))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_take s n) s))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_drop s n) (as Seq_empty  Seq<Int>)))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Int>) (x Int)) (!
  (=>
    (Seq_contains s x)
    (and
      (<= 0 (Seq_skolem s x))
      (and
        (< (Seq_skolem s x) (Seq_length s))
        (= (Seq_index s (Seq_skolem s x)) x))))
  :pattern ((Seq_contains s x))
  )))
(assert (forall ((s Seq<Int>) (x Int) (i Int)) (!
  (=>
    (and (<= 0 i) (and (< i (Seq_length s)) (= (Seq_index s i) x)))
    (Seq_contains s x))
  :pattern ((Seq_contains s x) (Seq_index s i))
  )))
(assert (forall ((s Seq<Int>) (i Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (Seq_contains_trigger s (Seq_index s i)))
  :pattern ((Seq_index s i))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>)) (!
  (or
    (and (= s0 s1) (Seq_equal s0 s1))
    (or
      (and
        (not (= s0 s1))
        (and (not (Seq_equal s0 s1)) (not (= (Seq_length s0) (Seq_length s1)))))
      (and
        (not (= s0 s1))
        (and
          (not (Seq_equal s0 s1))
          (and
            (= (Seq_length s0) (Seq_length s1))
            (and
              (= (Seq_skolem_diff s0 s1) (Seq_skolem_diff s1 s0))
              (and
                (<= 0 (Seq_skolem_diff s0 s1))
                (and
                  (< (Seq_skolem_diff s0 s1) (Seq_length s0))
                  (not
                    (=
                      (Seq_index s0 (Seq_skolem_diff s0 s1))
                      (Seq_index s1 (Seq_skolem_diff s0 s1))))))))))))
  :pattern ((Seq_equal s0 s1))
  )))
(assert (forall ((a Seq<Int>) (b Seq<Int>)) (!
  (=> (Seq_equal a b) (= a b))
  :pattern ((Seq_equal a b))
  )))
(assert (forall ((x Int) (y Int)) (!
  (= (Seq_contains (Seq_singleton x) y) (= x y))
  :pattern ((Seq_contains (Seq_singleton x) y))
  )))
(assert (forall ((min_ Int) (max Int)) (!
  (and
    (=> (< min_ max) (= (Seq_length (Seq_range min_ max)) (- max min_)))
    (=> (<= max min_) (= (Seq_length (Seq_range min_ max)) 0)))
  :pattern ((Seq_length (Seq_range min_ max)))
  :qid |$Seq[Int]_prog.ranged_seq_length|)))
(assert (forall ((min_ Int) (max Int) (j Int)) (!
  (=>
    (and (<= 0 j) (< j (- max min_)))
    (= (Seq_index (Seq_range min_ max) j) (+ min_ j)))
  :pattern ((Seq_index (Seq_range min_ max) j))
  :qid |$Seq[Int]_prog.ranged_seq_index|)))
(assert (forall ((min_ Int) (max Int) (v Int)) (!
  (= (Seq_contains (Seq_range min_ max) v) (and (<= min_ v) (< v max)))
  :pattern ((Seq_contains (Seq_range min_ max) v))
  :qid |$Seq[Int]_prog.ranged_seq_contains|)))
(assert (forall (($v $Struct) ($k Int)) (!
  (= ($map_get<$Struct> ($map_init<$Map<Int~_$Struct>> $v) $k) $v)
  :pattern (($map_get<$Struct> ($map_init<$Map<Int~_$Struct>> $v) $k))
  :qid |prog.$map_init_ax|)))
(assert (forall (($m $Map<Int~_$Struct>) ($n $Map<Int~_$Struct>)) (!
  (and
    (= ($map_eq<Bool> $m $n) (= $m $n))
    (=
      ($map_eq<Bool> $m $n)
      (forall (($k Int)) (!
        (= ($map_get<$Struct> $m $k) ($map_get<$Struct> $n $k))
        :pattern (($map_get<$Struct> $m $k) ($map_get<$Struct> $n $k))
        ))))
  :pattern (($map_eq<Bool> $m $n))
  :qid |prog.$map_eq_ax|)))
(assert (forall (($m $Map<Int~_$Struct>) ($k Int) ($v $Struct) ($kk Int)) (!
  (=
    ($map_get<$Struct> ($map_set<$Map<Int~_$Struct>> $m $k $v) $kk)
    (ite (= $k $kk) $v ($map_get<$Struct> $m $kk)))
  :pattern (($map_get<$Struct> ($map_set<$Map<Int~_$Struct>> $m $k $v) $kk))
  :qid |prog.$map_set_ax|)))
(assert (forall (($bb Seq<Int>)) (!
  (=>
    (<= (Seq_length $bb) 32)
    (and
      (<=
        (- 0 57896044618658097711785492504343953926634992332820282019728792003956564819968)
        ($bytes32_to_signed_int<Int> $bb))
      (<=
        ($bytes32_to_signed_int<Int> $bb)
        57896044618658097711785492504343953926634992332820282019728792003956564819967)))
  :pattern (($bytes32_to_signed_int<Int> $bb))
  :qid |prog.$bytes32_to_signed_int_ax|)))
(assert (forall (($bb Seq<Int>)) (!
  (=>
    (<= (Seq_length $bb) 32)
    (and
      (<= 0 ($bytes32_to_unsigned_int<Int> $bb))
      (<=
        ($bytes32_to_unsigned_int<Int> $bb)
        115792089237316195423570985008687907853269984665640564039457584007913129639935)))
  :pattern (($bytes32_to_unsigned_int<Int> $bb))
  :qid |prog.$bytes32_to_unsigned_int_ax|)))
(assert (forall (($i Int)) (!
  (=>
    (and
      (<=
        (- 0 57896044618658097711785492504343953926634992332820282019728792003956564819968)
        $i)
      (<=
        $i
        57896044618658097711785492504343953926634992332820282019728792003956564819967))
    (= (Seq_length ($signed_int_to_bytes32<Seq<Int>> $i)) 32))
  :pattern (($signed_int_to_bytes32<Seq<Int>> $i))
  :qid |prog.$signed_int_to_bytes32_ax|)))
(assert (forall (($i Int)) (!
  (=>
    (and
      (<=
        (- 0 57896044618658097711785492504343953926634992332820282019728792003956564819968)
        $i)
      (<=
        $i
        57896044618658097711785492504343953926634992332820282019728792003956564819967))
    (= (Seq_length ($unsigned_int_to_bytes32<Seq<Int>> $i)) 32))
  :pattern (($unsigned_int_to_bytes32<Seq<Int>> $i))
  :qid |prog.$unsigned_int_to_bytes32_ax|)))
(assert (forall (($bb Seq<Int>)) (!
  (= (Seq_length ($pad32<Seq<Int>> $bb)) 32)
  :pattern (($pad32<Seq<Int>> $bb))
  :qid |prog.$pad32_len_ax|)))
(assert (and
  (forall (($bb Seq<Int>) ($i Int)) (!
    (let ((diff (- 32 (Seq_length $bb)))) true)
    :pattern ((Seq_index ($pad32<Seq<Int>> $bb) $i))
    :qid |prog.$pad32_vals_ax|))
  (forall (($bb Seq<Int>) ($i Int)) (!
    (let ((diff (- 32 (Seq_length $bb)))) (=>
      (and (<= 0 $i) (< $i (Seq_length ($pad32<Seq<Int>> $bb))))
      (=
        (Seq_index ($pad32<Seq<Int>> $bb) $i)
        (ite (< $i diff) 0 (Seq_index $bb (- $i diff))))))
    :pattern ((Seq_index ($pad32<Seq<Int>> $bb) $i))
    :qid |prog.$pad32_vals_ax|))))
(assert (forall (($s $Struct) ($m Int) ($t Int)) (!
  (= ($struct_get<Int> ($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m)) $t)
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
  :qid |prog.$get_set_0_ax|)))
(assert (forall (($s $Struct) ($m Int) ($n Int) ($t Int)) (!
  (=>
    (not (= $m $n))
    (=
      ($struct_loc<Int> $s $m)
      ($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m)))
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m))
  :qid |prog.$get_set_1_ax|)))
(assert (forall (($s $Struct) ($m Int) ($t Bool)) (!
  (=
    ($struct_get<Bool> ($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
    $t)
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
  :qid |prog.$get_set_0_ax|)))
(assert (forall (($s $Struct) ($m Int) ($n Int) ($t Bool)) (!
  (=>
    (not (= $m $n))
    (=
      ($struct_loc<Int> $s $m)
      ($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m)))
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m))
  :qid |prog.$get_set_1_ax|)))
(assert (forall (($no Int)) (!
  (= (Seq_length ($blockhash<Seq<Int>> $no)) 32)
  :pattern (($blockhash<Seq<Int>> $no))
  :qid |prog.$blockhash_ax|)))
(assert (forall (($bb Seq<Int>) ($l Int)) (!
  (= (Seq_length ($method_id<Seq<Int>> $bb $l)) $l)
  :pattern (($method_id<Seq<Int>> $bb $l))
  :qid |prog.$method_id_ax|)))
(assert (forall (($s Seq<Int>)) (!
  (= (Seq_length ($keccak256<Seq<Int>> $s)) 32)
  :pattern (($keccak256<Seq<Int>> $s))
  :qid |prog.$keccak256_ax|)))
(assert (forall (($s Seq<Int>)) (!
  (= (Seq_length ($sha256<Seq<Int>> $s)) 32)
  :pattern (($sha256<Seq<Int>> $s))
  :qid |prog.$sha256_ax|)))
(assert (forall (($p Seq<Int>) ($q Seq<Int>)) (!
  (= (Seq_length ($ecadd<Seq<Int>> $p $q)) 2)
  :pattern (($ecadd<Seq<Int>> $p $q))
  :qid |prog.$ecadd_ax|)))
(assert (forall (($p Seq<Int>) ($s Int)) (!
  (= (Seq_length ($ecmul<Seq<Int>> $p $s)) 2)
  :pattern (($ecmul<Seq<Int>> $p $s))
  :qid |prog.$ecmul_ax|)))
(assert (forall (($e Int) ($c Int)) (!
  (= (Seq_length ($array_init<Seq<Int>> $e $c)) $c)
  :pattern (($array_init<Seq<Int>> $e $c))
  :qid |prog.$array_init_len_ax|)))
(assert (forall (($e Int) ($c Int) ($i Int)) (!
  (=>
    (and (<= 0 $i) (< $i $c))
    (= (Seq_index ($array_init<Seq<Int>> $e $c) $i) $e))
  :pattern ((Seq_index ($array_init<Seq<Int>> $e $c) $i))
  :qid |prog.$array_init_val_ax|)))
(assert (forall (($arg_0 Seq<Int>) ($arg_1 Int) ($arg_2 Int) ($arg_3 Int) ($arg_4 Int) ($arg_5 Bool) ($arg_6 $Map<Int~_Int>) ($arg_7 $Map<Int~_Int>) ($arg_8 Bool)) (!
  (and
    (=
      ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8) (- 0 1)))
      9122519725869122497593506884710)
    (and
      (Seq_equal
        ($struct_get<Seq<Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8) 0))
        $arg_0)
      (and
        (=
          ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8) 1))
          $arg_1)
        (and
          (=
            ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8) 2))
            $arg_2)
          (and
            (=
              ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8) 3))
              $arg_3)
            (and
              (=
                ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8) 4))
                $arg_4)
              (and
                (=
                  ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8) 5))
                  $arg_5)
                (and
                  (=
                    ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8) 6))
                    $arg_6)
                  (and
                    (=
                      ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8) 7))
                      $arg_7)
                    (=
                      ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8) 8))
                      $arg_8))))))))))
  :pattern ((s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8))
  :qid |prog.s$struct$self$init$ax|)))
(assert (forall (($l $Struct) ($r $Struct)) (!
  (and
    (= (s$struct$self$eq<Bool> $l $r) (= $l $r))
    (=
      (s$struct$self$eq<Bool> $l $r)
      (and
        (=
          ($struct_get<Int> ($struct_loc<Int> $l (- 0 1)))
          ($struct_get<Int> ($struct_loc<Int> $r (- 0 1))))
        (and
          (Seq_equal
            ($struct_get<Seq<Int>> ($struct_loc<Int> $l 0))
            ($struct_get<Seq<Int>> ($struct_loc<Int> $r 0)))
          (and
            (=
              ($struct_get<Int> ($struct_loc<Int> $l 1))
              ($struct_get<Int> ($struct_loc<Int> $r 1)))
            (and
              (=
                ($struct_get<Int> ($struct_loc<Int> $l 2))
                ($struct_get<Int> ($struct_loc<Int> $r 2)))
              (and
                (=
                  ($struct_get<Int> ($struct_loc<Int> $l 3))
                  ($struct_get<Int> ($struct_loc<Int> $r 3)))
                (and
                  (=
                    ($struct_get<Int> ($struct_loc<Int> $l 4))
                    ($struct_get<Int> ($struct_loc<Int> $r 4)))
                  (and
                    (=
                      ($struct_get<Bool> ($struct_loc<Int> $l 5))
                      ($struct_get<Bool> ($struct_loc<Int> $r 5)))
                    (and
                      ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 6)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 6)))
                      (and
                        ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 7)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 7)))
                        (=
                          ($struct_get<Bool> ($struct_loc<Int> $l 8))
                          ($struct_get<Bool> ($struct_loc<Int> $r 8))))))))))))))
  :pattern ((s$struct$self$eq<Bool> $l $r))
  :qid |prog.s$struct$self$eq$ax|)))
(assert (forall ((i Int)) (!
  (= ($unwrap<Int> ($wrap<$Int> i)) i)
  :pattern (($wrap<$Int> i))
  :qid |prog.$wrap_ax|)))
(assert (forall ((i $Int)) (!
  (= ($wrap<$Int> ($unwrap<Int> i)) i)
  :pattern (($wrap<$Int> ($unwrap<Int> i)))
  :qid |prog.$unwrap_ax|)))
(assert (forall ((i $Int)) (!
  (=> (< ($unwrap<Int> i) 0) (= ($w_abs<Int> i) (- 0 ($unwrap<Int> i))))
  :pattern (($w_abs<Int> i))
  :qid |prog.$w_abs_ax_1|)))
(assert (forall ((i $Int)) (!
  (=> (>= ($unwrap<Int> i) 0) (= ($w_abs<Int> i) ($unwrap<Int> i)))
  :pattern (($w_abs<Int> i))
  :qid |prog.$w_abs_ax_2|)))
(assert (forall ((i $Int) (j $Int)) (!
  (= ($w_mul<$Int> i j) ($w_mulI<$Int> i j))
  :pattern (($w_mul<$Int> i j))
  :qid |prog.$w_mul_intermediate|)))
(assert (forall ((i $Int) (j $Int)) (!
  (= ($w_mul<$Int> i j) ($w_mulL<$Int> i j))
  :pattern (($w_mul<$Int> i j))
  :qid |prog.$w_mul_limited|)))
(assert (forall ((i $Int) (j $Int)) (!
  (= ($w_mulI<$Int> i j) ($w_mulL<$Int> i j))
  :pattern (($w_mulI<$Int> i j))
  :qid |prog.$w_mul_intermediate_to_limited|)))
(assert (forall ((i $Int) (j $Int)) (!
  (= ($w_mul<$Int> i j) ($w_mulI<$Int> j i))
  :pattern (($w_mul<$Int> i j))
  :qid |prog.$w_mul_commutative|)))
(assert (forall ((i $Int) (j $Int) (k $Int)) (!
  (= ($w_mulI<$Int> i ($w_mulI<$Int> j k)) ($w_mulL<$Int> ($w_mulL<$Int> i j) k))
  :pattern (($w_mulI<$Int> i ($w_mulI<$Int> j k)))
  :qid |prog.$w_mul_associative|)))
(assert (forall ((i $Int) (j $Int) (k $Int) (l $Int)) (!
  (=>
    (= ($unwrap<Int> j) (+ ($unwrap<Int> k) ($unwrap<Int> l)))
    (=
      ($w_mulI<$Int> i j)
      ($wrap<$Int> (+
        ($unwrap<Int> ($w_mulL<$Int> i k))
        ($unwrap<Int> ($w_mulL<$Int> i l))))))
  :pattern (($w_mulI<$Int> i j) ($w_mulI<$Int> i k) ($w_mulI<$Int> i l))
  :qid |prog.$w_mul_distributive|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=
    ($w_mulI<$Int> i j)
    ($w_mulL<$Int> ($wrap<$Int> (- 0 ($unwrap<Int> i))) ($wrap<$Int> (-
      0
      ($unwrap<Int> j)))))
  :pattern (($w_mulI<$Int> i j))
  :qid |prog.$w_mul_basic_sign_1|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=
    ($w_mulI<$Int> i j)
    ($wrap<$Int> (-
      0
      ($unwrap<Int> ($w_mulL<$Int> ($wrap<$Int> (- 0 ($unwrap<Int> i))) j)))))
  :pattern (($w_mulI<$Int> i j))
  :qid |prog.$w_mul_basic_sign_2|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (or (= ($unwrap<Int> i) 0) (= ($unwrap<Int> j) 0))
    (= ($unwrap<Int> ($w_mulI<$Int> i j)) 0))
  :pattern (($w_mulI<$Int> i j))
  :qid |prog.$w_mul_basic_zero_1|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (or
      (and (> ($unwrap<Int> i) 0) (> ($unwrap<Int> j) 0))
      (and (< ($unwrap<Int> i) 0) (< ($unwrap<Int> j) 0)))
    (> ($unwrap<Int> ($w_mulI<$Int> i j)) 0))
  :pattern (($w_mulI<$Int> i j))
  :qid |prog.$w_mul_basic_zero_2|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (or (= ($unwrap<Int> i) 1) (= ($unwrap<Int> j) 0))
    (= ($w_mulI<$Int> i j) j))
  :pattern (($w_mulI<$Int> i j))
  :qid |prog.$w_mul_basic_neutral|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=
    (>= ($w_abs<Int> ($w_mulI<$Int> i j)) ($w_abs<Int> j))
    (or (>= ($w_abs<Int> i) 1) (= ($unwrap<Int> j) 0)))
  :pattern (($w_mulI<$Int> i j))
  :qid |prog.$w_mul_basic_proportional|)))
(assert (forall ((i $Int) (j $Int) (k $Int) (l $Int)) (!
  (=>
    (and
      (> ($unwrap<Int> ($w_mulI<$Int> i j)) ($unwrap<Int> k))
      (> ($unwrap<Int> l) 0))
    (>
      ($unwrap<Int> ($w_mulL<$Int> i ($w_mulL<$Int> j l)))
      ($unwrap<Int> ($w_mulI<$Int> k l))))
  :pattern (($w_mulI<$Int> i ($w_mulI<$Int> j l)) ($w_mulI<$Int> k l))
  :qid |prog.$w_mul_order_1|)))
(assert (forall ((i $Int) (j $Int) (k $Int) (l $Int)) (!
  (=>
    (and
      (>= ($unwrap<Int> ($w_mulI<$Int> i j)) ($unwrap<Int> k))
      (> ($unwrap<Int> l) 0))
    (>=
      ($unwrap<Int> ($w_mulL<$Int> i ($w_mulL<$Int> j l)))
      ($unwrap<Int> ($w_mulI<$Int> k l))))
  :pattern (($w_mulI<$Int> i ($w_mulI<$Int> j l)) ($w_mulI<$Int> k l))
  :qid |prog.$w_mul_order_2|)))
(assert (forall ((i $Int) (j $Int) (k $Int) (l $Int)) (!
  (=>
    (and
      (> ($unwrap<Int> ($w_mulI<$Int> i j)) ($unwrap<Int> k))
      (< ($unwrap<Int> l) 0))
    (>
      ($unwrap<Int> ($w_mulI<$Int> k l))
      ($unwrap<Int> ($w_mulL<$Int> i ($w_mulL<$Int> j l)))))
  :pattern (($w_mulI<$Int> i ($w_mulI<$Int> j l)) ($w_mulI<$Int> k l))
  :qid |prog.$w_mul_order_3|)))
(assert (forall ((i $Int) (j $Int) (k $Int) (l $Int)) (!
  (=>
    (and
      (>= ($unwrap<Int> ($w_mulI<$Int> i j)) ($unwrap<Int> k))
      (< ($unwrap<Int> l) 0))
    (>=
      ($unwrap<Int> ($w_mulI<$Int> k l))
      ($unwrap<Int> ($w_mulL<$Int> i ($w_mulL<$Int> j l)))))
  :pattern (($w_mulI<$Int> i ($w_mulI<$Int> j l)) ($w_mulI<$Int> k l))
  :qid |prog.$w_mul_order_4|)))
(assert (forall ((i $Int) (j $Int) (k $Int) (l $Int)) (!
  (=>
    (and
      (<= ($w_abs<Int> i) ($w_abs<Int> j))
      (<= ($w_abs<Int> k) ($w_abs<Int> l)))
    (<= ($w_abs<Int> ($w_mulI<$Int> i k)) ($w_abs<Int> ($w_mulI<$Int> j l))))
  :pattern (($w_mulI<$Int> i k) ($w_mulI<$Int> j l))
  :qid |prog.$w_mul_monotonicity_1|)))
(assert (forall ((i $Int) (j $Int) (k $Int) (l $Int)) (!
  (=>
    (and
      (< ($w_abs<Int> i) ($w_abs<Int> j))
      (and (<= ($w_abs<Int> k) ($w_abs<Int> l)) (not (= ($unwrap<Int> l) 0))))
    (< ($w_abs<Int> ($w_mulI<$Int> i k)) ($w_abs<Int> ($w_mulI<$Int> j l))))
  :pattern (($w_mulI<$Int> i k) ($w_mulI<$Int> j l))
  :qid |prog.$w_mul_monotonicity_2|)))
(assert (forall ((i $Int) (j $Int) (k $Int) (l $Int)) (!
  (=>
    (and
      (<= ($w_abs<Int> i) ($w_abs<Int> j))
      (and (< ($w_abs<Int> k) ($w_abs<Int> l)) (not (= ($unwrap<Int> j) 0))))
    (< ($w_abs<Int> ($w_mulI<$Int> i k)) ($w_abs<Int> ($w_mulI<$Int> j l))))
  :pattern (($w_mulI<$Int> i k) ($w_mulI<$Int> j l))
  :qid |prog.$w_mul_monotonicity_3|)))
(assert (forall ((i $Int) (j $Int)) (!
  (= ($w_mod<$Int> i j) ($w_modL<$Int> i j))
  :pattern (($w_mod<$Int> i j))
  :qid |prog.$w_mod_limited|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (and (not (= j ($wrap<$Int> 0))) (or (= i j) (= i ($wrap<$Int> 0))))
    (= ($w_mod<$Int> i j) ($wrap<$Int> 0)))
  :pattern (($w_mod<$Int> i j))
  :qid |prog.$w_mod_identity|)))
(assert (forall ((i $Int) (j $Int) (l $Int)) (!
  (=>
    (and
      (not (= j ($wrap<$Int> 0)))
      (and
        (= ($unwrap<Int> i) (+ ($unwrap<Int> l) ($w_abs<Int> j)))
        (or (>= ($unwrap<Int> l) 0) (< ($unwrap<Int> i) 0))))
    (= ($w_mod<$Int> i j) ($w_modL<$Int> l j)))
  :pattern (($w_mod<$Int> i j) ($w_mod<$Int> l j))
  :qid |prog.$w_mod_basic_1|)))
(assert (forall ((i $Int) (j $Int) (l $Int)) (!
  (=>
    (and
      (not (= j ($wrap<$Int> 0)))
      (and
        (= ($unwrap<Int> i) (- ($unwrap<Int> l) ($w_abs<Int> j)))
        (or (<= ($unwrap<Int> l) 0) (> ($unwrap<Int> i) 0))))
    (= ($w_mod<$Int> i j) ($w_modL<$Int> l j)))
  :pattern (($w_mod<$Int> i j) ($w_mod<$Int> l j))
  :qid |prog.$w_mod_basic_2|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (and
      (not (= j ($wrap<$Int> 0)))
      (and (<= 0 ($w_abs<Int> i)) (< ($w_abs<Int> i) ($w_abs<Int> j))))
    (= ($w_mod<$Int> i j) i))
  :pattern (($w_mod<$Int> i j))
  :qid |prog.$w_mod_basic_3|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (not (= j ($wrap<$Int> 0)))
    (< ($w_abs<Int> ($w_mod<$Int> i j)) ($w_abs<Int> j)))
  :pattern (($w_mod<$Int> i j))
  :qid |prog.$w_mod_basic_4|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (not (= j ($wrap<$Int> 0)))
    (or
      (=
        ($sign<Int> ($unwrap<Int> ($w_mod<$Int> i j)))
        ($sign<Int> ($unwrap<Int> i)))
      (= ($sign<Int> ($unwrap<Int> ($w_mod<$Int> i j))) 0)))
  :pattern (($w_mod<$Int> i j))
  :qid |prog.$w_mod_sign_1|)))
(assert (forall ((i $Int) (j $Int) (k $Int)) (!
  (=>
    (and (not (= j ($wrap<$Int> 0))) (= ($unwrap<Int> i) (- 0 ($unwrap<Int> k))))
    (= ($w_mod<$Int> i j) ($wrap<$Int> (- 0 ($unwrap<Int> ($w_modL<$Int> k j))))))
  :pattern (($w_mod<$Int> i j) ($w_mod<$Int> k j))
  :qid |prog.$w_mod_sign_2|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (not (= j ($wrap<$Int> 0)))
    (= ($w_mod<$Int> i j) ($w_mod<$Int> i ($wrap<$Int> (- 0 ($unwrap<Int> j))))))
  :pattern (($w_mod<$Int> i j))
  :qid |prog.$w_mod_sign_3|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (not (= j ($wrap<$Int> 0)))
    (= ($w_mod<$Int> i j) ($w_modL<$Int> ($w_modL<$Int> i j) j)))
  :pattern (($w_mod<$Int> i j))
  :qid |prog.$w_mod_mod|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (not (= j ($wrap<$Int> 0)))
    (<= ($w_abs<Int> ($w_mod<$Int> i j)) ($w_abs<Int> i)))
  :pattern (($w_mod<$Int> i j))
  :qid |prog.$w_mod_decrease|)))
(assert (forall ((i $Int) (j $Int) (k $Int) (l $Int)) (!
  (=>
    (and
      (not (= j ($wrap<$Int> 0)))
      (= ($unwrap<Int> i) (+ ($unwrap<Int> k) ($unwrap<Int> l))))
    (and
      (=>
        (or
          (and
            (>= ($unwrap<Int> i) 0)
            (>=
              (+
                ($unwrap<Int> ($w_modL<$Int> k j))
                ($unwrap<Int> ($w_modL<$Int> l j)))
              0))
          (and
            (<= ($unwrap<Int> i) 0)
            (<=
              (+
                ($unwrap<Int> ($w_modL<$Int> k j))
                ($unwrap<Int> ($w_modL<$Int> l j)))
              0)))
        (or
          (and
            (<=
              ($w_abs<Int> j)
              (+
                ($unwrap<Int> ($w_modL<$Int> k j))
                ($unwrap<Int> ($w_modL<$Int> l j))))
            (and
              (<
                (+
                  ($unwrap<Int> ($w_modL<$Int> k j))
                  ($unwrap<Int> ($w_modL<$Int> l j)))
                (* 2 ($w_abs<Int> j)))
              (=
                ($w_mod<$Int> i j)
                ($wrap<$Int> (-
                  (+
                    ($unwrap<Int> ($w_modL<$Int> k j))
                    ($unwrap<Int> ($w_modL<$Int> l j)))
                  ($w_abs<Int> j))))))
          (or
            (and
              (<
                (- 0 ($w_abs<Int> j))
                (+
                  ($unwrap<Int> ($w_modL<$Int> k j))
                  ($unwrap<Int> ($w_modL<$Int> l j))))
              (and
                (<
                  (+
                    ($unwrap<Int> ($w_modL<$Int> k j))
                    ($unwrap<Int> ($w_modL<$Int> l j)))
                  ($w_abs<Int> j))
                (=
                  ($w_mod<$Int> i j)
                  ($wrap<$Int> (+
                    ($unwrap<Int> ($w_modL<$Int> k j))
                    ($unwrap<Int> ($w_modL<$Int> l j)))))))
            (and
              (<
                (* (- 0 2) ($w_abs<Int> j))
                (+
                  ($unwrap<Int> ($w_modL<$Int> k j))
                  ($unwrap<Int> ($w_modL<$Int> l j))))
              (and
                (<=
                  (+
                    ($unwrap<Int> ($w_modL<$Int> k j))
                    ($unwrap<Int> ($w_modL<$Int> l j)))
                  (- 0 ($w_abs<Int> j)))
                (=
                  ($w_mod<$Int> i j)
                  ($wrap<$Int> (+
                    (+
                      ($unwrap<Int> ($w_modL<$Int> k j))
                      ($unwrap<Int> ($w_modL<$Int> l j)))
                    ($w_abs<Int> j)))))))))
      (=>
        (or
          (and
            (> ($unwrap<Int> i) 0)
            (<
              (+
                ($unwrap<Int> ($w_modL<$Int> k j))
                ($unwrap<Int> ($w_modL<$Int> l j)))
              0))
          (and
            (< ($unwrap<Int> i) 0)
            (>
              (+
                ($unwrap<Int> ($w_modL<$Int> k j))
                ($unwrap<Int> ($w_modL<$Int> l j)))
              0)))
        (or
          (and
            (<
              0
              (+
                ($unwrap<Int> ($w_modL<$Int> k j))
                ($unwrap<Int> ($w_modL<$Int> l j))))
            (and
              (<
                (+
                  ($unwrap<Int> ($w_modL<$Int> k j))
                  ($unwrap<Int> ($w_modL<$Int> l j)))
                ($w_abs<Int> j))
              (=
                ($w_mod<$Int> i j)
                ($wrap<$Int> (-
                  (+
                    ($unwrap<Int> ($w_modL<$Int> k j))
                    ($unwrap<Int> ($w_modL<$Int> l j)))
                  ($w_abs<Int> j))))))
          (and
            (<
              (- 0 ($w_abs<Int> j))
              (+
                ($unwrap<Int> ($w_modL<$Int> k j))
                ($unwrap<Int> ($w_modL<$Int> l j))))
            (and
              (<
                (+
                  ($unwrap<Int> ($w_modL<$Int> k j))
                  ($unwrap<Int> ($w_modL<$Int> l j)))
                0)
              (=
                ($w_mod<$Int> i j)
                ($wrap<$Int> (+
                  (+
                    ($unwrap<Int> ($w_modL<$Int> k j))
                    ($unwrap<Int> ($w_modL<$Int> l j)))
                  ($w_abs<Int> j))))))))))
  :pattern (($w_mod<$Int> i j) ($w_mod<$Int> k j) ($w_mod<$Int> l j))
  :qid |prog.$w_mod_add|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (not (= j ($wrap<$Int> 0)))
    (= ($w_mod<$Int> ($w_mul<$Int> i j) j) ($wrap<$Int> 0)))
  :pattern (($w_mod<$Int> ($w_mul<$Int> i j) j))
  :qid |prog.$w_mod_mul_basic|)))
(assert (forall ((i $Int) (j $Int) (k $Int)) (!
  (=>
    (not (= j ($wrap<$Int> 0)))
    (and
      (=
        ($w_mod<$Int> ($w_mulI<$Int> i k) j)
        ($w_modL<$Int> ($w_mulL<$Int> ($w_modL<$Int> i j) k) j))
      (and
        (=
          ($w_mod<$Int> ($w_mulI<$Int> i k) j)
          ($w_modL<$Int> ($w_mulL<$Int> i ($w_modL<$Int> k j)) j))
        (=
          ($w_mod<$Int> ($w_mulI<$Int> i k) j)
          ($w_modL<$Int> ($w_mulL<$Int> ($w_modL<$Int> i j) ($w_modL<$Int> k j)) j)))))
  :pattern (($w_mod<$Int> ($w_mulI<$Int> i k) j))
  :qid |prog.$w_mod_mul_mod_noop|)))
(assert (forall ((i $Int) (j $Int) (k $Int)) (!
  (=>
    (not (= j ($wrap<$Int> 0)))
    (=
      ($w_mod<$Int> i j)
      ($w_modL<$Int> ($wrap<$Int> (+
        ($unwrap<Int> ($w_mulL<$Int> k j))
        ($unwrap<Int> i))) j)))
  :pattern (($w_mod<$Int> i j) ($w_mulI<$Int> k j))
  :qid |prog.$w_mod_mul_vanish|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (not (= ($unwrap<Int> j) 0))
    (=
      ($w_div<$Int> i j)
      (ite
        (>= ($unwrap<Int> i) 0)
        ($w_div_down<$Int> i j)
        ($wrap<$Int> (-
          0
          ($unwrap<Int> ($w_div_down<$Int> ($wrap<$Int> (- 0 ($unwrap<Int> i))) j)))))))
  :pattern (($w_div<$Int> i j))
  :qid |prog.$w_div_div_down|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=
    ($w_div_down<$Int> i j)
    (ite
      (>= ($unwrap<Int> j) 0)
      ($w_div_nat<$Int> i j)
      ($wrap<$Int> (-
        0
        ($unwrap<Int> ($w_div_nat<$Int> i ($wrap<$Int> (- 0 ($unwrap<Int> j)))))))))
  :pattern (($w_div_down<$Int> i j))
  :qid |prog.$w_div_down_div_nat|)))
(assert (forall ((i $Int) (j $Int)) (!
  (= ($w_div_nat<$Int> i j) ($w_div_natL<$Int> i j))
  :pattern (($w_div_nat<$Int> i j))
  :qid |prog.$w_div_nat_limited|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (or (= ($unwrap<Int> j) 1) (= ($unwrap<Int> i) 0))
    (= ($w_div_nat<$Int> i j) i))
  :pattern (($w_div_nat<$Int> i j))
  :qid |prog.$w_div_nat_neutral|)))
(assert (forall ((i $Int)) (!
  (=> (> ($unwrap<Int> i) 0) (= ($w_div_nat<$Int> i i) ($wrap<$Int> 1)))
  :pattern (($w_div_nat<$Int> i i))
  :qid |prog.$w_div_nat_self|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (and (>= ($unwrap<Int> i) 0) (> ($unwrap<Int> j) 0))
    (=
      (< ($unwrap<Int> i) ($unwrap<Int> j))
      (= ($w_div_nat<$Int> i j) ($wrap<$Int> 0))))
  :pattern (($w_div_nat<$Int> i j))
  :qid |prog.$w_div_nat_small|)))
(assert (forall ((i $Int) (j $Int) (k $Int) (l $Int)) (!
  (=>
    (and
      (and
        (>= ($unwrap<Int> i) 0)
        (and
          (> ($unwrap<Int> j) 0)
          (and (>= ($unwrap<Int> k) 0) (>= ($unwrap<Int> l) 0))))
      (= ($unwrap<Int> i) (+ ($unwrap<Int> k) ($unwrap<Int> l))))
    (or
      (and
        (<=
          0
          (+ ($unwrap<Int> ($w_mod<$Int> k j)) ($unwrap<Int> ($w_mod<$Int> l j))))
        (and
          (<
            (+
              ($unwrap<Int> ($w_mod<$Int> k j))
              ($unwrap<Int> ($w_mod<$Int> l j)))
            ($unwrap<Int> j))
          (=
            ($w_div_nat<$Int> i j)
            ($wrap<$Int> (+
              ($unwrap<Int> ($w_div_natL<$Int> k j))
              ($unwrap<Int> ($w_div_natL<$Int> l j)))))))
      (and
        (<=
          ($unwrap<Int> j)
          (+ ($unwrap<Int> ($w_mod<$Int> k j)) ($unwrap<Int> ($w_mod<$Int> l j))))
        (and
          (<
            (+
              ($unwrap<Int> ($w_mod<$Int> k j))
              ($unwrap<Int> ($w_mod<$Int> l j)))
            (* 2 ($unwrap<Int> j)))
          (=
            ($w_div_nat<$Int> i j)
            ($wrap<$Int> (+
              (+
                ($unwrap<Int> ($w_div_natL<$Int> k j))
                ($unwrap<Int> ($w_div_natL<$Int> l j)))
              1)))))))
  :pattern (($w_div_nat<$Int> i j) ($w_div_nat<$Int> k j) ($w_div_nat<$Int> l j))
  :qid |prog.$w_div_nat_dividend_add|)))
(assert (forall ((i $Int) (j $Int) (k $Int)) (!
  (=>
    (and
      (and
        (>= ($unwrap<Int> i) 0)
        (and (> ($unwrap<Int> j) 0) (>= ($unwrap<Int> k) 0)))
      (<= ($unwrap<Int> i) ($unwrap<Int> k)))
    (<=
      ($unwrap<Int> ($w_div_nat<$Int> i j))
      ($unwrap<Int> ($w_div_natL<$Int> k j))))
  :pattern (($w_div_nat<$Int> i j) ($w_div_nat<$Int> k j))
  :qid |prog.$w_div_nat_ordered_by_dividend|)))
(assert (forall ((i $Int) (j $Int) (k $Int)) (!
  (=>
    (and
      (and
        (>= ($unwrap<Int> i) 0)
        (and (> ($unwrap<Int> j) 0) (> ($unwrap<Int> k) 0)))
      (<= ($unwrap<Int> j) ($unwrap<Int> k)))
    (>=
      ($unwrap<Int> ($w_div_nat<$Int> i j))
      ($unwrap<Int> ($w_div_natL<$Int> i k))))
  :pattern (($w_div_nat<$Int> i j) ($w_div_nat<$Int> i k))
  :qid |prog.$w_div_nat_ordered_by_divisor|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (and (> ($unwrap<Int> i) 0) (> ($unwrap<Int> j) 1))
    (< ($unwrap<Int> ($w_div_nat<$Int> i j)) ($unwrap<Int> i)))
  :pattern (($w_div_nat<$Int> i j))
  :qid |prog.$w_div_nat_decrease|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (and (>= ($unwrap<Int> i) 0) (> ($unwrap<Int> j) 0))
    (<= ($unwrap<Int> ($w_div_nat<$Int> i j)) ($unwrap<Int> i)))
  :pattern (($w_div_nat<$Int> i j))
  :qid |prog.$w_div_nat_nonincrease|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=> (not (= ($unwrap<Int> j) 0)) (= ($w_div<$Int> ($w_mulI<$Int> i j) j) i))
  :pattern (($w_div<$Int> ($w_mulI<$Int> i j) j))
  :qid |prog.$w_div_mul|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (not (= ($unwrap<Int> j) 0))
    (or
      (=
        ($sign<Int> ($unwrap<Int> ($w_div<$Int> i j)))
        (* ($sign<Int> ($unwrap<Int> i)) ($sign<Int> ($unwrap<Int> j))))
      (= ($sign<Int> ($unwrap<Int> ($w_div<$Int> i j))) 0)))
  :pattern (($w_div<$Int> i j))
  :qid |prog.$w_div_sign|)))
(assert (forall ((i $Int) (j $Int)) (!
  (=>
    (not (= ($unwrap<Int> j) 0))
    (=
      ($unwrap<Int> i)
      (+
        ($unwrap<Int> ($w_mulI<$Int> j ($w_div<$Int> i j)))
        ($unwrap<Int> ($w_mod<$Int> i j)))))
  :pattern (($w_div<$Int> i j) ($w_mod<$Int> i j))
  :qid |prog.$w_div_mod_mul|)))
(assert (forall (($v Int) ($k Int)) (!
  (= ($map_get<Int> ($map_init<$Map<Int~_Int>> $v) $k) $v)
  :pattern (($map_get<Int> ($map_init<$Map<Int~_Int>> $v) $k))
  :qid |prog.$map_init_ax|)))
(assert (forall (($m $Map<Int~_Int>) ($n $Map<Int~_Int>)) (!
  (and
    (= ($map_eq<Bool> $m $n) (= $m $n))
    (=
      ($map_eq<Bool> $m $n)
      (forall (($k Int)) (!
        (= ($map_get<Int> $m $k) ($map_get<Int> $n $k))
        :pattern (($map_get<Int> $m $k) ($map_get<Int> $n $k))
        ))))
  :pattern (($map_eq<Bool> $m $n))
  :qid |prog.$map_eq_ax|)))
(assert (forall (($m $Map<Int~_Int>) ($k Int) ($v Int) ($kk Int)) (!
  (=
    ($map_get<Int> ($map_set<$Map<Int~_Int>> $m $k $v) $kk)
    (ite (= $k $kk) $v ($map_get<Int> $m $kk)))
  :pattern (($map_get<Int> ($map_set<$Map<Int~_Int>> $m $k $v) $kk))
  :qid |prog.$map_set_ax|)))
(assert (and
  (= ($sign<Int> 0) 0)
  (forall (($a Int)) (!
    (and
      (=> (> $a 0) (= ($sign<Int> $a) 1))
      (=> (< $a 0) (= ($sign<Int> $a) (- 0 1))))
    :pattern (($sign<Int> $a))
    ))))
(assert (forall (($a Int) ($b Int) ($r Int)) (!
  (=
    ($div<Int> $a $b $r)
    (+ (div $a $b) (ite (or (>= $a 0) (= (mod $a $b) 0)) 0 ($sign<Int> $b))))
  :pattern (($div<Int> $a $b $r))
  :qid |prog.$div_ax|)))
(assert (forall (($a Int) ($b Int) ($r Int)) (!
  (= ($mod<Int> $a $b $r) (- $a (* ($div<Int> $a $b $r) $b)))
  :pattern (($mod<Int> $a $b $r))
  :qid |prog.$mod_ax|)))
(assert (forall (($a Int)) (!
  (=> (not (= $a 0)) (= ($pow<Int> 0 $a) 0))
  :pattern (($pow<Int> 0 $a))
  :qid |prog.$pow0N_ax|)))
(assert (forall (($a Int)) (!
  (=> (not (= $a 0)) (= ($pow<Int> $a 0) 1))
  :pattern (($pow<Int> $a 0))
  :qid |prog.$powN0_ax|)))
(assert (forall (($a Int) ($b Int)) (!
  (=> (>= $a 0) (>= ($pow<Int> $a $b) 0))
  :pattern (($pow<Int> $a $b))
  :qid |prog.$pow_non_negative_ax|)))
(assert (forall (($a Int) ($b Int)) (!
  (=> (and (> $a 0) (>= $b 0)) (> ($pow<Int> $a $b) 0))
  :pattern (($pow<Int> $a $b))
  :qid |prog.$pow_non_negative_and_non_null_ax|)))
(assert (forall (($a Int) ($s Int)) (!
  (=>
    (> $s 0)
    (= ($floor<Int> $a $s) ($div<Int> (ite (< $a 0) (- $a (- $s 1)) $a) $s 0)))
  :pattern (($floor<Int> $a $s))
  :qid |prog.$floor_ax|)))
(assert (forall (($a Int) ($s Int)) (!
  (=>
    (> $s 0)
    (= ($ceil<Int> $a $s) ($div<Int> (ite (< $a 0) $a (- (+ $a $s) 1)) $s 0)))
  :pattern (($ceil<Int> $a $s))
  :qid |prog.$ceil_ax|)))
(assert (forall (($a Int) ($s Int)) (!
  (>= ($shift<Int> $a $s) 0)
  :pattern (($shift<Int> $a $s))
  :qid |prog.$shift_ax|)))
(assert (forall (($a Int)) (!
  (>= ($bitwise_not<Int> $a) 0)
  :pattern (($bitwise_not<Int> $a))
  :qid |prog.$bitwise_not_ax|)))
(assert (forall (($a Int) ($b Int)) (!
  (>= ($bitwise_and<Int> $a $b) 0)
  :pattern (($bitwise_and<Int> $a $b))
  :qid |prog.$bitwise_and_ax|)))
(assert (forall (($a Int) ($b Int)) (!
  (>= ($bitwise_or<Int> $a $b) 0)
  :pattern (($bitwise_or<Int> $a $b))
  :qid |prog.$bitwise_or_ax|)))
(assert (forall (($a Int) ($b Int)) (!
  (>= ($bitwise_xor<Int> $a $b) 0)
  :pattern (($bitwise_xor<Int> $a $b))
  :qid |prog.$bitwise_xor_ax|)))
(assert (not (= (as $self_address<Int>  Int) 0)))
(assert (forall (($s $Struct) ($m Int) ($t $Struct)) (!
  (=
    ($struct_get<$Struct> ($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
    $t)
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
  :qid |prog.$get_set_0_ax|)))
(assert (forall (($s $Struct) ($m Int) ($n Int) ($t $Struct)) (!
  (=>
    (not (= $m $n))
    (=
      ($struct_loc<Int> $s $m)
      ($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m)))
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m))
  :qid |prog.$get_set_1_ax|)))
(assert (forall (($f Int) ($t Int)) (!
  (= (Seq_length ($range<Seq<Int>> $f $t)) (- $t $f))
  :pattern ((Seq_length ($range<Seq<Int>> $f $t)))
  :qid |prog.$range_len_ax|)))
(assert (forall (($f Int) ($t Int) ($i Int)) (!
  (=>
    (and (<= 0 $i) (< $i (Seq_length ($range<Seq<Int>> $f $t))))
    (= (Seq_index ($range<Seq<Int>> $f $t) $i) (+ $f $i)))
  :pattern ((Seq_index ($range<Seq<Int>> $f $t) $i))
  :qid |prog.$range_lookup_ax|)))
(assert (forall (($s $Struct) ($m Int) ($t $Map<Int~_Int>)) (!
  (=
    ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
    $t)
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
  :qid |prog.$get_set_0_ax|)))
(assert (forall (($s $Struct) ($m Int) ($n Int) ($t $Map<Int~_Int>)) (!
  (=>
    (not (= $m $n))
    (=
      ($struct_loc<Int> $s $m)
      ($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m)))
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m))
  :qid |prog.$get_set_1_ax|)))
(assert (forall (($s $Struct) ($m Int) ($t Seq<Int>)) (!
  (Seq_equal
    ($struct_get<Seq<Int>> ($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
    $t)
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
  :qid |prog.$get_set_0_ax|)))
(assert (forall (($s $Struct) ($m Int) ($n Int) ($t Seq<Int>)) (!
  (=>
    (not (= $m $n))
    (=
      ($struct_loc<Int> $s $m)
      ($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m)))
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m))
  :qid |prog.$get_set_1_ax|)))
(assert (forall (($arg_0 $Struct)) (!
  (and
    (=
      ($struct_get<Int> ($struct_loc<Int> (s$resource$$creator$init<$Struct> $arg_0) (- 0 1)))
      2567760667165796382711201132846784524754120562)
    (=
      ($struct_get<$Struct> ($struct_loc<Int> (s$resource$$creator$init<$Struct> $arg_0) 0))
      $arg_0))
  :pattern ((s$resource$$creator$init<$Struct> $arg_0))
  :qid |prog.s$resource$$creator$init$ax|)))
(assert (forall (($l $Struct) ($r $Struct)) (!
  (and
    (= (s$resource$$creator$eq<Bool> $l $r) (= $l $r))
    (=
      (s$resource$$creator$eq<Bool> $l $r)
      (and
        (=
          ($struct_get<Int> ($struct_loc<Int> $l (- 0 1)))
          ($struct_get<Int> ($struct_loc<Int> $r (- 0 1))))
        (=
          ($struct_get<$Struct> ($struct_loc<Int> $l 0))
          ($struct_get<$Struct> ($struct_loc<Int> $r 0))))))
  :pattern ((s$resource$$creator$eq<Bool> $l $r))
  :qid |prog.s$resource$$creator$eq$ax|)))
(assert (= ($map_sum<Int> ($map_init<$Map<Int~_Int>> 0)) 0))
(assert (forall (($m $Map<Int~_Int>) ($k Int) ($v Int)) (!
  (=
    ($map_sum<Int> ($map_set<$Map<Int~_Int>> $m $k $v))
    (+ (- ($map_sum<Int> $m) ($map_get<Int> $m $k)) $v))
  :pattern (($map_sum<Int> ($map_set<$Map<Int~_Int>> $m $k $v)))
  :qid |prog.$map_sum_set_ax|)))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun letvar@10@00 ($Snap Int Int) Bool)
(declare-fun letvar@11@00 ($Snap Int Int) Bool)
(declare-fun letvar@12@00 ($Snap Int Int) Int)
(declare-fun letvar@13@00 ($Snap Int Int) Int)
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  (= ($pure$success_get%limited s@$ x@0@00) ($pure$success_get s@$ x@0@00))
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-1004|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  ($pure$success_get%stateless x@0@00)
  :pattern (($pure$success_get%limited s@$ x@0@00))
  :qid |quant-u-1005|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  (=>
    ($pure$success_get%precondition s@$ x@0@00)
    (=
      ($pure$success_get s@$ x@0@00)
      ($struct_get<Bool> ($struct_loc<Int> x@0@00 0))))
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-1012|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  true
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-1013|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (= ($pure$return_get%limited s@$ x@2@00) ($pure$return_get s@$ x@2@00))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1006|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  ($pure$return_get%stateless x@2@00)
  :pattern (($pure$return_get%limited s@$ x@2@00))
  :qid |quant-u-1007|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (=>
    ($pure$return_get%precondition s@$ x@2@00)
    (= ($pure$return_get s@$ x@2@00) ($struct_loc<Int> x@2@00 1)))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1014|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  true
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1015|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  (= ($range_sum%limited s@$ $x@4@00 $y@5@00) ($range_sum s@$ $x@4@00 $y@5@00))
  :pattern (($range_sum s@$ $x@4@00 $y@5@00))
  :qid |quant-u-1008|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  ($range_sum%stateless $x@4@00 $y@5@00)
  :pattern (($range_sum%limited s@$ $x@4@00 $y@5@00))
  :qid |quant-u-1009|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  (=>
    ($range_sum%precondition s@$ $x@4@00 $y@5@00)
    (=
      ($range_sum s@$ $x@4@00 $y@5@00)
      (let (($x_ge_0 (>= $x@4@00 0))) (let (($y_ge_0 (>= $y@5@00 0))) (let (($x_exclusive (ite
        $x_ge_0
        (div (* (- $x@4@00 1) $x@4@00) 2)
        (div (* (- (- 0 $x@4@00) 1) (- 0 $x@4@00)) 2)))) (let (($y_exclusive (ite
        $y_ge_0
        (div (* (- $y@5@00 1) $y@5@00) 2)
        (div (* (- (- 0 $y@5@00) 1) (- 0 $y@5@00)) 2)))) (ite
        (and $x_ge_0 $y_ge_0)
        (- $y_exclusive $x_exclusive)
        (ite
          (and (not $x_ge_0) $y_ge_0)
          (+ (- $y_exclusive $x_exclusive) $x@4@00)
          (+ (- (- $y_exclusive $y@5@00) $x_exclusive) $x@4@00)))))))))
  :pattern (($range_sum s@$ $x@4@00 $y@5@00))
  :qid |quant-u-1016|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  (=>
    ($range_sum%precondition s@$ $x@4@00 $y@5@00)
    (let (($x_ge_0 (>= $x@4@00 0))) (let (($y_ge_0 (>= $y@5@00 0))) (let (($x_exclusive (ite
      $x_ge_0
      (div (* (- $x@4@00 1) $x@4@00) 2)
      (div (* (- (- 0 $x@4@00) 1) (- 0 $x@4@00)) 2)))) (let (($y_exclusive (ite
      $y_ge_0
      (div (* (- $y@5@00 1) $y@5@00) 2)
      (div (* (- (- 0 $y@5@00) 1) (- 0 $y@5@00)) 2)))) true)))))
  :pattern (($range_sum s@$ $x@4@00 $y@5@00))
  :qid |quant-u-1017|)))
(assert (forall ((s@$ $Snap) (l$x@7@00 $Int) (l$y@8@00 $Int)) (!
  (=
    (lemma$mul_div_same%limited s@$ l$x@7@00 l$y@8@00)
    (lemma$mul_div_same s@$ l$x@7@00 l$y@8@00))
  :pattern ((lemma$mul_div_same s@$ l$x@7@00 l$y@8@00))
  :qid |quant-u-1010|)))
(assert (forall ((s@$ $Snap) (l$x@7@00 $Int) (l$y@8@00 $Int)) (!
  (lemma$mul_div_same%stateless l$x@7@00 l$y@8@00)
  :pattern ((lemma$mul_div_same%limited s@$ l$x@7@00 l$y@8@00))
  :qid |quant-u-1011|)))
(assert (forall ((s@$ $Snap) (l$x@7@00 $Int) (l$y@8@00 $Int)) (!
  (let ((result@9@00 (lemma$mul_div_same%limited s@$ l$x@7@00 l$y@8@00))) (=>
    (lemma$mul_div_same%precondition s@$ l$x@7@00 l$y@8@00)
    (and
      (=
        result@9@00
        (=
          ($unwrap<Int> (ite
            (= 0 ($unwrap<Int> l$y@8@00))
            ($wrap<$Int> (div
              ($unwrap<Int> ($w_mul<$Int> l$x@7@00 l$y@8@00))
              ($unwrap<Int> l$y@8@00)))
            ($w_div<$Int> ($w_mul<$Int> l$x@7@00 l$y@8@00) l$y@8@00)))
          ($unwrap<Int> ($w_mul<$Int> l$x@7@00 (ite
            (= 0 ($unwrap<Int> l$y@8@00))
            ($wrap<$Int> (div ($unwrap<Int> l$y@8@00) ($unwrap<Int> l$y@8@00)))
            ($w_div<$Int> l$y@8@00 l$y@8@00))))))
      (=
        result@9@00
        (=
          ($unwrap<Int> (ite
            (= 0 ($unwrap<Int> l$y@8@00))
            ($wrap<$Int> (div
              ($unwrap<Int> ($w_mul<$Int> l$x@7@00 l$y@8@00))
              ($unwrap<Int> l$y@8@00)))
            ($w_div<$Int> ($w_mul<$Int> l$x@7@00 l$y@8@00) l$y@8@00)))
          ($unwrap<Int> ($w_mul<$Int> l$x@7@00 ($wrap<$Int> 1)))))
      (=
        result@9@00
        (=
          ($unwrap<Int> (ite
            (= 0 ($unwrap<Int> l$y@8@00))
            ($wrap<$Int> (div
              ($unwrap<Int> ($w_mul<$Int> l$x@7@00 l$y@8@00))
              ($unwrap<Int> l$y@8@00)))
            ($w_div<$Int> ($w_mul<$Int> l$x@7@00 l$y@8@00) l$y@8@00)))
          ($unwrap<Int> l$x@7@00))))))
  :pattern ((lemma$mul_div_same%limited s@$ l$x@7@00 l$y@8@00))
  :qid |quant-u-1018|)))
(assert (forall ((s@$ $Snap) (l$x@7@00 $Int) (l$y@8@00 $Int)) (!
  (let ((result@9@00 (lemma$mul_div_same%limited s@$ l$x@7@00 l$y@8@00))) true)
  :pattern ((lemma$mul_div_same%limited s@$ l$x@7@00 l$y@8@00))
  :qid |quant-u-1019|)))
(assert (forall ((s@$ $Snap) (l$x@7@00 $Int) (l$y@8@00 $Int)) (!
  (let ((result@9@00 (lemma$mul_div_same%limited s@$ l$x@7@00 l$y@8@00))) true)
  :pattern ((lemma$mul_div_same%limited s@$ l$x@7@00 l$y@8@00))
  :qid |quant-u-1020|)))
(assert (forall ((s@$ $Snap) (l$x@7@00 $Int) (l$y@8@00 $Int)) (!
  (let ((result@9@00 (lemma$mul_div_same%limited s@$ l$x@7@00 l$y@8@00))) true)
  :pattern ((lemma$mul_div_same%limited s@$ l$x@7@00 l$y@8@00))
  :qid |quant-u-1021|)))
(assert (forall ((s@$ $Snap) (l$x@7@00 $Int) (l$y@8@00 $Int)) (!
  (=>
    (lemma$mul_div_same%precondition s@$ l$x@7@00 l$y@8@00)
    (= (lemma$mul_div_same s@$ l$x@7@00 l$y@8@00) true))
  :pattern ((lemma$mul_div_same s@$ l$x@7@00 l$y@8@00))
  :qid |quant-u-1022|)))
(assert (forall ((s@$ $Snap) (l$x@7@00 $Int) (l$y@8@00 $Int)) (!
  true
  :pattern ((lemma$mul_div_same s@$ l$x@7@00 l$y@8@00))
  :qid |quant-u-1023|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- $transitivity_check ----------
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var $self$0: $Struct
(declare-const $self$0@0@01 $Struct)
; [exec]
; var $$contracts$0: $Map[Int, $Struct]
(declare-const $$contracts$0@1@01 $Map<Int~_$Struct>)
; [exec]
; var $self$1: $Struct
(declare-const $self$1@2@01 $Struct)
; [exec]
; var $$contracts$1: $Map[Int, $Struct]
(declare-const $$contracts$1@3@01 $Map<Int~_$Struct>)
; [exec]
; var $self$2: $Struct
(declare-const $self$2@4@01 $Struct)
; [exec]
; var $$contracts$2: $Map[Int, $Struct]
(declare-const $$contracts$2@5@01 $Map<Int~_$Struct>)
; [exec]
; var block: $Struct
(declare-const block@6@01 $Struct)
; [exec]
; var $post: Bool
(declare-const $post@7@01 Bool)
; [exec]
; inhale |($struct_get($struct_loc($self$0, 0)): Seq[Int])| == 3
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$0, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc($self$0, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$0, 0)): Seq[Int])
; [eval] $struct_loc($self$0, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@0@01 0))) 3))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc($self$0, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc($self$0, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc($self$0, 0)): Seq[Int])[$q0])
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc($self$0, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$0, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($self$0, 0)): Seq[Int])[$q0])
(declare-const $q0@10@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$0, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($self$0, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$0, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 4
; [then-branch: 0 | !(0 <= $q0@10@01) | live]
; [else-branch: 0 | 0 <= $q0@10@01 | live]
(push) ; 5
; [then-branch: 0 | !(0 <= $q0@10@01)]
(assert (not (<= 0 $q0@10@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | 0 <= $q0@10@01]
(assert (<= 0 $q0@10@01))
; [eval] $q0 < |($struct_get($struct_loc($self$0, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc($self$0, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$0, 0)): Seq[Int])
; [eval] $struct_loc($self$0, 0)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@10@01) (not (<= 0 $q0@10@01))))
(push) ; 4
; [then-branch: 1 | 0 <= $q0@10@01 && $q0@10@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$0@0@01, 0))| | live]
; [else-branch: 1 | !(0 <= $q0@10@01 && $q0@10@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$0@0@01, 0))|) | live]
(push) ; 5
; [then-branch: 1 | 0 <= $q0@10@01 && $q0@10@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$0@0@01, 0))|]
(assert (and
  (<= 0 $q0@10@01)
  (<
    $q0@10@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@0@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($self$0, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($self$0, 0)): Seq[Int])
; [eval] $struct_loc($self$0, 0)
(push) ; 6
(assert (not (>= $q0@10@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 1 | !(0 <= $q0@10@01 && $q0@10@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$0@0@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@10@01)
    (<
      $q0@10@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@0@01 0)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@10@01)
      (<
        $q0@10@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@0@01 0))))))
  (and
    (<= 0 $q0@10@01)
    (<
      $q0@10@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@0@01 0)))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@10@01 Int)) (!
  (and
    (or (<= 0 $q0@10@01) (not (<= 0 $q0@10@01)))
    (or
      (not
        (and
          (<= 0 $q0@10@01)
          (<
            $q0@10@01
            (Seq_length
              ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@0@01 0))))))
      (and
        (<= 0 $q0@10@01)
        (<
          $q0@10@01
          (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@0@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@0@01 0))
    $q0@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@622@11@622@219-aux|)))
(assert (forall (($q0@10@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@10@01)
      (<
        $q0@10@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@0@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@0@01 0))
        $q0@10@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@0@01 0))
    $q0@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@622@11@622@219|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 1)): Int)
(declare-const $t@11@01 $Snap)
(assert (= $t@11@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 2)): Int)
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 3)): Int)
(declare-const $t@13@01 $Snap)
(assert (= $t@13@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@15@01 $Snap)
(assert (= $t@15@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@16@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@16@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@16@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@627@11@627@192|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int))
(declare-const $t@17@01 $Snap)
(assert (= $t@17@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int))
(declare-const $q1@18@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@18@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@18@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@628@11@628@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@20@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@20@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q2@20@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q2@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@629@11@629@192|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int))
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int))
(declare-const $q2@22@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@22@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q2@22@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q2@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@630@11@630@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$0, -1)): Int)
; [eval] $struct_loc($self$0, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$1, 0)): Seq[Int])| == 3
(declare-const $t@24@01 $Snap)
(assert (= $t@24@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$1, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc($self$1, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$1, 0)): Seq[Int])
; [eval] $struct_loc($self$1, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@2@01 0))) 3))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc($self$1, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc($self$1, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc($self$1, 0)): Seq[Int])[$q0])
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc($self$1, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$1, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($self$1, 0)): Seq[Int])[$q0])
(declare-const $q0@26@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$1, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($self$1, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$1, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 4
; [then-branch: 2 | !(0 <= $q0@26@01) | live]
; [else-branch: 2 | 0 <= $q0@26@01 | live]
(push) ; 5
; [then-branch: 2 | !(0 <= $q0@26@01)]
(assert (not (<= 0 $q0@26@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | 0 <= $q0@26@01]
(assert (<= 0 $q0@26@01))
; [eval] $q0 < |($struct_get($struct_loc($self$1, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc($self$1, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$1, 0)): Seq[Int])
; [eval] $struct_loc($self$1, 0)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@26@01) (not (<= 0 $q0@26@01))))
(push) ; 4
; [then-branch: 3 | 0 <= $q0@26@01 && $q0@26@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$1@2@01, 0))| | live]
; [else-branch: 3 | !(0 <= $q0@26@01 && $q0@26@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$1@2@01, 0))|) | live]
(push) ; 5
; [then-branch: 3 | 0 <= $q0@26@01 && $q0@26@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$1@2@01, 0))|]
(assert (and
  (<= 0 $q0@26@01)
  (<
    $q0@26@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@2@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($self$1, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($self$1, 0)): Seq[Int])
; [eval] $struct_loc($self$1, 0)
(push) ; 6
(assert (not (>= $q0@26@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 3 | !(0 <= $q0@26@01 && $q0@26@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$1@2@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@26@01)
    (<
      $q0@26@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@2@01 0)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@26@01)
      (<
        $q0@26@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@2@01 0))))))
  (and
    (<= 0 $q0@26@01)
    (<
      $q0@26@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@2@01 0)))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@26@01 Int)) (!
  (and
    (or (<= 0 $q0@26@01) (not (<= 0 $q0@26@01)))
    (or
      (not
        (and
          (<= 0 $q0@26@01)
          (<
            $q0@26@01
            (Seq_length
              ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@2@01 0))))))
      (and
        (<= 0 $q0@26@01)
        (<
          $q0@26@01
          (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@2@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@2@01 0))
    $q0@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@633@11@633@219-aux|)))
(assert (forall (($q0@26@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@26@01)
      (<
        $q0@26@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@2@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@2@01 0))
        $q0@26@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@2@01 0))
    $q0@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@633@11@633@219|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 2)): Int)
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 3)): Int)
(declare-const $t@29@01 $Snap)
(assert (= $t@29@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@30@01 $Snap)
(assert (= $t@30@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@31@01 $Snap)
(assert (= $t@31@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@32@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@32@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@32@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@32@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@638@11@638@192|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int))
(declare-const $t@33@01 $Snap)
(assert (= $t@33@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int))
(declare-const $q1@34@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@34@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@34@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@34@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@639@11@639@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@36@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@36@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q2@36@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q2@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@640@11@640@192|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int))
(declare-const $t@37@01 $Snap)
(assert (= $t@37@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int))
(declare-const $q2@38@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@38@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q2@38@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q2@38@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@641@11@641@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$1, -1)): Int)
; [eval] $struct_loc($self$1, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$2, 0)): Seq[Int])| == 3
(declare-const $t@40@01 $Snap)
(assert (= $t@40@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$2, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc($self$2, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$2, 0)): Seq[Int])
; [eval] $struct_loc($self$2, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$2@4@01 0))) 3))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc($self$2, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc($self$2, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc($self$2, 0)): Seq[Int])[$q0])
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc($self$2, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$2, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($self$2, 0)): Seq[Int])[$q0])
(declare-const $q0@42@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$2, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($self$2, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$2, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 4
; [then-branch: 4 | !(0 <= $q0@42@01) | live]
; [else-branch: 4 | 0 <= $q0@42@01 | live]
(push) ; 5
; [then-branch: 4 | !(0 <= $q0@42@01)]
(assert (not (<= 0 $q0@42@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | 0 <= $q0@42@01]
(assert (<= 0 $q0@42@01))
; [eval] $q0 < |($struct_get($struct_loc($self$2, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc($self$2, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$2, 0)): Seq[Int])
; [eval] $struct_loc($self$2, 0)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@42@01) (not (<= 0 $q0@42@01))))
(push) ; 4
; [then-branch: 5 | 0 <= $q0@42@01 && $q0@42@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$2@4@01, 0))| | live]
; [else-branch: 5 | !(0 <= $q0@42@01 && $q0@42@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$2@4@01, 0))|) | live]
(push) ; 5
; [then-branch: 5 | 0 <= $q0@42@01 && $q0@42@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$2@4@01, 0))|]
(assert (and
  (<= 0 $q0@42@01)
  (<
    $q0@42@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$2@4@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($self$2, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($self$2, 0)): Seq[Int])
; [eval] $struct_loc($self$2, 0)
(push) ; 6
(assert (not (>= $q0@42@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 5 | !(0 <= $q0@42@01 && $q0@42@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$2@4@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@42@01)
    (<
      $q0@42@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$2@4@01 0)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@42@01)
      (<
        $q0@42@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$2@4@01 0))))))
  (and
    (<= 0 $q0@42@01)
    (<
      $q0@42@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$2@4@01 0)))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@42@01 Int)) (!
  (and
    (or (<= 0 $q0@42@01) (not (<= 0 $q0@42@01)))
    (or
      (not
        (and
          (<= 0 $q0@42@01)
          (<
            $q0@42@01
            (Seq_length
              ($struct_get<Seq<Int>> ($struct_loc<Int> $self$2@4@01 0))))))
      (and
        (<= 0 $q0@42@01)
        (<
          $q0@42@01
          (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$2@4@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> $self$2@4@01 0))
    $q0@42@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@644@11@644@219-aux|)))
(assert (forall (($q0@42@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@42@01)
      (<
        $q0@42@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$2@4@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> $self$2@4@01 0))
        $q0@42@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> $self$2@4@01 0))
    $q0@42@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@644@11@644@219|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$2, 1)): Int)
(declare-const $t@43@01 $Snap)
(assert (= $t@43@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$2, 2)): Int)
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] $struct_loc($self$2, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$2, 3)): Int)
(declare-const $t@45@01 $Snap)
(assert (= $t@45@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 3)): Int)
; [eval] ($struct_get($struct_loc($self$2, 3)): Int)
; [eval] $struct_loc($self$2, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@46@01 $Snap)
(assert (= $t@46@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@47@01 $Snap)
(assert (= $t@47@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@48@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@48@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@48@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@48@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@649@11@649@192|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])): Int))
(declare-const $t@49@01 $Snap)
(assert (= $t@49@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])): Int))
(declare-const $q1@50@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 6)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@50@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@50@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@50@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@650@11@650@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@51@01 $Snap)
(assert (= $t@51@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@52@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@52@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q2@52@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q2@52@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@651@11@651@192|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])): Int))
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])): Int))
(declare-const $q2@54@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 7)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@54@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q2@54@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q2@54@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@652@11@652@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$2, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@55@01 $Snap)
(assert (= $t@55@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$2, -1)): Int)
; [eval] $struct_loc($self$2, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int)
(declare-const $t@56@01 $Snap)
(assert (= $t@56@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 0))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int)
(declare-const $t@57@01 $Snap)
(assert (= $t@57@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int)
(declare-const $t@58@01 $Snap)
(assert (= $t@58@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@59@01 $Snap)
(assert (= $t@59@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@6@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int)
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 4))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@61@01 $Snap)
(assert (= $t@61@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@6@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int))
(declare-const $t@62@01 $Snap)
(assert (= $t@62@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int))
(declare-const $a@63@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int))
(declare-const $t@64@01 $Snap)
(assert (= $t@64@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int))
(declare-const $a@65@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@65@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $a@65@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $a@65@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $a@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@661@11@661@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int))
(declare-const $t@66@01 $Snap)
(assert (= $t@66@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int))
(declare-const $a@67@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 6)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@67@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $a@67@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $a@67@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $a@67@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@662@11@662@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- $reflexivity_check ----------
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var $self$0: $Struct
(declare-const $self$0@68@01 $Struct)
; [exec]
; var $$contracts$0: $Map[Int, $Struct]
(declare-const $$contracts$0@69@01 $Map<Int~_$Struct>)
; [exec]
; var $self$1: $Struct
(declare-const $self$1@70@01 $Struct)
; [exec]
; var $$contracts$1: $Map[Int, $Struct]
(declare-const $$contracts$1@71@01 $Map<Int~_$Struct>)
; [exec]
; var block: $Struct
(declare-const block@72@01 $Struct)
; [exec]
; var $post: Bool
(declare-const $post@73@01 Bool)
; [exec]
; inhale |($struct_get($struct_loc($self$0, 0)): Seq[Int])| == 3
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$0, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc($self$0, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$0, 0)): Seq[Int])
; [eval] $struct_loc($self$0, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@68@01 0))) 3))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc($self$0, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc($self$0, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc($self$0, 0)): Seq[Int])[$q0])
(declare-const $t@75@01 $Snap)
(assert (= $t@75@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc($self$0, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$0, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($self$0, 0)): Seq[Int])[$q0])
(declare-const $q0@76@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$0, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($self$0, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$0, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 4
; [then-branch: 6 | !(0 <= $q0@76@01) | live]
; [else-branch: 6 | 0 <= $q0@76@01 | live]
(push) ; 5
; [then-branch: 6 | !(0 <= $q0@76@01)]
(assert (not (<= 0 $q0@76@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | 0 <= $q0@76@01]
(assert (<= 0 $q0@76@01))
; [eval] $q0 < |($struct_get($struct_loc($self$0, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc($self$0, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$0, 0)): Seq[Int])
; [eval] $struct_loc($self$0, 0)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@76@01) (not (<= 0 $q0@76@01))))
(push) ; 4
; [then-branch: 7 | 0 <= $q0@76@01 && $q0@76@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$0@68@01, 0))| | live]
; [else-branch: 7 | !(0 <= $q0@76@01 && $q0@76@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$0@68@01, 0))|) | live]
(push) ; 5
; [then-branch: 7 | 0 <= $q0@76@01 && $q0@76@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$0@68@01, 0))|]
(assert (and
  (<= 0 $q0@76@01)
  (<
    $q0@76@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@68@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($self$0, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($self$0, 0)): Seq[Int])
; [eval] $struct_loc($self$0, 0)
(push) ; 6
(assert (not (>= $q0@76@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 7 | !(0 <= $q0@76@01 && $q0@76@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$0@68@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@76@01)
    (<
      $q0@76@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@68@01 0)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@76@01)
      (<
        $q0@76@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@68@01 0))))))
  (and
    (<= 0 $q0@76@01)
    (<
      $q0@76@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@68@01 0)))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@76@01 Int)) (!
  (and
    (or (<= 0 $q0@76@01) (not (<= 0 $q0@76@01)))
    (or
      (not
        (and
          (<= 0 $q0@76@01)
          (<
            $q0@76@01
            (Seq_length
              ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@68@01 0))))))
      (and
        (<= 0 $q0@76@01)
        (<
          $q0@76@01
          (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@68@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@68@01 0))
    $q0@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@674@11@674@219-aux|)))
(assert (forall (($q0@76@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@76@01)
      (<
        $q0@76@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@68@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@68@01 0))
        $q0@76@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@68@01 0))
    $q0@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@674@11@674@219|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 1)): Int)
(declare-const $t@77@01 $Snap)
(assert (= $t@77@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@68@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 2)): Int)
(declare-const $t@78@01 $Snap)
(assert (= $t@78@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@68@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 3)): Int)
(declare-const $t@79@01 $Snap)
(assert (= $t@79@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@68@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@81@01 $Snap)
(assert (= $t@81@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@82@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@82@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 6)) $q1@82@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 6)) $q1@82@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@679@11@679@192|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int))
(declare-const $t@83@01 $Snap)
(assert (= $t@83@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int))
(declare-const $q1@84@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@84@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 6)) $q1@84@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 6)) $q1@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@680@11@680@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@85@01 $Snap)
(assert (= $t@85@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@86@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@86@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 7)) $q2@86@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 7)) $q2@86@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@681@11@681@192|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int))
(declare-const $t@87@01 $Snap)
(assert (= $t@87@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int))
(declare-const $q2@88@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@88@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 7)) $q2@88@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 7)) $q2@88@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@682@11@682@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$0, -1)): Int)
; [eval] $struct_loc($self$0, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$0@68@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$1, 0)): Seq[Int])| == 3
(declare-const $t@90@01 $Snap)
(assert (= $t@90@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$1, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc($self$1, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$1, 0)): Seq[Int])
; [eval] $struct_loc($self$1, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@70@01 0))) 3))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc($self$1, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc($self$1, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc($self$1, 0)): Seq[Int])[$q0])
(declare-const $t@91@01 $Snap)
(assert (= $t@91@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc($self$1, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$1, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($self$1, 0)): Seq[Int])[$q0])
(declare-const $q0@92@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$1, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($self$1, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($self$1, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 4
; [then-branch: 8 | !(0 <= $q0@92@01) | live]
; [else-branch: 8 | 0 <= $q0@92@01 | live]
(push) ; 5
; [then-branch: 8 | !(0 <= $q0@92@01)]
(assert (not (<= 0 $q0@92@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 8 | 0 <= $q0@92@01]
(assert (<= 0 $q0@92@01))
; [eval] $q0 < |($struct_get($struct_loc($self$1, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc($self$1, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$1, 0)): Seq[Int])
; [eval] $struct_loc($self$1, 0)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@92@01) (not (<= 0 $q0@92@01))))
(push) ; 4
; [then-branch: 9 | 0 <= $q0@92@01 && $q0@92@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$1@70@01, 0))| | live]
; [else-branch: 9 | !(0 <= $q0@92@01 && $q0@92@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$1@70@01, 0))|) | live]
(push) ; 5
; [then-branch: 9 | 0 <= $q0@92@01 && $q0@92@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$1@70@01, 0))|]
(assert (and
  (<= 0 $q0@92@01)
  (<
    $q0@92@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@70@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($self$1, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($self$1, 0)): Seq[Int])
; [eval] $struct_loc($self$1, 0)
(push) ; 6
(assert (not (>= $q0@92@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 9 | !(0 <= $q0@92@01 && $q0@92@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($self$1@70@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@92@01)
    (<
      $q0@92@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@70@01 0)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@92@01)
      (<
        $q0@92@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@70@01 0))))))
  (and
    (<= 0 $q0@92@01)
    (<
      $q0@92@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@70@01 0)))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@92@01 Int)) (!
  (and
    (or (<= 0 $q0@92@01) (not (<= 0 $q0@92@01)))
    (or
      (not
        (and
          (<= 0 $q0@92@01)
          (<
            $q0@92@01
            (Seq_length
              ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@70@01 0))))))
      (and
        (<= 0 $q0@92@01)
        (<
          $q0@92@01
          (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@70@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@70@01 0))
    $q0@92@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@685@11@685@219-aux|)))
(assert (forall (($q0@92@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@92@01)
      (<
        $q0@92@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@70@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@70@01 0))
        $q0@92@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@70@01 0))
    $q0@92@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@685@11@685@219|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
(declare-const $t@93@01 $Snap)
(assert (= $t@93@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@70@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 2)): Int)
(declare-const $t@94@01 $Snap)
(assert (= $t@94@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@70@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 3)): Int)
(declare-const $t@95@01 $Snap)
(assert (= $t@95@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@70@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@96@01 $Snap)
(assert (= $t@96@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@98@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@98@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 6)) $q1@98@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 6)) $q1@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@690@11@690@192|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int))
(declare-const $t@99@01 $Snap)
(assert (= $t@99@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int))
(declare-const $q1@100@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@100@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 6)) $q1@100@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 6)) $q1@100@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@691@11@691@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@101@01 $Snap)
(assert (= $t@101@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@102@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@102@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 7)) $q2@102@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 7)) $q2@102@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@692@11@692@192|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int))
(declare-const $t@103@01 $Snap)
(assert (= $t@103@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int))
(declare-const $q2@104@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@104@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 7)) $q2@104@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 7)) $q2@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@693@11@693@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$1, -1)): Int)
; [eval] $struct_loc($self$1, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$1@70@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int)
(declare-const $t@106@01 $Snap)
(assert (= $t@106@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@72@01 0))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int)
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@72@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int)
(declare-const $t@108@01 $Snap)
(assert (= $t@108@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@72@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@109@01 $Snap)
(assert (= $t@109@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@72@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int)
(declare-const $t@110@01 $Snap)
(assert (= $t@110@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@72@01 4))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@111@01 $Snap)
(assert (= $t@111@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@72@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int))
(declare-const $t@112@01 $Snap)
(assert (= $t@112@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int))
(declare-const $a@113@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@113@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 6)) $a@113@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@68@01 6)) $a@113@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@70@01 6)) $a@113@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@701@11@701@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- $forced_ether_check ----------
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var self: $Struct
(declare-const self@114@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@115@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@116@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@117@01 $Map<Int~_$Struct>)
; [exec]
; var $post: Bool
(declare-const $post@118@01 Bool)
; [exec]
; var $havoc: Int
(declare-const $havoc@119@01 Int)
; [exec]
; var block: $Struct
(declare-const block@120@01 $Struct)
; [exec]
; inhale |($struct_get($struct_loc(self, 0)): Seq[Int])| == 3
(declare-const $t@121@01 $Snap)
(assert (= $t@121@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@114@01 0))) 3))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0])
(declare-const $t@122@01 $Snap)
(assert (= $t@122@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0])
(declare-const $q0@123@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 4
; [then-branch: 10 | !(0 <= $q0@123@01) | live]
; [else-branch: 10 | 0 <= $q0@123@01 | live]
(push) ; 5
; [then-branch: 10 | !(0 <= $q0@123@01)]
(assert (not (<= 0 $q0@123@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | 0 <= $q0@123@01]
(assert (<= 0 $q0@123@01))
; [eval] $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@123@01) (not (<= 0 $q0@123@01))))
(push) ; 4
; [then-branch: 11 | 0 <= $q0@123@01 && $q0@123@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@114@01, 0))| | live]
; [else-branch: 11 | !(0 <= $q0@123@01 && $q0@123@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@114@01, 0))|) | live]
(push) ; 5
; [then-branch: 11 | 0 <= $q0@123@01 && $q0@123@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@114@01, 0))|]
(assert (and
  (<= 0 $q0@123@01)
  (<
    $q0@123@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@114@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(push) ; 6
(assert (not (>= $q0@123@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 11 | !(0 <= $q0@123@01 && $q0@123@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@114@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@123@01)
    (<
      $q0@123@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@114@01 0)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@123@01)
      (<
        $q0@123@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@114@01 0))))))
  (and
    (<= 0 $q0@123@01)
    (<
      $q0@123@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@114@01 0)))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@123@01 Int)) (!
  (and
    (or (<= 0 $q0@123@01) (not (<= 0 $q0@123@01)))
    (or
      (not
        (and
          (<= 0 $q0@123@01)
          (<
            $q0@123@01
            (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@114@01 0))))))
      (and
        (<= 0 $q0@123@01)
        (<
          $q0@123@01
          (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@114@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@114@01 0))
    $q0@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@714@11@714@210-aux|)))
(assert (forall (($q0@123@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@123@01)
      (<
        $q0@123@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@114@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@114@01 0))
        $q0@123@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@114@01 0))
    $q0@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@714@11@714@210|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int)
(declare-const $t@124@01 $Snap)
(assert (= $t@124@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@114@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int)
(declare-const $t@125@01 $Snap)
(assert (= $t@125@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@114@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 3)): Int)
(declare-const $t@126@01 $Snap)
(assert (= $t@126@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@114@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@127@01 $Snap)
(assert (= $t@127@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@128@01 $Snap)
(assert (= $t@128@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@129@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@129@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6)) $q1@129@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6)) $q1@129@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@719@11@719@186|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@130@01 $Snap)
(assert (= $t@130@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@131@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
; [eval] ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@131@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6)) $q1@131@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6)) $q1@131@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@720@11@720@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@132@01 $Snap)
(assert (= $t@132@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@133@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@133@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 7)) $q2@133@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 7)) $q2@133@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@721@11@721@186|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $q2@135@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
; [eval] ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@135@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 7)) $q2@135@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 7)) $q2@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@722@11@722@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@136@01 $Snap)
(assert (= $t@136@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@114@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($pre_self, 0)): Seq[Int])| == 3
(declare-const $t@137@01 $Snap)
(assert (= $t@137@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($pre_self, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc($pre_self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($pre_self, 0)): Seq[Int])
; [eval] $struct_loc($pre_self, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $pre_self@116@01 0))) 3))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc($pre_self, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc($pre_self, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc($pre_self, 0)): Seq[Int])[$q0])
(declare-const $t@138@01 $Snap)
(assert (= $t@138@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc($pre_self, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc($pre_self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($pre_self, 0)): Seq[Int])[$q0])
(declare-const $q0@139@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($pre_self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($pre_self, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($pre_self, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 4
; [then-branch: 12 | !(0 <= $q0@139@01) | live]
; [else-branch: 12 | 0 <= $q0@139@01 | live]
(push) ; 5
; [then-branch: 12 | !(0 <= $q0@139@01)]
(assert (not (<= 0 $q0@139@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | 0 <= $q0@139@01]
(assert (<= 0 $q0@139@01))
; [eval] $q0 < |($struct_get($struct_loc($pre_self, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc($pre_self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($pre_self, 0)): Seq[Int])
; [eval] $struct_loc($pre_self, 0)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@139@01) (not (<= 0 $q0@139@01))))
(push) ; 4
; [then-branch: 13 | 0 <= $q0@139@01 && $q0@139@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($pre_self@116@01, 0))| | live]
; [else-branch: 13 | !(0 <= $q0@139@01 && $q0@139@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($pre_self@116@01, 0))|) | live]
(push) ; 5
; [then-branch: 13 | 0 <= $q0@139@01 && $q0@139@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($pre_self@116@01, 0))|]
(assert (and
  (<= 0 $q0@139@01)
  (<
    $q0@139@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $pre_self@116@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($pre_self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($pre_self, 0)): Seq[Int])
; [eval] $struct_loc($pre_self, 0)
(push) ; 6
(assert (not (>= $q0@139@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 13 | !(0 <= $q0@139@01 && $q0@139@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($pre_self@116@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@139@01)
    (<
      $q0@139@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $pre_self@116@01 0)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@139@01)
      (<
        $q0@139@01
        (Seq_length
          ($struct_get<Seq<Int>> ($struct_loc<Int> $pre_self@116@01 0))))))
  (and
    (<= 0 $q0@139@01)
    (<
      $q0@139@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $pre_self@116@01 0)))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@139@01 Int)) (!
  (and
    (or (<= 0 $q0@139@01) (not (<= 0 $q0@139@01)))
    (or
      (not
        (and
          (<= 0 $q0@139@01)
          (<
            $q0@139@01
            (Seq_length
              ($struct_get<Seq<Int>> ($struct_loc<Int> $pre_self@116@01 0))))))
      (and
        (<= 0 $q0@139@01)
        (<
          $q0@139@01
          (Seq_length
            ($struct_get<Seq<Int>> ($struct_loc<Int> $pre_self@116@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> $pre_self@116@01 0))
    $q0@139@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@725@11@725@225-aux|)))
(assert (forall (($q0@139@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@139@01)
      (<
        $q0@139@01
        (Seq_length
          ($struct_get<Seq<Int>> ($struct_loc<Int> $pre_self@116@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> $pre_self@116@01 0))
        $q0@139@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> $pre_self@116@01 0))
    $q0@139@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@725@11@725@225|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 1)): Int)
(declare-const $t@140@01 $Snap)
(assert (= $t@140@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@116@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 2)): Int)
(declare-const $t@141@01 $Snap)
(assert (= $t@141@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@116@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 3)): Int)
(declare-const $t@142@01 $Snap)
(assert (= $t@142@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 3)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 3)): Int)
; [eval] $struct_loc($pre_self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@116@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@143@01 $Snap)
(assert (= $t@143@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@144@01 $Snap)
(assert (= $t@144@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@145@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@145@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@145@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@145@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@730@11@730@196|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])): Int))
(declare-const $t@146@01 $Snap)
(assert (= $t@146@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@147@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 6)
; [eval] ($map_sum(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@147@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@147@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@147@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@731@11@731@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@148@01 $Snap)
(assert (= $t@148@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@149@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@149@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 7)) $q2@149@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 7)) $q2@149@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@732@11@732@196|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])): Int))
(declare-const $t@150@01 $Snap)
(assert (= $t@150@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])): Int))
(declare-const $q2@151@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 7)
; [eval] ($map_sum(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@151@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 7)) $q2@151@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 7)) $q2@151@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@733@11@733@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($pre_self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@152@01 $Snap)
(assert (= $t@152@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int)
; [eval] $struct_loc($pre_self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@116@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int)
(declare-const $t@153@01 $Snap)
(assert (= $t@153@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@120@01 0))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int)
(declare-const $t@154@01 $Snap)
(assert (= $t@154@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@120@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int)
(declare-const $t@155@01 $Snap)
(assert (= $t@155@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@120@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@156@01 $Snap)
(assert (= $t@156@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@120@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int)
(declare-const $t@157@01 $Snap)
(assert (= $t@157@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@120@01 4))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@158@01 $Snap)
(assert (= $t@158@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@120@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale $havoc >= 0
(declare-const $t@159@01 $Snap)
(assert (= $t@159@01 $Snap.unit))
; [eval] $havoc >= 0
(assert (>= $havoc@119@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $t@160@01 $Snap)
(assert (= $t@160@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $a@161@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; $pre_self := self
; [exec]
; $pre_$contracts := $contracts
; [exec]
; self := ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) +
;   $havoc): $Struct)
; [eval] ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) + $havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 3)): Int) + $havoc
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(declare-const self@162@01 $Struct)
(assert (=
  self@162@01
  ($struct_set<$Struct> self@114@01 3 (+
    ($struct_get<Int> ($struct_loc<Int> self@114@01 3))
    $havoc@119@01))))
(pop) ; 2
(pop) ; 1
; ---------- f$get_D ----------
(declare-const l$xp@163@01 Seq<Int>)
(declare-const $succ@164@01 Bool)
(declare-const $res@165@01 Int)
(declare-const l$xp@166@01 Seq<Int>)
(declare-const $succ@167@01 Bool)
(declare-const $res@168@01 Int)
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var msg: $Struct
(declare-const msg@169@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@170@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@171@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@172@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@173@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@174@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@175@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@176@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@177@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@178@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@179@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@180@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_old_self: $Struct
(declare-const $pre_old_self@181@01 $Struct)
; [exec]
; var $pre_old_$contracts: $Map[Int, $Struct]
(declare-const $pre_old_$contracts@182@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@183@01 Bool)
; [exec]
; var l$S: Int
(declare-const l$S@184@01 Int)
; [exec]
; var l$_x: $Int
(declare-const l$_x@185@01 $Int)
; [exec]
; var l$S$1: $Int
(declare-const l$S$1@186@01 $Int)
; [exec]
; var l$Dprev: Int
(declare-const l$Dprev@187@01 Int)
; [exec]
; var l$D: $Int
(declare-const l$D@188@01 $Int)
; [exec]
; var l$Ann: $Int
(declare-const l$Ann@189@01 $Int)
; [exec]
; var l$_i: $Int
(declare-const l$_i@190@01 $Int)
; [exec]
; var l$$idx: Int
(declare-const l$$idx@191@01 Int)
; [exec]
; var l$_i$pre_self: $Struct
(declare-const l$_i$pre_self@192@01 $Struct)
; [exec]
; var l$_i$pre_$contracts: $Map[Int, $Struct]
(declare-const l$_i$pre_$contracts@193@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@194@01 Int)
; [exec]
; var l$havoc$1: Int
(declare-const l$havoc$1@195@01 Int)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@196@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@197@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$4: $Struct
(declare-const l$havoc$4@198@01 $Struct)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@199@01 $Map<Int~_$Struct>)
; [exec]
; var l$Dprev$1: $Int
(declare-const l$Dprev$1@200@01 $Int)
; [exec]
; var l$Ann$1: $Int
(declare-const l$Ann$1@201@01 $Int)
; [exec]
; var l$_x$1: $Int
(declare-const l$_x$1@202@01 $Int)
; [exec]
; var l$S$2: $Int
(declare-const l$S$2@203@01 $Int)
; [exec]
; var l$D$1: $Int
(declare-const l$D$1@204@01 $Int)
; [exec]
; var l$D_P: $Int
(declare-const l$D_P@205@01 $Int)
; [exec]
; var l$_x$2: $Int
(declare-const l$_x$2@206@01 $Int)
; [exec]
; var l$$idx$1: Int
(declare-const l$$idx$1@207@01 Int)
; [exec]
; var l$_x$2$pre_self: $Struct
(declare-const l$_x$2$pre_self@208@01 $Struct)
; [exec]
; var l$_x$2$pre_$contracts: $Map[Int, $Struct]
(declare-const l$_x$2$pre_$contracts@209@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@210@01 Int)
; [exec]
; var l$havoc$7: Int
(declare-const l$havoc$7@211@01 Int)
; [exec]
; var l$havoc$8: $Struct
(declare-const l$havoc$8@212@01 $Struct)
; [exec]
; var l$havoc$9: $Map[Int, $Struct]
(declare-const l$havoc$9@213@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$10: $Struct
(declare-const l$havoc$10@214@01 $Struct)
; [exec]
; var l$havoc$11: $Map[Int, $Struct]
(declare-const l$havoc$11@215@01 $Map<Int~_$Struct>)
; [exec]
; var l$D_P$1: $Int
(declare-const l$D_P$1@216@01 $Int)
; [exec]
; var l$S$3: $Int
(declare-const l$S$3@217@01 $Int)
; [exec]
; var l$D$2: $Int
(declare-const l$D$2@218@01 $Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@219@01 Bool)
; [exec]
; var l$havoc$12: Int
(declare-const l$havoc$12@220@01 Int)
; [exec]
; inhale |($struct_get($struct_loc(self, 0)): Seq[Int])| == 3
(declare-const $t@221@01 $Snap)
(assert (= $t@221@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@173@01 0))) 3))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0])
(declare-const $t@222@01 $Snap)
(assert (= $t@222@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0])
(declare-const $q0@223@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 4
; [then-branch: 14 | !(0 <= $q0@223@01) | live]
; [else-branch: 14 | 0 <= $q0@223@01 | live]
(push) ; 5
; [then-branch: 14 | !(0 <= $q0@223@01)]
(assert (not (<= 0 $q0@223@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 14 | 0 <= $q0@223@01]
(assert (<= 0 $q0@223@01))
; [eval] $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@223@01) (not (<= 0 $q0@223@01))))
(push) ; 4
; [then-branch: 15 | 0 <= $q0@223@01 && $q0@223@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@173@01, 0))| | live]
; [else-branch: 15 | !(0 <= $q0@223@01 && $q0@223@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@173@01, 0))|) | live]
(push) ; 5
; [then-branch: 15 | 0 <= $q0@223@01 && $q0@223@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@173@01, 0))|]
(assert (and
  (<= 0 $q0@223@01)
  (<
    $q0@223@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@173@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(push) ; 6
(assert (not (>= $q0@223@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 15 | !(0 <= $q0@223@01 && $q0@223@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@173@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@223@01)
    (<
      $q0@223@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@173@01 0)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@223@01)
      (<
        $q0@223@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@173@01 0))))))
  (and
    (<= 0 $q0@223@01)
    (<
      $q0@223@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@173@01 0)))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@223@01 Int)) (!
  (and
    (or (<= 0 $q0@223@01) (not (<= 0 $q0@223@01)))
    (or
      (not
        (and
          (<= 0 $q0@223@01)
          (<
            $q0@223@01
            (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@173@01 0))))))
      (and
        (<= 0 $q0@223@01)
        (<
          $q0@223@01
          (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@173@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@173@01 0))
    $q0@223@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@805@11@805@210-aux|)))
(assert (forall (($q0@223@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@223@01)
      (<
        $q0@223@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@173@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@173@01 0))
        $q0@223@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@173@01 0))
    $q0@223@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@805@11@805@210|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int)
(declare-const $t@224@01 $Snap)
(assert (= $t@224@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@173@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int)
(declare-const $t@225@01 $Snap)
(assert (= $t@225@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@173@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 3)): Int)
(declare-const $t@226@01 $Snap)
(assert (= $t@226@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@173@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@227@01 $Snap)
(assert (= $t@227@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@228@01 $Snap)
(assert (= $t@228@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@229@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@229@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@173@01 6)) $q1@229@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@173@01 6)) $q1@229@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@810@11@810@186|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@230@01 $Snap)
(assert (= $t@230@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@231@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
; [eval] ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@231@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@173@01 6)) $q1@231@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@173@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@173@01 6)) $q1@231@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@811@11@811@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@232@01 $Snap)
(assert (= $t@232@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@233@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@233@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@173@01 7)) $q2@233@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@173@01 7)) $q2@233@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@812@11@812@186|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $t@234@01 $Snap)
(assert (= $t@234@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $q2@235@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
; [eval] ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@235@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@173@01 7)) $q2@235@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@173@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@173@01 7)) $q2@235@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@813@11@813@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@236@01 $Snap)
(assert (= $t@236@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@173@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($old_self, 0)): Seq[Int])| == 3
(declare-const $t@237@01 $Snap)
(assert (= $t@237@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($old_self, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc($old_self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($old_self, 0)): Seq[Int])
; [eval] $struct_loc($old_self, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $old_self@175@01 0))) 3))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0])
(declare-const $t@238@01 $Snap)
(assert (= $t@238@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0])
(declare-const $q0@239@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 4
; [then-branch: 16 | !(0 <= $q0@239@01) | live]
; [else-branch: 16 | 0 <= $q0@239@01 | live]
(push) ; 5
; [then-branch: 16 | !(0 <= $q0@239@01)]
(assert (not (<= 0 $q0@239@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 16 | 0 <= $q0@239@01]
(assert (<= 0 $q0@239@01))
; [eval] $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc($old_self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($old_self, 0)): Seq[Int])
; [eval] $struct_loc($old_self, 0)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@239@01) (not (<= 0 $q0@239@01))))
(push) ; 4
; [then-branch: 17 | 0 <= $q0@239@01 && $q0@239@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($old_self@175@01, 0))| | live]
; [else-branch: 17 | !(0 <= $q0@239@01 && $q0@239@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($old_self@175@01, 0))|) | live]
(push) ; 5
; [then-branch: 17 | 0 <= $q0@239@01 && $q0@239@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($old_self@175@01, 0))|]
(assert (and
  (<= 0 $q0@239@01)
  (<
    $q0@239@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $old_self@175@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($old_self, 0)): Seq[Int])
; [eval] $struct_loc($old_self, 0)
(push) ; 6
(assert (not (>= $q0@239@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 17 | !(0 <= $q0@239@01 && $q0@239@01 < |$struct_get[Seq[Int]]($struct_loc[Int]($old_self@175@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@239@01)
    (<
      $q0@239@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $old_self@175@01 0)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@239@01)
      (<
        $q0@239@01
        (Seq_length
          ($struct_get<Seq<Int>> ($struct_loc<Int> $old_self@175@01 0))))))
  (and
    (<= 0 $q0@239@01)
    (<
      $q0@239@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $old_self@175@01 0)))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@239@01 Int)) (!
  (and
    (or (<= 0 $q0@239@01) (not (<= 0 $q0@239@01)))
    (or
      (not
        (and
          (<= 0 $q0@239@01)
          (<
            $q0@239@01
            (Seq_length
              ($struct_get<Seq<Int>> ($struct_loc<Int> $old_self@175@01 0))))))
      (and
        (<= 0 $q0@239@01)
        (<
          $q0@239@01
          (Seq_length
            ($struct_get<Seq<Int>> ($struct_loc<Int> $old_self@175@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> $old_self@175@01 0))
    $q0@239@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@817@11@817@225-aux|)))
(assert (forall (($q0@239@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@239@01)
      (<
        $q0@239@01
        (Seq_length
          ($struct_get<Seq<Int>> ($struct_loc<Int> $old_self@175@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> $old_self@175@01 0))
        $q0@239@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> $old_self@175@01 0))
    $q0@239@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@817@11@817@225|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($old_self, 1)): Int)
(declare-const $t@240@01 $Snap)
(assert (= $t@240@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] $struct_loc($old_self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $old_self@175@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($old_self, 2)): Int)
(declare-const $t@241@01 $Snap)
(assert (= $t@241@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] $struct_loc($old_self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $old_self@175@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($old_self, 3)): Int)
(declare-const $t@242@01 $Snap)
(assert (= $t@242@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($old_self, 3)): Int)
; [eval] ($struct_get($struct_loc($old_self, 3)): Int)
; [eval] $struct_loc($old_self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $old_self@175@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@243@01 $Snap)
(assert (= $t@243@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@244@01 $Snap)
(assert (= $t@244@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@245@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@245@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $old_self@175@01 6)) $q1@245@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $old_self@175@01 6)) $q1@245@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@822@11@822@196|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])): Int))
(declare-const $t@246@01 $Snap)
(assert (= $t@246@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@247@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@247@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $old_self@175@01 6)) $q1@247@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $old_self@175@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $old_self@175@01 6)) $q1@247@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@823@11@823@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@248@01 $Snap)
(assert (= $t@248@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@249@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@249@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $old_self@175@01 7)) $q2@249@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $old_self@175@01 7)) $q2@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@824@11@824@196|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])): Int))
(declare-const $t@250@01 $Snap)
(assert (= $t@250@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])): Int))
(declare-const $q2@251@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 7)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@251@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $old_self@175@01 7)) $q2@251@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $old_self@175@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $old_self@175@01 7)) $q2@251@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@825@11@825@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($old_self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@252@01 $Snap)
(assert (= $t@252@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($old_self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($old_self, -1)): Int)
; [eval] $struct_loc($old_self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $old_self@175@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address()
(declare-const $t@253@01 $Snap)
(assert (= $t@253@01 $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |l$xp| == 3
(declare-const $t@254@01 $Snap)
(assert (= $t@254@01 $Snap.unit))
; [eval] |l$xp| == 3
; [eval] |l$xp|
(assert (= (Seq_length l$xp@166@01) 3))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { l$xp[$q0] }
;     0 <= $q0 && $q0 < |l$xp| ==> 0 <= l$xp[$q0])
(declare-const $t@255@01 $Snap)
(assert (= $t@255@01 $Snap.unit))
; [eval] (forall $q0: Int :: { l$xp[$q0] } 0 <= $q0 && $q0 < |l$xp| ==> 0 <= l$xp[$q0])
(declare-const $q0@256@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= $q0 && $q0 < |l$xp| ==> 0 <= l$xp[$q0]
; [eval] 0 <= $q0 && $q0 < |l$xp|
; [eval] 0 <= $q0
(push) ; 4
; [then-branch: 18 | !(0 <= $q0@256@01) | live]
; [else-branch: 18 | 0 <= $q0@256@01 | live]
(push) ; 5
; [then-branch: 18 | !(0 <= $q0@256@01)]
(assert (not (<= 0 $q0@256@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | 0 <= $q0@256@01]
(assert (<= 0 $q0@256@01))
; [eval] $q0 < |l$xp|
; [eval] |l$xp|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@256@01) (not (<= 0 $q0@256@01))))
(push) ; 4
; [then-branch: 19 | 0 <= $q0@256@01 && $q0@256@01 < |l$xp@166@01| | live]
; [else-branch: 19 | !(0 <= $q0@256@01 && $q0@256@01 < |l$xp@166@01|) | live]
(push) ; 5
; [then-branch: 19 | 0 <= $q0@256@01 && $q0@256@01 < |l$xp@166@01|]
(assert (and (<= 0 $q0@256@01) (< $q0@256@01 (Seq_length l$xp@166@01))))
; [eval] 0 <= l$xp[$q0]
; [eval] l$xp[$q0]
(push) ; 6
(assert (not (>= $q0@256@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 19 | !(0 <= $q0@256@01 && $q0@256@01 < |l$xp@166@01|)]
(assert (not (and (<= 0 $q0@256@01) (< $q0@256@01 (Seq_length l$xp@166@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 $q0@256@01) (< $q0@256@01 (Seq_length l$xp@166@01))))
  (and (<= 0 $q0@256@01) (< $q0@256@01 (Seq_length l$xp@166@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@256@01 Int)) (!
  (and
    (or (<= 0 $q0@256@01) (not (<= 0 $q0@256@01)))
    (or
      (not (and (<= 0 $q0@256@01) (< $q0@256@01 (Seq_length l$xp@166@01))))
      (and (<= 0 $q0@256@01) (< $q0@256@01 (Seq_length l$xp@166@01)))))
  :pattern ((Seq_index l$xp@166@01 $q0@256@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@831@11@831@87-aux|)))
(assert (forall (($q0@256@01 Int)) (!
  (=>
    (and (<= 0 $q0@256@01) (< $q0@256@01 (Seq_length l$xp@166@01)))
    (<= 0 (Seq_index l$xp@166@01 $q0@256@01)))
  :pattern ((Seq_index l$xp@166@01 $q0@256@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@831@11@831@87|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int)
(declare-const $t@257@01 $Snap)
(assert (= $t@257@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@170@01 0))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int)
(declare-const $t@258@01 $Snap)
(assert (= $t@258@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@170@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int)
(declare-const $t@259@01 $Snap)
(assert (= $t@259@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@170@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@260@01 $Snap)
(assert (= $t@260@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@170@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int)
(declare-const $t@261@01 $Snap)
(assert (= $t@261@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@170@01 4))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@262@01 $Snap)
(assert (= $t@262@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@170@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int)
(declare-const $t@263@01 $Snap)
(assert (= $t@263@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@169@01 0))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int)
(declare-const $t@264@01 $Snap)
(assert (= $t@264@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@169@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int)
(declare-const $t@265@01 $Snap)
(assert (= $t@265@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@169@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@266@01 $Snap)
(assert (= $t@266@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@169@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@267@01 $Snap)
(assert (= $t@267@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@169@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $t@268@01 $Snap)
(assert (= $t@268@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $a@269@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $t@270@01 $Snap)
(assert (= $t@270@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $a@271@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@271@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@173@01 6)) $a@271@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $old_self@175@01 6)) $a@271@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@173@01 6)) $a@271@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@847@11@847@259|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; $pre_self := self
; [exec]
; $pre_$contracts := $contracts
; [exec]
; $pre_old_self := $old_self
; [exec]
; $pre_old_$contracts := $old_$contracts
; [exec]
; $succ := true
; [exec]
; $overflow := false
; [exec]
; l$S := 0
; [exec]
; l$S$1 := $wrap(l$S)
; [eval] $wrap(l$S)
(declare-const l$S$1@272@01 $Int)
(assert (= l$S$1@272@01 ($wrap<$Int> 0)))
; [exec]
; l$_x := $wrap(l$xp[0])
; [eval] $wrap(l$xp[0])
; [eval] l$xp[0]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const l$_x@273@01 $Int)
(assert (= l$_x@273@01 ($wrap<$Int> (Seq_index l$xp@166@01 0))))
; [eval] l$S + $unwrap(l$_x) < 0
; [eval] l$S + $unwrap(l$_x)
; [eval] $unwrap(l$_x)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< ($unwrap<Int> l$_x@273@01) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | $unwrap[Int](l$_x@273@01) < 0 | dead]
; [else-branch: 20 | !($unwrap[Int](l$_x@273@01) < 0) | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 20 | !($unwrap[Int](l$_x@273@01) < 0)]
(assert (not (< ($unwrap<Int> l$_x@273@01) 0)))
(pop) ; 3
; [eval] !(l$S + $unwrap(l$_x) < 0)
; [eval] l$S + $unwrap(l$_x) < 0
; [eval] l$S + $unwrap(l$_x)
; [eval] $unwrap(l$_x)
(push) ; 3
(set-option :timeout 10)
(assert (not (< ($unwrap<Int> l$_x@273@01) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< ($unwrap<Int> l$_x@273@01) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | !($unwrap[Int](l$_x@273@01) < 0) | live]
; [else-branch: 21 | $unwrap[Int](l$_x@273@01) < 0 | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 21 | !($unwrap[Int](l$_x@273@01) < 0)]
(assert (not (< ($unwrap<Int> l$_x@273@01) 0)))
; [exec]
; l$S$1 := $wrap(l$S + $unwrap(l$_x))
; [eval] $wrap(l$S + $unwrap(l$_x))
; [eval] l$S + $unwrap(l$_x)
; [eval] $unwrap(l$_x)
(declare-const l$S$1@274@01 $Int)
(assert (= l$S$1@274@01 ($wrap<$Int> ($unwrap<Int> l$_x@273@01))))
; [exec]
; label continue_0
; [exec]
; l$_x := $wrap(l$xp[1])
; [eval] $wrap(l$xp[1])
; [eval] l$xp[1]
(push) ; 4
(assert (not (< 1 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const l$_x@275@01 $Int)
(assert (= l$_x@275@01 ($wrap<$Int> (Seq_index l$xp@166@01 1))))
; [eval] $unwrap(l$S$1) + $unwrap(l$_x) < 0
; [eval] $unwrap(l$S$1) + $unwrap(l$_x)
; [eval] $unwrap(l$S$1)
; [eval] $unwrap(l$_x)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< (+ ($unwrap<Int> l$S$1@274@01) ($unwrap<Int> l$_x@275@01)) 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | $unwrap[Int](l$S$1@274@01) + $unwrap[Int](l$_x@275@01) < 0 | dead]
; [else-branch: 22 | !($unwrap[Int](l$S$1@274@01) + $unwrap[Int](l$_x@275@01) < 0) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 22 | !($unwrap[Int](l$S$1@274@01) + $unwrap[Int](l$_x@275@01) < 0)]
(assert (not (< (+ ($unwrap<Int> l$S$1@274@01) ($unwrap<Int> l$_x@275@01)) 0)))
(pop) ; 4
; [eval] !($unwrap(l$S$1) + $unwrap(l$_x) < 0)
; [eval] $unwrap(l$S$1) + $unwrap(l$_x) < 0
; [eval] $unwrap(l$S$1) + $unwrap(l$_x)
; [eval] $unwrap(l$S$1)
; [eval] $unwrap(l$_x)
(push) ; 4
(set-option :timeout 10)
(assert (not (< (+ ($unwrap<Int> l$S$1@274@01) ($unwrap<Int> l$_x@275@01)) 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< (+ ($unwrap<Int> l$S$1@274@01) ($unwrap<Int> l$_x@275@01)) 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | !($unwrap[Int](l$S$1@274@01) + $unwrap[Int](l$_x@275@01) < 0) | live]
; [else-branch: 23 | $unwrap[Int](l$S$1@274@01) + $unwrap[Int](l$_x@275@01) < 0 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 23 | !($unwrap[Int](l$S$1@274@01) + $unwrap[Int](l$_x@275@01) < 0)]
(assert (not (< (+ ($unwrap<Int> l$S$1@274@01) ($unwrap<Int> l$_x@275@01)) 0)))
; [exec]
; l$S$1 := $wrap($unwrap(l$S$1) + $unwrap(l$_x))
; [eval] $wrap($unwrap(l$S$1) + $unwrap(l$_x))
; [eval] $unwrap(l$S$1) + $unwrap(l$_x)
; [eval] $unwrap(l$S$1)
; [eval] $unwrap(l$_x)
(declare-const l$S$1@276@01 $Int)
(assert (=
  l$S$1@276@01
  ($wrap<$Int> (+ ($unwrap<Int> l$S$1@274@01) ($unwrap<Int> l$_x@275@01)))))
; [exec]
; label continue_1
; [exec]
; l$_x := $wrap(l$xp[2])
; [eval] $wrap(l$xp[2])
; [eval] l$xp[2]
(push) ; 5
(assert (not (< 2 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const l$_x@277@01 $Int)
(assert (= l$_x@277@01 ($wrap<$Int> (Seq_index l$xp@166@01 2))))
; [eval] $unwrap(l$S$1) + $unwrap(l$_x) < 0
; [eval] $unwrap(l$S$1) + $unwrap(l$_x)
; [eval] $unwrap(l$S$1)
; [eval] $unwrap(l$_x)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< (+ ($unwrap<Int> l$S$1@276@01) ($unwrap<Int> l$_x@277@01)) 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | $unwrap[Int](l$S$1@276@01) + $unwrap[Int](l$_x@277@01) < 0 | dead]
; [else-branch: 24 | !($unwrap[Int](l$S$1@276@01) + $unwrap[Int](l$_x@277@01) < 0) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 24 | !($unwrap[Int](l$S$1@276@01) + $unwrap[Int](l$_x@277@01) < 0)]
(assert (not (< (+ ($unwrap<Int> l$S$1@276@01) ($unwrap<Int> l$_x@277@01)) 0)))
(pop) ; 5
; [eval] !($unwrap(l$S$1) + $unwrap(l$_x) < 0)
; [eval] $unwrap(l$S$1) + $unwrap(l$_x) < 0
; [eval] $unwrap(l$S$1) + $unwrap(l$_x)
; [eval] $unwrap(l$S$1)
; [eval] $unwrap(l$_x)
(push) ; 5
(set-option :timeout 10)
(assert (not (< (+ ($unwrap<Int> l$S$1@276@01) ($unwrap<Int> l$_x@277@01)) 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< (+ ($unwrap<Int> l$S$1@276@01) ($unwrap<Int> l$_x@277@01)) 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | !($unwrap[Int](l$S$1@276@01) + $unwrap[Int](l$_x@277@01) < 0) | live]
; [else-branch: 25 | $unwrap[Int](l$S$1@276@01) + $unwrap[Int](l$_x@277@01) < 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 25 | !($unwrap[Int](l$S$1@276@01) + $unwrap[Int](l$_x@277@01) < 0)]
(assert (not (< (+ ($unwrap<Int> l$S$1@276@01) ($unwrap<Int> l$_x@277@01)) 0)))
; [exec]
; l$S$1 := $wrap($unwrap(l$S$1) + $unwrap(l$_x))
; [eval] $wrap($unwrap(l$S$1) + $unwrap(l$_x))
; [eval] $unwrap(l$S$1) + $unwrap(l$_x)
; [eval] $unwrap(l$S$1)
; [eval] $unwrap(l$_x)
(declare-const l$S$1@278@01 $Int)
(assert (=
  l$S$1@278@01
  ($wrap<$Int> (+ ($unwrap<Int> l$S$1@276@01) ($unwrap<Int> l$_x@277@01)))))
; [exec]
; label continue_2
; [exec]
; label break_0
; [eval] $unwrap(l$S$1) == 0
; [eval] $unwrap(l$S$1)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= ($unwrap<Int> l$S$1@278@01) 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($unwrap<Int> l$S$1@278@01) 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | $unwrap[Int](l$S$1@278@01) == 0 | live]
; [else-branch: 26 | $unwrap[Int](l$S$1@278@01) != 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 26 | $unwrap[Int](l$S$1@278@01) == 0]
(assert (= ($unwrap<Int> l$S$1@278@01) 0))
; [exec]
; $res := 0
; [exec]
; label return
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@219@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@219@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | $out_of_gas@219@01 | live]
; [else-branch: 27 | !($out_of_gas@219@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 27 | $out_of_gas@219@01]
(assert $out_of_gas@219@01)
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc$12
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_old_self
; [exec]
; $old_$contracts := $pre_old_$contracts
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 8
; [then-branch: 28 | False | dead]
; [else-branch: 28 | True | live]
(push) ; 9
; [else-branch: 28 | True]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(pop) ; 7
(push) ; 7
; [else-branch: 27 | !($out_of_gas@219@01)]
(assert (not $out_of_gas@219@01))
(pop) ; 7
; [eval] !$out_of_gas
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@219@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@219@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 29 | !($out_of_gas@219@01) | live]
; [else-branch: 29 | $out_of_gas@219@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 29 | !($out_of_gas@219@01)]
(assert (not $out_of_gas@219@01))
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | True | live]
; [else-branch: 30 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 30 | True]
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@279@01 Int)
(push) ; 10
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 11
; [then-branch: 31 | 0 <= q$i@279@01 | live]
; [else-branch: 31 | !(0 <= q$i@279@01) | live]
(push) ; 12
; [then-branch: 31 | 0 <= q$i@279@01]
(assert (<= 0 q$i@279@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 13
; [then-branch: 32 | q$i@279@01 < 3 | live]
; [else-branch: 32 | !(q$i@279@01 < 3) | live]
(push) ; 14
; [then-branch: 32 | q$i@279@01 < 3]
(assert (< q$i@279@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 15
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 15
(assert (not (>= q$i@279@01 0)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
(assert (not (< q$i@279@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(pop) ; 14
(push) ; 14
; [else-branch: 32 | !(q$i@279@01 < 3)]
(assert (not (< q$i@279@01 3)))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@279@01 3)) (< q$i@279@01 3)))
(pop) ; 12
(push) ; 12
; [else-branch: 31 | !(0 <= q$i@279@01)]
(assert (not (<= 0 q$i@279@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (<= 0 q$i@279@01)
  (and (<= 0 q$i@279@01) (or (not (< q$i@279@01 3)) (< q$i@279@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@279@01)) (<= 0 q$i@279@01)))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@279@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@279@01)
      (and (<= 0 q$i@279@01) (or (not (< q$i@279@01 3)) (< q$i@279@01 3))))
    (or (not (<= 0 q$i@279@01)) (<= 0 q$i@279@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@279@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85-aux|)))
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@279@01 Int)) (!
    (=>
      (and (<= 0 q$i@279@01) (< q$i@279@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@279@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@279@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((q$i@279@01 Int)) (!
  (=>
    (and (<= 0 q$i@279@01) (< q$i@279@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@279@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@279@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | QA q$i@279@01 :: 0 <= q$i@279@01 && q$i@279@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@279@01] | live]
; [else-branch: 33 | !(QA q$i@279@01 :: 0 <= q$i@279@01 && q$i@279@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@279@01]) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 33 | QA q$i@279@01 :: 0 <= q$i@279@01 && q$i@279@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@279@01]]
(assert (forall ((q$i@279@01 Int)) (!
  (=>
    (and (<= 0 q$i@279@01) (< q$i@279@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@279@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@279@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))
; [eval] $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] 3 * $unwrap($wrap(l$xp[0]))
; [eval] $unwrap($wrap(l$xp[0]))
; [eval] $wrap(l$xp[0])
; [eval] l$xp[0]
(push) ; 12
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (forall ((q$i@279@01 Int)) (!
  (=>
    (and (<= 0 q$i@279@01) (< q$i@279@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@279@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@279@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and
  (forall ((q$i@279@01 Int)) (!
    (and
      (=>
        (<= 0 q$i@279@01)
        (and (<= 0 q$i@279@01) (or (not (< q$i@279@01 3)) (< q$i@279@01 3))))
      (or (not (<= 0 q$i@279@01)) (<= 0 q$i@279@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@279@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85-aux|))
  (forall ((q$i@279@01 Int)) (!
    (=>
      (and (<= 0 q$i@279@01) (< q$i@279@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@279@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@279@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))))
(push) ; 8
(assert (not (=>
  (forall ((q$i@279@01 Int)) (!
    (=>
      (and (<= 0 q$i@279@01) (< q$i@279@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@279@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@279@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))
  (= 0 (* 3 ($unwrap<Int> ($wrap<$Int> (Seq_index l$xp@166@01 0))))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@279@01 Int)) (!
    (=>
      (and (<= 0 q$i@279@01) (< q$i@279@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@279@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@279@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))
  (= 0 (* 3 ($unwrap<Int> ($wrap<$Int> (Seq_index l$xp@166@01 0)))))))
(pop) ; 7
(push) ; 7
; [else-branch: 29 | $out_of_gas@219@01]
(assert $out_of_gas@219@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 26 | $unwrap[Int](l$S$1@278@01) != 0]
(assert (not (= ($unwrap<Int> l$S$1@278@01) 0)))
(pop) ; 6
; [eval] !($unwrap(l$S$1) == 0)
; [eval] $unwrap(l$S$1) == 0
; [eval] $unwrap(l$S$1)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($unwrap<Int> l$S$1@278@01) 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= ($unwrap<Int> l$S$1@278@01) 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | $unwrap[Int](l$S$1@278@01) != 0 | live]
; [else-branch: 34 | $unwrap[Int](l$S$1@278@01) == 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 34 | $unwrap[Int](l$S$1@278@01) != 0]
(assert (not (= ($unwrap<Int> l$S$1@278@01) 0)))
; [exec]
; assert (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap(l$S$1) == 3 * l$xp[0]
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap(l$S$1) == 3 * l$xp[0]
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@280@01 Int)
(push) ; 7
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 8
; [then-branch: 35 | 0 <= q$i@280@01 | live]
; [else-branch: 35 | !(0 <= q$i@280@01) | live]
(push) ; 9
; [then-branch: 35 | 0 <= q$i@280@01]
(assert (<= 0 q$i@280@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 10
; [then-branch: 36 | q$i@280@01 < 3 | live]
; [else-branch: 36 | !(q$i@280@01 < 3) | live]
(push) ; 11
; [then-branch: 36 | q$i@280@01 < 3]
(assert (< q$i@280@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 12
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 12
(assert (not (>= q$i@280@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(assert (not (< q$i@280@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 36 | !(q$i@280@01 < 3)]
(assert (not (< q$i@280@01 3)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@280@01 3)) (< q$i@280@01 3)))
(pop) ; 9
(push) ; 9
; [else-branch: 35 | !(0 <= q$i@280@01)]
(assert (not (<= 0 q$i@280@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (<= 0 q$i@280@01)
  (and (<= 0 q$i@280@01) (or (not (< q$i@280@01 3)) (< q$i@280@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@280@01)) (<= 0 q$i@280@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@280@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@280@01)
      (and (<= 0 q$i@280@01) (or (not (< q$i@280@01 3)) (< q$i@280@01 3))))
    (or (not (<= 0 q$i@280@01)) (<= 0 q$i@280@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@280@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@889@11@889@75-aux|)))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@280@01 Int)) (!
    (=>
      (and (<= 0 q$i@280@01) (< q$i@280@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@280@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@280@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@889@11@889@75|)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((q$i@280@01 Int)) (!
  (=>
    (and (<= 0 q$i@280@01) (< q$i@280@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@280@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@280@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@889@11@889@75|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | QA q$i@280@01 :: 0 <= q$i@280@01 && q$i@280@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@280@01] | live]
; [else-branch: 37 | !(QA q$i@280@01 :: 0 <= q$i@280@01 && q$i@280@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@280@01]) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 37 | QA q$i@280@01 :: 0 <= q$i@280@01 && q$i@280@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@280@01]]
(assert (forall ((q$i@280@01 Int)) (!
  (=>
    (and (<= 0 q$i@280@01) (< q$i@280@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@280@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@280@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@889@11@889@75|)))
; [eval] $unwrap(l$S$1) == 3 * l$xp[0]
; [eval] $unwrap(l$S$1)
; [eval] 3 * l$xp[0]
; [eval] l$xp[0]
(push) ; 9
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 37 | !(QA q$i@280@01 :: 0 <= q$i@280@01 && q$i@280@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@280@01])]
(assert (not
  (forall ((q$i@280@01 Int)) (!
    (=>
      (and (<= 0 q$i@280@01) (< q$i@280@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@280@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@280@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@889@11@889@75|))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@280@01 Int)) (!
      (=>
        (and (<= 0 q$i@280@01) (< q$i@280@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@280@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@280@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@889@11@889@75|)))
  (forall ((q$i@280@01 Int)) (!
    (=>
      (and (<= 0 q$i@280@01) (< q$i@280@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@280@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@280@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@889@11@889@75|))))
(push) ; 7
(assert (not (=>
  (forall ((q$i@280@01 Int)) (!
    (=>
      (and (<= 0 q$i@280@01) (< q$i@280@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@280@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@280@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@889@11@889@75|))
  (= ($unwrap<Int> l$S$1@278@01) (* 3 (Seq_index l$xp@166@01 0))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@280@01 Int)) (!
    (=>
      (and (<= 0 q$i@280@01) (< q$i@280@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@280@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@280@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@889@11@889@75|))
  (= ($unwrap<Int> l$S$1@278@01) (* 3 (Seq_index l$xp@166@01 0)))))
; [exec]
; inhale (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap(l$S$1) == $unwrap($w_mul($wrap(3), $wrap(l$xp[0])))
(declare-const $t@281@01 $Snap)
(assert (= $t@281@01 $Snap.unit))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap(l$S$1) == $unwrap($w_mul($wrap(3), $wrap(l$xp[0])))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@282@01 Int)
(push) ; 7
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 8
; [then-branch: 38 | 0 <= q$i@282@01 | live]
; [else-branch: 38 | !(0 <= q$i@282@01) | live]
(push) ; 9
; [then-branch: 38 | 0 <= q$i@282@01]
(assert (<= 0 q$i@282@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 10
; [then-branch: 39 | q$i@282@01 < 3 | live]
; [else-branch: 39 | !(q$i@282@01 < 3) | live]
(push) ; 11
; [then-branch: 39 | q$i@282@01 < 3]
(assert (< q$i@282@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 12
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 12
(assert (not (>= q$i@282@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(assert (not (< q$i@282@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 39 | !(q$i@282@01 < 3)]
(assert (not (< q$i@282@01 3)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@282@01 3)) (< q$i@282@01 3)))
(pop) ; 9
(push) ; 9
; [else-branch: 38 | !(0 <= q$i@282@01)]
(assert (not (<= 0 q$i@282@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (<= 0 q$i@282@01)
  (and (<= 0 q$i@282@01) (or (not (< q$i@282@01 3)) (< q$i@282@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@282@01)) (<= 0 q$i@282@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@282@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@282@01)
      (and (<= 0 q$i@282@01) (or (not (< q$i@282@01 3)) (< q$i@282@01 3))))
    (or (not (<= 0 q$i@282@01)) (<= 0 q$i@282@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@890@11@890@75-aux|)))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@282@01 Int)) (!
    (=>
      (and (<= 0 q$i@282@01) (< q$i@282@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@282@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@282@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@890@11@890@75|)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((q$i@282@01 Int)) (!
  (=>
    (and (<= 0 q$i@282@01) (< q$i@282@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@282@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@890@11@890@75|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 40 | QA q$i@282@01 :: 0 <= q$i@282@01 && q$i@282@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@282@01] | live]
; [else-branch: 40 | !(QA q$i@282@01 :: 0 <= q$i@282@01 && q$i@282@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@282@01]) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 40 | QA q$i@282@01 :: 0 <= q$i@282@01 && q$i@282@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@282@01]]
(assert (forall ((q$i@282@01 Int)) (!
  (=>
    (and (<= 0 q$i@282@01) (< q$i@282@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@282@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@890@11@890@75|)))
; [eval] $unwrap(l$S$1) == $unwrap($w_mul($wrap(3), $wrap(l$xp[0])))
; [eval] $unwrap(l$S$1)
; [eval] $unwrap($w_mul($wrap(3), $wrap(l$xp[0])))
; [eval] $w_mul($wrap(3), $wrap(l$xp[0]))
; [eval] $wrap(3)
; [eval] $wrap(l$xp[0])
; [eval] l$xp[0]
(push) ; 9
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 40 | !(QA q$i@282@01 :: 0 <= q$i@282@01 && q$i@282@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@282@01])]
(assert (not
  (forall ((q$i@282@01 Int)) (!
    (=>
      (and (<= 0 q$i@282@01) (< q$i@282@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@282@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@282@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@890@11@890@75|))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@282@01 Int)) (!
      (=>
        (and (<= 0 q$i@282@01) (< q$i@282@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@282@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@282@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@890@11@890@75|)))
  (forall ((q$i@282@01 Int)) (!
    (=>
      (and (<= 0 q$i@282@01) (< q$i@282@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@282@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@282@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@890@11@890@75|))))
(assert (=>
  (forall ((q$i@282@01 Int)) (!
    (=>
      (and (<= 0 q$i@282@01) (< q$i@282@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@282@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@282@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@890@11@890@75|))
  (=
    ($unwrap<Int> l$S$1@278@01)
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> 3) ($wrap<$Int> (Seq_index
      l$xp@166@01
      0)))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap(l$S$1) == 3 * $unwrap($wrap(l$xp[0]))
(declare-const $t@283@01 $Snap)
(assert (= $t@283@01 $Snap.unit))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap(l$S$1) == 3 * $unwrap($wrap(l$xp[0]))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@284@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 8
; [then-branch: 41 | 0 <= q$i@284@01 | live]
; [else-branch: 41 | !(0 <= q$i@284@01) | live]
(push) ; 9
; [then-branch: 41 | 0 <= q$i@284@01]
(assert (<= 0 q$i@284@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 10
; [then-branch: 42 | q$i@284@01 < 3 | live]
; [else-branch: 42 | !(q$i@284@01 < 3) | live]
(push) ; 11
; [then-branch: 42 | q$i@284@01 < 3]
(assert (< q$i@284@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 12
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 12
(assert (not (>= q$i@284@01 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(assert (not (< q$i@284@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 42 | !(q$i@284@01 < 3)]
(assert (not (< q$i@284@01 3)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@284@01 3)) (< q$i@284@01 3)))
(pop) ; 9
(push) ; 9
; [else-branch: 41 | !(0 <= q$i@284@01)]
(assert (not (<= 0 q$i@284@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (<= 0 q$i@284@01)
  (and (<= 0 q$i@284@01) (or (not (< q$i@284@01 3)) (< q$i@284@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@284@01)) (<= 0 q$i@284@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@284@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@284@01)
      (and (<= 0 q$i@284@01) (or (not (< q$i@284@01 3)) (< q$i@284@01 3))))
    (or (not (<= 0 q$i@284@01)) (<= 0 q$i@284@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@284@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@891@11@891@75-aux|)))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@284@01 Int)) (!
    (=>
      (and (<= 0 q$i@284@01) (< q$i@284@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@284@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@284@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@891@11@891@75|)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((q$i@284@01 Int)) (!
  (=>
    (and (<= 0 q$i@284@01) (< q$i@284@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@284@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@284@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@891@11@891@75|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 43 | QA q$i@284@01 :: 0 <= q$i@284@01 && q$i@284@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@284@01] | live]
; [else-branch: 43 | !(QA q$i@284@01 :: 0 <= q$i@284@01 && q$i@284@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@284@01]) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 43 | QA q$i@284@01 :: 0 <= q$i@284@01 && q$i@284@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@284@01]]
(assert (forall ((q$i@284@01 Int)) (!
  (=>
    (and (<= 0 q$i@284@01) (< q$i@284@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@284@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@284@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@891@11@891@75|)))
; [eval] $unwrap(l$S$1) == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $unwrap(l$S$1)
; [eval] 3 * $unwrap($wrap(l$xp[0]))
; [eval] $unwrap($wrap(l$xp[0]))
; [eval] $wrap(l$xp[0])
; [eval] l$xp[0]
(push) ; 9
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 43 | !(QA q$i@284@01 :: 0 <= q$i@284@01 && q$i@284@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@284@01])]
(assert (not
  (forall ((q$i@284@01 Int)) (!
    (=>
      (and (<= 0 q$i@284@01) (< q$i@284@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@284@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@284@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@891@11@891@75|))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@284@01 Int)) (!
      (=>
        (and (<= 0 q$i@284@01) (< q$i@284@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@284@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@284@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@891@11@891@75|)))
  (forall ((q$i@284@01 Int)) (!
    (=>
      (and (<= 0 q$i@284@01) (< q$i@284@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@284@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@284@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@891@11@891@75|))))
(assert (=>
  (forall ((q$i@284@01 Int)) (!
    (=>
      (and (<= 0 q$i@284@01) (< q$i@284@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@284@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@284@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@891@11@891@75|))
  (=
    ($unwrap<Int> l$S$1@278@01)
    (* 3 ($unwrap<Int> ($wrap<$Int> (Seq_index l$xp@166@01 0)))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert true
; [exec]
; l$Dprev := 0
; [exec]
; l$D := l$S$1
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int))) * 3 < 0
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int))) * 3
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (<
    (*
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@173@01 1))))
      3)
    0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 44 | $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](self@173@01, 1)))) * 3 < 0 | dead]
; [else-branch: 44 | !($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](self@173@01, 1)))) * 3 < 0) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 44 | !($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](self@173@01, 1)))) * 3 < 0)]
(assert (not
  (<
    (*
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@173@01 1))))
      3)
    0)))
(pop) ; 7
; [eval] !($unwrap($wrap(($struct_get($struct_loc(self, 1)): Int))) * 3 < 0)
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int))) * 3 < 0
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int))) * 3
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  (*
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@173@01 1))))
    3)
  0)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (<
    (*
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@173@01 1))))
      3)
    0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 45 | !($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](self@173@01, 1)))) * 3 < 0) | live]
; [else-branch: 45 | $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](self@173@01, 1)))) * 3 < 0 | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 45 | !($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](self@173@01, 1)))) * 3 < 0)]
(assert (not
  (<
    (*
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@173@01 1))))
      3)
    0)))
; [exec]
; l$Ann := $wrap($unwrap($wrap(($struct_get($struct_loc(self, 1)): Int))) * 3)
; [eval] $wrap($unwrap($wrap(($struct_get($struct_loc(self, 1)): Int))) * 3)
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int))) * 3
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const l$Ann@285@01 $Int)
(assert (=
  l$Ann@285@01
  ($wrap<$Int> (*
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@173@01 1))))
    3))))
; [exec]
; inhale l$$idx == 0
(declare-const $t@286@01 $Snap)
(assert (= $t@286@01 $Snap.unit))
; [eval] l$$idx == 0
(assert (= l$$idx@191@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; l$_i := $wrap($range(0, 255)[l$$idx])
; [eval] $wrap($range(0, 255)[l$$idx])
; [eval] $range(0, 255)[l$$idx]
; [eval] $range(0, 255)
(set-option :timeout 0)
(push) ; 8
(assert (not (>= l$$idx@191@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< l$$idx@191@01 (Seq_length ($range<Seq<Int>> 0 255)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const l$_i@287@01 $Int)
(assert (= l$_i@287@01 ($wrap<$Int> (Seq_index ($range<Seq<Int>> 0 255) l$$idx@191@01))))
; [exec]
; exhale $unwrap(l$S$1) == $unwrap(l$S$1) && $unwrap(l$Ann) == $unwrap(l$Ann)
; [eval] $unwrap(l$S$1) == $unwrap(l$S$1)
; [eval] $unwrap(l$S$1)
; [eval] $unwrap(l$S$1)
; [eval] $unwrap(l$Ann) == $unwrap(l$Ann)
; [eval] $unwrap(l$Ann)
; [eval] $unwrap(l$Ann)
; [exec]
; exhale (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap(l$D) == $unwrap(l$S$1)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap(l$D) == $unwrap(l$S$1)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@288@01 Int)
(push) ; 8
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 9
; [then-branch: 46 | 0 <= q$i@288@01 | live]
; [else-branch: 46 | !(0 <= q$i@288@01) | live]
(push) ; 10
; [then-branch: 46 | 0 <= q$i@288@01]
(assert (<= 0 q$i@288@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 11
; [then-branch: 47 | q$i@288@01 < 3 | live]
; [else-branch: 47 | !(q$i@288@01 < 3) | live]
(push) ; 12
; [then-branch: 47 | q$i@288@01 < 3]
(assert (< q$i@288@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 13
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 13
(assert (not (>= q$i@288@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< q$i@288@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 47 | !(q$i@288@01 < 3)]
(assert (not (< q$i@288@01 3)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@288@01 3)) (< q$i@288@01 3)))
(pop) ; 10
(push) ; 10
; [else-branch: 46 | !(0 <= q$i@288@01)]
(assert (not (<= 0 q$i@288@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (<= 0 q$i@288@01)
  (and (<= 0 q$i@288@01) (or (not (< q$i@288@01 3)) (< q$i@288@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@288@01)) (<= 0 q$i@288@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@288@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@288@01)
      (and (<= 0 q$i@288@01) (or (not (< q$i@288@01 3)) (< q$i@288@01 3))))
    (or (not (<= 0 q$i@288@01)) (<= 0 q$i@288@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@288@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@904@11@904@75-aux|)))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@288@01 Int)) (!
    (=>
      (and (<= 0 q$i@288@01) (< q$i@288@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@288@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@288@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@904@11@904@75|)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((q$i@288@01 Int)) (!
  (=>
    (and (<= 0 q$i@288@01) (< q$i@288@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@288@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@288@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@904@11@904@75|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 48 | QA q$i@288@01 :: 0 <= q$i@288@01 && q$i@288@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@288@01] | live]
; [else-branch: 48 | !(QA q$i@288@01 :: 0 <= q$i@288@01 && q$i@288@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@288@01]) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 48 | QA q$i@288@01 :: 0 <= q$i@288@01 && q$i@288@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@288@01]]
(assert (forall ((q$i@288@01 Int)) (!
  (=>
    (and (<= 0 q$i@288@01) (< q$i@288@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@288@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@288@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@904@11@904@75|)))
; [eval] $unwrap(l$D) == $unwrap(l$S$1)
; [eval] $unwrap(l$D)
; [eval] $unwrap(l$S$1)
(pop) ; 9
(push) ; 9
; [else-branch: 48 | !(QA q$i@288@01 :: 0 <= q$i@288@01 && q$i@288@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@288@01])]
(assert (not
  (forall ((q$i@288@01 Int)) (!
    (=>
      (and (<= 0 q$i@288@01) (< q$i@288@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@288@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@288@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@904@11@904@75|))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@288@01 Int)) (!
      (=>
        (and (<= 0 q$i@288@01) (< q$i@288@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@288@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@288@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@904@11@904@75|)))
  (forall ((q$i@288@01 Int)) (!
    (=>
      (and (<= 0 q$i@288@01) (< q$i@288@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@288@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@288@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@904@11@904@75|))))
; [exec]
; l$_i$pre_self := self
; [exec]
; l$_i$pre_$contracts := $contracts
; [exec]
; l$$idx := l$havoc
; [exec]
; l$_i := $wrap(l$havoc$1)
; [eval] $wrap(l$havoc$1)
(declare-const l$_i@289@01 $Int)
(assert (= l$_i@289@01 ($wrap<$Int> l$havoc$1@195@01)))
; [exec]
; self := l$havoc$2
; [exec]
; $contracts := l$havoc$3
; [exec]
; $old_self := l$havoc$4
; [exec]
; $old_$contracts := l$havoc$5
; [exec]
; inhale |($struct_get($struct_loc(self, 0)): Seq[Int])| == 3
(declare-const $t@290@01 $Snap)
(assert (= $t@290@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@196@01 0))) 3))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0])
(declare-const $t@291@01 $Snap)
(assert (= $t@291@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0])
(declare-const $q0@292@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 9
; [then-branch: 49 | !(0 <= $q0@292@01) | live]
; [else-branch: 49 | 0 <= $q0@292@01 | live]
(push) ; 10
; [then-branch: 49 | !(0 <= $q0@292@01)]
(assert (not (<= 0 $q0@292@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 49 | 0 <= $q0@292@01]
(assert (<= 0 $q0@292@01))
; [eval] $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@292@01) (not (<= 0 $q0@292@01))))
(push) ; 9
; [then-branch: 50 | 0 <= $q0@292@01 && $q0@292@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$2@196@01, 0))| | live]
; [else-branch: 50 | !(0 <= $q0@292@01 && $q0@292@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$2@196@01, 0))|) | live]
(push) ; 10
; [then-branch: 50 | 0 <= $q0@292@01 && $q0@292@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$2@196@01, 0))|]
(assert (and
  (<= 0 $q0@292@01)
  (<
    $q0@292@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@196@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(push) ; 11
(assert (not (>= $q0@292@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 50 | !(0 <= $q0@292@01 && $q0@292@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$2@196@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@292@01)
    (<
      $q0@292@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@196@01 0)))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@292@01)
      (<
        $q0@292@01
        (Seq_length
          ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@196@01 0))))))
  (and
    (<= 0 $q0@292@01)
    (<
      $q0@292@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@196@01 0)))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@292@01 Int)) (!
  (and
    (or (<= 0 $q0@292@01) (not (<= 0 $q0@292@01)))
    (or
      (not
        (and
          (<= 0 $q0@292@01)
          (<
            $q0@292@01
            (Seq_length
              ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@196@01 0))))))
      (and
        (<= 0 $q0@292@01)
        (<
          $q0@292@01
          (Seq_length
            ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@196@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@196@01 0))
    $q0@292@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@919@11@919@210-aux|)))
(assert (forall (($q0@292@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@292@01)
      (<
        $q0@292@01
        (Seq_length
          ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@196@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@196@01 0))
        $q0@292@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@196@01 0))
    $q0@292@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@919@11@919@210|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int)
(declare-const $t@293@01 $Snap)
(assert (= $t@293@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@196@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int)
(declare-const $t@294@01 $Snap)
(assert (= $t@294@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@196@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 3)): Int)
(declare-const $t@295@01 $Snap)
(assert (= $t@295@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@196@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@296@01 $Snap)
(assert (= $t@296@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@297@01 $Snap)
(assert (= $t@297@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@298@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@298@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@196@01 6)) $q1@298@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@196@01 6)) $q1@298@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@924@11@924@186|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@299@01 $Snap)
(assert (= $t@299@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@300@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
; [eval] ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@300@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@196@01 6)) $q1@300@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@196@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@196@01 6)) $q1@300@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@925@11@925@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@301@01 $Snap)
(assert (= $t@301@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@302@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@302@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@196@01 7)) $q2@302@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@196@01 7)) $q2@302@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@926@11@926@186|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $t@303@01 $Snap)
(assert (= $t@303@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $q2@304@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
; [eval] ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@304@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@196@01 7)) $q2@304@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@196@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@196@01 7)) $q2@304@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@927@11@927@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@305@01 $Snap)
(assert (= $t@305@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@196@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($old_self, 0)): Seq[Int])| == 3
(declare-const $t@306@01 $Snap)
(assert (= $t@306@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($old_self, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc($old_self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($old_self, 0)): Seq[Int])
; [eval] $struct_loc($old_self, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$4@198@01 0))) 3))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0])
(declare-const $t@307@01 $Snap)
(assert (= $t@307@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0])
(declare-const $q0@308@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 9
; [then-branch: 51 | !(0 <= $q0@308@01) | live]
; [else-branch: 51 | 0 <= $q0@308@01 | live]
(push) ; 10
; [then-branch: 51 | !(0 <= $q0@308@01)]
(assert (not (<= 0 $q0@308@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 51 | 0 <= $q0@308@01]
(assert (<= 0 $q0@308@01))
; [eval] $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc($old_self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($old_self, 0)): Seq[Int])
; [eval] $struct_loc($old_self, 0)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@308@01) (not (<= 0 $q0@308@01))))
(push) ; 9
; [then-branch: 52 | 0 <= $q0@308@01 && $q0@308@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$4@198@01, 0))| | live]
; [else-branch: 52 | !(0 <= $q0@308@01 && $q0@308@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$4@198@01, 0))|) | live]
(push) ; 10
; [then-branch: 52 | 0 <= $q0@308@01 && $q0@308@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$4@198@01, 0))|]
(assert (and
  (<= 0 $q0@308@01)
  (<
    $q0@308@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$4@198@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($old_self, 0)): Seq[Int])
; [eval] $struct_loc($old_self, 0)
(push) ; 11
(assert (not (>= $q0@308@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 52 | !(0 <= $q0@308@01 && $q0@308@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$4@198@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@308@01)
    (<
      $q0@308@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$4@198@01 0)))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@308@01)
      (<
        $q0@308@01
        (Seq_length
          ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$4@198@01 0))))))
  (and
    (<= 0 $q0@308@01)
    (<
      $q0@308@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$4@198@01 0)))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@308@01 Int)) (!
  (and
    (or (<= 0 $q0@308@01) (not (<= 0 $q0@308@01)))
    (or
      (not
        (and
          (<= 0 $q0@308@01)
          (<
            $q0@308@01
            (Seq_length
              ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$4@198@01 0))))))
      (and
        (<= 0 $q0@308@01)
        (<
          $q0@308@01
          (Seq_length
            ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$4@198@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$4@198@01 0))
    $q0@308@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@931@11@931@225-aux|)))
(assert (forall (($q0@308@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@308@01)
      (<
        $q0@308@01
        (Seq_length
          ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$4@198@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$4@198@01 0))
        $q0@308@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$4@198@01 0))
    $q0@308@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@931@11@931@225|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($old_self, 1)): Int)
(declare-const $t@309@01 $Snap)
(assert (= $t@309@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] $struct_loc($old_self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$4@198@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($old_self, 2)): Int)
(declare-const $t@310@01 $Snap)
(assert (= $t@310@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] $struct_loc($old_self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$4@198@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($old_self, 3)): Int)
(declare-const $t@311@01 $Snap)
(assert (= $t@311@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($old_self, 3)): Int)
; [eval] ($struct_get($struct_loc($old_self, 3)): Int)
; [eval] $struct_loc($old_self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$4@198@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@312@01 $Snap)
(assert (= $t@312@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@313@01 $Snap)
(assert (= $t@313@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@314@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@314@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$4@198@01 6)) $q1@314@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$4@198@01 6)) $q1@314@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@936@11@936@196|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])): Int))
(declare-const $t@315@01 $Snap)
(assert (= $t@315@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@316@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@316@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$4@198@01 6)) $q1@316@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$4@198@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$4@198@01 6)) $q1@316@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@937@11@937@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@317@01 $Snap)
(assert (= $t@317@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@318@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 7)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@318@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$4@198@01 7)) $q2@318@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$4@198@01 7)) $q2@318@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@938@11@938@196|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])): Int))
(declare-const $t@319@01 $Snap)
(assert (= $t@319@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])): Int))
(declare-const $q2@320@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 7)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 7)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@320@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$4@198@01 7)) $q2@320@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$4@198@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$4@198@01 7)) $q2@320@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@939@11@939@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($old_self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@321@01 $Snap)
(assert (= $t@321@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($old_self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($old_self, -1)): Int)
; [eval] $struct_loc($old_self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$4@198@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $t@322@01 $Snap)
(assert (= $t@322@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $a@323@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $t@324@01 $Snap)
(assert (= $t@324@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $a@325@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$Dprev$1)
(declare-const $t@326@01 $Snap)
(assert (= $t@326@01 $Snap.unit))
; [eval] 0 <= $unwrap(l$Dprev$1)
; [eval] $unwrap(l$Dprev$1)
(assert (<= 0 ($unwrap<Int> l$Dprev$1@200@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$Ann$1)
(declare-const $t@327@01 $Snap)
(assert (= $t@327@01 $Snap.unit))
; [eval] 0 <= $unwrap(l$Ann$1)
; [eval] $unwrap(l$Ann$1)
(assert (<= 0 ($unwrap<Int> l$Ann$1@201@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$_x$1)
(declare-const $t@328@01 $Snap)
(assert (= $t@328@01 $Snap.unit))
; [eval] 0 <= $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
(assert (<= 0 ($unwrap<Int> l$_x$1@202@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$S$2)
(declare-const $t@329@01 $Snap)
(assert (= $t@329@01 $Snap.unit))
; [eval] 0 <= $unwrap(l$S$2)
; [eval] $unwrap(l$S$2)
(assert (<= 0 ($unwrap<Int> l$S$2@203@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$D$1)
(declare-const $t@330@01 $Snap)
(assert (= $t@330@01 $Snap.unit))
; [eval] 0 <= $unwrap(l$D$1)
; [eval] $unwrap(l$D$1)
(assert (<= 0 ($unwrap<Int> l$D$1@204@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale l$$idx >= 0 && l$$idx < 255
(declare-const $t@331@01 $Snap)
(assert (= $t@331@01 ($Snap.combine ($Snap.first $t@331@01) ($Snap.second $t@331@01))))
(assert (= ($Snap.first $t@331@01) $Snap.unit))
; [eval] l$$idx >= 0
(assert (>= l$havoc@194@01 0))
(assert (= ($Snap.second $t@331@01) $Snap.unit))
; [eval] l$$idx < 255
(assert (< l$havoc@194@01 255))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; l$_i := $wrap($range(0, 255)[l$$idx])
; [eval] $wrap($range(0, 255)[l$$idx])
; [eval] $range(0, 255)[l$$idx]
; [eval] $range(0, 255)
(set-option :timeout 0)
(push) ; 8
(assert (not (< l$havoc@194@01 (Seq_length ($range<Seq<Int>> 0 255)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const l$_i@332@01 $Int)
(assert (= l$_i@332@01 ($wrap<$Int> (Seq_index ($range<Seq<Int>> 0 255) l$havoc@194@01))))
; [exec]
; inhale $unwrap(l$S$2) == $unwrap(l$S$1) &&
;   $unwrap(l$Ann$1) == $unwrap(l$Ann)
(declare-const $t@333@01 $Snap)
(assert (= $t@333@01 ($Snap.combine ($Snap.first $t@333@01) ($Snap.second $t@333@01))))
(assert (= ($Snap.first $t@333@01) $Snap.unit))
; [eval] $unwrap(l$S$2) == $unwrap(l$S$1)
; [eval] $unwrap(l$S$2)
; [eval] $unwrap(l$S$1)
(assert (= ($unwrap<Int> l$S$2@203@01) ($unwrap<Int> l$S$1@278@01)))
(assert (= ($Snap.second $t@333@01) $Snap.unit))
; [eval] $unwrap(l$Ann$1) == $unwrap(l$Ann)
; [eval] $unwrap(l$Ann$1)
; [eval] $unwrap(l$Ann)
(assert (= ($unwrap<Int> l$Ann$1@201@01) ($unwrap<Int> l$Ann@285@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap(l$D$1) == $unwrap(l$S$2)
(declare-const $t@334@01 $Snap)
(assert (= $t@334@01 $Snap.unit))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap(l$D$1) == $unwrap(l$S$2)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@335@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 9
; [then-branch: 53 | 0 <= q$i@335@01 | live]
; [else-branch: 53 | !(0 <= q$i@335@01) | live]
(push) ; 10
; [then-branch: 53 | 0 <= q$i@335@01]
(assert (<= 0 q$i@335@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 11
; [then-branch: 54 | q$i@335@01 < 3 | live]
; [else-branch: 54 | !(q$i@335@01 < 3) | live]
(push) ; 12
; [then-branch: 54 | q$i@335@01 < 3]
(assert (< q$i@335@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 13
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 13
(assert (not (>= q$i@335@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< q$i@335@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 54 | !(q$i@335@01 < 3)]
(assert (not (< q$i@335@01 3)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@335@01 3)) (< q$i@335@01 3)))
(pop) ; 10
(push) ; 10
; [else-branch: 53 | !(0 <= q$i@335@01)]
(assert (not (<= 0 q$i@335@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (<= 0 q$i@335@01)
  (and (<= 0 q$i@335@01) (or (not (< q$i@335@01 3)) (< q$i@335@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@335@01)) (<= 0 q$i@335@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@335@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@335@01)
      (and (<= 0 q$i@335@01) (or (not (< q$i@335@01 3)) (< q$i@335@01 3))))
    (or (not (<= 0 q$i@335@01)) (<= 0 q$i@335@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@335@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@959@11@959@75-aux|)))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@335@01 Int)) (!
    (=>
      (and (<= 0 q$i@335@01) (< q$i@335@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@335@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@335@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@959@11@959@75|)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((q$i@335@01 Int)) (!
  (=>
    (and (<= 0 q$i@335@01) (< q$i@335@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@335@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@335@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@959@11@959@75|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | QA q$i@335@01 :: 0 <= q$i@335@01 && q$i@335@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@335@01] | live]
; [else-branch: 55 | !(QA q$i@335@01 :: 0 <= q$i@335@01 && q$i@335@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@335@01]) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 55 | QA q$i@335@01 :: 0 <= q$i@335@01 && q$i@335@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@335@01]]
(assert (forall ((q$i@335@01 Int)) (!
  (=>
    (and (<= 0 q$i@335@01) (< q$i@335@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@335@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@335@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@959@11@959@75|)))
; [eval] $unwrap(l$D$1) == $unwrap(l$S$2)
; [eval] $unwrap(l$D$1)
; [eval] $unwrap(l$S$2)
(pop) ; 9
(push) ; 9
; [else-branch: 55 | !(QA q$i@335@01 :: 0 <= q$i@335@01 && q$i@335@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@335@01])]
(assert (not
  (forall ((q$i@335@01 Int)) (!
    (=>
      (and (<= 0 q$i@335@01) (< q$i@335@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@335@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@335@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@959@11@959@75|))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@335@01 Int)) (!
      (=>
        (and (<= 0 q$i@335@01) (< q$i@335@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@335@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@335@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@959@11@959@75|)))
  (forall ((q$i@335@01 Int)) (!
    (=>
      (and (<= 0 q$i@335@01) (< q$i@335@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@335@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@335@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@959@11@959@75|))))
(assert (=>
  (forall ((q$i@335@01 Int)) (!
    (=>
      (and (<= 0 q$i@335@01) (< q$i@335@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@335@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@335@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@959@11@959@75|))
  (= ($unwrap<Int> l$D$1@204@01) ($unwrap<Int> l$S$2@203@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; l$D_P := l$D$1
; [exec]
; assert $unwrap(l$_x$1) * 2 == $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1) * 2 == $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1) * 2
; [eval] $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
(set-option :timeout 0)
(push) ; 8
(assert (not (=
  (* ($unwrap<Int> l$_x$1@202@01) 2)
  (+ ($unwrap<Int> l$_x$1@202@01) ($unwrap<Int> l$_x$1@202@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  (* ($unwrap<Int> l$_x$1@202@01) 2)
  (+ ($unwrap<Int> l$_x$1@202@01) ($unwrap<Int> l$_x$1@202@01))))
; [exec]
; inhale $unwrap($w_mul(l$_x$1, $wrap(2))) ==
;   $unwrap(l$_x$1) + $unwrap(l$_x$1)
(declare-const $t@336@01 $Snap)
(assert (= $t@336@01 $Snap.unit))
; [eval] $unwrap($w_mul(l$_x$1, $wrap(2))) == $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap($w_mul(l$_x$1, $wrap(2)))
; [eval] $w_mul(l$_x$1, $wrap(2))
; [eval] $wrap(2)
; [eval] $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
(assert (=
  ($unwrap<Int> ($w_mul<$Int> l$_x$1@202@01 ($wrap<$Int> 2)))
  (+ ($unwrap<Int> l$_x$1@202@01) ($unwrap<Int> l$_x$1@202@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale $unwrap(l$_x$1) * 2 == $unwrap(l$_x$1) + $unwrap(l$_x$1)
(declare-const $t@337@01 $Snap)
(assert (= $t@337@01 $Snap.unit))
; [eval] $unwrap(l$_x$1) * 2 == $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1) * 2
; [eval] $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; assert $unwrap(l$_x$1) * 3 ==
;   $unwrap(l$_x$1) + $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1) * 3 == $unwrap(l$_x$1) + $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1) * 3
; [eval] $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1) + $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
(set-option :timeout 0)
(push) ; 8
(assert (not (=
  (* ($unwrap<Int> l$_x$1@202@01) 3)
  (+
    (+ ($unwrap<Int> l$_x$1@202@01) ($unwrap<Int> l$_x$1@202@01))
    ($unwrap<Int> l$_x$1@202@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  (* ($unwrap<Int> l$_x$1@202@01) 3)
  (+
    (+ ($unwrap<Int> l$_x$1@202@01) ($unwrap<Int> l$_x$1@202@01))
    ($unwrap<Int> l$_x$1@202@01))))
; [exec]
; inhale $unwrap($w_mul(l$_x$1, $wrap(3))) ==
;   $unwrap($wrap($unwrap(l$_x$1) + $unwrap(l$_x$1))) + $unwrap(l$_x$1)
(declare-const $t@338@01 $Snap)
(assert (= $t@338@01 $Snap.unit))
; [eval] $unwrap($w_mul(l$_x$1, $wrap(3))) == $unwrap($wrap($unwrap(l$_x$1) + $unwrap(l$_x$1))) + $unwrap(l$_x$1)
; [eval] $unwrap($w_mul(l$_x$1, $wrap(3)))
; [eval] $w_mul(l$_x$1, $wrap(3))
; [eval] $wrap(3)
; [eval] $unwrap($wrap($unwrap(l$_x$1) + $unwrap(l$_x$1))) + $unwrap(l$_x$1)
; [eval] $unwrap($wrap($unwrap(l$_x$1) + $unwrap(l$_x$1)))
; [eval] $wrap($unwrap(l$_x$1) + $unwrap(l$_x$1))
; [eval] $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
(assert (=
  ($unwrap<Int> ($w_mul<$Int> l$_x$1@202@01 ($wrap<$Int> 3)))
  (+
    ($unwrap<Int> ($wrap<$Int> (+
      ($unwrap<Int> l$_x$1@202@01)
      ($unwrap<Int> l$_x$1@202@01))))
    ($unwrap<Int> l$_x$1@202@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale $unwrap(l$_x$1) * 3 ==
;   $unwrap(l$_x$1) + $unwrap(l$_x$1) + $unwrap(l$_x$1)
(declare-const $t@339@01 $Snap)
(assert (= $t@339@01 $Snap.unit))
; [eval] $unwrap(l$_x$1) * 3 == $unwrap(l$_x$1) + $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1) * 3
; [eval] $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1) + $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1) + $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
; [eval] $unwrap(l$_x$1)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; assert true && true
; [exec]
; inhale l$$idx$1 == 0
(declare-const $t@340@01 $Snap)
(assert (= $t@340@01 $Snap.unit))
; [eval] l$$idx$1 == 0
(assert (= l$$idx$1@207@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; l$_x$2 := $wrap(l$xp[l$$idx$1])
; [eval] $wrap(l$xp[l$$idx$1])
; [eval] l$xp[l$$idx$1]
(set-option :timeout 0)
(push) ; 8
(assert (not (>= l$$idx$1@207@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< l$$idx$1@207@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const l$_x$2@341@01 $Int)
(assert (= l$_x$2@341@01 ($wrap<$Int> (Seq_index l$xp@166@01 l$$idx$1@207@01))))
; [exec]
; exhale $unwrap(l$S$2) == $unwrap(l$S$2) && $unwrap(l$D$1) == $unwrap(l$D$1)
; [eval] $unwrap(l$S$2) == $unwrap(l$S$2)
; [eval] $unwrap(l$S$2)
; [eval] $unwrap(l$S$2)
; [eval] $unwrap(l$D$1) == $unwrap(l$D$1)
; [eval] $unwrap(l$D$1)
; [eval] $unwrap(l$D$1)
; [exec]
; exhale (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap(l$D_P) == $unwrap(l$D$1)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap(l$D_P) == $unwrap(l$D$1)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@342@01 Int)
(push) ; 8
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 9
; [then-branch: 56 | 0 <= q$i@342@01 | live]
; [else-branch: 56 | !(0 <= q$i@342@01) | live]
(push) ; 10
; [then-branch: 56 | 0 <= q$i@342@01]
(assert (<= 0 q$i@342@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 11
; [then-branch: 57 | q$i@342@01 < 3 | live]
; [else-branch: 57 | !(q$i@342@01 < 3) | live]
(push) ; 12
; [then-branch: 57 | q$i@342@01 < 3]
(assert (< q$i@342@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 13
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 13
(assert (not (>= q$i@342@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< q$i@342@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 57 | !(q$i@342@01 < 3)]
(assert (not (< q$i@342@01 3)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@342@01 3)) (< q$i@342@01 3)))
(pop) ; 10
(push) ; 10
; [else-branch: 56 | !(0 <= q$i@342@01)]
(assert (not (<= 0 q$i@342@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (<= 0 q$i@342@01)
  (and (<= 0 q$i@342@01) (or (not (< q$i@342@01 3)) (< q$i@342@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@342@01)) (<= 0 q$i@342@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@342@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@342@01)
      (and (<= 0 q$i@342@01) (or (not (< q$i@342@01 3)) (< q$i@342@01 3))))
    (or (not (<= 0 q$i@342@01)) (<= 0 q$i@342@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@342@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@974@11@974@75-aux|)))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@342@01 Int)) (!
    (=>
      (and (<= 0 q$i@342@01) (< q$i@342@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@342@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@342@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@974@11@974@75|)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((q$i@342@01 Int)) (!
  (=>
    (and (<= 0 q$i@342@01) (< q$i@342@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@342@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@342@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@974@11@974@75|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 58 | QA q$i@342@01 :: 0 <= q$i@342@01 && q$i@342@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@342@01] | live]
; [else-branch: 58 | !(QA q$i@342@01 :: 0 <= q$i@342@01 && q$i@342@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@342@01]) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 58 | QA q$i@342@01 :: 0 <= q$i@342@01 && q$i@342@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@342@01]]
(assert (forall ((q$i@342@01 Int)) (!
  (=>
    (and (<= 0 q$i@342@01) (< q$i@342@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@342@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@342@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@974@11@974@75|)))
; [eval] $unwrap(l$D_P) == $unwrap(l$D$1)
; [eval] $unwrap(l$D_P)
; [eval] $unwrap(l$D$1)
(pop) ; 9
(push) ; 9
; [else-branch: 58 | !(QA q$i@342@01 :: 0 <= q$i@342@01 && q$i@342@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@342@01])]
(assert (not
  (forall ((q$i@342@01 Int)) (!
    (=>
      (and (<= 0 q$i@342@01) (< q$i@342@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@342@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@342@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@974@11@974@75|))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@342@01 Int)) (!
      (=>
        (and (<= 0 q$i@342@01) (< q$i@342@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@342@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@342@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@974@11@974@75|)))
  (forall ((q$i@342@01 Int)) (!
    (=>
      (and (<= 0 q$i@342@01) (< q$i@342@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@342@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@342@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@974@11@974@75|))))
; [exec]
; l$_x$2$pre_self := self
; [exec]
; l$_x$2$pre_$contracts := $contracts
; [exec]
; l$$idx$1 := l$havoc$6
; [exec]
; l$_x$2 := $wrap(l$havoc$7)
; [eval] $wrap(l$havoc$7)
(declare-const l$_x$2@343@01 $Int)
(assert (= l$_x$2@343@01 ($wrap<$Int> l$havoc$7@211@01)))
; [exec]
; self := l$havoc$8
; [exec]
; $contracts := l$havoc$9
; [exec]
; $old_self := l$havoc$10
; [exec]
; $old_$contracts := l$havoc$11
; [exec]
; inhale |($struct_get($struct_loc(self, 0)): Seq[Int])| == 3
(declare-const $t@344@01 $Snap)
(assert (= $t@344@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$8@212@01 0))) 3))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0])
(declare-const $t@345@01 $Snap)
(assert (= $t@345@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0])
(declare-const $q0@346@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 9
; [then-branch: 59 | !(0 <= $q0@346@01) | live]
; [else-branch: 59 | 0 <= $q0@346@01 | live]
(push) ; 10
; [then-branch: 59 | !(0 <= $q0@346@01)]
(assert (not (<= 0 $q0@346@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 59 | 0 <= $q0@346@01]
(assert (<= 0 $q0@346@01))
; [eval] $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@346@01) (not (<= 0 $q0@346@01))))
(push) ; 9
; [then-branch: 60 | 0 <= $q0@346@01 && $q0@346@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$8@212@01, 0))| | live]
; [else-branch: 60 | !(0 <= $q0@346@01 && $q0@346@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$8@212@01, 0))|) | live]
(push) ; 10
; [then-branch: 60 | 0 <= $q0@346@01 && $q0@346@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$8@212@01, 0))|]
(assert (and
  (<= 0 $q0@346@01)
  (<
    $q0@346@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$8@212@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(push) ; 11
(assert (not (>= $q0@346@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 60 | !(0 <= $q0@346@01 && $q0@346@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$8@212@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@346@01)
    (<
      $q0@346@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$8@212@01 0)))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@346@01)
      (<
        $q0@346@01
        (Seq_length
          ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$8@212@01 0))))))
  (and
    (<= 0 $q0@346@01)
    (<
      $q0@346@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$8@212@01 0)))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@346@01 Int)) (!
  (and
    (or (<= 0 $q0@346@01) (not (<= 0 $q0@346@01)))
    (or
      (not
        (and
          (<= 0 $q0@346@01)
          (<
            $q0@346@01
            (Seq_length
              ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$8@212@01 0))))))
      (and
        (<= 0 $q0@346@01)
        (<
          $q0@346@01
          (Seq_length
            ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$8@212@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$8@212@01 0))
    $q0@346@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@989@11@989@210-aux|)))
(assert (forall (($q0@346@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@346@01)
      (<
        $q0@346@01
        (Seq_length
          ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$8@212@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$8@212@01 0))
        $q0@346@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$8@212@01 0))
    $q0@346@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@989@11@989@210|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int)
(declare-const $t@347@01 $Snap)
(assert (= $t@347@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$8@212@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int)
(declare-const $t@348@01 $Snap)
(assert (= $t@348@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$8@212@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 3)): Int)
(declare-const $t@349@01 $Snap)
(assert (= $t@349@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$8@212@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@350@01 $Snap)
(assert (= $t@350@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@351@01 $Snap)
(assert (= $t@351@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@352@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@352@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$8@212@01 6)) $q1@352@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$8@212@01 6)) $q1@352@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@994@11@994@186|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@353@01 $Snap)
(assert (= $t@353@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@354@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
; [eval] ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@354@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$8@212@01 6)) $q1@354@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$8@212@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$8@212@01 6)) $q1@354@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@995@11@995@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@355@01 $Snap)
(assert (= $t@355@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@356@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@356@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$8@212@01 7)) $q2@356@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$8@212@01 7)) $q2@356@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@996@11@996@186|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $t@357@01 $Snap)
(assert (= $t@357@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $q2@358@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
; [eval] ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@358@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$8@212@01 7)) $q2@358@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$8@212@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$8@212@01 7)) $q2@358@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@997@11@997@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@359@01 $Snap)
(assert (= $t@359@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$8@212@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($old_self, 0)): Seq[Int])| == 3
(declare-const $t@360@01 $Snap)
(assert (= $t@360@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($old_self, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc($old_self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($old_self, 0)): Seq[Int])
; [eval] $struct_loc($old_self, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$10@214@01 0))) 3))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0])
(declare-const $t@361@01 $Snap)
(assert (= $t@361@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0])
(declare-const $q0@362@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 9
; [then-branch: 61 | !(0 <= $q0@362@01) | live]
; [else-branch: 61 | 0 <= $q0@362@01 | live]
(push) ; 10
; [then-branch: 61 | !(0 <= $q0@362@01)]
(assert (not (<= 0 $q0@362@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 61 | 0 <= $q0@362@01]
(assert (<= 0 $q0@362@01))
; [eval] $q0 < |($struct_get($struct_loc($old_self, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc($old_self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc($old_self, 0)): Seq[Int])
; [eval] $struct_loc($old_self, 0)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@362@01) (not (<= 0 $q0@362@01))))
(push) ; 9
; [then-branch: 62 | 0 <= $q0@362@01 && $q0@362@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$10@214@01, 0))| | live]
; [else-branch: 62 | !(0 <= $q0@362@01 && $q0@362@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$10@214@01, 0))|) | live]
(push) ; 10
; [then-branch: 62 | 0 <= $q0@362@01 && $q0@362@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$10@214@01, 0))|]
(assert (and
  (<= 0 $q0@362@01)
  (<
    $q0@362@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$10@214@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($old_self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc($old_self, 0)): Seq[Int])
; [eval] $struct_loc($old_self, 0)
(push) ; 11
(assert (not (>= $q0@362@01 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 62 | !(0 <= $q0@362@01 && $q0@362@01 < |$struct_get[Seq[Int]]($struct_loc[Int](l$havoc$10@214@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@362@01)
    (<
      $q0@362@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$10@214@01 0)))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@362@01)
      (<
        $q0@362@01
        (Seq_length
          ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$10@214@01 0))))))
  (and
    (<= 0 $q0@362@01)
    (<
      $q0@362@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$10@214@01 0)))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@362@01 Int)) (!
  (and
    (or (<= 0 $q0@362@01) (not (<= 0 $q0@362@01)))
    (or
      (not
        (and
          (<= 0 $q0@362@01)
          (<
            $q0@362@01
            (Seq_length
              ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$10@214@01 0))))))
      (and
        (<= 0 $q0@362@01)
        (<
          $q0@362@01
          (Seq_length
            ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$10@214@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$10@214@01 0))
    $q0@362@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1001@11@1001@225-aux|)))
(assert (forall (($q0@362@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@362@01)
      (<
        $q0@362@01
        (Seq_length
          ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$10@214@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$10@214@01 0))
        $q0@362@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$10@214@01 0))
    $q0@362@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1001@11@1001@225|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($old_self, 1)): Int)
(declare-const $t@363@01 $Snap)
(assert (= $t@363@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] ($struct_get($struct_loc($old_self, 1)): Int)
; [eval] $struct_loc($old_self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$10@214@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($old_self, 2)): Int)
(declare-const $t@364@01 $Snap)
(assert (= $t@364@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] $struct_loc($old_self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$10@214@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($old_self, 3)): Int)
(declare-const $t@365@01 $Snap)
(assert (= $t@365@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($old_self, 3)): Int)
; [eval] ($struct_get($struct_loc($old_self, 3)): Int)
; [eval] $struct_loc($old_self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$10@214@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@366@01 $Snap)
(assert (= $t@366@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@367@01 $Snap)
(assert (= $t@367@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@368@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@368@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$10@214@01 6)) $q1@368@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$10@214@01 6)) $q1@368@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1006@11@1006@196|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])): Int))
(declare-const $t@369@01 $Snap)
(assert (= $t@369@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@370@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@370@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$10@214@01 6)) $q1@370@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$10@214@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$10@214@01 6)) $q1@370@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1007@11@1007@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@371@01 $Snap)
(assert (= $t@371@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@372@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 7)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@372@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$10@214@01 7)) $q2@372@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$10@214@01 7)) $q2@372@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1008@11@1008@196|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])): Int))
(declare-const $t@373@01 $Snap)
(assert (= $t@373@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])): Int))
(declare-const $q2@374@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 7)
; [eval] ($map_sum(($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($old_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 7)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@374@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$10@214@01 7)) $q2@374@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$10@214@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$10@214@01 7)) $q2@374@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1009@11@1009@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($old_self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@375@01 $Snap)
(assert (= $t@375@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($old_self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($old_self, -1)): Int)
; [eval] $struct_loc($old_self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$10@214@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $t@376@01 $Snap)
(assert (= $t@376@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $a@377@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 6)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $t@378@01 $Snap)
(assert (= $t@378@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $a@379@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$D_P$1)
(declare-const $t@380@01 $Snap)
(assert (= $t@380@01 $Snap.unit))
; [eval] 0 <= $unwrap(l$D_P$1)
; [eval] $unwrap(l$D_P$1)
(assert (<= 0 ($unwrap<Int> l$D_P$1@216@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$S$3)
(declare-const $t@381@01 $Snap)
(assert (= $t@381@01 $Snap.unit))
; [eval] 0 <= $unwrap(l$S$3)
; [eval] $unwrap(l$S$3)
(assert (<= 0 ($unwrap<Int> l$S$3@217@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$D$2)
(declare-const $t@382@01 $Snap)
(assert (= $t@382@01 $Snap.unit))
; [eval] 0 <= $unwrap(l$D$2)
; [eval] $unwrap(l$D$2)
(assert (<= 0 ($unwrap<Int> l$D$2@218@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale l$$idx$1 >= 0 && l$$idx$1 < 3
(declare-const $t@383@01 $Snap)
(assert (= $t@383@01 ($Snap.combine ($Snap.first $t@383@01) ($Snap.second $t@383@01))))
(assert (= ($Snap.first $t@383@01) $Snap.unit))
; [eval] l$$idx$1 >= 0
(assert (>= l$havoc$6@210@01 0))
(assert (= ($Snap.second $t@383@01) $Snap.unit))
; [eval] l$$idx$1 < 3
(assert (< l$havoc$6@210@01 3))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; l$_x$2 := $wrap(l$xp[l$$idx$1])
; [eval] $wrap(l$xp[l$$idx$1])
; [eval] l$xp[l$$idx$1]
(set-option :timeout 0)
(push) ; 8
(assert (not (< l$havoc$6@210@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const l$_x$2@384@01 $Int)
(assert (= l$_x$2@384@01 ($wrap<$Int> (Seq_index l$xp@166@01 l$havoc$6@210@01))))
; [exec]
; inhale $unwrap(l$S$3) == $unwrap(l$S$2) && $unwrap(l$D$2) == $unwrap(l$D$1)
(declare-const $t@385@01 $Snap)
(assert (= $t@385@01 ($Snap.combine ($Snap.first $t@385@01) ($Snap.second $t@385@01))))
(assert (= ($Snap.first $t@385@01) $Snap.unit))
; [eval] $unwrap(l$S$3) == $unwrap(l$S$2)
; [eval] $unwrap(l$S$3)
; [eval] $unwrap(l$S$2)
(assert (= ($unwrap<Int> l$S$3@217@01) ($unwrap<Int> l$S$2@203@01)))
(assert (= ($Snap.second $t@385@01) $Snap.unit))
; [eval] $unwrap(l$D$2) == $unwrap(l$D$1)
; [eval] $unwrap(l$D$2)
; [eval] $unwrap(l$D$1)
(assert (= ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$1@204@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap(l$D_P$1) == $unwrap(l$D$2)
(declare-const $t@386@01 $Snap)
(assert (= $t@386@01 $Snap.unit))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap(l$D_P$1) == $unwrap(l$D$2)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@387@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 9
; [then-branch: 63 | 0 <= q$i@387@01 | live]
; [else-branch: 63 | !(0 <= q$i@387@01) | live]
(push) ; 10
; [then-branch: 63 | 0 <= q$i@387@01]
(assert (<= 0 q$i@387@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 11
; [then-branch: 64 | q$i@387@01 < 3 | live]
; [else-branch: 64 | !(q$i@387@01 < 3) | live]
(push) ; 12
; [then-branch: 64 | q$i@387@01 < 3]
(assert (< q$i@387@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 13
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 13
(assert (not (>= q$i@387@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< q$i@387@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 64 | !(q$i@387@01 < 3)]
(assert (not (< q$i@387@01 3)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@387@01 3)) (< q$i@387@01 3)))
(pop) ; 10
(push) ; 10
; [else-branch: 63 | !(0 <= q$i@387@01)]
(assert (not (<= 0 q$i@387@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (<= 0 q$i@387@01)
  (and (<= 0 q$i@387@01) (or (not (< q$i@387@01 3)) (< q$i@387@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@387@01)) (<= 0 q$i@387@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@387@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@387@01)
      (and (<= 0 q$i@387@01) (or (not (< q$i@387@01 3)) (< q$i@387@01 3))))
    (or (not (<= 0 q$i@387@01)) (<= 0 q$i@387@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@387@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1025@11@1025@75-aux|)))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@387@01 Int)) (!
    (=>
      (and (<= 0 q$i@387@01) (< q$i@387@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@387@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@387@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1025@11@1025@75|)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((q$i@387@01 Int)) (!
  (=>
    (and (<= 0 q$i@387@01) (< q$i@387@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@387@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@387@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1025@11@1025@75|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 65 | QA q$i@387@01 :: 0 <= q$i@387@01 && q$i@387@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@387@01] | live]
; [else-branch: 65 | !(QA q$i@387@01 :: 0 <= q$i@387@01 && q$i@387@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@387@01]) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 65 | QA q$i@387@01 :: 0 <= q$i@387@01 && q$i@387@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@387@01]]
(assert (forall ((q$i@387@01 Int)) (!
  (=>
    (and (<= 0 q$i@387@01) (< q$i@387@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@387@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@387@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1025@11@1025@75|)))
; [eval] $unwrap(l$D_P$1) == $unwrap(l$D$2)
; [eval] $unwrap(l$D_P$1)
; [eval] $unwrap(l$D$2)
(pop) ; 9
(push) ; 9
; [else-branch: 65 | !(QA q$i@387@01 :: 0 <= q$i@387@01 && q$i@387@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@387@01])]
(assert (not
  (forall ((q$i@387@01 Int)) (!
    (=>
      (and (<= 0 q$i@387@01) (< q$i@387@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@387@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@387@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1025@11@1025@75|))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@387@01 Int)) (!
      (=>
        (and (<= 0 q$i@387@01) (< q$i@387@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@387@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@387@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1025@11@1025@75|)))
  (forall ((q$i@387@01 Int)) (!
    (=>
      (and (<= 0 q$i@387@01) (< q$i@387@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@387@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@387@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1025@11@1025@75|))))
(assert (=>
  (forall ((q$i@387@01 Int)) (!
    (=>
      (and (<= 0 q$i@387@01) (< q$i@387@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@387@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@387@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1025@11@1025@75|))
  (= ($unwrap<Int> l$D_P$1@216@01) ($unwrap<Int> l$D$2@218@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap((0 == $unwrap($w_mul(l$_x$2, $wrap(3))) ?
;     $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \
;     $unwrap($w_mul(l$_x$2, $wrap(3)))) :
;     $w_div($w_mul(l$D_P$1, l$D$2), $w_mul(l$_x$2, $wrap(3))))) ==
;   $unwrap((0 == $unwrap(l$S$3) ?
;     $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap(l$S$3)) :
;     $w_div($w_mul(l$D_P$1, l$D$2), l$S$3)))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap((0 == $unwrap($w_mul(l$_x$2, $wrap(3))) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($w_mul(l$_x$2, $wrap(3)))) : $w_div($w_mul(l$D_P$1, l$D$2), $w_mul(l$_x$2, $wrap(3))))) == $unwrap((0 == $unwrap(l$S$3) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap(l$S$3)) : $w_div($w_mul(l$D_P$1, l$D$2), l$S$3)))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@388@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 9
; [then-branch: 66 | 0 <= q$i@388@01 | live]
; [else-branch: 66 | !(0 <= q$i@388@01) | live]
(push) ; 10
; [then-branch: 66 | 0 <= q$i@388@01]
(assert (<= 0 q$i@388@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 11
; [then-branch: 67 | q$i@388@01 < 3 | live]
; [else-branch: 67 | !(q$i@388@01 < 3) | live]
(push) ; 12
; [then-branch: 67 | q$i@388@01 < 3]
(assert (< q$i@388@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 13
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 13
(assert (not (>= q$i@388@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< q$i@388@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 67 | !(q$i@388@01 < 3)]
(assert (not (< q$i@388@01 3)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@388@01 3)) (< q$i@388@01 3)))
(pop) ; 10
(push) ; 10
; [else-branch: 66 | !(0 <= q$i@388@01)]
(assert (not (<= 0 q$i@388@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (<= 0 q$i@388@01)
  (and (<= 0 q$i@388@01) (or (not (< q$i@388@01 3)) (< q$i@388@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@388@01)) (<= 0 q$i@388@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@388@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@388@01)
      (and (<= 0 q$i@388@01) (or (not (< q$i@388@01 3)) (< q$i@388@01 3))))
    (or (not (<= 0 q$i@388@01)) (<= 0 q$i@388@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@388@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1027@11@1027@75-aux|)))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@388@01 Int)) (!
    (=>
      (and (<= 0 q$i@388@01) (< q$i@388@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@388@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@388@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1027@11@1027@75|)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((q$i@388@01 Int)) (!
  (=>
    (and (<= 0 q$i@388@01) (< q$i@388@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@388@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@388@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1027@11@1027@75|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 68 | QA q$i@388@01 :: 0 <= q$i@388@01 && q$i@388@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@388@01] | live]
; [else-branch: 68 | !(QA q$i@388@01 :: 0 <= q$i@388@01 && q$i@388@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@388@01]) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 68 | QA q$i@388@01 :: 0 <= q$i@388@01 && q$i@388@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@388@01]]
(assert (forall ((q$i@388@01 Int)) (!
  (=>
    (and (<= 0 q$i@388@01) (< q$i@388@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@388@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@388@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1027@11@1027@75|)))
; [eval] $unwrap((0 == $unwrap($w_mul(l$_x$2, $wrap(3))) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($w_mul(l$_x$2, $wrap(3)))) : $w_div($w_mul(l$D_P$1, l$D$2), $w_mul(l$_x$2, $wrap(3))))) == $unwrap((0 == $unwrap(l$S$3) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap(l$S$3)) : $w_div($w_mul(l$D_P$1, l$D$2), l$S$3)))
; [eval] $unwrap((0 == $unwrap($w_mul(l$_x$2, $wrap(3))) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($w_mul(l$_x$2, $wrap(3)))) : $w_div($w_mul(l$D_P$1, l$D$2), $w_mul(l$_x$2, $wrap(3)))))
; [eval] (0 == $unwrap($w_mul(l$_x$2, $wrap(3))) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($w_mul(l$_x$2, $wrap(3)))) : $w_div($w_mul(l$D_P$1, l$D$2), $w_mul(l$_x$2, $wrap(3))))
; [eval] 0 == $unwrap($w_mul(l$_x$2, $wrap(3)))
; [eval] $unwrap($w_mul(l$_x$2, $wrap(3)))
; [eval] $w_mul(l$_x$2, $wrap(3))
; [eval] $wrap(3)
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not (= 0 ($unwrap<Int> ($w_mul<$Int> l$_x$2@384@01 ($wrap<$Int> 3)))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 69 | 0 == $unwrap[Int]($w_mul[$Int](l$_x$2@384@01, $wrap[$Int](3))) | dead]
; [else-branch: 69 | 0 != $unwrap[Int]($w_mul[$Int](l$_x$2@384@01, $wrap[$Int](3))) | live]
(set-option :timeout 0)
(push) ; 11
; [else-branch: 69 | 0 != $unwrap[Int]($w_mul[$Int](l$_x$2@384@01, $wrap[$Int](3)))]
(assert (not (= 0 ($unwrap<Int> ($w_mul<$Int> l$_x$2@384@01 ($wrap<$Int> 3))))))
; [eval] $w_div($w_mul(l$D_P$1, l$D$2), $w_mul(l$_x$2, $wrap(3)))
; [eval] $w_mul(l$D_P$1, l$D$2)
; [eval] $w_mul(l$_x$2, $wrap(3))
; [eval] $wrap(3)
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (not (= 0 ($unwrap<Int> ($w_mul<$Int> l$_x$2@384@01 ($wrap<$Int> 3))))))
; [eval] $unwrap((0 == $unwrap(l$S$3) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap(l$S$3)) : $w_div($w_mul(l$D_P$1, l$D$2), l$S$3)))
; [eval] (0 == $unwrap(l$S$3) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap(l$S$3)) : $w_div($w_mul(l$D_P$1, l$D$2), l$S$3))
; [eval] 0 == $unwrap(l$S$3)
; [eval] $unwrap(l$S$3)
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not (= 0 ($unwrap<Int> l$S$3@217@01)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 70 | 0 == $unwrap[Int](l$S$3@217@01) | dead]
; [else-branch: 70 | 0 != $unwrap[Int](l$S$3@217@01) | live]
(set-option :timeout 0)
(push) ; 11
; [else-branch: 70 | 0 != $unwrap[Int](l$S$3@217@01)]
(assert (not (= 0 ($unwrap<Int> l$S$3@217@01))))
; [eval] $w_div($w_mul(l$D_P$1, l$D$2), l$S$3)
; [eval] $w_mul(l$D_P$1, l$D$2)
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (not (= 0 ($unwrap<Int> l$S$3@217@01))))
(pop) ; 9
(push) ; 9
; [else-branch: 68 | !(QA q$i@388@01 :: 0 <= q$i@388@01 && q$i@388@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@388@01])]
(assert (not
  (forall ((q$i@388@01 Int)) (!
    (=>
      (and (<= 0 q$i@388@01) (< q$i@388@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@388@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@388@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1027@11@1027@75|))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (forall ((q$i@388@01 Int)) (!
    (=>
      (and (<= 0 q$i@388@01) (< q$i@388@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@388@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@388@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1027@11@1027@75|))
  (and
    (forall ((q$i@388@01 Int)) (!
      (=>
        (and (<= 0 q$i@388@01) (< q$i@388@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@388@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@388@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1027@11@1027@75|))
    (not (= 0 ($unwrap<Int> ($w_mul<$Int> l$_x$2@384@01 ($wrap<$Int> 3)))))
    (not (= 0 ($unwrap<Int> l$S$3@217@01))))))
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@388@01 Int)) (!
      (=>
        (and (<= 0 q$i@388@01) (< q$i@388@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@388@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@388@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1027@11@1027@75|)))
  (forall ((q$i@388@01 Int)) (!
    (=>
      (and (<= 0 q$i@388@01) (< q$i@388@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@388@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@388@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1027@11@1027@75|))))
(push) ; 8
(assert (not (=>
  (forall ((q$i@388@01 Int)) (!
    (=>
      (and (<= 0 q$i@388@01) (< q$i@388@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@388@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@388@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1027@11@1027@75|))
  (=
    ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) ($w_mul<$Int> l$_x$2@384@01 ($wrap<$Int> 3))))
    ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) l$S$3@217@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@388@01 Int)) (!
    (=>
      (and (<= 0 q$i@388@01) (< q$i@388@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@388@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@388@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1027@11@1027@75|))
  (=
    ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) ($w_mul<$Int> l$_x$2@384@01 ($wrap<$Int> 3))))
    ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) l$S$3@217@01)))))
; [exec]
; assert (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   lemma$mul_div_same(l$D_P$1, l$D$2)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> lemma$mul_div_same(l$D_P$1, l$D$2)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@389@01 Int)
(push) ; 8
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 9
; [then-branch: 71 | 0 <= q$i@389@01 | live]
; [else-branch: 71 | !(0 <= q$i@389@01) | live]
(push) ; 10
; [then-branch: 71 | 0 <= q$i@389@01]
(assert (<= 0 q$i@389@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 11
; [then-branch: 72 | q$i@389@01 < 3 | live]
; [else-branch: 72 | !(q$i@389@01 < 3) | live]
(push) ; 12
; [then-branch: 72 | q$i@389@01 < 3]
(assert (< q$i@389@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 13
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 13
(assert (not (>= q$i@389@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< q$i@389@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 72 | !(q$i@389@01 < 3)]
(assert (not (< q$i@389@01 3)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@389@01 3)) (< q$i@389@01 3)))
(pop) ; 10
(push) ; 10
; [else-branch: 71 | !(0 <= q$i@389@01)]
(assert (not (<= 0 q$i@389@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (<= 0 q$i@389@01)
  (and (<= 0 q$i@389@01) (or (not (< q$i@389@01 3)) (< q$i@389@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@389@01)) (<= 0 q$i@389@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@389@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@389@01)
      (and (<= 0 q$i@389@01) (or (not (< q$i@389@01 3)) (< q$i@389@01 3))))
    (or (not (<= 0 q$i@389@01)) (<= 0 q$i@389@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@389@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1028@11@1028@75-aux|)))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@389@01 Int)) (!
    (=>
      (and (<= 0 q$i@389@01) (< q$i@389@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@389@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@389@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1028@11@1028@75|)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((q$i@389@01 Int)) (!
  (=>
    (and (<= 0 q$i@389@01) (< q$i@389@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@389@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@389@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1028@11@1028@75|))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
; [then-branch: 73 | QA q$i@389@01 :: 0 <= q$i@389@01 && q$i@389@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@389@01] | live]
; [else-branch: 73 | !(QA q$i@389@01 :: 0 <= q$i@389@01 && q$i@389@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@389@01]) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 73 | QA q$i@389@01 :: 0 <= q$i@389@01 && q$i@389@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@389@01]]
(assert (forall ((q$i@389@01 Int)) (!
  (=>
    (and (<= 0 q$i@389@01) (< q$i@389@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@389@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@389@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1028@11@1028@75|)))
; [eval] lemma$mul_div_same(l$D_P$1, l$D$2)
(push) ; 10
; [eval] 0 <= $unwrap(l$x)
; [eval] $unwrap(l$x)
; [eval] 0 <= $unwrap(l$y)
; [eval] $unwrap(l$y)
; [eval] $unwrap(l$y) > 0
; [eval] $unwrap(l$y)
(push) ; 11
(assert (not (> ($unwrap<Int> l$D$2@218@01) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (> ($unwrap<Int> l$D$2@218@01) 0))
(assert (lemma$mul_div_same%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) l$D_P$1@216@01 l$D$2@218@01))
(pop) ; 10
; Joined path conditions
(assert (and
  (> ($unwrap<Int> l$D$2@218@01) 0)
  (lemma$mul_div_same%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) l$D_P$1@216@01 l$D$2@218@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 73 | !(QA q$i@389@01 :: 0 <= q$i@389@01 && q$i@389@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@389@01])]
(assert (not
  (forall ((q$i@389@01 Int)) (!
    (=>
      (and (<= 0 q$i@389@01) (< q$i@389@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@389@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@389@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1028@11@1028@75|))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (forall ((q$i@389@01 Int)) (!
    (=>
      (and (<= 0 q$i@389@01) (< q$i@389@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@389@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@389@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1028@11@1028@75|))
  (and
    (forall ((q$i@389@01 Int)) (!
      (=>
        (and (<= 0 q$i@389@01) (< q$i@389@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@389@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@389@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1028@11@1028@75|))
    (> ($unwrap<Int> l$D$2@218@01) 0)
    (lemma$mul_div_same%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) l$D_P$1@216@01 l$D$2@218@01))))
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@389@01 Int)) (!
      (=>
        (and (<= 0 q$i@389@01) (< q$i@389@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@389@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@389@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1028@11@1028@75|)))
  (forall ((q$i@389@01 Int)) (!
    (=>
      (and (<= 0 q$i@389@01) (< q$i@389@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@389@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@389@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1028@11@1028@75|))))
(push) ; 8
(assert (not (=>
  (forall ((q$i@389@01 Int)) (!
    (=>
      (and (<= 0 q$i@389@01) (< q$i@389@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@389@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@389@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1028@11@1028@75|))
  (lemma$mul_div_same ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) l$D_P$1@216@01 l$D$2@218@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@389@01 Int)) (!
    (=>
      (and (<= 0 q$i@389@01) (< q$i@389@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@389@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@389@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1028@11@1028@75|))
  (lemma$mul_div_same ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) l$D_P$1@216@01 l$D$2@218@01)))
; [exec]
; assert (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap((0 == $unwrap($w_mul(l$_x$2, $wrap(3))) ?
;     $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \
;     $unwrap($w_mul(l$_x$2, $wrap(3)))) :
;     $w_div($w_mul(l$D_P$1, l$D$2), $w_mul(l$_x$2, $wrap(3))))) ==
;   $unwrap(l$D_P$1)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap((0 == $unwrap($w_mul(l$_x$2, $wrap(3))) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($w_mul(l$_x$2, $wrap(3)))) : $w_div($w_mul(l$D_P$1, l$D$2), $w_mul(l$_x$2, $wrap(3))))) == $unwrap(l$D_P$1)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@390@01 Int)
(push) ; 8
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 9
; [then-branch: 74 | 0 <= q$i@390@01 | live]
; [else-branch: 74 | !(0 <= q$i@390@01) | live]
(push) ; 10
; [then-branch: 74 | 0 <= q$i@390@01]
(assert (<= 0 q$i@390@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 11
; [then-branch: 75 | q$i@390@01 < 3 | live]
; [else-branch: 75 | !(q$i@390@01 < 3) | live]
(push) ; 12
; [then-branch: 75 | q$i@390@01 < 3]
(assert (< q$i@390@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 13
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 13
(assert (not (>= q$i@390@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< q$i@390@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 75 | !(q$i@390@01 < 3)]
(assert (not (< q$i@390@01 3)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@390@01 3)) (< q$i@390@01 3)))
(pop) ; 10
(push) ; 10
; [else-branch: 74 | !(0 <= q$i@390@01)]
(assert (not (<= 0 q$i@390@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (<= 0 q$i@390@01)
  (and (<= 0 q$i@390@01) (or (not (< q$i@390@01 3)) (< q$i@390@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@390@01)) (<= 0 q$i@390@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@390@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@390@01)
      (and (<= 0 q$i@390@01) (or (not (< q$i@390@01 3)) (< q$i@390@01 3))))
    (or (not (<= 0 q$i@390@01)) (<= 0 q$i@390@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@390@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1029@11@1029@75-aux|)))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@390@01 Int)) (!
    (=>
      (and (<= 0 q$i@390@01) (< q$i@390@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@390@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@390@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1029@11@1029@75|)))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((q$i@390@01 Int)) (!
  (=>
    (and (<= 0 q$i@390@01) (< q$i@390@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@390@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@390@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1029@11@1029@75|))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
; [then-branch: 76 | QA q$i@390@01 :: 0 <= q$i@390@01 && q$i@390@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@390@01] | live]
; [else-branch: 76 | !(QA q$i@390@01 :: 0 <= q$i@390@01 && q$i@390@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@390@01]) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 76 | QA q$i@390@01 :: 0 <= q$i@390@01 && q$i@390@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@390@01]]
(assert (forall ((q$i@390@01 Int)) (!
  (=>
    (and (<= 0 q$i@390@01) (< q$i@390@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@390@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@390@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1029@11@1029@75|)))
; [eval] $unwrap((0 == $unwrap($w_mul(l$_x$2, $wrap(3))) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($w_mul(l$_x$2, $wrap(3)))) : $w_div($w_mul(l$D_P$1, l$D$2), $w_mul(l$_x$2, $wrap(3))))) == $unwrap(l$D_P$1)
; [eval] $unwrap((0 == $unwrap($w_mul(l$_x$2, $wrap(3))) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($w_mul(l$_x$2, $wrap(3)))) : $w_div($w_mul(l$D_P$1, l$D$2), $w_mul(l$_x$2, $wrap(3)))))
; [eval] (0 == $unwrap($w_mul(l$_x$2, $wrap(3))) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($w_mul(l$_x$2, $wrap(3)))) : $w_div($w_mul(l$D_P$1, l$D$2), $w_mul(l$_x$2, $wrap(3))))
; [eval] 0 == $unwrap($w_mul(l$_x$2, $wrap(3)))
; [eval] $unwrap($w_mul(l$_x$2, $wrap(3)))
; [eval] $w_mul(l$_x$2, $wrap(3))
; [eval] $wrap(3)
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not (= 0 ($unwrap<Int> ($w_mul<$Int> l$_x$2@384@01 ($wrap<$Int> 3)))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 77 | 0 == $unwrap[Int]($w_mul[$Int](l$_x$2@384@01, $wrap[$Int](3))) | dead]
; [else-branch: 77 | 0 != $unwrap[Int]($w_mul[$Int](l$_x$2@384@01, $wrap[$Int](3))) | live]
(set-option :timeout 0)
(push) ; 11
; [else-branch: 77 | 0 != $unwrap[Int]($w_mul[$Int](l$_x$2@384@01, $wrap[$Int](3)))]
(assert (not (= 0 ($unwrap<Int> ($w_mul<$Int> l$_x$2@384@01 ($wrap<$Int> 3))))))
; [eval] $w_div($w_mul(l$D_P$1, l$D$2), $w_mul(l$_x$2, $wrap(3)))
; [eval] $w_mul(l$D_P$1, l$D$2)
; [eval] $w_mul(l$_x$2, $wrap(3))
; [eval] $wrap(3)
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (not (= 0 ($unwrap<Int> ($w_mul<$Int> l$_x$2@384@01 ($wrap<$Int> 3))))))
; [eval] $unwrap(l$D_P$1)
(pop) ; 9
(push) ; 9
; [else-branch: 76 | !(QA q$i@390@01 :: 0 <= q$i@390@01 && q$i@390@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@390@01])]
(assert (not
  (forall ((q$i@390@01 Int)) (!
    (=>
      (and (<= 0 q$i@390@01) (< q$i@390@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@390@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@390@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1029@11@1029@75|))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (forall ((q$i@390@01 Int)) (!
    (=>
      (and (<= 0 q$i@390@01) (< q$i@390@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@390@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@390@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1029@11@1029@75|))
  (and
    (forall ((q$i@390@01 Int)) (!
      (=>
        (and (<= 0 q$i@390@01) (< q$i@390@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@390@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@390@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1029@11@1029@75|))
    (not (= 0 ($unwrap<Int> ($w_mul<$Int> l$_x$2@384@01 ($wrap<$Int> 3))))))))
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@390@01 Int)) (!
      (=>
        (and (<= 0 q$i@390@01) (< q$i@390@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@390@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@390@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1029@11@1029@75|)))
  (forall ((q$i@390@01 Int)) (!
    (=>
      (and (<= 0 q$i@390@01) (< q$i@390@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@390@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@390@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1029@11@1029@75|))))
(push) ; 8
(assert (not (=>
  (forall ((q$i@390@01 Int)) (!
    (=>
      (and (<= 0 q$i@390@01) (< q$i@390@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@390@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@390@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1029@11@1029@75|))
  (=
    ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) ($w_mul<$Int> l$_x$2@384@01 ($wrap<$Int> 3))))
    ($unwrap<Int> l$D_P$1@216@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@390@01 Int)) (!
    (=>
      (and (<= 0 q$i@390@01) (< q$i@390@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@390@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@390@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1029@11@1029@75|))
  (=
    ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) ($w_mul<$Int> l$_x$2@384@01 ($wrap<$Int> 3))))
    ($unwrap<Int> l$D_P$1@216@01))))
; [eval] $unwrap($w_mul(l$D_P$1, l$D$2)) < 0
; [eval] $unwrap($w_mul(l$D_P$1, l$D$2))
; [eval] $w_mul(l$D_P$1, l$D$2)
(push) ; 8
(set-option :timeout 10)
(assert (not (not (< ($unwrap<Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01)) 0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 78 | $unwrap[Int]($w_mul[$Int](l$D_P$1@216@01, l$D$2@218@01)) < 0 | dead]
; [else-branch: 78 | !($unwrap[Int]($w_mul[$Int](l$D_P$1@216@01, l$D$2@218@01)) < 0) | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 78 | !($unwrap[Int]($w_mul[$Int](l$D_P$1@216@01, l$D$2@218@01)) < 0)]
(assert (not (< ($unwrap<Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01)) 0)))
(pop) ; 8
; [eval] !($unwrap($w_mul(l$D_P$1, l$D$2)) < 0)
; [eval] $unwrap($w_mul(l$D_P$1, l$D$2)) < 0
; [eval] $unwrap($w_mul(l$D_P$1, l$D$2))
; [eval] $w_mul(l$D_P$1, l$D$2)
(push) ; 8
(set-option :timeout 10)
(assert (not (< ($unwrap<Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01)) 0)))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not (< ($unwrap<Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01)) 0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 79 | !($unwrap[Int]($w_mul[$Int](l$D_P$1@216@01, l$D$2@218@01)) < 0) | live]
; [else-branch: 79 | $unwrap[Int]($w_mul[$Int](l$D_P$1@216@01, l$D$2@218@01)) < 0 | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 79 | !($unwrap[Int]($w_mul[$Int](l$D_P$1@216@01, l$D$2@218@01)) < 0)]
(assert (not (< ($unwrap<Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01)) 0)))
; [eval] $unwrap(l$_x$2) * 3 < 0
; [eval] $unwrap(l$_x$2) * 3
; [eval] $unwrap(l$_x$2)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (< (* ($unwrap<Int> l$_x$2@384@01) 3) 0))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 80 | $unwrap[Int](l$_x$2@384@01) * 3 < 0 | dead]
; [else-branch: 80 | !($unwrap[Int](l$_x$2@384@01) * 3 < 0) | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 80 | !($unwrap[Int](l$_x$2@384@01) * 3 < 0)]
(assert (not (< (* ($unwrap<Int> l$_x$2@384@01) 3) 0)))
(pop) ; 9
; [eval] !($unwrap(l$_x$2) * 3 < 0)
; [eval] $unwrap(l$_x$2) * 3 < 0
; [eval] $unwrap(l$_x$2) * 3
; [eval] $unwrap(l$_x$2)
(push) ; 9
(set-option :timeout 10)
(assert (not (< (* ($unwrap<Int> l$_x$2@384@01) 3) 0)))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (< (* ($unwrap<Int> l$_x$2@384@01) 3) 0))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 81 | !($unwrap[Int](l$_x$2@384@01) * 3 < 0) | live]
; [else-branch: 81 | $unwrap[Int](l$_x$2@384@01) * 3 < 0 | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 81 | !($unwrap[Int](l$_x$2@384@01) * 3 < 0)]
(assert (not (< (* ($unwrap<Int> l$_x$2@384@01) 3) 0)))
; [eval] $unwrap($wrap($unwrap(l$_x$2) * 3)) == 0
; [eval] $unwrap($wrap($unwrap(l$_x$2) * 3))
; [eval] $wrap($unwrap(l$_x$2) * 3)
; [eval] $unwrap(l$_x$2) * 3
; [eval] $unwrap(l$_x$2)
(push) ; 10
(set-option :timeout 10)
(assert (not (not (= ($unwrap<Int> ($wrap<$Int> (* ($unwrap<Int> l$_x$2@384@01) 3))) 0))))
(check-sat)
; unknown
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ($unwrap<Int> ($wrap<$Int> (* ($unwrap<Int> l$_x$2@384@01) 3))) 0)))
(check-sat)
; unknown
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
; [then-branch: 82 | $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3)) == 0 | live]
; [else-branch: 82 | $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3)) != 0 | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 82 | $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3)) == 0]
(assert (= ($unwrap<Int> ($wrap<$Int> (* ($unwrap<Int> l$_x$2@384@01) 3))) 0))
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc$12
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_old_self
; [exec]
; $old_$contracts := $pre_old_$contracts
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 11
; [then-branch: 83 | False | dead]
; [else-branch: 83 | True | live]
(push) ; 12
; [else-branch: 83 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(pop) ; 10
(push) ; 10
; [else-branch: 82 | $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3)) != 0]
(assert (not (= ($unwrap<Int> ($wrap<$Int> (* ($unwrap<Int> l$_x$2@384@01) 3))) 0)))
(pop) ; 10
; [eval] !($unwrap($wrap($unwrap(l$_x$2) * 3)) == 0)
; [eval] $unwrap($wrap($unwrap(l$_x$2) * 3)) == 0
; [eval] $unwrap($wrap($unwrap(l$_x$2) * 3))
; [eval] $wrap($unwrap(l$_x$2) * 3)
; [eval] $unwrap(l$_x$2) * 3
; [eval] $unwrap(l$_x$2)
(push) ; 10
(set-option :timeout 10)
(assert (not (= ($unwrap<Int> ($wrap<$Int> (* ($unwrap<Int> l$_x$2@384@01) 3))) 0)))
(check-sat)
; unknown
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not (= ($unwrap<Int> ($wrap<$Int> (* ($unwrap<Int> l$_x$2@384@01) 3))) 0))))
(check-sat)
; unknown
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
; [then-branch: 84 | $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3)) != 0 | live]
; [else-branch: 84 | $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3)) == 0 | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 84 | $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3)) != 0]
(assert (not (= ($unwrap<Int> ($wrap<$Int> (* ($unwrap<Int> l$_x$2@384@01) 3))) 0)))
; [eval] $unwrap((0 == $unwrap($wrap($unwrap(l$_x$2) * 3)) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($wrap($unwrap(l$_x$2) * 3))) : $w_div($w_mul(l$D_P$1, l$D$2), $wrap($unwrap(l$_x$2) * 3)))) < 0
; [eval] $unwrap((0 == $unwrap($wrap($unwrap(l$_x$2) * 3)) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($wrap($unwrap(l$_x$2) * 3))) : $w_div($w_mul(l$D_P$1, l$D$2), $wrap($unwrap(l$_x$2) * 3))))
; [eval] (0 == $unwrap($wrap($unwrap(l$_x$2) * 3)) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($wrap($unwrap(l$_x$2) * 3))) : $w_div($w_mul(l$D_P$1, l$D$2), $wrap($unwrap(l$_x$2) * 3)))
; [eval] 0 == $unwrap($wrap($unwrap(l$_x$2) * 3))
; [eval] $unwrap($wrap($unwrap(l$_x$2) * 3))
; [eval] $wrap($unwrap(l$_x$2) * 3)
; [eval] $unwrap(l$_x$2) * 3
; [eval] $unwrap(l$_x$2)
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not (= 0 ($unwrap<Int> ($wrap<$Int> (* ($unwrap<Int> l$_x$2@384@01) 3)))))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 85 | 0 == $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3)) | dead]
; [else-branch: 85 | 0 != $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3)) | live]
(set-option :timeout 0)
(push) ; 12
; [else-branch: 85 | 0 != $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3))]
(assert (not (= 0 ($unwrap<Int> ($wrap<$Int> (* ($unwrap<Int> l$_x$2@384@01) 3))))))
; [eval] $w_div($w_mul(l$D_P$1, l$D$2), $wrap($unwrap(l$_x$2) * 3))
; [eval] $w_mul(l$D_P$1, l$D$2)
; [eval] $wrap($unwrap(l$_x$2) * 3)
; [eval] $unwrap(l$_x$2) * 3
; [eval] $unwrap(l$_x$2)
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (not (= 0 ($unwrap<Int> ($wrap<$Int> (* ($unwrap<Int> l$_x$2@384@01) 3))))))
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) ($wrap<$Int> (*
      ($unwrap<Int> l$_x$2@384@01)
      3))))
    0))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) ($wrap<$Int> (*
    ($unwrap<Int> l$_x$2@384@01)
    3))))
  0)))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
; [then-branch: 86 | $unwrap[Int]($w_div[$Int]($w_mul[$Int](l$D_P$1@216@01, l$D$2@218@01), $wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3))) < 0 | live]
; [else-branch: 86 | !($unwrap[Int]($w_div[$Int]($w_mul[$Int](l$D_P$1@216@01, l$D$2@218@01), $wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3))) < 0) | live]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 86 | $unwrap[Int]($w_div[$Int]($w_mul[$Int](l$D_P$1@216@01, l$D$2@218@01), $wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3))) < 0]
(assert (<
  ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) ($wrap<$Int> (*
    ($unwrap<Int> l$_x$2@384@01)
    3))))
  0))
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc$12
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_old_self
; [exec]
; $old_$contracts := $pre_old_$contracts
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 12
; [then-branch: 87 | False | dead]
; [else-branch: 87 | True | live]
(push) ; 13
; [else-branch: 87 | True]
(pop) ; 13
(pop) ; 12
; Joined path conditions
(pop) ; 11
(push) ; 11
; [else-branch: 86 | !($unwrap[Int]($w_div[$Int]($w_mul[$Int](l$D_P$1@216@01, l$D$2@218@01), $wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3))) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) ($wrap<$Int> (*
      ($unwrap<Int> l$_x$2@384@01)
      3))))
    0)))
(pop) ; 11
; [eval] !($unwrap((0 == $unwrap($wrap($unwrap(l$_x$2) * 3)) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($wrap($unwrap(l$_x$2) * 3))) : $w_div($w_mul(l$D_P$1, l$D$2), $wrap($unwrap(l$_x$2) * 3)))) < 0)
; [eval] $unwrap((0 == $unwrap($wrap($unwrap(l$_x$2) * 3)) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($wrap($unwrap(l$_x$2) * 3))) : $w_div($w_mul(l$D_P$1, l$D$2), $wrap($unwrap(l$_x$2) * 3)))) < 0
; [eval] $unwrap((0 == $unwrap($wrap($unwrap(l$_x$2) * 3)) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($wrap($unwrap(l$_x$2) * 3))) : $w_div($w_mul(l$D_P$1, l$D$2), $wrap($unwrap(l$_x$2) * 3))))
; [eval] (0 == $unwrap($wrap($unwrap(l$_x$2) * 3)) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($wrap($unwrap(l$_x$2) * 3))) : $w_div($w_mul(l$D_P$1, l$D$2), $wrap($unwrap(l$_x$2) * 3)))
; [eval] 0 == $unwrap($wrap($unwrap(l$_x$2) * 3))
; [eval] $unwrap($wrap($unwrap(l$_x$2) * 3))
; [eval] $wrap($unwrap(l$_x$2) * 3)
; [eval] $unwrap(l$_x$2) * 3
; [eval] $unwrap(l$_x$2)
(push) ; 11
; [then-branch: 88 | 0 == $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3)) | dead]
; [else-branch: 88 | 0 != $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3)) | live]
(push) ; 12
; [else-branch: 88 | 0 != $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3))]
; [eval] $w_div($w_mul(l$D_P$1, l$D$2), $wrap($unwrap(l$_x$2) * 3))
; [eval] $w_mul(l$D_P$1, l$D$2)
; [eval] $wrap($unwrap(l$_x$2) * 3)
; [eval] $unwrap(l$_x$2) * 3
; [eval] $unwrap(l$_x$2)
(pop) ; 12
(pop) ; 11
; Joined path conditions
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) ($wrap<$Int> (*
    ($unwrap<Int> l$_x$2@384@01)
    3))))
  0)))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) ($wrap<$Int> (*
      ($unwrap<Int> l$_x$2@384@01)
      3))))
    0))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
; [then-branch: 89 | !($unwrap[Int]($w_div[$Int]($w_mul[$Int](l$D_P$1@216@01, l$D$2@218@01), $wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3))) < 0) | live]
; [else-branch: 89 | $unwrap[Int]($w_div[$Int]($w_mul[$Int](l$D_P$1@216@01, l$D$2@218@01), $wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3))) < 0 | live]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 89 | !($unwrap[Int]($w_div[$Int]($w_mul[$Int](l$D_P$1@216@01, l$D$2@218@01), $wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3))) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) ($wrap<$Int> (*
      ($unwrap<Int> l$_x$2@384@01)
      3))))
    0)))
; [exec]
; l$D_P$1 := (0 == $unwrap($wrap($unwrap(l$_x$2) * 3)) ?
;     $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \
;     $unwrap($wrap($unwrap(l$_x$2) * 3))) :
;     $w_div($w_mul(l$D_P$1, l$D$2), $wrap($unwrap(l$_x$2) * 3)))
; [eval] (0 == $unwrap($wrap($unwrap(l$_x$2) * 3)) ? $wrap($unwrap($w_mul(l$D_P$1, l$D$2)) \ $unwrap($wrap($unwrap(l$_x$2) * 3))) : $w_div($w_mul(l$D_P$1, l$D$2), $wrap($unwrap(l$_x$2) * 3)))
; [eval] 0 == $unwrap($wrap($unwrap(l$_x$2) * 3))
; [eval] $unwrap($wrap($unwrap(l$_x$2) * 3))
; [eval] $wrap($unwrap(l$_x$2) * 3)
; [eval] $unwrap(l$_x$2) * 3
; [eval] $unwrap(l$_x$2)
(push) ; 12
; [then-branch: 90 | 0 == $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3)) | dead]
; [else-branch: 90 | 0 != $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3)) | live]
(push) ; 13
; [else-branch: 90 | 0 != $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3))]
; [eval] $w_div($w_mul(l$D_P$1, l$D$2), $wrap($unwrap(l$_x$2) * 3))
; [eval] $w_mul(l$D_P$1, l$D$2)
; [eval] $wrap($unwrap(l$_x$2) * 3)
; [eval] $unwrap(l$_x$2) * 3
; [eval] $unwrap(l$_x$2)
(pop) ; 13
(pop) ; 12
; Joined path conditions
(declare-const l$D_P$1@391@01 $Int)
(assert (=
  l$D_P$1@391@01
  ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) ($wrap<$Int> (*
    ($unwrap<Int> l$_x$2@384@01)
    3)))))
; [exec]
; label continue_4
; [exec]
; l$$idx$1 := l$$idx$1 + 1
; [eval] l$$idx$1 + 1
(declare-const l$$idx$1@392@01 Int)
(assert (= l$$idx$1@392@01 (+ l$havoc$6@210@01 1)))
; [eval] l$$idx$1 == 3
(push) ; 12
(set-option :timeout 10)
(assert (not (not (= l$$idx$1@392@01 3))))
(check-sat)
; unknown
(pop) ; 12
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (= l$$idx$1@392@01 3)))
(check-sat)
; unknown
(pop) ; 12
; 0.01s
; (get-info :all-statistics)
; [then-branch: 91 | l$$idx$1@392@01 == 3 | live]
; [else-branch: 91 | l$$idx$1@392@01 != 3 | live]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 91 | l$$idx$1@392@01 == 3]
(assert (= l$$idx$1@392@01 3))
; [exec]
; label break_2
; [exec]
; assert (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3))) ==
;   $unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) +
;   $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3))) == $unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@393@01 Int)
(push) ; 13
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 14
; [then-branch: 92 | 0 <= q$i@393@01 | live]
; [else-branch: 92 | !(0 <= q$i@393@01) | live]
(push) ; 15
; [then-branch: 92 | 0 <= q$i@393@01]
(assert (<= 0 q$i@393@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 16
; [then-branch: 93 | q$i@393@01 < 3 | live]
; [else-branch: 93 | !(q$i@393@01 < 3) | live]
(push) ; 17
; [then-branch: 93 | q$i@393@01 < 3]
(assert (< q$i@393@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 18
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 18
(assert (not (>= q$i@393@01 0)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(assert (not (< q$i@393@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(pop) ; 17
(push) ; 17
; [else-branch: 93 | !(q$i@393@01 < 3)]
(assert (not (< q$i@393@01 3)))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@393@01 3)) (< q$i@393@01 3)))
(pop) ; 15
(push) ; 15
; [else-branch: 92 | !(0 <= q$i@393@01)]
(assert (not (<= 0 q$i@393@01)))
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (=>
  (<= 0 q$i@393@01)
  (and (<= 0 q$i@393@01) (or (not (< q$i@393@01 3)) (< q$i@393@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@393@01)) (<= 0 q$i@393@01)))
(pop) ; 13
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@393@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@393@01)
      (and (<= 0 q$i@393@01) (or (not (< q$i@393@01 3)) (< q$i@393@01 3))))
    (or (not (<= 0 q$i@393@01)) (<= 0 q$i@393@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@393@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1056@11@1056@75-aux|)))
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@393@01 Int)) (!
    (=>
      (and (<= 0 q$i@393@01) (< q$i@393@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@393@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@393@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1056@11@1056@75|)))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (forall ((q$i@393@01 Int)) (!
  (=>
    (and (<= 0 q$i@393@01) (< q$i@393@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@393@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@393@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1056@11@1056@75|))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
; [then-branch: 94 | QA q$i@393@01 :: 0 <= q$i@393@01 && q$i@393@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@393@01] | live]
; [else-branch: 94 | !(QA q$i@393@01 :: 0 <= q$i@393@01 && q$i@393@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@393@01]) | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 94 | QA q$i@393@01 :: 0 <= q$i@393@01 && q$i@393@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@393@01]]
(assert (forall ((q$i@393@01 Int)) (!
  (=>
    (and (<= 0 q$i@393@01) (< q$i@393@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@393@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@393@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1056@11@1056@75|)))
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3))) == $unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3))
; [eval] $w_mul(l$Ann$1, l$S$3)
; [eval] $unwrap($w_mul(l$D_P$1, $wrap(3)))
; [eval] $w_mul(l$D_P$1, $wrap(3))
; [eval] $wrap(3)
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - $unwrap($wrap(1)))
; [eval] $unwrap(l$Ann$1) - $unwrap($wrap(1))
; [eval] $unwrap(l$Ann$1)
; [eval] $unwrap($wrap(1))
; [eval] $wrap(1)
; [eval] $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))
; [eval] $w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)
; [eval] $wrap($unwrap($wrap(3)) + $unwrap($wrap(1)))
; [eval] $unwrap($wrap(3)) + $unwrap($wrap(1))
; [eval] $unwrap($wrap(3))
; [eval] $wrap(3)
; [eval] $unwrap($wrap(1))
; [eval] $wrap(1)
(pop) ; 14
(push) ; 14
; [else-branch: 94 | !(QA q$i@393@01 :: 0 <= q$i@393@01 && q$i@393@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@393@01])]
(assert (not
  (forall ((q$i@393@01 Int)) (!
    (=>
      (and (<= 0 q$i@393@01) (< q$i@393@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@393@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@393@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1056@11@1056@75|))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@393@01 Int)) (!
      (=>
        (and (<= 0 q$i@393@01) (< q$i@393@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@393@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@393@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1056@11@1056@75|)))
  (forall ((q$i@393@01 Int)) (!
    (=>
      (and (<= 0 q$i@393@01) (< q$i@393@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@393@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@393@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1056@11@1056@75|))))
(push) ; 13
(assert (not (=>
  (forall ((q$i@393@01 Int)) (!
    (=>
      (and (<= 0 q$i@393@01) (< q$i@393@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@393@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@393@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1056@11@1056@75|))
  (=
    (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3))))
    (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
        ($unwrap<Int> ($wrap<$Int> 3))
        ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01)))))))
(check-sat)
; unsat
(pop) ; 13
; 0.10s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@393@01 Int)) (!
    (=>
      (and (<= 0 q$i@393@01) (< q$i@393@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@393@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@393@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1056@11@1056@75|))
  (=
    (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3))))
    (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
        ($unwrap<Int> ($wrap<$Int> 3))
        ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01))))))
; [exec]
; assert (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   lemma$mul_div_same(l$D$2, $wrap($unwrap($w_mul(l$Ann$1, l$S$3)) +
;   $unwrap($w_mul(l$D_P$1, $wrap(3)))))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> lemma$mul_div_same(l$D$2, $wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@394@01 Int)
(push) ; 13
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 14
; [then-branch: 95 | 0 <= q$i@394@01 | live]
; [else-branch: 95 | !(0 <= q$i@394@01) | live]
(push) ; 15
; [then-branch: 95 | 0 <= q$i@394@01]
(assert (<= 0 q$i@394@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 16
; [then-branch: 96 | q$i@394@01 < 3 | live]
; [else-branch: 96 | !(q$i@394@01 < 3) | live]
(push) ; 17
; [then-branch: 96 | q$i@394@01 < 3]
(assert (< q$i@394@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 18
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 18
(assert (not (>= q$i@394@01 0)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(assert (not (< q$i@394@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(pop) ; 17
(push) ; 17
; [else-branch: 96 | !(q$i@394@01 < 3)]
(assert (not (< q$i@394@01 3)))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@394@01 3)) (< q$i@394@01 3)))
(pop) ; 15
(push) ; 15
; [else-branch: 95 | !(0 <= q$i@394@01)]
(assert (not (<= 0 q$i@394@01)))
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (=>
  (<= 0 q$i@394@01)
  (and (<= 0 q$i@394@01) (or (not (< q$i@394@01 3)) (< q$i@394@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@394@01)) (<= 0 q$i@394@01)))
(pop) ; 13
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@394@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@394@01)
      (and (<= 0 q$i@394@01) (or (not (< q$i@394@01 3)) (< q$i@394@01 3))))
    (or (not (<= 0 q$i@394@01)) (<= 0 q$i@394@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@394@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1057@11@1057@75-aux|)))
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@394@01 Int)) (!
    (=>
      (and (<= 0 q$i@394@01) (< q$i@394@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@394@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@394@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1057@11@1057@75|)))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (forall ((q$i@394@01 Int)) (!
  (=>
    (and (<= 0 q$i@394@01) (< q$i@394@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@394@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@394@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1057@11@1057@75|))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
; [then-branch: 97 | QA q$i@394@01 :: 0 <= q$i@394@01 && q$i@394@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@394@01] | live]
; [else-branch: 97 | !(QA q$i@394@01 :: 0 <= q$i@394@01 && q$i@394@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@394@01]) | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 97 | QA q$i@394@01 :: 0 <= q$i@394@01 && q$i@394@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@394@01]]
(assert (forall ((q$i@394@01 Int)) (!
  (=>
    (and (<= 0 q$i@394@01) (< q$i@394@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@394@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@394@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1057@11@1057@75|)))
; [eval] lemma$mul_div_same(l$D$2, $wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))))
; [eval] $wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3))))
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3))
; [eval] $w_mul(l$Ann$1, l$S$3)
; [eval] $unwrap($w_mul(l$D_P$1, $wrap(3)))
; [eval] $w_mul(l$D_P$1, $wrap(3))
; [eval] $wrap(3)
(push) ; 15
; [eval] 0 <= $unwrap(l$x)
; [eval] $unwrap(l$x)
; [eval] 0 <= $unwrap(l$y)
; [eval] $unwrap(l$y)
(push) ; 16
(assert (not (<=
  0
  ($unwrap<Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
    ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3)))))))))
(check-sat)
; unsat
(pop) ; 16
; 0.06s
; (get-info :all-statistics)
(assert (<=
  0
  ($unwrap<Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
    ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3))))))))
; [eval] $unwrap(l$y) > 0
; [eval] $unwrap(l$y)
(push) ; 16
(assert (not (>
  ($unwrap<Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
    ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3))))))
  0)))
(check-sat)
; unsat
(pop) ; 16
; 0.05s
; (get-info :all-statistics)
(assert (>
  ($unwrap<Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
    ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3))))))
  0))
(assert (lemma$mul_div_same%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) l$D$2@218@01 ($wrap<$Int> (+
  ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
  ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3)))))))
(pop) ; 15
; Joined path conditions
(assert (and
  (<=
    0
    ($unwrap<Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3)))))))
  (>
    ($unwrap<Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3))))))
    0)
  (lemma$mul_div_same%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) l$D$2@218@01 ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
    ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3))))))))
(pop) ; 14
(push) ; 14
; [else-branch: 97 | !(QA q$i@394@01 :: 0 <= q$i@394@01 && q$i@394@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@394@01])]
(assert (not
  (forall ((q$i@394@01 Int)) (!
    (=>
      (and (<= 0 q$i@394@01) (< q$i@394@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@394@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@394@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1057@11@1057@75|))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (=>
  (forall ((q$i@394@01 Int)) (!
    (=>
      (and (<= 0 q$i@394@01) (< q$i@394@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@394@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@394@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1057@11@1057@75|))
  (and
    (forall ((q$i@394@01 Int)) (!
      (=>
        (and (<= 0 q$i@394@01) (< q$i@394@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@394@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@394@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1057@11@1057@75|))
    (<=
      0
      ($unwrap<Int> ($wrap<$Int> (+
        ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
        ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3)))))))
    (>
      ($unwrap<Int> ($wrap<$Int> (+
        ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
        ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3))))))
      0)
    (lemma$mul_div_same%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit $Snap.unit)) l$D$2@218@01 ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3)))))))))
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@394@01 Int)) (!
      (=>
        (and (<= 0 q$i@394@01) (< q$i@394@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@394@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@394@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1057@11@1057@75|)))
  (forall ((q$i@394@01 Int)) (!
    (=>
      (and (<= 0 q$i@394@01) (< q$i@394@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@394@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@394@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1057@11@1057@75|))))
(push) ; 13
(assert (not (=>
  (forall ((q$i@394@01 Int)) (!
    (=>
      (and (<= 0 q$i@394@01) (< q$i@394@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@394@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@394@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1057@11@1057@75|))
  (lemma$mul_div_same ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) l$D$2@218@01 ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
    ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3)))))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@394@01 Int)) (!
    (=>
      (and (<= 0 q$i@394@01) (< q$i@394@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@394@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@394@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1057@11@1057@75|))
  (lemma$mul_div_same ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) l$D$2@218@01 ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
    ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3))))))))
; [exec]
; assert (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap((0 ==
;   $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))),
;   l$D$2)) +
;   $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)))) ?
;     $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) +
;     $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2)) \
;     $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))),
;     l$D$2)) +
;     $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))))) :
;     $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) +
;     $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) -
;     $unwrap($wrap(1))), l$D$2)) +
;     $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)))))) ==
;   $unwrap(l$D$2)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap((0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)))) ? $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2)) \ $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))))) : $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)))))) == $unwrap(l$D$2)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@395@01 Int)
(push) ; 13
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 14
; [then-branch: 98 | 0 <= q$i@395@01 | live]
; [else-branch: 98 | !(0 <= q$i@395@01) | live]
(push) ; 15
; [then-branch: 98 | 0 <= q$i@395@01]
(assert (<= 0 q$i@395@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 16
; [then-branch: 99 | q$i@395@01 < 3 | live]
; [else-branch: 99 | !(q$i@395@01 < 3) | live]
(push) ; 17
; [then-branch: 99 | q$i@395@01 < 3]
(assert (< q$i@395@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 18
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 18
(assert (not (>= q$i@395@01 0)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(assert (not (< q$i@395@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(pop) ; 17
(push) ; 17
; [else-branch: 99 | !(q$i@395@01 < 3)]
(assert (not (< q$i@395@01 3)))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@395@01 3)) (< q$i@395@01 3)))
(pop) ; 15
(push) ; 15
; [else-branch: 98 | !(0 <= q$i@395@01)]
(assert (not (<= 0 q$i@395@01)))
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (=>
  (<= 0 q$i@395@01)
  (and (<= 0 q$i@395@01) (or (not (< q$i@395@01 3)) (< q$i@395@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@395@01)) (<= 0 q$i@395@01)))
(pop) ; 13
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@395@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@395@01)
      (and (<= 0 q$i@395@01) (or (not (< q$i@395@01 3)) (< q$i@395@01 3))))
    (or (not (<= 0 q$i@395@01)) (<= 0 q$i@395@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@395@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1058@11@1058@75-aux|)))
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@395@01 Int)) (!
    (=>
      (and (<= 0 q$i@395@01) (< q$i@395@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@395@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@395@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1058@11@1058@75|)))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (forall ((q$i@395@01 Int)) (!
  (=>
    (and (<= 0 q$i@395@01) (< q$i@395@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@395@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@395@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1058@11@1058@75|))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
; [then-branch: 100 | QA q$i@395@01 :: 0 <= q$i@395@01 && q$i@395@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@395@01] | live]
; [else-branch: 100 | !(QA q$i@395@01 :: 0 <= q$i@395@01 && q$i@395@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@395@01]) | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 100 | QA q$i@395@01 :: 0 <= q$i@395@01 && q$i@395@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@395@01]]
(assert (forall ((q$i@395@01 Int)) (!
  (=>
    (and (<= 0 q$i@395@01) (< q$i@395@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@395@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@395@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1058@11@1058@75|)))
; [eval] $unwrap((0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)))) ? $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2)) \ $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))))) : $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)))))) == $unwrap(l$D$2)
; [eval] $unwrap((0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)))) ? $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2)) \ $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))))) : $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))))))
; [eval] (0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)))) ? $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2)) \ $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))))) : $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)))))
; [eval] 0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))))
; [eval] $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))))
; [eval] $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - $unwrap($wrap(1)))
; [eval] $unwrap(l$Ann$1) - $unwrap($wrap(1))
; [eval] $unwrap(l$Ann$1)
; [eval] $unwrap($wrap(1))
; [eval] $wrap(1)
; [eval] $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))
; [eval] $w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)
; [eval] $wrap($unwrap($wrap(3)) + $unwrap($wrap(1)))
; [eval] $unwrap($wrap(3)) + $unwrap($wrap(1))
; [eval] $unwrap($wrap(3))
; [eval] $wrap(3)
; [eval] $unwrap($wrap(1))
; [eval] $wrap(1)
(push) ; 15
(push) ; 16
(set-option :timeout 10)
(assert (not (not
  (=
    0
    ($unwrap<Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
        ($unwrap<Int> ($wrap<$Int> 3))
        ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01)))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (=
  0
  ($unwrap<Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
      ($unwrap<Int> l$Ann$1@201@01)
      ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
      ($unwrap<Int> ($wrap<$Int> 3))
      ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01))))))))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
; [then-branch: 101 | 0 == $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - $unwrap[Int]($wrap[$Int](1))), l$D$2@218@01)) + $unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($wrap[$Int](3)) + $unwrap[Int]($wrap[$Int](1))), l$D_P$1@391@01)))) | live]
; [else-branch: 101 | 0 != $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - $unwrap[Int]($wrap[$Int](1))), l$D$2@218@01)) + $unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($wrap[$Int](3)) + $unwrap[Int]($wrap[$Int](1))), l$D_P$1@391@01)))) | live]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 101 | 0 == $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - $unwrap[Int]($wrap[$Int](1))), l$D$2@218@01)) + $unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($wrap[$Int](3)) + $unwrap[Int]($wrap[$Int](1))), l$D_P$1@391@01))))]
(assert (=
  0
  ($unwrap<Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
      ($unwrap<Int> l$Ann$1@201@01)
      ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
      ($unwrap<Int> ($wrap<$Int> 3))
      ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01)))))))
; [eval] $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2)) \ $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)))))
; [eval] $unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2)) \ $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))))
; [eval] $unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2))
; [eval] $w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2)
; [eval] $wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3))))
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3))
; [eval] $w_mul(l$Ann$1, l$S$3)
; [eval] $unwrap($w_mul(l$D_P$1, $wrap(3)))
; [eval] $w_mul(l$D_P$1, $wrap(3))
; [eval] $wrap(3)
; [eval] $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))))
; [eval] $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - $unwrap($wrap(1)))
; [eval] $unwrap(l$Ann$1) - $unwrap($wrap(1))
; [eval] $unwrap(l$Ann$1)
; [eval] $unwrap($wrap(1))
; [eval] $wrap(1)
; [eval] $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))
; [eval] $w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)
; [eval] $wrap($unwrap($wrap(3)) + $unwrap($wrap(1)))
; [eval] $unwrap($wrap(3)) + $unwrap($wrap(1))
; [eval] $unwrap($wrap(3))
; [eval] $wrap(3)
; [eval] $unwrap($wrap(1))
; [eval] $wrap(1)
(push) ; 17
(assert (not (not
  (=
    ($unwrap<Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
        ($unwrap<Int> ($wrap<$Int> 3))
        ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01)))))
    0))))
(check-sat)
; unsat
(pop) ; 17
; 0.06s
; (get-info :all-statistics)
(pop) ; 16
(push) ; 16
; [else-branch: 101 | 0 != $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - $unwrap[Int]($wrap[$Int](1))), l$D$2@218@01)) + $unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($wrap[$Int](3)) + $unwrap[Int]($wrap[$Int](1))), l$D_P$1@391@01))))]
(assert (not
  (=
    0
    ($unwrap<Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
        ($unwrap<Int> ($wrap<$Int> 3))
        ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01))))))))
; [eval] $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))))
; [eval] $w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))), l$D$2)
; [eval] $wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3))))
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap($w_mul(l$D_P$1, $wrap(3)))
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3))
; [eval] $w_mul(l$Ann$1, l$S$3)
; [eval] $unwrap($w_mul(l$D_P$1, $wrap(3)))
; [eval] $w_mul(l$D_P$1, $wrap(3))
; [eval] $wrap(3)
; [eval] $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)) + $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - $unwrap($wrap(1))), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - $unwrap($wrap(1)))
; [eval] $unwrap(l$Ann$1) - $unwrap($wrap(1))
; [eval] $unwrap(l$Ann$1)
; [eval] $unwrap($wrap(1))
; [eval] $wrap(1)
; [eval] $unwrap($w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1))
; [eval] $w_mul($wrap($unwrap($wrap(3)) + $unwrap($wrap(1))), l$D_P$1)
; [eval] $wrap($unwrap($wrap(3)) + $unwrap($wrap(1)))
; [eval] $unwrap($wrap(3)) + $unwrap($wrap(1))
; [eval] $unwrap($wrap(3))
; [eval] $wrap(3)
; [eval] $unwrap($wrap(1))
; [eval] $wrap(1)
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (=
      0
      ($unwrap<Int> ($wrap<$Int> (+
        ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
          ($unwrap<Int> l$Ann$1@201@01)
          ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
        ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
          ($unwrap<Int> ($wrap<$Int> 3))
          ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01)))))))
  (=
    0
    ($unwrap<Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
        ($unwrap<Int> ($wrap<$Int> 3))
        ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01))))))))
; [eval] $unwrap(l$D$2)
(pop) ; 14
(push) ; 14
; [else-branch: 100 | !(QA q$i@395@01 :: 0 <= q$i@395@01 && q$i@395@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@395@01])]
(assert (not
  (forall ((q$i@395@01 Int)) (!
    (=>
      (and (<= 0 q$i@395@01) (< q$i@395@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@395@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@395@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1058@11@1058@75|))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (=>
  (forall ((q$i@395@01 Int)) (!
    (=>
      (and (<= 0 q$i@395@01) (< q$i@395@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@395@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@395@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1058@11@1058@75|))
  (and
    (forall ((q$i@395@01 Int)) (!
      (=>
        (and (<= 0 q$i@395@01) (< q$i@395@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@395@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@395@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1058@11@1058@75|))
    (or
      (not
        (=
          0
          ($unwrap<Int> ($wrap<$Int> (+
            ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
              ($unwrap<Int> l$Ann$1@201@01)
              ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
            ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
              ($unwrap<Int> ($wrap<$Int> 3))
              ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01)))))))
      (=
        0
        ($unwrap<Int> ($wrap<$Int> (+
          ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
            ($unwrap<Int> l$Ann$1@201@01)
            ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
          ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
            ($unwrap<Int> ($wrap<$Int> 3))
            ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01))))))))))
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@395@01 Int)) (!
      (=>
        (and (<= 0 q$i@395@01) (< q$i@395@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@395@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@395@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1058@11@1058@75|)))
  (forall ((q$i@395@01 Int)) (!
    (=>
      (and (<= 0 q$i@395@01) (< q$i@395@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@395@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@395@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1058@11@1058@75|))))
(push) ; 13
(assert (not (=>
  (forall ((q$i@395@01 Int)) (!
    (=>
      (and (<= 0 q$i@395@01) (< q$i@395@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@395@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@395@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1058@11@1058@75|))
  (=
    ($unwrap<Int> (ite
      (=
        0
        ($unwrap<Int> ($wrap<$Int> (+
          ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
            ($unwrap<Int> l$Ann$1@201@01)
            ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
          ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
            ($unwrap<Int> ($wrap<$Int> 3))
            ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01))))))
      ($wrap<$Int> (div
        ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
          ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
          ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3))))) l$D$2@218@01))
        ($unwrap<Int> ($wrap<$Int> (+
          ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
            ($unwrap<Int> l$Ann$1@201@01)
            ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
          ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
            ($unwrap<Int> ($wrap<$Int> 3))
            ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01)))))))
      ($w_div<$Int> ($w_mul<$Int> ($wrap<$Int> (+
        ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
        ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3))))) l$D$2@218@01) ($wrap<$Int> (+
        ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
          ($unwrap<Int> l$Ann$1@201@01)
          ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
        ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
          ($unwrap<Int> ($wrap<$Int> 3))
          ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01)))))))
    ($unwrap<Int> l$D$2@218@01)))))
(check-sat)
; unsat
(pop) ; 13
; 0.11s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@395@01 Int)) (!
    (=>
      (and (<= 0 q$i@395@01) (< q$i@395@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@395@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@395@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1058@11@1058@75|))
  (=
    ($unwrap<Int> (ite
      (=
        0
        ($unwrap<Int> ($wrap<$Int> (+
          ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
            ($unwrap<Int> l$Ann$1@201@01)
            ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
          ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
            ($unwrap<Int> ($wrap<$Int> 3))
            ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01))))))
      ($wrap<$Int> (div
        ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
          ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
          ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3))))) l$D$2@218@01))
        ($unwrap<Int> ($wrap<$Int> (+
          ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
            ($unwrap<Int> l$Ann$1@201@01)
            ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
          ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
            ($unwrap<Int> ($wrap<$Int> 3))
            ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01)))))))
      ($w_div<$Int> ($w_mul<$Int> ($wrap<$Int> (+
        ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
        ($unwrap<Int> ($w_mul<$Int> l$D_P$1@391@01 ($wrap<$Int> 3))))) l$D$2@218@01) ($wrap<$Int> (+
        ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
          ($unwrap<Int> l$Ann$1@201@01)
          ($unwrap<Int> ($wrap<$Int> 1)))) l$D$2@218@01))
        ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
          ($unwrap<Int> ($wrap<$Int> 3))
          ($unwrap<Int> ($wrap<$Int> 1)))) l$D_P$1@391@01)))))))
    ($unwrap<Int> l$D$2@218@01))))
; [exec]
; l$Dprev$1 := l$D$2
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) < 0
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3))
; [eval] $w_mul(l$Ann$1, l$S$3)
(push) ; 13
(set-option :timeout 10)
(assert (not (not (< ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01)) 0))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 102 | $unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) < 0 | dead]
; [else-branch: 102 | !($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) < 0) | live]
(set-option :timeout 0)
(push) ; 13
; [else-branch: 102 | !($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) < 0)]
(assert (not (< ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01)) 0)))
(pop) ; 13
; [eval] !($unwrap($w_mul(l$Ann$1, l$S$3)) < 0)
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) < 0
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3))
; [eval] $w_mul(l$Ann$1, l$S$3)
(push) ; 13
(set-option :timeout 10)
(assert (not (< ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01)) 0)))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (not (< ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01)) 0))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 103 | !($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) < 0) | live]
; [else-branch: 103 | $unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) < 0 | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 103 | !($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) < 0)]
(assert (not (< ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01)) 0)))
; [eval] $unwrap(l$D_P$1) * 3 < 0
; [eval] $unwrap(l$D_P$1) * 3
; [eval] $unwrap(l$D_P$1)
(push) ; 14
(set-option :timeout 10)
(assert (not (not (< (* ($unwrap<Int> l$D_P$1@391@01) 3) 0))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 104 | $unwrap[Int](l$D_P$1@391@01) * 3 < 0 | dead]
; [else-branch: 104 | !($unwrap[Int](l$D_P$1@391@01) * 3 < 0) | live]
(set-option :timeout 0)
(push) ; 14
; [else-branch: 104 | !($unwrap[Int](l$D_P$1@391@01) * 3 < 0)]
(assert (not (< (* ($unwrap<Int> l$D_P$1@391@01) 3) 0)))
(pop) ; 14
; [eval] !($unwrap(l$D_P$1) * 3 < 0)
; [eval] $unwrap(l$D_P$1) * 3 < 0
; [eval] $unwrap(l$D_P$1) * 3
; [eval] $unwrap(l$D_P$1)
(push) ; 14
(set-option :timeout 10)
(assert (not (< (* ($unwrap<Int> l$D_P$1@391@01) 3) 0)))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not (< (* ($unwrap<Int> l$D_P$1@391@01) 3) 0))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 105 | !($unwrap[Int](l$D_P$1@391@01) * 3 < 0) | live]
; [else-branch: 105 | $unwrap[Int](l$D_P$1@391@01) * 3 < 0 | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 105 | !($unwrap[Int](l$D_P$1@391@01) * 3 < 0)]
(assert (not (< (* ($unwrap<Int> l$D_P$1@391@01) 3) 0)))
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3 < 0
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3))
; [eval] $w_mul(l$Ann$1, l$S$3)
; [eval] $unwrap(l$D_P$1) * 3
; [eval] $unwrap(l$D_P$1)
(push) ; 15
(set-option :timeout 10)
(assert (not (not
  (<
    (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      (* ($unwrap<Int> l$D_P$1@391@01) 3))
    0))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 106 | $unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3 < 0 | dead]
; [else-branch: 106 | !($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3 < 0) | live]
(set-option :timeout 0)
(push) ; 15
; [else-branch: 106 | !($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3 < 0)]
(assert (not
  (<
    (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      (* ($unwrap<Int> l$D_P$1@391@01) 3))
    0)))
(pop) ; 15
; [eval] !($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3 < 0)
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3 < 0
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3))
; [eval] $w_mul(l$Ann$1, l$S$3)
; [eval] $unwrap(l$D_P$1) * 3
; [eval] $unwrap(l$D_P$1)
(push) ; 15
(set-option :timeout 10)
(assert (not (<
  (+
    ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
    (* ($unwrap<Int> l$D_P$1@391@01) 3))
  0)))
(check-sat)
; unknown
(pop) ; 15
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not
  (<
    (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      (* ($unwrap<Int> l$D_P$1@391@01) 3))
    0))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 107 | !($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3 < 0) | live]
; [else-branch: 107 | $unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3 < 0 | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 107 | !($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3 < 0)]
(assert (not
  (<
    (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      (* ($unwrap<Int> l$D_P$1@391@01) 3))
    0)))
; [eval] $unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)) < 0
; [eval] $unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2))
; [eval] $w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)
; [eval] $wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3)
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3))
; [eval] $w_mul(l$Ann$1, l$S$3)
; [eval] $unwrap(l$D_P$1) * 3
; [eval] $unwrap(l$D_P$1)
(push) ; 16
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      (* ($unwrap<Int> l$D_P$1@391@01) 3))) l$D$2@218@01))
    0))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 108 | $unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3), l$D$2@218@01)) < 0 | dead]
; [else-branch: 108 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3), l$D$2@218@01)) < 0) | live]
(set-option :timeout 0)
(push) ; 16
; [else-branch: 108 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3), l$D$2@218@01)) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      (* ($unwrap<Int> l$D_P$1@391@01) 3))) l$D$2@218@01))
    0)))
(pop) ; 16
; [eval] !($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)) < 0)
; [eval] $unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)) < 0
; [eval] $unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2))
; [eval] $w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)
; [eval] $wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3)
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3))
; [eval] $w_mul(l$Ann$1, l$S$3)
; [eval] $unwrap(l$D_P$1) * 3
; [eval] $unwrap(l$D_P$1)
(push) ; 16
(set-option :timeout 10)
(assert (not (<
  ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
    (* ($unwrap<Int> l$D_P$1@391@01) 3))) l$D$2@218@01))
  0)))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      (* ($unwrap<Int> l$D_P$1@391@01) 3))) l$D$2@218@01))
    0))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 109 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3), l$D$2@218@01)) < 0) | live]
; [else-branch: 109 | $unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3), l$D$2@218@01)) < 0 | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 109 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3), l$D$2@218@01)) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      (* ($unwrap<Int> l$D_P$1@391@01) 3))) l$D$2@218@01))
    0)))
; [eval] $unwrap(l$Ann$1) - 1 < 0
; [eval] $unwrap(l$Ann$1) - 1
; [eval] $unwrap(l$Ann$1)
(push) ; 17
(set-option :timeout 10)
(assert (not (not (< (- ($unwrap<Int> l$Ann$1@201@01) 1) 0))))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (< (- ($unwrap<Int> l$Ann$1@201@01) 1) 0)))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
; [then-branch: 110 | $unwrap[Int](l$Ann$1@201@01) - 1 < 0 | live]
; [else-branch: 110 | !($unwrap[Int](l$Ann$1@201@01) - 1 < 0) | live]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 110 | $unwrap[Int](l$Ann$1@201@01) - 1 < 0]
(assert (< (- ($unwrap<Int> l$Ann$1@201@01) 1) 0))
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc$12
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_old_self
; [exec]
; $old_$contracts := $pre_old_$contracts
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 18
; [then-branch: 111 | False | dead]
; [else-branch: 111 | True | live]
(push) ; 19
; [else-branch: 111 | True]
(pop) ; 19
(pop) ; 18
; Joined path conditions
(pop) ; 17
(push) ; 17
; [else-branch: 110 | !($unwrap[Int](l$Ann$1@201@01) - 1 < 0)]
(assert (not (< (- ($unwrap<Int> l$Ann$1@201@01) 1) 0)))
(pop) ; 17
; [eval] !($unwrap(l$Ann$1) - 1 < 0)
; [eval] $unwrap(l$Ann$1) - 1 < 0
; [eval] $unwrap(l$Ann$1) - 1
; [eval] $unwrap(l$Ann$1)
(push) ; 17
(set-option :timeout 10)
(assert (not (< (- ($unwrap<Int> l$Ann$1@201@01) 1) 0)))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (not (< (- ($unwrap<Int> l$Ann$1@201@01) 1) 0))))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
; [then-branch: 112 | !($unwrap[Int](l$Ann$1@201@01) - 1 < 0) | live]
; [else-branch: 112 | $unwrap[Int](l$Ann$1@201@01) - 1 < 0 | live]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 112 | !($unwrap[Int](l$Ann$1@201@01) - 1 < 0)]
(assert (not (< (- ($unwrap<Int> l$Ann$1@201@01) 1) 0)))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) < 0
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - 1)
; [eval] $unwrap(l$Ann$1) - 1
; [eval] $unwrap(l$Ann$1)
(push) ; 18
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
    0))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 113 | $unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) < 0 | dead]
; [else-branch: 113 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) < 0) | live]
(set-option :timeout 0)
(push) ; 18
; [else-branch: 113 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
    0)))
(pop) ; 18
; [eval] !($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) < 0)
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) < 0
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - 1)
; [eval] $unwrap(l$Ann$1) - 1
; [eval] $unwrap(l$Ann$1)
(push) ; 18
(set-option :timeout 10)
(assert (not (<
  ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
  0)))
(check-sat)
; unknown
(pop) ; 18
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
    0))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 114 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) < 0) | live]
; [else-branch: 114 | $unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) < 0 | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 114 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
    0)))
; [eval] 3 + 1 < 0
; [eval] 3 + 1
; [then-branch: 115 | False | dead]
; [else-branch: 115 | True | live]
(push) ; 19
; [else-branch: 115 | True]
(pop) ; 19
; [eval] !(3 + 1 < 0)
; [eval] 3 + 1 < 0
; [eval] 3 + 1
(push) ; 19
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 19
; 0.01s
; (get-info :all-statistics)
; [then-branch: 116 | True | live]
; [else-branch: 116 | False | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 116 | True]
; [eval] (3 + 1) * $unwrap(l$D_P$1) < 0
; [eval] (3 + 1) * $unwrap(l$D_P$1)
; [eval] 3 + 1
; [eval] $unwrap(l$D_P$1)
(push) ; 20
(set-option :timeout 10)
(assert (not (not (< (* 4 ($unwrap<Int> l$D_P$1@391@01)) 0))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 117 | 4 * $unwrap[Int](l$D_P$1@391@01) < 0 | dead]
; [else-branch: 117 | !(4 * $unwrap[Int](l$D_P$1@391@01) < 0) | live]
(set-option :timeout 0)
(push) ; 20
; [else-branch: 117 | !(4 * $unwrap[Int](l$D_P$1@391@01) < 0)]
(assert (not (< (* 4 ($unwrap<Int> l$D_P$1@391@01)) 0)))
(pop) ; 20
; [eval] !((3 + 1) * $unwrap(l$D_P$1) < 0)
; [eval] (3 + 1) * $unwrap(l$D_P$1) < 0
; [eval] (3 + 1) * $unwrap(l$D_P$1)
; [eval] 3 + 1
; [eval] $unwrap(l$D_P$1)
(push) ; 20
(set-option :timeout 10)
(assert (not (< (* 4 ($unwrap<Int> l$D_P$1@391@01)) 0)))
(check-sat)
; unknown
(pop) ; 20
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (not (< (* 4 ($unwrap<Int> l$D_P$1@391@01)) 0))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 118 | !(4 * $unwrap[Int](l$D_P$1@391@01) < 0) | live]
; [else-branch: 118 | 4 * $unwrap[Int](l$D_P$1@391@01) < 0 | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 118 | !(4 * $unwrap[Int](l$D_P$1@391@01) < 0)]
(assert (not (< (* 4 ($unwrap<Int> l$D_P$1@391@01)) 0)))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1) < 0
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - 1)
; [eval] $unwrap(l$Ann$1) - 1
; [eval] $unwrap(l$Ann$1)
; [eval] (3 + 1) * $unwrap(l$D_P$1)
; [eval] 3 + 1
; [eval] $unwrap(l$D_P$1)
(push) ; 21
(set-option :timeout 10)
(assert (not (not
  (<
    (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01)))
    0))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 119 | $unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01) < 0 | dead]
; [else-branch: 119 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01) < 0) | live]
(set-option :timeout 0)
(push) ; 21
; [else-branch: 119 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01) < 0)]
(assert (not
  (<
    (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01)))
    0)))
(pop) ; 21
; [eval] !($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1) < 0)
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1) < 0
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - 1)
; [eval] $unwrap(l$Ann$1) - 1
; [eval] $unwrap(l$Ann$1)
; [eval] (3 + 1) * $unwrap(l$D_P$1)
; [eval] 3 + 1
; [eval] $unwrap(l$D_P$1)
(push) ; 21
(set-option :timeout 10)
(assert (not (<
  (+
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
    (* 4 ($unwrap<Int> l$D_P$1@391@01)))
  0)))
(check-sat)
; unknown
(pop) ; 21
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (not
  (<
    (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01)))
    0))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 120 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01) < 0) | live]
; [else-branch: 120 | $unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01) < 0 | dead]
(set-option :timeout 0)
(push) ; 21
; [then-branch: 120 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01) < 0)]
(assert (not
  (<
    (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01)))
    0)))
; [eval] $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))) == 0
; [eval] $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))
; [eval] $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - 1)
; [eval] $unwrap(l$Ann$1) - 1
; [eval] $unwrap(l$Ann$1)
; [eval] (3 + 1) * $unwrap(l$D_P$1)
; [eval] 3 + 1
; [eval] $unwrap(l$D_P$1)
(push) ; 22
(set-option :timeout 10)
(assert (not (not
  (=
    ($unwrap<Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01)))))
    0))))
(check-sat)
; unknown
(pop) ; 22
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not (=
  ($unwrap<Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
    (* 4 ($unwrap<Int> l$D_P$1@391@01)))))
  0)))
(check-sat)
; unknown
(pop) ; 22
; 0.01s
; (get-info :all-statistics)
; [then-branch: 121 | $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01))) == 0 | live]
; [else-branch: 121 | $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01))) != 0 | live]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 121 | $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01))) == 0]
(assert (=
  ($unwrap<Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
    (* 4 ($unwrap<Int> l$D_P$1@391@01)))))
  0))
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc$12
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_old_self
; [exec]
; $old_$contracts := $pre_old_$contracts
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 23
; [then-branch: 122 | False | dead]
; [else-branch: 122 | True | live]
(push) ; 24
; [else-branch: 122 | True]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(pop) ; 22
(push) ; 22
; [else-branch: 121 | $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01))) != 0]
(assert (not
  (=
    ($unwrap<Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01)))))
    0)))
(pop) ; 22
; [eval] !($unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))) == 0)
; [eval] $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))) == 0
; [eval] $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))
; [eval] $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - 1)
; [eval] $unwrap(l$Ann$1) - 1
; [eval] $unwrap(l$Ann$1)
; [eval] (3 + 1) * $unwrap(l$D_P$1)
; [eval] 3 + 1
; [eval] $unwrap(l$D_P$1)
(push) ; 22
(set-option :timeout 10)
(assert (not (=
  ($unwrap<Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
    (* 4 ($unwrap<Int> l$D_P$1@391@01)))))
  0)))
(check-sat)
; unknown
(pop) ; 22
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not (not
  (=
    ($unwrap<Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01)))))
    0))))
(check-sat)
; unknown
(pop) ; 22
; 0.01s
; (get-info :all-statistics)
; [then-branch: 123 | $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01))) != 0 | live]
; [else-branch: 123 | $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01))) == 0 | live]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 123 | $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01))) != 0]
(assert (not
  (=
    ($unwrap<Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01)))))
    0)))
; [eval] $unwrap((0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))) ? $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)) \ $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))) : $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))))) < 0
; [eval] $unwrap((0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))) ? $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)) \ $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))) : $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))))
; [eval] (0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))) ? $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)) \ $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))) : $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))))
; [eval] 0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))
; [eval] $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))
; [eval] $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - 1)
; [eval] $unwrap(l$Ann$1) - 1
; [eval] $unwrap(l$Ann$1)
; [eval] (3 + 1) * $unwrap(l$D_P$1)
; [eval] 3 + 1
; [eval] $unwrap(l$D_P$1)
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not
  (=
    0
    ($unwrap<Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01)))))))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 124 | 0 == $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01))) | dead]
; [else-branch: 124 | 0 != $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01))) | live]
(set-option :timeout 0)
(push) ; 24
; [else-branch: 124 | 0 != $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01)))]
(assert (not
  (=
    0
    ($unwrap<Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01))))))))
; [eval] $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))
; [eval] $w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)
; [eval] $wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3)
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3))
; [eval] $w_mul(l$Ann$1, l$S$3)
; [eval] $unwrap(l$D_P$1) * 3
; [eval] $unwrap(l$D_P$1)
; [eval] $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - 1)
; [eval] $unwrap(l$Ann$1) - 1
; [eval] $unwrap(l$Ann$1)
; [eval] (3 + 1) * $unwrap(l$D_P$1)
; [eval] 3 + 1
; [eval] $unwrap(l$D_P$1)
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (not
  (=
    0
    ($unwrap<Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01))))))))
(push) ; 23
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      (* ($unwrap<Int> l$D_P$1@391@01) 3))) l$D$2@218@01) ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01))))))
    0))))
(check-sat)
; unknown
(pop) ; 23
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 23
(set-option :timeout 10)
(assert (not (<
  ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
    (* ($unwrap<Int> l$D_P$1@391@01) 3))) l$D$2@218@01) ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
    (* 4 ($unwrap<Int> l$D_P$1@391@01))))))
  0)))
(check-sat)
; unknown
(pop) ; 23
; 0.01s
; (get-info :all-statistics)
; [then-branch: 125 | $unwrap[Int]($w_div[$Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3), l$D$2@218@01), $wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01)))) < 0 | live]
; [else-branch: 125 | !($unwrap[Int]($w_div[$Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3), l$D$2@218@01), $wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01)))) < 0) | live]
(set-option :timeout 0)
(push) ; 23
; [then-branch: 125 | $unwrap[Int]($w_div[$Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3), l$D$2@218@01), $wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01)))) < 0]
(assert (<
  ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
    (* ($unwrap<Int> l$D_P$1@391@01) 3))) l$D$2@218@01) ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
    (* 4 ($unwrap<Int> l$D_P$1@391@01))))))
  0))
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc$12
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_old_self
; [exec]
; $old_$contracts := $pre_old_$contracts
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 24
; [then-branch: 126 | False | dead]
; [else-branch: 126 | True | live]
(push) ; 25
; [else-branch: 126 | True]
(pop) ; 25
(pop) ; 24
; Joined path conditions
(pop) ; 23
(push) ; 23
; [else-branch: 125 | !($unwrap[Int]($w_div[$Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3), l$D$2@218@01), $wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01)))) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      (* ($unwrap<Int> l$D_P$1@391@01) 3))) l$D$2@218@01) ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01))))))
    0)))
(pop) ; 23
; [eval] !($unwrap((0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))) ? $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)) \ $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))) : $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))))) < 0)
; [eval] $unwrap((0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))) ? $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)) \ $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))) : $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))))) < 0
; [eval] $unwrap((0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))) ? $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)) \ $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))) : $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))))
; [eval] (0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))) ? $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)) \ $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))) : $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))))
; [eval] 0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))
; [eval] $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))
; [eval] $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - 1)
; [eval] $unwrap(l$Ann$1) - 1
; [eval] $unwrap(l$Ann$1)
; [eval] (3 + 1) * $unwrap(l$D_P$1)
; [eval] 3 + 1
; [eval] $unwrap(l$D_P$1)
(push) ; 23
; [then-branch: 127 | 0 == $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01))) | dead]
; [else-branch: 127 | 0 != $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01))) | live]
(push) ; 24
; [else-branch: 127 | 0 != $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01)))]
; [eval] $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))
; [eval] $w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)
; [eval] $wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3)
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3))
; [eval] $w_mul(l$Ann$1, l$S$3)
; [eval] $unwrap(l$D_P$1) * 3
; [eval] $unwrap(l$D_P$1)
; [eval] $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - 1)
; [eval] $unwrap(l$Ann$1) - 1
; [eval] $unwrap(l$Ann$1)
; [eval] (3 + 1) * $unwrap(l$D_P$1)
; [eval] 3 + 1
; [eval] $unwrap(l$D_P$1)
(pop) ; 24
(pop) ; 23
; Joined path conditions
(push) ; 23
(set-option :timeout 10)
(assert (not (<
  ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
    (* ($unwrap<Int> l$D_P$1@391@01) 3))) l$D$2@218@01) ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
    (* 4 ($unwrap<Int> l$D_P$1@391@01))))))
  0)))
(check-sat)
; unknown
(pop) ; 23
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 23
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      (* ($unwrap<Int> l$D_P$1@391@01) 3))) l$D$2@218@01) ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01))))))
    0))))
(check-sat)
; unknown
(pop) ; 23
; 0.01s
; (get-info :all-statistics)
; [then-branch: 128 | !($unwrap[Int]($w_div[$Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3), l$D$2@218@01), $wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01)))) < 0) | live]
; [else-branch: 128 | $unwrap[Int]($w_div[$Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3), l$D$2@218@01), $wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01)))) < 0 | live]
(set-option :timeout 0)
(push) ; 23
; [then-branch: 128 | !($unwrap[Int]($w_div[$Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3), l$D$2@218@01), $wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01)))) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
      (* ($unwrap<Int> l$D_P$1@391@01) 3))) l$D$2@218@01) ($wrap<$Int> (+
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (-
        ($unwrap<Int> l$Ann$1@201@01)
        1)) l$D$2@218@01))
      (* 4 ($unwrap<Int> l$D_P$1@391@01))))))
    0)))
; [exec]
; l$D$2 := (0 ==
;   $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) +
;   (3 + 1) * $unwrap(l$D_P$1))) ?
;     $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) +
;     $unwrap(l$D_P$1) * 3), l$D$2)) \
;     $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) +
;     (3 + 1) * $unwrap(l$D_P$1)))) :
;     $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) +
;     $unwrap(l$D_P$1) * 3), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) -
;     1), l$D$2)) +
;     (3 + 1) * $unwrap(l$D_P$1))))
; [eval] (0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))) ? $wrap($unwrap($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)) \ $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))) : $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))))
; [eval] 0 == $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))
; [eval] $unwrap($wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))
; [eval] $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - 1)
; [eval] $unwrap(l$Ann$1) - 1
; [eval] $unwrap(l$Ann$1)
; [eval] (3 + 1) * $unwrap(l$D_P$1)
; [eval] 3 + 1
; [eval] $unwrap(l$D_P$1)
(push) ; 24
; [then-branch: 129 | 0 == $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01))) | dead]
; [else-branch: 129 | 0 != $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01))) | live]
(push) ; 25
; [else-branch: 129 | 0 != $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01)))]
; [eval] $w_div($w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2), $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)))
; [eval] $w_mul($wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3), l$D$2)
; [eval] $wrap($unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3)
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3)) + $unwrap(l$D_P$1) * 3
; [eval] $unwrap($w_mul(l$Ann$1, l$S$3))
; [eval] $w_mul(l$Ann$1, l$S$3)
; [eval] $unwrap(l$D_P$1) * 3
; [eval] $unwrap(l$D_P$1)
; [eval] $wrap($unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1))
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)) + (3 + 1) * $unwrap(l$D_P$1)
; [eval] $unwrap($w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2))
; [eval] $w_mul($wrap($unwrap(l$Ann$1) - 1), l$D$2)
; [eval] $wrap($unwrap(l$Ann$1) - 1)
; [eval] $unwrap(l$Ann$1) - 1
; [eval] $unwrap(l$Ann$1)
; [eval] (3 + 1) * $unwrap(l$D_P$1)
; [eval] 3 + 1
; [eval] $unwrap(l$D_P$1)
(pop) ; 25
(pop) ; 24
; Joined path conditions
(declare-const l$D$2@396@01 $Int)
(assert (=
  l$D$2@396@01
  ($w_div<$Int> ($w_mul<$Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
    (* ($unwrap<Int> l$D_P$1@391@01) 3))) l$D$2@218@01) ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
    (* 4 ($unwrap<Int> l$D_P$1@391@01)))))))
; [exec]
; assert (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap(l$Dprev$1) == $unwrap(l$D$2)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap(l$Dprev$1) == $unwrap(l$D$2)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@397@01 Int)
(push) ; 24
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 25
; [then-branch: 130 | 0 <= q$i@397@01 | live]
; [else-branch: 130 | !(0 <= q$i@397@01) | live]
(push) ; 26
; [then-branch: 130 | 0 <= q$i@397@01]
(assert (<= 0 q$i@397@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 27
; [then-branch: 131 | q$i@397@01 < 3 | live]
; [else-branch: 131 | !(q$i@397@01 < 3) | live]
(push) ; 28
; [then-branch: 131 | q$i@397@01 < 3]
(assert (< q$i@397@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 29
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 29
(assert (not (>= q$i@397@01 0)))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(push) ; 29
(assert (not (< q$i@397@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(pop) ; 28
(push) ; 28
; [else-branch: 131 | !(q$i@397@01 < 3)]
(assert (not (< q$i@397@01 3)))
(pop) ; 28
(pop) ; 27
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@397@01 3)) (< q$i@397@01 3)))
(pop) ; 26
(push) ; 26
; [else-branch: 130 | !(0 <= q$i@397@01)]
(assert (not (<= 0 q$i@397@01)))
(pop) ; 26
(pop) ; 25
; Joined path conditions
(assert (=>
  (<= 0 q$i@397@01)
  (and (<= 0 q$i@397@01) (or (not (< q$i@397@01 3)) (< q$i@397@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@397@01)) (<= 0 q$i@397@01)))
(pop) ; 24
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@397@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@397@01)
      (and (<= 0 q$i@397@01) (or (not (< q$i@397@01 3)) (< q$i@397@01 3))))
    (or (not (<= 0 q$i@397@01)) (<= 0 q$i@397@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@397@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1094@11@1094@75-aux|)))
(push) ; 24
(push) ; 25
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@397@01 Int)) (!
    (=>
      (and (<= 0 q$i@397@01) (< q$i@397@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@397@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@397@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1094@11@1094@75|)))))
(check-sat)
; unknown
(pop) ; 25
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 25
(set-option :timeout 10)
(assert (not (forall ((q$i@397@01 Int)) (!
  (=>
    (and (<= 0 q$i@397@01) (< q$i@397@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@397@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@397@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1094@11@1094@75|))))
(check-sat)
; unknown
(pop) ; 25
; 0.01s
; (get-info :all-statistics)
; [then-branch: 132 | QA q$i@397@01 :: 0 <= q$i@397@01 && q$i@397@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@397@01] | live]
; [else-branch: 132 | !(QA q$i@397@01 :: 0 <= q$i@397@01 && q$i@397@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@397@01]) | live]
(set-option :timeout 0)
(push) ; 25
; [then-branch: 132 | QA q$i@397@01 :: 0 <= q$i@397@01 && q$i@397@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@397@01]]
(assert (forall ((q$i@397@01 Int)) (!
  (=>
    (and (<= 0 q$i@397@01) (< q$i@397@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@397@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@397@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1094@11@1094@75|)))
; [eval] $unwrap(l$Dprev$1) == $unwrap(l$D$2)
; [eval] $unwrap(l$Dprev$1)
; [eval] $unwrap(l$D$2)
(pop) ; 25
(push) ; 25
; [else-branch: 132 | !(QA q$i@397@01 :: 0 <= q$i@397@01 && q$i@397@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@397@01])]
(assert (not
  (forall ((q$i@397@01 Int)) (!
    (=>
      (and (<= 0 q$i@397@01) (< q$i@397@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@397@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@397@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1094@11@1094@75|))))
(pop) ; 25
(pop) ; 24
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@397@01 Int)) (!
      (=>
        (and (<= 0 q$i@397@01) (< q$i@397@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@397@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@397@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1094@11@1094@75|)))
  (forall ((q$i@397@01 Int)) (!
    (=>
      (and (<= 0 q$i@397@01) (< q$i@397@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@397@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@397@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1094@11@1094@75|))))
(push) ; 24
(assert (not (=>
  (forall ((q$i@397@01 Int)) (!
    (=>
      (and (<= 0 q$i@397@01) (< q$i@397@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@397@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@397@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1094@11@1094@75|))
  (= ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01)))))
(check-sat)
; unsat
(pop) ; 24
; 0.45s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@397@01 Int)) (!
    (=>
      (and (<= 0 q$i@397@01) (< q$i@397@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@397@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@397@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1094@11@1094@75|))
  (= ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01))))
; [eval] $unwrap(l$D$2) > $unwrap(l$Dprev$1)
; [eval] $unwrap(l$D$2)
; [eval] $unwrap(l$Dprev$1)
(push) ; 24
(set-option :timeout 10)
(assert (not (not (> ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (> ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01))))
(check-sat)
; unknown
(pop) ; 24
; 0.01s
; (get-info :all-statistics)
; [then-branch: 133 | $unwrap[Int](l$D$2@396@01) > $unwrap[Int](l$D$2@218@01) | live]
; [else-branch: 133 | !($unwrap[Int](l$D$2@396@01) > $unwrap[Int](l$D$2@218@01)) | live]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 133 | $unwrap[Int](l$D$2@396@01) > $unwrap[Int](l$D$2@218@01)]
(assert (> ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)))
; [eval] $unwrap(l$D$2) - $unwrap(l$Dprev$1) < 0
; [eval] $unwrap(l$D$2) - $unwrap(l$Dprev$1)
; [eval] $unwrap(l$D$2)
; [eval] $unwrap(l$Dprev$1)
(push) ; 25
(set-option :timeout 10)
(assert (not (not (< (- ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)) 0))))
(check-sat)
; unsat
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
; [then-branch: 134 | $unwrap[Int](l$D$2@396@01) - $unwrap[Int](l$D$2@218@01) < 0 | dead]
; [else-branch: 134 | !($unwrap[Int](l$D$2@396@01) - $unwrap[Int](l$D$2@218@01) < 0) | live]
(set-option :timeout 0)
(push) ; 25
; [else-branch: 134 | !($unwrap[Int](l$D$2@396@01) - $unwrap[Int](l$D$2@218@01) < 0)]
(assert (not (< (- ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)) 0)))
(pop) ; 25
; [eval] !($unwrap(l$D$2) - $unwrap(l$Dprev$1) < 0)
; [eval] $unwrap(l$D$2) - $unwrap(l$Dprev$1) < 0
; [eval] $unwrap(l$D$2) - $unwrap(l$Dprev$1)
; [eval] $unwrap(l$D$2)
; [eval] $unwrap(l$Dprev$1)
(push) ; 25
(set-option :timeout 10)
(assert (not (< (- ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)) 0)))
(check-sat)
; unknown
(pop) ; 25
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 25
(set-option :timeout 10)
(assert (not (not (< (- ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)) 0))))
(check-sat)
; unsat
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
; [then-branch: 135 | !($unwrap[Int](l$D$2@396@01) - $unwrap[Int](l$D$2@218@01) < 0) | live]
; [else-branch: 135 | $unwrap[Int](l$D$2@396@01) - $unwrap[Int](l$D$2@218@01) < 0 | dead]
(set-option :timeout 0)
(push) ; 25
; [then-branch: 135 | !($unwrap[Int](l$D$2@396@01) - $unwrap[Int](l$D$2@218@01) < 0)]
(assert (not (< (- ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)) 0)))
; [eval] $unwrap(l$D$2) - $unwrap(l$Dprev$1) <= 1
; [eval] $unwrap(l$D$2) - $unwrap(l$Dprev$1)
; [eval] $unwrap(l$D$2)
; [eval] $unwrap(l$Dprev$1)
(push) ; 26
(set-option :timeout 10)
(assert (not (not (<= (- ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)) 1))))
(check-sat)
; unknown
(pop) ; 26
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (<= (- ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)) 1)))
(check-sat)
; unknown
(pop) ; 26
; 0.01s
; (get-info :all-statistics)
; [then-branch: 136 | $unwrap[Int](l$D$2@396@01) - $unwrap[Int](l$D$2@218@01) <= 1 | live]
; [else-branch: 136 | !($unwrap[Int](l$D$2@396@01) - $unwrap[Int](l$D$2@218@01) <= 1) | live]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 136 | $unwrap[Int](l$D$2@396@01) - $unwrap[Int](l$D$2@218@01) <= 1]
(assert (<= (- ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)) 1))
; [exec]
; label break_1
; [exec]
; $res := $unwrap(l$D$2)
; [eval] $unwrap(l$D$2)
(declare-const $res@398@01 Int)
(assert (= $res@398@01 ($unwrap<Int> l$D$2@396@01)))
; [exec]
; label return
(push) ; 27
(set-option :timeout 10)
(assert (not (not $out_of_gas@219@01)))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not $out_of_gas@219@01))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
; [then-branch: 137 | $out_of_gas@219@01 | live]
; [else-branch: 137 | !($out_of_gas@219@01) | live]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 137 | $out_of_gas@219@01]
(assert $out_of_gas@219@01)
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc$12
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_old_self
; [exec]
; $old_$contracts := $pre_old_$contracts
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 28
; [then-branch: 138 | False | dead]
; [else-branch: 138 | True | live]
(push) ; 29
; [else-branch: 138 | True]
(pop) ; 29
(pop) ; 28
; Joined path conditions
(pop) ; 27
(push) ; 27
; [else-branch: 137 | !($out_of_gas@219@01)]
(assert (not $out_of_gas@219@01))
(pop) ; 27
; [eval] !$out_of_gas
(push) ; 27
(set-option :timeout 10)
(assert (not $out_of_gas@219@01))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (not $out_of_gas@219@01)))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
; [then-branch: 139 | !($out_of_gas@219@01) | live]
; [else-branch: 139 | $out_of_gas@219@01 | live]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 139 | !($out_of_gas@219@01)]
(assert (not $out_of_gas@219@01))
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 29
; 0.01s
; (get-info :all-statistics)
; [then-branch: 140 | True | live]
; [else-branch: 140 | False | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 140 | True]
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@399@01 Int)
(push) ; 30
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 31
; [then-branch: 141 | 0 <= q$i@399@01 | live]
; [else-branch: 141 | !(0 <= q$i@399@01) | live]
(push) ; 32
; [then-branch: 141 | 0 <= q$i@399@01]
(assert (<= 0 q$i@399@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 33
; [then-branch: 142 | q$i@399@01 < 3 | live]
; [else-branch: 142 | !(q$i@399@01 < 3) | live]
(push) ; 34
; [then-branch: 142 | q$i@399@01 < 3]
(assert (< q$i@399@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 35
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 35
(assert (not (>= q$i@399@01 0)))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(push) ; 35
(assert (not (< q$i@399@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(pop) ; 34
(push) ; 34
; [else-branch: 142 | !(q$i@399@01 < 3)]
(assert (not (< q$i@399@01 3)))
(pop) ; 34
(pop) ; 33
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@399@01 3)) (< q$i@399@01 3)))
(pop) ; 32
(push) ; 32
; [else-branch: 141 | !(0 <= q$i@399@01)]
(assert (not (<= 0 q$i@399@01)))
(pop) ; 32
(pop) ; 31
; Joined path conditions
(assert (=>
  (<= 0 q$i@399@01)
  (and (<= 0 q$i@399@01) (or (not (< q$i@399@01 3)) (< q$i@399@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@399@01)) (<= 0 q$i@399@01)))
(pop) ; 30
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@399@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@399@01)
      (and (<= 0 q$i@399@01) (or (not (< q$i@399@01 3)) (< q$i@399@01 3))))
    (or (not (<= 0 q$i@399@01)) (<= 0 q$i@399@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@399@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85-aux|)))
(push) ; 30
(push) ; 31
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@399@01 Int)) (!
    (=>
      (and (<= 0 q$i@399@01) (< q$i@399@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@399@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@399@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))))
(check-sat)
; unknown
(pop) ; 31
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (forall ((q$i@399@01 Int)) (!
  (=>
    (and (<= 0 q$i@399@01) (< q$i@399@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@399@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@399@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))))
(check-sat)
; unknown
(pop) ; 31
; 0.01s
; (get-info :all-statistics)
; [then-branch: 143 | QA q$i@399@01 :: 0 <= q$i@399@01 && q$i@399@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@399@01] | live]
; [else-branch: 143 | !(QA q$i@399@01 :: 0 <= q$i@399@01 && q$i@399@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@399@01]) | live]
(set-option :timeout 0)
(push) ; 31
; [then-branch: 143 | QA q$i@399@01 :: 0 <= q$i@399@01 && q$i@399@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@399@01]]
(assert (forall ((q$i@399@01 Int)) (!
  (=>
    (and (<= 0 q$i@399@01) (< q$i@399@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@399@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@399@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))
; [eval] $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] 3 * $unwrap($wrap(l$xp[0]))
; [eval] $unwrap($wrap(l$xp[0]))
; [eval] $wrap(l$xp[0])
; [eval] l$xp[0]
(push) ; 32
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(pop) ; 31
(push) ; 31
; [else-branch: 143 | !(QA q$i@399@01 :: 0 <= q$i@399@01 && q$i@399@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@399@01])]
(assert (not
  (forall ((q$i@399@01 Int)) (!
    (=>
      (and (<= 0 q$i@399@01) (< q$i@399@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@399@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@399@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))))
(pop) ; 31
(pop) ; 30
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@399@01 Int)) (!
      (=>
        (and (<= 0 q$i@399@01) (< q$i@399@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@399@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@399@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))
  (forall ((q$i@399@01 Int)) (!
    (=>
      (and (<= 0 q$i@399@01) (< q$i@399@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@399@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@399@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))))
(pop) ; 29
(pop) ; 28
; Joined path conditions
(assert (and
  (forall ((q$i@399@01 Int)) (!
    (and
      (=>
        (<= 0 q$i@399@01)
        (and (<= 0 q$i@399@01) (or (not (< q$i@399@01 3)) (< q$i@399@01 3))))
      (or (not (<= 0 q$i@399@01)) (<= 0 q$i@399@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@399@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85-aux|))
  (or
    (not
      (forall ((q$i@399@01 Int)) (!
        (=>
          (and (<= 0 q$i@399@01) (< q$i@399@01 3))
          (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@399@01)))
        :pattern ((Seq_index l$xp@166@01 q$i@399@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))
    (forall ((q$i@399@01 Int)) (!
      (=>
        (and (<= 0 q$i@399@01) (< q$i@399@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@399@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@399@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))))
(push) ; 28
(assert (not (=>
  (forall ((q$i@399@01 Int)) (!
    (=>
      (and (<= 0 q$i@399@01) (< q$i@399@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@399@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@399@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))
  (= $res@398@01 (* 3 ($unwrap<Int> ($wrap<$Int> (Seq_index l$xp@166@01 0))))))))
(check-sat)
; unsat
(pop) ; 28
; 0.36s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@399@01 Int)) (!
    (=>
      (and (<= 0 q$i@399@01) (< q$i@399@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@399@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@399@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))
  (= $res@398@01 (* 3 ($unwrap<Int> ($wrap<$Int> (Seq_index l$xp@166@01 0)))))))
(pop) ; 27
(push) ; 27
; [else-branch: 139 | $out_of_gas@219@01]
(assert $out_of_gas@219@01)
(pop) ; 27
(pop) ; 26
(push) ; 26
; [else-branch: 136 | !($unwrap[Int](l$D$2@396@01) - $unwrap[Int](l$D$2@218@01) <= 1)]
(assert (not (<= (- ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)) 1)))
(pop) ; 26
; [eval] !($unwrap(l$D$2) - $unwrap(l$Dprev$1) <= 1)
; [eval] $unwrap(l$D$2) - $unwrap(l$Dprev$1) <= 1
; [eval] $unwrap(l$D$2) - $unwrap(l$Dprev$1)
; [eval] $unwrap(l$D$2)
; [eval] $unwrap(l$Dprev$1)
(push) ; 26
(set-option :timeout 10)
(assert (not (<= (- ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)) 1)))
(check-sat)
; unknown
(pop) ; 26
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (not (<= (- ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)) 1))))
(check-sat)
; unknown
(pop) ; 26
; 0.01s
; (get-info :all-statistics)
; [then-branch: 144 | !($unwrap[Int](l$D$2@396@01) - $unwrap[Int](l$D$2@218@01) <= 1) | live]
; [else-branch: 144 | $unwrap[Int](l$D$2@396@01) - $unwrap[Int](l$D$2@218@01) <= 1 | live]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 144 | !($unwrap[Int](l$D$2@396@01) - $unwrap[Int](l$D$2@218@01) <= 1)]
(assert (not (<= (- ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)) 1)))
; [exec]
; label continue_3
; [exec]
; l$$idx := l$$idx + 1
; [eval] l$$idx + 1
(declare-const l$$idx@400@01 Int)
(assert (= l$$idx@400@01 (+ l$havoc@194@01 1)))
; [eval] l$$idx == 255
(push) ; 27
(set-option :timeout 10)
(assert (not (not (= l$$idx@400@01 255))))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (= l$$idx@400@01 255)))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
; [then-branch: 145 | l$$idx@400@01 == 255 | live]
; [else-branch: 145 | l$$idx@400@01 != 255 | live]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 145 | l$$idx@400@01 == 255]
(assert (= l$$idx@400@01 255))
; [exec]
; label break_1
; [exec]
; $res := $unwrap(l$D$2)
; [eval] $unwrap(l$D$2)
(declare-const $res@401@01 Int)
(assert (= $res@401@01 ($unwrap<Int> l$D$2@396@01)))
; [exec]
; label return
(push) ; 28
(set-option :timeout 10)
(assert (not (not $out_of_gas@219@01)))
(check-sat)
; unknown
(pop) ; 28
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not $out_of_gas@219@01))
(check-sat)
; unknown
(pop) ; 28
; 0.01s
; (get-info :all-statistics)
; [then-branch: 146 | $out_of_gas@219@01 | live]
; [else-branch: 146 | !($out_of_gas@219@01) | live]
(set-option :timeout 0)
(push) ; 28
; [then-branch: 146 | $out_of_gas@219@01]
(assert $out_of_gas@219@01)
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc$12
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_old_self
; [exec]
; $old_$contracts := $pre_old_$contracts
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 29
; [then-branch: 147 | False | dead]
; [else-branch: 147 | True | live]
(push) ; 30
; [else-branch: 147 | True]
(pop) ; 30
(pop) ; 29
; Joined path conditions
(pop) ; 28
(push) ; 28
; [else-branch: 146 | !($out_of_gas@219@01)]
(assert (not $out_of_gas@219@01))
(pop) ; 28
; [eval] !$out_of_gas
(push) ; 28
(set-option :timeout 10)
(assert (not $out_of_gas@219@01))
(check-sat)
; unknown
(pop) ; 28
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (not $out_of_gas@219@01)))
(check-sat)
; unknown
(pop) ; 28
; 0.01s
; (get-info :all-statistics)
; [then-branch: 148 | !($out_of_gas@219@01) | live]
; [else-branch: 148 | $out_of_gas@219@01 | live]
(set-option :timeout 0)
(push) ; 28
; [then-branch: 148 | !($out_of_gas@219@01)]
(assert (not $out_of_gas@219@01))
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 29
(push) ; 30
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 30
; 0.01s
; (get-info :all-statistics)
; [then-branch: 149 | True | live]
; [else-branch: 149 | False | dead]
(set-option :timeout 0)
(push) ; 30
; [then-branch: 149 | True]
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@402@01 Int)
(push) ; 31
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 32
; [then-branch: 150 | 0 <= q$i@402@01 | live]
; [else-branch: 150 | !(0 <= q$i@402@01) | live]
(push) ; 33
; [then-branch: 150 | 0 <= q$i@402@01]
(assert (<= 0 q$i@402@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 34
; [then-branch: 151 | q$i@402@01 < 3 | live]
; [else-branch: 151 | !(q$i@402@01 < 3) | live]
(push) ; 35
; [then-branch: 151 | q$i@402@01 < 3]
(assert (< q$i@402@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 36
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 36
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 36
(assert (not (>= q$i@402@01 0)))
(check-sat)
; unsat
(pop) ; 36
; 0.00s
; (get-info :all-statistics)
(push) ; 36
(assert (not (< q$i@402@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 36
; 0.00s
; (get-info :all-statistics)
(pop) ; 35
(push) ; 35
; [else-branch: 151 | !(q$i@402@01 < 3)]
(assert (not (< q$i@402@01 3)))
(pop) ; 35
(pop) ; 34
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@402@01 3)) (< q$i@402@01 3)))
(pop) ; 33
(push) ; 33
; [else-branch: 150 | !(0 <= q$i@402@01)]
(assert (not (<= 0 q$i@402@01)))
(pop) ; 33
(pop) ; 32
; Joined path conditions
(assert (=>
  (<= 0 q$i@402@01)
  (and (<= 0 q$i@402@01) (or (not (< q$i@402@01 3)) (< q$i@402@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@402@01)) (<= 0 q$i@402@01)))
(pop) ; 31
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@402@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@402@01)
      (and (<= 0 q$i@402@01) (or (not (< q$i@402@01 3)) (< q$i@402@01 3))))
    (or (not (<= 0 q$i@402@01)) (<= 0 q$i@402@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@402@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85-aux|)))
(push) ; 31
(push) ; 32
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@402@01 Int)) (!
    (=>
      (and (<= 0 q$i@402@01) (< q$i@402@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@402@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@402@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))))
(check-sat)
; unknown
(pop) ; 32
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (forall ((q$i@402@01 Int)) (!
  (=>
    (and (<= 0 q$i@402@01) (< q$i@402@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@402@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@402@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))))
(check-sat)
; unknown
(pop) ; 32
; 0.01s
; (get-info :all-statistics)
; [then-branch: 152 | QA q$i@402@01 :: 0 <= q$i@402@01 && q$i@402@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@402@01] | live]
; [else-branch: 152 | !(QA q$i@402@01 :: 0 <= q$i@402@01 && q$i@402@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@402@01]) | live]
(set-option :timeout 0)
(push) ; 32
; [then-branch: 152 | QA q$i@402@01 :: 0 <= q$i@402@01 && q$i@402@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@402@01]]
(assert (forall ((q$i@402@01 Int)) (!
  (=>
    (and (<= 0 q$i@402@01) (< q$i@402@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@402@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@402@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))
; [eval] $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] 3 * $unwrap($wrap(l$xp[0]))
; [eval] $unwrap($wrap(l$xp[0]))
; [eval] $wrap(l$xp[0])
; [eval] l$xp[0]
(push) ; 33
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(pop) ; 32
(push) ; 32
; [else-branch: 152 | !(QA q$i@402@01 :: 0 <= q$i@402@01 && q$i@402@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@402@01])]
(assert (not
  (forall ((q$i@402@01 Int)) (!
    (=>
      (and (<= 0 q$i@402@01) (< q$i@402@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@402@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@402@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))))
(pop) ; 32
(pop) ; 31
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@402@01 Int)) (!
      (=>
        (and (<= 0 q$i@402@01) (< q$i@402@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@402@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@402@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))
  (forall ((q$i@402@01 Int)) (!
    (=>
      (and (<= 0 q$i@402@01) (< q$i@402@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@402@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@402@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))))
(pop) ; 30
(pop) ; 29
; Joined path conditions
(assert (and
  (forall ((q$i@402@01 Int)) (!
    (and
      (=>
        (<= 0 q$i@402@01)
        (and (<= 0 q$i@402@01) (or (not (< q$i@402@01 3)) (< q$i@402@01 3))))
      (or (not (<= 0 q$i@402@01)) (<= 0 q$i@402@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@402@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85-aux|))
  (or
    (not
      (forall ((q$i@402@01 Int)) (!
        (=>
          (and (<= 0 q$i@402@01) (< q$i@402@01 3))
          (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@402@01)))
        :pattern ((Seq_index l$xp@166@01 q$i@402@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))
    (forall ((q$i@402@01 Int)) (!
      (=>
        (and (<= 0 q$i@402@01) (< q$i@402@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@402@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@402@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))))
(push) ; 29
(assert (not (=>
  (forall ((q$i@402@01 Int)) (!
    (=>
      (and (<= 0 q$i@402@01) (< q$i@402@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@402@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@402@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))
  (= $res@401@01 (* 3 ($unwrap<Int> ($wrap<$Int> (Seq_index l$xp@166@01 0))))))))
(check-sat)
; unsat
(pop) ; 29
; 0.34s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@402@01 Int)) (!
    (=>
      (and (<= 0 q$i@402@01) (< q$i@402@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@402@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@402@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))
  (= $res@401@01 (* 3 ($unwrap<Int> ($wrap<$Int> (Seq_index l$xp@166@01 0)))))))
(pop) ; 28
(push) ; 28
; [else-branch: 148 | $out_of_gas@219@01]
(assert $out_of_gas@219@01)
(pop) ; 28
(pop) ; 27
(push) ; 27
; [else-branch: 145 | l$$idx@400@01 != 255]
(assert (not (= l$$idx@400@01 255)))
(pop) ; 27
; [eval] !(l$$idx == 255)
; [eval] l$$idx == 255
(push) ; 27
(set-option :timeout 10)
(assert (not (= l$$idx@400@01 255)))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (not (= l$$idx@400@01 255))))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
; [then-branch: 153 | l$$idx@400@01 != 255 | live]
; [else-branch: 153 | l$$idx@400@01 == 255 | live]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 153 | l$$idx@400@01 != 255]
(assert (not (= l$$idx@400@01 255)))
; [exec]
; l$_i := $wrap($range(0, 255)[l$$idx])
; [eval] $wrap($range(0, 255)[l$$idx])
; [eval] $range(0, 255)[l$$idx]
; [eval] $range(0, 255)
(push) ; 28
(assert (not (>= l$$idx@400@01 0)))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(push) ; 28
(assert (not (< l$$idx@400@01 (Seq_length ($range<Seq<Int>> 0 255)))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(declare-const l$_i@403@01 $Int)
(assert (= l$_i@403@01 ($wrap<$Int> (Seq_index ($range<Seq<Int>> 0 255) l$$idx@400@01))))
; [exec]
; exhale $unwrap(l$S$3) == $unwrap(l$S$1) &&
;   $unwrap(l$Ann$1) == $unwrap(l$Ann)
; [eval] $unwrap(l$S$3) == $unwrap(l$S$1)
; [eval] $unwrap(l$S$3)
; [eval] $unwrap(l$S$1)
(push) ; 28
(assert (not (= ($unwrap<Int> l$S$3@217@01) ($unwrap<Int> l$S$1@278@01))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(assert (= ($unwrap<Int> l$S$3@217@01) ($unwrap<Int> l$S$1@278@01)))
; [eval] $unwrap(l$Ann$1) == $unwrap(l$Ann)
; [eval] $unwrap(l$Ann$1)
; [eval] $unwrap(l$Ann)
; [exec]
; exhale (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap(l$D$2) == $unwrap(l$S$3)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap(l$D$2) == $unwrap(l$S$3)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@404@01 Int)
(push) ; 28
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 29
; [then-branch: 154 | 0 <= q$i@404@01 | live]
; [else-branch: 154 | !(0 <= q$i@404@01) | live]
(push) ; 30
; [then-branch: 154 | 0 <= q$i@404@01]
(assert (<= 0 q$i@404@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 31
; [then-branch: 155 | q$i@404@01 < 3 | live]
; [else-branch: 155 | !(q$i@404@01 < 3) | live]
(push) ; 32
; [then-branch: 155 | q$i@404@01 < 3]
(assert (< q$i@404@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 33
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 33
(assert (not (>= q$i@404@01 0)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(push) ; 33
(assert (not (< q$i@404@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(pop) ; 32
(push) ; 32
; [else-branch: 155 | !(q$i@404@01 < 3)]
(assert (not (< q$i@404@01 3)))
(pop) ; 32
(pop) ; 31
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@404@01 3)) (< q$i@404@01 3)))
(pop) ; 30
(push) ; 30
; [else-branch: 154 | !(0 <= q$i@404@01)]
(assert (not (<= 0 q$i@404@01)))
(pop) ; 30
(pop) ; 29
; Joined path conditions
(assert (=>
  (<= 0 q$i@404@01)
  (and (<= 0 q$i@404@01) (or (not (< q$i@404@01 3)) (< q$i@404@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@404@01)) (<= 0 q$i@404@01)))
(pop) ; 28
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@404@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@404@01)
      (and (<= 0 q$i@404@01) (or (not (< q$i@404@01 3)) (< q$i@404@01 3))))
    (or (not (<= 0 q$i@404@01)) (<= 0 q$i@404@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@404@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75-aux|)))
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@404@01 Int)) (!
    (=>
      (and (<= 0 q$i@404@01) (< q$i@404@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@404@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@404@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|)))))
(check-sat)
; unknown
(pop) ; 29
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (forall ((q$i@404@01 Int)) (!
  (=>
    (and (<= 0 q$i@404@01) (< q$i@404@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@404@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@404@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|))))
(check-sat)
; unknown
(pop) ; 29
; 0.01s
; (get-info :all-statistics)
; [then-branch: 156 | QA q$i@404@01 :: 0 <= q$i@404@01 && q$i@404@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@404@01] | live]
; [else-branch: 156 | !(QA q$i@404@01 :: 0 <= q$i@404@01 && q$i@404@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@404@01]) | live]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 156 | QA q$i@404@01 :: 0 <= q$i@404@01 && q$i@404@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@404@01]]
(assert (forall ((q$i@404@01 Int)) (!
  (=>
    (and (<= 0 q$i@404@01) (< q$i@404@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@404@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@404@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|)))
; [eval] $unwrap(l$D$2) == $unwrap(l$S$3)
; [eval] $unwrap(l$D$2)
; [eval] $unwrap(l$S$3)
(pop) ; 29
(push) ; 29
; [else-branch: 156 | !(QA q$i@404@01 :: 0 <= q$i@404@01 && q$i@404@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@404@01])]
(assert (not
  (forall ((q$i@404@01 Int)) (!
    (=>
      (and (<= 0 q$i@404@01) (< q$i@404@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@404@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@404@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|))))
(pop) ; 29
(pop) ; 28
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@404@01 Int)) (!
      (=>
        (and (<= 0 q$i@404@01) (< q$i@404@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@404@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@404@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|)))
  (forall ((q$i@404@01 Int)) (!
    (=>
      (and (<= 0 q$i@404@01) (< q$i@404@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@404@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@404@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|))))
(push) ; 28
(assert (not (=>
  (forall ((q$i@404@01 Int)) (!
    (=>
      (and (<= 0 q$i@404@01) (< q$i@404@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@404@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@404@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|))
  (= ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$S$3@217@01)))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@404@01 Int)) (!
    (=>
      (and (<= 0 q$i@404@01) (< q$i@404@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@404@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@404@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|))
  (= ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$S$3@217@01))))
; [exec]
; inhale false
(pop) ; 27
(push) ; 27
; [else-branch: 153 | l$$idx@400@01 == 255]
(assert (= l$$idx@400@01 255))
(pop) ; 27
(pop) ; 26
(push) ; 26
; [else-branch: 144 | $unwrap[Int](l$D$2@396@01) - $unwrap[Int](l$D$2@218@01) <= 1]
(assert (<= (- ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)) 1))
(pop) ; 26
(pop) ; 25
(pop) ; 24
(push) ; 24
; [else-branch: 133 | !($unwrap[Int](l$D$2@396@01) > $unwrap[Int](l$D$2@218@01))]
(assert (not (> ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01))))
(pop) ; 24
; [eval] !($unwrap(l$D$2) > $unwrap(l$Dprev$1))
; [eval] $unwrap(l$D$2) > $unwrap(l$Dprev$1)
; [eval] $unwrap(l$D$2)
; [eval] $unwrap(l$Dprev$1)
(push) ; 24
(set-option :timeout 10)
(assert (not (> ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01))))
(check-sat)
; unknown
(pop) ; 24
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (not (> ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.01s
; (get-info :all-statistics)
; [then-branch: 157 | !($unwrap[Int](l$D$2@396@01) > $unwrap[Int](l$D$2@218@01)) | live]
; [else-branch: 157 | $unwrap[Int](l$D$2@396@01) > $unwrap[Int](l$D$2@218@01) | live]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 157 | !($unwrap[Int](l$D$2@396@01) > $unwrap[Int](l$D$2@218@01))]
(assert (not (> ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01))))
; [eval] $unwrap(l$Dprev$1) - $unwrap(l$D$2) < 0
; [eval] $unwrap(l$Dprev$1) - $unwrap(l$D$2)
; [eval] $unwrap(l$Dprev$1)
; [eval] $unwrap(l$D$2)
(push) ; 25
(set-option :timeout 10)
(assert (not (not (< (- ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01)) 0))))
(check-sat)
; unsat
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
; [then-branch: 158 | $unwrap[Int](l$D$2@218@01) - $unwrap[Int](l$D$2@396@01) < 0 | dead]
; [else-branch: 158 | !($unwrap[Int](l$D$2@218@01) - $unwrap[Int](l$D$2@396@01) < 0) | live]
(set-option :timeout 0)
(push) ; 25
; [else-branch: 158 | !($unwrap[Int](l$D$2@218@01) - $unwrap[Int](l$D$2@396@01) < 0)]
(assert (not (< (- ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01)) 0)))
(pop) ; 25
; [eval] !($unwrap(l$Dprev$1) - $unwrap(l$D$2) < 0)
; [eval] $unwrap(l$Dprev$1) - $unwrap(l$D$2) < 0
; [eval] $unwrap(l$Dprev$1) - $unwrap(l$D$2)
; [eval] $unwrap(l$Dprev$1)
; [eval] $unwrap(l$D$2)
(push) ; 25
(set-option :timeout 10)
(assert (not (< (- ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01)) 0)))
(check-sat)
; unknown
(pop) ; 25
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 25
(set-option :timeout 10)
(assert (not (not (< (- ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01)) 0))))
(check-sat)
; unsat
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
; [then-branch: 159 | !($unwrap[Int](l$D$2@218@01) - $unwrap[Int](l$D$2@396@01) < 0) | live]
; [else-branch: 159 | $unwrap[Int](l$D$2@218@01) - $unwrap[Int](l$D$2@396@01) < 0 | dead]
(set-option :timeout 0)
(push) ; 25
; [then-branch: 159 | !($unwrap[Int](l$D$2@218@01) - $unwrap[Int](l$D$2@396@01) < 0)]
(assert (not (< (- ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01)) 0)))
; [eval] $unwrap(l$Dprev$1) - $unwrap(l$D$2) <= 1
; [eval] $unwrap(l$Dprev$1) - $unwrap(l$D$2)
; [eval] $unwrap(l$Dprev$1)
; [eval] $unwrap(l$D$2)
(push) ; 26
(set-option :timeout 10)
(assert (not (not (<= (- ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01)) 1))))
(check-sat)
; unknown
(pop) ; 26
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (<= (- ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01)) 1)))
(check-sat)
; unknown
(pop) ; 26
; 0.01s
; (get-info :all-statistics)
; [then-branch: 160 | $unwrap[Int](l$D$2@218@01) - $unwrap[Int](l$D$2@396@01) <= 1 | live]
; [else-branch: 160 | !($unwrap[Int](l$D$2@218@01) - $unwrap[Int](l$D$2@396@01) <= 1) | live]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 160 | $unwrap[Int](l$D$2@218@01) - $unwrap[Int](l$D$2@396@01) <= 1]
(assert (<= (- ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01)) 1))
; [exec]
; label break_1
; [exec]
; $res := $unwrap(l$D$2)
; [eval] $unwrap(l$D$2)
(declare-const $res@405@01 Int)
(assert (= $res@405@01 ($unwrap<Int> l$D$2@396@01)))
; [exec]
; label return
(push) ; 27
(set-option :timeout 10)
(assert (not (not $out_of_gas@219@01)))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not $out_of_gas@219@01))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
; [then-branch: 161 | $out_of_gas@219@01 | live]
; [else-branch: 161 | !($out_of_gas@219@01) | live]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 161 | $out_of_gas@219@01]
(assert $out_of_gas@219@01)
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc$12
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_old_self
; [exec]
; $old_$contracts := $pre_old_$contracts
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 28
; [then-branch: 162 | False | dead]
; [else-branch: 162 | True | live]
(push) ; 29
; [else-branch: 162 | True]
(pop) ; 29
(pop) ; 28
; Joined path conditions
(pop) ; 27
(push) ; 27
; [else-branch: 161 | !($out_of_gas@219@01)]
(assert (not $out_of_gas@219@01))
(pop) ; 27
; [eval] !$out_of_gas
(push) ; 27
(set-option :timeout 10)
(assert (not $out_of_gas@219@01))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (not $out_of_gas@219@01)))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
; [then-branch: 163 | !($out_of_gas@219@01) | live]
; [else-branch: 163 | $out_of_gas@219@01 | live]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 163 | !($out_of_gas@219@01)]
(assert (not $out_of_gas@219@01))
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 29
; 0.01s
; (get-info :all-statistics)
; [then-branch: 164 | True | live]
; [else-branch: 164 | False | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 164 | True]
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@406@01 Int)
(push) ; 30
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 31
; [then-branch: 165 | 0 <= q$i@406@01 | live]
; [else-branch: 165 | !(0 <= q$i@406@01) | live]
(push) ; 32
; [then-branch: 165 | 0 <= q$i@406@01]
(assert (<= 0 q$i@406@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 33
; [then-branch: 166 | q$i@406@01 < 3 | live]
; [else-branch: 166 | !(q$i@406@01 < 3) | live]
(push) ; 34
; [then-branch: 166 | q$i@406@01 < 3]
(assert (< q$i@406@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 35
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 35
(assert (not (>= q$i@406@01 0)))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(push) ; 35
(assert (not (< q$i@406@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(pop) ; 34
(push) ; 34
; [else-branch: 166 | !(q$i@406@01 < 3)]
(assert (not (< q$i@406@01 3)))
(pop) ; 34
(pop) ; 33
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@406@01 3)) (< q$i@406@01 3)))
(pop) ; 32
(push) ; 32
; [else-branch: 165 | !(0 <= q$i@406@01)]
(assert (not (<= 0 q$i@406@01)))
(pop) ; 32
(pop) ; 31
; Joined path conditions
(assert (=>
  (<= 0 q$i@406@01)
  (and (<= 0 q$i@406@01) (or (not (< q$i@406@01 3)) (< q$i@406@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@406@01)) (<= 0 q$i@406@01)))
(pop) ; 30
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@406@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@406@01)
      (and (<= 0 q$i@406@01) (or (not (< q$i@406@01 3)) (< q$i@406@01 3))))
    (or (not (<= 0 q$i@406@01)) (<= 0 q$i@406@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@406@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85-aux|)))
(push) ; 30
(push) ; 31
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@406@01 Int)) (!
    (=>
      (and (<= 0 q$i@406@01) (< q$i@406@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@406@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@406@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))))
(check-sat)
; unknown
(pop) ; 31
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (forall ((q$i@406@01 Int)) (!
  (=>
    (and (<= 0 q$i@406@01) (< q$i@406@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@406@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@406@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))))
(check-sat)
; unknown
(pop) ; 31
; 0.01s
; (get-info :all-statistics)
; [then-branch: 167 | QA q$i@406@01 :: 0 <= q$i@406@01 && q$i@406@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@406@01] | live]
; [else-branch: 167 | !(QA q$i@406@01 :: 0 <= q$i@406@01 && q$i@406@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@406@01]) | live]
(set-option :timeout 0)
(push) ; 31
; [then-branch: 167 | QA q$i@406@01 :: 0 <= q$i@406@01 && q$i@406@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@406@01]]
(assert (forall ((q$i@406@01 Int)) (!
  (=>
    (and (<= 0 q$i@406@01) (< q$i@406@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@406@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@406@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))
; [eval] $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] 3 * $unwrap($wrap(l$xp[0]))
; [eval] $unwrap($wrap(l$xp[0]))
; [eval] $wrap(l$xp[0])
; [eval] l$xp[0]
(push) ; 32
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(pop) ; 31
(push) ; 31
; [else-branch: 167 | !(QA q$i@406@01 :: 0 <= q$i@406@01 && q$i@406@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@406@01])]
(assert (not
  (forall ((q$i@406@01 Int)) (!
    (=>
      (and (<= 0 q$i@406@01) (< q$i@406@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@406@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@406@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))))
(pop) ; 31
(pop) ; 30
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@406@01 Int)) (!
      (=>
        (and (<= 0 q$i@406@01) (< q$i@406@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@406@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@406@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))
  (forall ((q$i@406@01 Int)) (!
    (=>
      (and (<= 0 q$i@406@01) (< q$i@406@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@406@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@406@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))))
(pop) ; 29
(pop) ; 28
; Joined path conditions
(assert (and
  (forall ((q$i@406@01 Int)) (!
    (and
      (=>
        (<= 0 q$i@406@01)
        (and (<= 0 q$i@406@01) (or (not (< q$i@406@01 3)) (< q$i@406@01 3))))
      (or (not (<= 0 q$i@406@01)) (<= 0 q$i@406@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@406@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85-aux|))
  (or
    (not
      (forall ((q$i@406@01 Int)) (!
        (=>
          (and (<= 0 q$i@406@01) (< q$i@406@01 3))
          (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@406@01)))
        :pattern ((Seq_index l$xp@166@01 q$i@406@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))
    (forall ((q$i@406@01 Int)) (!
      (=>
        (and (<= 0 q$i@406@01) (< q$i@406@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@406@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@406@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))))
(push) ; 28
(assert (not (=>
  (forall ((q$i@406@01 Int)) (!
    (=>
      (and (<= 0 q$i@406@01) (< q$i@406@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@406@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@406@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))
  (= $res@405@01 (* 3 ($unwrap<Int> ($wrap<$Int> (Seq_index l$xp@166@01 0))))))))
(check-sat)
; unsat
(pop) ; 28
; 0.26s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@406@01 Int)) (!
    (=>
      (and (<= 0 q$i@406@01) (< q$i@406@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@406@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@406@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))
  (= $res@405@01 (* 3 ($unwrap<Int> ($wrap<$Int> (Seq_index l$xp@166@01 0)))))))
(pop) ; 27
(push) ; 27
; [else-branch: 163 | $out_of_gas@219@01]
(assert $out_of_gas@219@01)
(pop) ; 27
(pop) ; 26
(push) ; 26
; [else-branch: 160 | !($unwrap[Int](l$D$2@218@01) - $unwrap[Int](l$D$2@396@01) <= 1)]
(assert (not (<= (- ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01)) 1)))
(pop) ; 26
; [eval] !($unwrap(l$Dprev$1) - $unwrap(l$D$2) <= 1)
; [eval] $unwrap(l$Dprev$1) - $unwrap(l$D$2) <= 1
; [eval] $unwrap(l$Dprev$1) - $unwrap(l$D$2)
; [eval] $unwrap(l$Dprev$1)
; [eval] $unwrap(l$D$2)
(push) ; 26
(set-option :timeout 10)
(assert (not (<= (- ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01)) 1)))
(check-sat)
; unknown
(pop) ; 26
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (not (<= (- ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01)) 1))))
(check-sat)
; unknown
(pop) ; 26
; 0.01s
; (get-info :all-statistics)
; [then-branch: 168 | !($unwrap[Int](l$D$2@218@01) - $unwrap[Int](l$D$2@396@01) <= 1) | live]
; [else-branch: 168 | $unwrap[Int](l$D$2@218@01) - $unwrap[Int](l$D$2@396@01) <= 1 | live]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 168 | !($unwrap[Int](l$D$2@218@01) - $unwrap[Int](l$D$2@396@01) <= 1)]
(assert (not (<= (- ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01)) 1)))
; [exec]
; label continue_3
; [exec]
; l$$idx := l$$idx + 1
; [eval] l$$idx + 1
(declare-const l$$idx@407@01 Int)
(assert (= l$$idx@407@01 (+ l$havoc@194@01 1)))
; [eval] l$$idx == 255
(push) ; 27
(set-option :timeout 10)
(assert (not (not (= l$$idx@407@01 255))))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (= l$$idx@407@01 255)))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
; [then-branch: 169 | l$$idx@407@01 == 255 | live]
; [else-branch: 169 | l$$idx@407@01 != 255 | live]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 169 | l$$idx@407@01 == 255]
(assert (= l$$idx@407@01 255))
; [exec]
; label break_1
; [exec]
; $res := $unwrap(l$D$2)
; [eval] $unwrap(l$D$2)
(declare-const $res@408@01 Int)
(assert (= $res@408@01 ($unwrap<Int> l$D$2@396@01)))
; [exec]
; label return
(push) ; 28
(set-option :timeout 10)
(assert (not (not $out_of_gas@219@01)))
(check-sat)
; unknown
(pop) ; 28
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not $out_of_gas@219@01))
(check-sat)
; unknown
(pop) ; 28
; 0.01s
; (get-info :all-statistics)
; [then-branch: 170 | $out_of_gas@219@01 | live]
; [else-branch: 170 | !($out_of_gas@219@01) | live]
(set-option :timeout 0)
(push) ; 28
; [then-branch: 170 | $out_of_gas@219@01]
(assert $out_of_gas@219@01)
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc$12
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_old_self
; [exec]
; $old_$contracts := $pre_old_$contracts
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 29
; [then-branch: 171 | False | dead]
; [else-branch: 171 | True | live]
(push) ; 30
; [else-branch: 171 | True]
(pop) ; 30
(pop) ; 29
; Joined path conditions
(pop) ; 28
(push) ; 28
; [else-branch: 170 | !($out_of_gas@219@01)]
(assert (not $out_of_gas@219@01))
(pop) ; 28
; [eval] !$out_of_gas
(push) ; 28
(set-option :timeout 10)
(assert (not $out_of_gas@219@01))
(check-sat)
; unknown
(pop) ; 28
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (not $out_of_gas@219@01)))
(check-sat)
; unknown
(pop) ; 28
; 0.01s
; (get-info :all-statistics)
; [then-branch: 172 | !($out_of_gas@219@01) | live]
; [else-branch: 172 | $out_of_gas@219@01 | live]
(set-option :timeout 0)
(push) ; 28
; [then-branch: 172 | !($out_of_gas@219@01)]
(assert (not $out_of_gas@219@01))
; [exec]
; label end
; [exec]
; exhale $succ ==>
;   (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] $succ ==> (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
(push) ; 29
(push) ; 30
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 30
; 0.01s
; (get-info :all-statistics)
; [then-branch: 173 | True | live]
; [else-branch: 173 | False | dead]
(set-option :timeout 0)
(push) ; 30
; [then-branch: 173 | True]
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@409@01 Int)
(push) ; 31
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 32
; [then-branch: 174 | 0 <= q$i@409@01 | live]
; [else-branch: 174 | !(0 <= q$i@409@01) | live]
(push) ; 33
; [then-branch: 174 | 0 <= q$i@409@01]
(assert (<= 0 q$i@409@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 34
; [then-branch: 175 | q$i@409@01 < 3 | live]
; [else-branch: 175 | !(q$i@409@01 < 3) | live]
(push) ; 35
; [then-branch: 175 | q$i@409@01 < 3]
(assert (< q$i@409@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 36
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 36
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 36
(assert (not (>= q$i@409@01 0)))
(check-sat)
; unsat
(pop) ; 36
; 0.00s
; (get-info :all-statistics)
(push) ; 36
(assert (not (< q$i@409@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 36
; 0.00s
; (get-info :all-statistics)
(pop) ; 35
(push) ; 35
; [else-branch: 175 | !(q$i@409@01 < 3)]
(assert (not (< q$i@409@01 3)))
(pop) ; 35
(pop) ; 34
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@409@01 3)) (< q$i@409@01 3)))
(pop) ; 33
(push) ; 33
; [else-branch: 174 | !(0 <= q$i@409@01)]
(assert (not (<= 0 q$i@409@01)))
(pop) ; 33
(pop) ; 32
; Joined path conditions
(assert (=>
  (<= 0 q$i@409@01)
  (and (<= 0 q$i@409@01) (or (not (< q$i@409@01 3)) (< q$i@409@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@409@01)) (<= 0 q$i@409@01)))
(pop) ; 31
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@409@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@409@01)
      (and (<= 0 q$i@409@01) (or (not (< q$i@409@01 3)) (< q$i@409@01 3))))
    (or (not (<= 0 q$i@409@01)) (<= 0 q$i@409@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@409@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85-aux|)))
(push) ; 31
(push) ; 32
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@409@01 Int)) (!
    (=>
      (and (<= 0 q$i@409@01) (< q$i@409@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@409@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@409@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))))
(check-sat)
; unknown
(pop) ; 32
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (forall ((q$i@409@01 Int)) (!
  (=>
    (and (<= 0 q$i@409@01) (< q$i@409@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@409@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@409@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))))
(check-sat)
; unknown
(pop) ; 32
; 0.01s
; (get-info :all-statistics)
; [then-branch: 176 | QA q$i@409@01 :: 0 <= q$i@409@01 && q$i@409@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@409@01] | live]
; [else-branch: 176 | !(QA q$i@409@01 :: 0 <= q$i@409@01 && q$i@409@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@409@01]) | live]
(set-option :timeout 0)
(push) ; 32
; [then-branch: 176 | QA q$i@409@01 :: 0 <= q$i@409@01 && q$i@409@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@409@01]]
(assert (forall ((q$i@409@01 Int)) (!
  (=>
    (and (<= 0 q$i@409@01) (< q$i@409@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@409@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@409@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))
; [eval] $res == 3 * $unwrap($wrap(l$xp[0]))
; [eval] 3 * $unwrap($wrap(l$xp[0]))
; [eval] $unwrap($wrap(l$xp[0]))
; [eval] $wrap(l$xp[0])
; [eval] l$xp[0]
(push) ; 33
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(pop) ; 32
(push) ; 32
; [else-branch: 176 | !(QA q$i@409@01 :: 0 <= q$i@409@01 && q$i@409@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@409@01])]
(assert (not
  (forall ((q$i@409@01 Int)) (!
    (=>
      (and (<= 0 q$i@409@01) (< q$i@409@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@409@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@409@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))))
(pop) ; 32
(pop) ; 31
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@409@01 Int)) (!
      (=>
        (and (<= 0 q$i@409@01) (< q$i@409@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@409@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@409@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))
  (forall ((q$i@409@01 Int)) (!
    (=>
      (and (<= 0 q$i@409@01) (< q$i@409@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@409@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@409@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))))
(pop) ; 30
(pop) ; 29
; Joined path conditions
(assert (and
  (forall ((q$i@409@01 Int)) (!
    (and
      (=>
        (<= 0 q$i@409@01)
        (and (<= 0 q$i@409@01) (or (not (< q$i@409@01 3)) (< q$i@409@01 3))))
      (or (not (<= 0 q$i@409@01)) (<= 0 q$i@409@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@409@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85-aux|))
  (or
    (not
      (forall ((q$i@409@01 Int)) (!
        (=>
          (and (<= 0 q$i@409@01) (< q$i@409@01 3))
          (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@409@01)))
        :pattern ((Seq_index l$xp@166@01 q$i@409@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))
    (forall ((q$i@409@01 Int)) (!
      (=>
        (and (<= 0 q$i@409@01) (< q$i@409@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@409@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@409@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|)))))
(push) ; 29
(assert (not (=>
  (forall ((q$i@409@01 Int)) (!
    (=>
      (and (<= 0 q$i@409@01) (< q$i@409@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@409@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@409@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))
  (= $res@408@01 (* 3 ($unwrap<Int> ($wrap<$Int> (Seq_index l$xp@166@01 0))))))))
(check-sat)
; unsat
(pop) ; 29
; 0.49s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@409@01 Int)) (!
    (=>
      (and (<= 0 q$i@409@01) (< q$i@409@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@409@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@409@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1141@21@1141@85|))
  (= $res@408@01 (* 3 ($unwrap<Int> ($wrap<$Int> (Seq_index l$xp@166@01 0)))))))
(pop) ; 28
(push) ; 28
; [else-branch: 172 | $out_of_gas@219@01]
(assert $out_of_gas@219@01)
(pop) ; 28
(pop) ; 27
(push) ; 27
; [else-branch: 169 | l$$idx@407@01 != 255]
(assert (not (= l$$idx@407@01 255)))
(pop) ; 27
; [eval] !(l$$idx == 255)
; [eval] l$$idx == 255
(push) ; 27
(set-option :timeout 10)
(assert (not (= l$$idx@407@01 255)))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (not (= l$$idx@407@01 255))))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
; [then-branch: 177 | l$$idx@407@01 != 255 | live]
; [else-branch: 177 | l$$idx@407@01 == 255 | live]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 177 | l$$idx@407@01 != 255]
(assert (not (= l$$idx@407@01 255)))
; [exec]
; l$_i := $wrap($range(0, 255)[l$$idx])
; [eval] $wrap($range(0, 255)[l$$idx])
; [eval] $range(0, 255)[l$$idx]
; [eval] $range(0, 255)
(push) ; 28
(assert (not (>= l$$idx@407@01 0)))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(push) ; 28
(assert (not (< l$$idx@407@01 (Seq_length ($range<Seq<Int>> 0 255)))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(declare-const l$_i@410@01 $Int)
(assert (= l$_i@410@01 ($wrap<$Int> (Seq_index ($range<Seq<Int>> 0 255) l$$idx@407@01))))
; [exec]
; exhale $unwrap(l$S$3) == $unwrap(l$S$1) &&
;   $unwrap(l$Ann$1) == $unwrap(l$Ann)
; [eval] $unwrap(l$S$3) == $unwrap(l$S$1)
; [eval] $unwrap(l$S$3)
; [eval] $unwrap(l$S$1)
(push) ; 28
(assert (not (= ($unwrap<Int> l$S$3@217@01) ($unwrap<Int> l$S$1@278@01))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(assert (= ($unwrap<Int> l$S$3@217@01) ($unwrap<Int> l$S$1@278@01)))
; [eval] $unwrap(l$Ann$1) == $unwrap(l$Ann)
; [eval] $unwrap(l$Ann$1)
; [eval] $unwrap(l$Ann)
; [exec]
; exhale (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap(l$D$2) == $unwrap(l$S$3)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap(l$D$2) == $unwrap(l$S$3)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@411@01 Int)
(push) ; 28
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 29
; [then-branch: 178 | 0 <= q$i@411@01 | live]
; [else-branch: 178 | !(0 <= q$i@411@01) | live]
(push) ; 30
; [then-branch: 178 | 0 <= q$i@411@01]
(assert (<= 0 q$i@411@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 31
; [then-branch: 179 | q$i@411@01 < 3 | live]
; [else-branch: 179 | !(q$i@411@01 < 3) | live]
(push) ; 32
; [then-branch: 179 | q$i@411@01 < 3]
(assert (< q$i@411@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 33
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 33
(assert (not (>= q$i@411@01 0)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(push) ; 33
(assert (not (< q$i@411@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(pop) ; 32
(push) ; 32
; [else-branch: 179 | !(q$i@411@01 < 3)]
(assert (not (< q$i@411@01 3)))
(pop) ; 32
(pop) ; 31
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@411@01 3)) (< q$i@411@01 3)))
(pop) ; 30
(push) ; 30
; [else-branch: 178 | !(0 <= q$i@411@01)]
(assert (not (<= 0 q$i@411@01)))
(pop) ; 30
(pop) ; 29
; Joined path conditions
(assert (=>
  (<= 0 q$i@411@01)
  (and (<= 0 q$i@411@01) (or (not (< q$i@411@01 3)) (< q$i@411@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@411@01)) (<= 0 q$i@411@01)))
(pop) ; 28
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@411@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@411@01)
      (and (<= 0 q$i@411@01) (or (not (< q$i@411@01 3)) (< q$i@411@01 3))))
    (or (not (<= 0 q$i@411@01)) (<= 0 q$i@411@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@411@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75-aux|)))
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@411@01 Int)) (!
    (=>
      (and (<= 0 q$i@411@01) (< q$i@411@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@411@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@411@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|)))))
(check-sat)
; unknown
(pop) ; 29
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (forall ((q$i@411@01 Int)) (!
  (=>
    (and (<= 0 q$i@411@01) (< q$i@411@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@411@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@411@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|))))
(check-sat)
; unknown
(pop) ; 29
; 0.01s
; (get-info :all-statistics)
; [then-branch: 180 | QA q$i@411@01 :: 0 <= q$i@411@01 && q$i@411@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@411@01] | live]
; [else-branch: 180 | !(QA q$i@411@01 :: 0 <= q$i@411@01 && q$i@411@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@411@01]) | live]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 180 | QA q$i@411@01 :: 0 <= q$i@411@01 && q$i@411@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@411@01]]
(assert (forall ((q$i@411@01 Int)) (!
  (=>
    (and (<= 0 q$i@411@01) (< q$i@411@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@411@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@411@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|)))
; [eval] $unwrap(l$D$2) == $unwrap(l$S$3)
; [eval] $unwrap(l$D$2)
; [eval] $unwrap(l$S$3)
(pop) ; 29
(push) ; 29
; [else-branch: 180 | !(QA q$i@411@01 :: 0 <= q$i@411@01 && q$i@411@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@411@01])]
(assert (not
  (forall ((q$i@411@01 Int)) (!
    (=>
      (and (<= 0 q$i@411@01) (< q$i@411@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@411@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@411@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|))))
(pop) ; 29
(pop) ; 28
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@411@01 Int)) (!
      (=>
        (and (<= 0 q$i@411@01) (< q$i@411@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@411@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@411@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|)))
  (forall ((q$i@411@01 Int)) (!
    (=>
      (and (<= 0 q$i@411@01) (< q$i@411@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@411@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@411@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|))))
(push) ; 28
(assert (not (=>
  (forall ((q$i@411@01 Int)) (!
    (=>
      (and (<= 0 q$i@411@01) (< q$i@411@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@411@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@411@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|))
  (= ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$S$3@217@01)))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@411@01 Int)) (!
    (=>
      (and (<= 0 q$i@411@01) (< q$i@411@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@411@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@411@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1119@11@1119@75|))
  (= ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$S$3@217@01))))
; [exec]
; inhale false
(pop) ; 27
(push) ; 27
; [else-branch: 177 | l$$idx@407@01 == 255]
(assert (= l$$idx@407@01 255))
(pop) ; 27
(pop) ; 26
(push) ; 26
; [else-branch: 168 | $unwrap[Int](l$D$2@218@01) - $unwrap[Int](l$D$2@396@01) <= 1]
(assert (<= (- ($unwrap<Int> l$D$2@218@01) ($unwrap<Int> l$D$2@396@01)) 1))
(pop) ; 26
(pop) ; 25
(pop) ; 24
(push) ; 24
; [else-branch: 157 | $unwrap[Int](l$D$2@396@01) > $unwrap[Int](l$D$2@218@01)]
(assert (> ($unwrap<Int> l$D$2@396@01) ($unwrap<Int> l$D$2@218@01)))
(pop) ; 24
(pop) ; 23
(push) ; 23
; [else-branch: 128 | $unwrap[Int]($w_div[$Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int](l$Ann$1@201@01, l$S$3@217@01)) + $unwrap[Int](l$D_P$1@391@01) * 3), l$D$2@218@01), $wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01)))) < 0]
(assert (<
  ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> l$Ann$1@201@01 l$S$3@217@01))
    (* ($unwrap<Int> l$D_P$1@391@01) 3))) l$D$2@218@01) ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
    (* 4 ($unwrap<Int> l$D_P$1@391@01))))))
  0))
(pop) ; 23
(pop) ; 22
(push) ; 22
; [else-branch: 123 | $unwrap[Int]($wrap[$Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int]($unwrap[Int](l$Ann$1@201@01) - 1), l$D$2@218@01)) + 4 * $unwrap[Int](l$D_P$1@391@01))) == 0]
(assert (=
  ($unwrap<Int> ($wrap<$Int> (+
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (- ($unwrap<Int> l$Ann$1@201@01) 1)) l$D$2@218@01))
    (* 4 ($unwrap<Int> l$D_P$1@391@01)))))
  0))
(pop) ; 22
(pop) ; 21
(pop) ; 20
(pop) ; 19
(pop) ; 18
(pop) ; 17
(push) ; 17
; [else-branch: 112 | $unwrap[Int](l$Ann$1@201@01) - 1 < 0]
(assert (< (- ($unwrap<Int> l$Ann$1@201@01) 1) 0))
(pop) ; 17
(pop) ; 16
(pop) ; 15
(pop) ; 14
(pop) ; 13
(pop) ; 12
(push) ; 12
; [else-branch: 91 | l$$idx$1@392@01 != 3]
(assert (not (= l$$idx$1@392@01 3)))
(pop) ; 12
; [eval] !(l$$idx$1 == 3)
; [eval] l$$idx$1 == 3
(push) ; 12
(set-option :timeout 10)
(assert (not (= l$$idx$1@392@01 3)))
(check-sat)
; unknown
(pop) ; 12
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (not (= l$$idx$1@392@01 3))))
(check-sat)
; unknown
(pop) ; 12
; 0.01s
; (get-info :all-statistics)
; [then-branch: 181 | l$$idx$1@392@01 != 3 | live]
; [else-branch: 181 | l$$idx$1@392@01 == 3 | live]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 181 | l$$idx$1@392@01 != 3]
(assert (not (= l$$idx$1@392@01 3)))
; [exec]
; l$_x$2 := $wrap(l$xp[l$$idx$1])
; [eval] $wrap(l$xp[l$$idx$1])
; [eval] l$xp[l$$idx$1]
(push) ; 13
(assert (not (>= l$$idx$1@392@01 0)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(push) ; 13
(assert (not (< l$$idx$1@392@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(declare-const l$_x$2@412@01 $Int)
(assert (= l$_x$2@412@01 ($wrap<$Int> (Seq_index l$xp@166@01 l$$idx$1@392@01))))
; [exec]
; exhale $unwrap(l$S$3) == $unwrap(l$S$2) && $unwrap(l$D$2) == $unwrap(l$D$1)
; [eval] $unwrap(l$S$3) == $unwrap(l$S$2)
; [eval] $unwrap(l$S$3)
; [eval] $unwrap(l$S$2)
; [eval] $unwrap(l$D$2) == $unwrap(l$D$1)
; [eval] $unwrap(l$D$2)
; [eval] $unwrap(l$D$1)
; [exec]
; exhale (forall q$i: Int ::
;     { l$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==>
;   $unwrap(l$D_P$1) == $unwrap(l$D$2)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]) ==> $unwrap(l$D_P$1) == $unwrap(l$D$2)
; [eval] (forall q$i: Int :: { l$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i])
(declare-const q$i@413@01 Int)
(push) ; 13
; [eval] 0 <= q$i ==> q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] 0 <= q$i
(push) ; 14
; [then-branch: 182 | 0 <= q$i@413@01 | live]
; [else-branch: 182 | !(0 <= q$i@413@01) | live]
(push) ; 15
; [then-branch: 182 | 0 <= q$i@413@01]
(assert (<= 0 q$i@413@01))
; [eval] q$i < 3 ==> l$xp[0] == l$xp[q$i]
; [eval] q$i < 3
(push) ; 16
; [then-branch: 183 | q$i@413@01 < 3 | live]
; [else-branch: 183 | !(q$i@413@01 < 3) | live]
(push) ; 17
; [then-branch: 183 | q$i@413@01 < 3]
(assert (< q$i@413@01 3))
; [eval] l$xp[0] == l$xp[q$i]
; [eval] l$xp[0]
(push) ; 18
(assert (not (< 0 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [eval] l$xp[q$i]
(push) ; 18
(assert (not (>= q$i@413@01 0)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(assert (not (< q$i@413@01 (Seq_length l$xp@166@01))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(pop) ; 17
(push) ; 17
; [else-branch: 183 | !(q$i@413@01 < 3)]
(assert (not (< q$i@413@01 3)))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@413@01 3)) (< q$i@413@01 3)))
(pop) ; 15
(push) ; 15
; [else-branch: 182 | !(0 <= q$i@413@01)]
(assert (not (<= 0 q$i@413@01)))
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (=>
  (<= 0 q$i@413@01)
  (and (<= 0 q$i@413@01) (or (not (< q$i@413@01 3)) (< q$i@413@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@413@01)) (<= 0 q$i@413@01)))
(pop) ; 13
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@413@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@413@01)
      (and (<= 0 q$i@413@01) (or (not (< q$i@413@01 3)) (< q$i@413@01 3))))
    (or (not (<= 0 q$i@413@01)) (<= 0 q$i@413@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@413@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1052@11@1052@75-aux|)))
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@413@01 Int)) (!
    (=>
      (and (<= 0 q$i@413@01) (< q$i@413@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@413@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@413@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1052@11@1052@75|)))))
(check-sat)
; unknown
(pop) ; 14
; 0.02s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (forall ((q$i@413@01 Int)) (!
  (=>
    (and (<= 0 q$i@413@01) (< q$i@413@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@413@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@413@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1052@11@1052@75|))))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
; [then-branch: 184 | QA q$i@413@01 :: 0 <= q$i@413@01 && q$i@413@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@413@01] | live]
; [else-branch: 184 | !(QA q$i@413@01 :: 0 <= q$i@413@01 && q$i@413@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@413@01]) | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 184 | QA q$i@413@01 :: 0 <= q$i@413@01 && q$i@413@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@413@01]]
(assert (forall ((q$i@413@01 Int)) (!
  (=>
    (and (<= 0 q$i@413@01) (< q$i@413@01 3))
    (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@413@01)))
  :pattern ((Seq_index l$xp@166@01 q$i@413@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1052@11@1052@75|)))
; [eval] $unwrap(l$D_P$1) == $unwrap(l$D$2)
; [eval] $unwrap(l$D_P$1)
; [eval] $unwrap(l$D$2)
(pop) ; 14
(push) ; 14
; [else-branch: 184 | !(QA q$i@413@01 :: 0 <= q$i@413@01 && q$i@413@01 < 3 ==> l$xp@166@01[0] == l$xp@166@01[q$i@413@01])]
(assert (not
  (forall ((q$i@413@01 Int)) (!
    (=>
      (and (<= 0 q$i@413@01) (< q$i@413@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@413@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@413@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1052@11@1052@75|))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@413@01 Int)) (!
      (=>
        (and (<= 0 q$i@413@01) (< q$i@413@01 3))
        (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@413@01)))
      :pattern ((Seq_index l$xp@166@01 q$i@413@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1052@11@1052@75|)))
  (forall ((q$i@413@01 Int)) (!
    (=>
      (and (<= 0 q$i@413@01) (< q$i@413@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@413@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@413@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1052@11@1052@75|))))
(push) ; 13
(assert (not (=>
  (forall ((q$i@413@01 Int)) (!
    (=>
      (and (<= 0 q$i@413@01) (< q$i@413@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@413@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@413@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1052@11@1052@75|))
  (= ($unwrap<Int> l$D_P$1@391@01) ($unwrap<Int> l$D$2@218@01)))))
(check-sat)
; unsat
(pop) ; 13
; 0.17s
; (get-info :all-statistics)
(assert (=>
  (forall ((q$i@413@01 Int)) (!
    (=>
      (and (<= 0 q$i@413@01) (< q$i@413@01 3))
      (= (Seq_index l$xp@166@01 0) (Seq_index l$xp@166@01 q$i@413@01)))
    :pattern ((Seq_index l$xp@166@01 q$i@413@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1052@11@1052@75|))
  (= ($unwrap<Int> l$D_P$1@391@01) ($unwrap<Int> l$D$2@218@01))))
; [exec]
; inhale false
(pop) ; 12
(push) ; 12
; [else-branch: 181 | l$$idx$1@392@01 == 3]
(assert (= l$$idx$1@392@01 3))
(pop) ; 12
(pop) ; 11
(push) ; 11
; [else-branch: 89 | $unwrap[Int]($w_div[$Int]($w_mul[$Int](l$D_P$1@216@01, l$D$2@218@01), $wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3))) < 0]
(assert (<
  ($unwrap<Int> ($w_div<$Int> ($w_mul<$Int> l$D_P$1@216@01 l$D$2@218@01) ($wrap<$Int> (*
    ($unwrap<Int> l$_x$2@384@01)
    3))))
  0))
(pop) ; 11
(pop) ; 10
(push) ; 10
; [else-branch: 84 | $unwrap[Int]($wrap[$Int]($unwrap[Int](l$_x$2@384@01) * 3)) == 0]
(assert (= ($unwrap<Int> ($wrap<$Int> (* ($unwrap<Int> l$_x$2@384@01) 3))) 0))
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 34 | $unwrap[Int](l$S$1@278@01) == 0]
(assert (= ($unwrap<Int> l$S$1@278@01) 0))
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$get_virtual_price ----------
(declare-const $succ@414@01 Bool)
(declare-const $res@415@01 Int)
(declare-const $succ@416@01 Bool)
(declare-const $res@417@01 Int)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var msg: $Struct
(declare-const msg@418@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@419@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@420@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@421@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@422@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@423@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@424@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@425@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@426@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@427@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@428@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@429@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@430@01 Bool)
; [exec]
; var i0$$res: Seq[Int]
(declare-const i0$$res@431@01 Seq<Int>)
; [exec]
; var l$i0$result: Seq[Int]
(declare-const l$i0$result@432@01 Seq<Int>)
; [exec]
; var l$i0$i: $Int
(declare-const l$i0$i@433@01 $Int)
; [exec]
; var l$i1$xp: Seq[Int]
(declare-const l$i1$xp@434@01 Seq<Int>)
; [exec]
; var i1$$succ: Bool
(declare-const i1$$succ@435@01 Bool)
; [exec]
; var i1$$res: Int
(declare-const i1$$res@436@01 Int)
; [exec]
; var l$D: $Int
(declare-const l$D@437@01 $Int)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@438@01 Bool)
; [exec]
; var l$raw_ret: Int
(declare-const l$raw_ret@439@01 Int)
; [exec]
; var l$token_supply: $Int
(declare-const l$token_supply@440@01 $Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@441@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@442@01 Int)
; [exec]
; var l$havoc$1: Int
(declare-const l$havoc$1@443@01 Int)
; [exec]
; var l$havoc$2: $Map[Int, $Struct]
(declare-const l$havoc$2@444@01 $Map<Int~_$Struct>)
; [exec]
; inhale |($struct_get($struct_loc(self, 0)): Seq[Int])| == 3
(declare-const $t@445@01 $Snap)
(assert (= $t@445@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))) 3))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0])
(declare-const $t@446@01 $Snap)
(assert (= $t@446@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0])
(declare-const $q0@447@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 4
; [then-branch: 185 | !(0 <= $q0@447@01) | live]
; [else-branch: 185 | 0 <= $q0@447@01 | live]
(push) ; 5
; [then-branch: 185 | !(0 <= $q0@447@01)]
(assert (not (<= 0 $q0@447@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 185 | 0 <= $q0@447@01]
(assert (<= 0 $q0@447@01))
; [eval] $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@447@01) (not (<= 0 $q0@447@01))))
(push) ; 4
; [then-branch: 186 | 0 <= $q0@447@01 && $q0@447@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))| | live]
; [else-branch: 186 | !(0 <= $q0@447@01 && $q0@447@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|) | live]
(push) ; 5
; [then-branch: 186 | 0 <= $q0@447@01 && $q0@447@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|]
(assert (and
  (<= 0 $q0@447@01)
  (<
    $q0@447@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(push) ; 6
(assert (not (>= $q0@447@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 186 | !(0 <= $q0@447@01 && $q0@447@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@447@01)
    (<
      $q0@447@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@447@01)
      (<
        $q0@447@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))))))
  (and
    (<= 0 $q0@447@01)
    (<
      $q0@447@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0)))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@447@01 Int)) (!
  (and
    (or (<= 0 $q0@447@01) (not (<= 0 $q0@447@01)))
    (or
      (not
        (and
          (<= 0 $q0@447@01)
          (<
            $q0@447@01
            (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))))))
      (and
        (<= 0 $q0@447@01)
        (<
          $q0@447@01
          (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
    $q0@447@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1175@11@1175@210-aux|)))
(assert (forall (($q0@447@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@447@01)
      (<
        $q0@447@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        $q0@447@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
    $q0@447@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1175@11@1175@210|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int)
(declare-const $t@448@01 $Snap)
(assert (= $t@448@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@422@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int)
(declare-const $t@449@01 $Snap)
(assert (= $t@449@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@422@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 3)): Int)
(declare-const $t@450@01 $Snap)
(assert (= $t@450@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@422@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@451@01 $Snap)
(assert (= $t@451@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@452@01 $Snap)
(assert (= $t@452@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@453@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@453@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@422@01 6)) $q1@453@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@422@01 6)) $q1@453@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1180@11@1180@186|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@454@01 $Snap)
(assert (= $t@454@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@455@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
; [eval] ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@455@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@422@01 6)) $q1@455@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@422@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@422@01 6)) $q1@455@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1181@11@1181@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@456@01 $Snap)
(assert (= $t@456@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@457@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@457@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@422@01 7)) $q2@457@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@422@01 7)) $q2@457@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1182@11@1182@186|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $t@458@01 $Snap)
(assert (= $t@458@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $q2@459@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
; [eval] ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@459@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@422@01 7)) $q2@459@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@422@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@422@01 7)) $q2@459@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1183@11@1183@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@460@01 $Snap)
(assert (= $t@460@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@422@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address()
(declare-const $t@461@01 $Snap)
(assert (= $t@461@01 $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int)
(declare-const $t@462@01 $Snap)
(assert (= $t@462@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@419@01 0))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int)
(declare-const $t@463@01 $Snap)
(assert (= $t@463@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@419@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int)
(declare-const $t@464@01 $Snap)
(assert (= $t@464@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@419@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@465@01 $Snap)
(assert (= $t@465@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@419@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int)
(declare-const $t@466@01 $Snap)
(assert (= $t@466@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@419@01 4))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@467@01 $Snap)
(assert (= $t@467@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@419@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int)
(declare-const $t@468@01 $Snap)
(assert (= $t@468@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@418@01 0))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int)
(declare-const $t@469@01 $Snap)
(assert (= $t@469@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@418@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int)
(declare-const $t@470@01 $Snap)
(assert (= $t@470@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@418@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@471@01 $Snap)
(assert (= $t@471@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@418@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@472@01 $Snap)
(assert (= $t@472@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@418@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $t@473@01 $Snap)
(assert (= $t@473@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int))
(declare-const $a@474@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; $pre_self := self
; [exec]
; $pre_$contracts := $contracts
; [exec]
; $old_self := self
; [exec]
; $old_$contracts := $contracts
; [exec]
; $succ := true
; [exec]
; $overflow := false
; [exec]
; inhale ($struct_get($struct_loc(msg, 1)): Int) == 0
(declare-const $t@475@01 $Snap)
(assert (= $t@475@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@418@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] 1 < 0
; [then-branch: 187 | False | dead]
; [else-branch: 187 | True | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 187 | True]
(pop) ; 3
; [eval] !(1 < 0)
; [eval] 1 < 0
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 188 | True | live]
; [else-branch: 188 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 188 | True]
; [eval] 1000000000000 < 0
; [then-branch: 189 | False | dead]
; [else-branch: 189 | True | live]
(push) ; 4
; [else-branch: 189 | True]
(pop) ; 4
; [eval] !(1000000000000 < 0)
; [eval] 1000000000000 < 0
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 190 | True | live]
; [else-branch: 190 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 190 | True]
; [eval] 1000000000000 < 0
; [then-branch: 191 | False | dead]
; [else-branch: 191 | True | live]
(push) ; 5
; [else-branch: 191 | True]
(pop) ; 5
; [eval] !(1000000000000 < 0)
; [eval] 1000000000000 < 0
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 192 | True | live]
; [else-branch: 192 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 192 | True]
; [exec]
; l$i0$result := Seq(1, 1000000000000, 1000000000000)
; [eval] Seq(1, 1000000000000, 1000000000000)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append (Seq_singleton 1) (Seq_singleton 1000000000000))
      (Seq_singleton 1000000000000)))
  3))
(declare-const l$i0$result@476@01 Seq<Int>)
(assert (=
  l$i0$result@476@01
  (Seq_append
    (Seq_append (Seq_singleton 1) (Seq_singleton 1000000000000))
    (Seq_singleton 1000000000000))))
; [exec]
; l$i0$i := $wrap($range(0, 3)[0])
; [eval] $wrap($range(0, 3)[0])
; [eval] $range(0, 3)[0]
; [eval] $range(0, 3)
(push) ; 6
(assert (not (< 0 (Seq_length ($range<Seq<Int>> 0 3)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const l$i0$i@477@01 $Int)
(assert (= l$i0$i@477@01 ($wrap<$Int> (Seq_index ($range<Seq<Int>> 0 3) 0))))
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 6
; [then-branch: 193 | !(0 <= $unwrap[Int](l$i0$i@477@01)) | live]
; [else-branch: 193 | 0 <= $unwrap[Int](l$i0$i@477@01) | live]
(push) ; 7
; [then-branch: 193 | !(0 <= $unwrap[Int](l$i0$i@477@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@477@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 193 | 0 <= $unwrap[Int](l$i0$i@477@01)]
(assert (<= 0 ($unwrap<Int> l$i0$i@477@01)))
; [eval] $unwrap(l$i0$i) < |l$i0$result|
; [eval] $unwrap(l$i0$i)
; [eval] |l$i0$result|
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (<= 0 ($unwrap<Int> l$i0$i@477@01))
  (not (<= 0 ($unwrap<Int> l$i0$i@477@01)))))
(push) ; 6
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@477@01))
  (< ($unwrap<Int> l$i0$i@477@01) (Seq_length l$i0$result@476@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 194 | !(0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |l$i0$result@476@01|) | dead]
; [else-branch: 194 | 0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |l$i0$result@476@01| | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 194 | 0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |l$i0$result@476@01|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@477@01))
  (< ($unwrap<Int> l$i0$i@477@01) (Seq_length l$i0$result@476@01))))
(pop) ; 6
; [eval] !!(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 6
; [then-branch: 195 | !(0 <= $unwrap[Int](l$i0$i@477@01)) | live]
; [else-branch: 195 | 0 <= $unwrap[Int](l$i0$i@477@01) | live]
(push) ; 7
; [then-branch: 195 | !(0 <= $unwrap[Int](l$i0$i@477@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@477@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 195 | 0 <= $unwrap[Int](l$i0$i@477@01)]
(assert (<= 0 ($unwrap<Int> l$i0$i@477@01)))
; [eval] $unwrap(l$i0$i) < |l$i0$result|
; [eval] $unwrap(l$i0$i)
; [eval] |l$i0$result|
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (and
    (<= 0 ($unwrap<Int> l$i0$i@477@01))
    (< ($unwrap<Int> l$i0$i@477@01) (Seq_length l$i0$result@476@01))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@477@01))
  (< ($unwrap<Int> l$i0$i@477@01) (Seq_length l$i0$result@476@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 196 | 0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |l$i0$result@476@01| | live]
; [else-branch: 196 | !(0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |l$i0$result@476@01|) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 196 | 0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |l$i0$result@476@01|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@477@01))
  (< ($unwrap<Int> l$i0$i@477@01) (Seq_length l$i0$result@476@01))))
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 7
; [then-branch: 197 | !(0 <= $unwrap[Int](l$i0$i@477@01)) | live]
; [else-branch: 197 | 0 <= $unwrap[Int](l$i0$i@477@01) | live]
(push) ; 8
; [then-branch: 197 | !(0 <= $unwrap[Int](l$i0$i@477@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@477@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 197 | 0 <= $unwrap[Int](l$i0$i@477@01)]
; [eval] $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] $unwrap(l$i0$i)
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@477@01))
  (<
    ($unwrap<Int> l$i0$i@477@01)
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 198 | !(0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|) | dead]
; [else-branch: 198 | 0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))| | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 198 | 0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@477@01))
  (<
    ($unwrap<Int> l$i0$i@477@01)
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))))))
(pop) ; 7
; [eval] !!(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|)
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 7
; [then-branch: 199 | !(0 <= $unwrap[Int](l$i0$i@477@01)) | live]
; [else-branch: 199 | 0 <= $unwrap[Int](l$i0$i@477@01) | live]
(push) ; 8
; [then-branch: 199 | !(0 <= $unwrap[Int](l$i0$i@477@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@477@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 199 | 0 <= $unwrap[Int](l$i0$i@477@01)]
(assert (<= 0 ($unwrap<Int> l$i0$i@477@01)))
; [eval] $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] $unwrap(l$i0$i)
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (and
    (<= 0 ($unwrap<Int> l$i0$i@477@01))
    (<
      ($unwrap<Int> l$i0$i@477@01)
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@477@01))
  (<
    ($unwrap<Int> l$i0$i@477@01)
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 200 | 0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))| | live]
; [else-branch: 200 | !(0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 200 | 0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@477@01))
  (<
    ($unwrap<Int> l$i0$i@477@01)
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))))))
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) < 0
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 8
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 8
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@476@01
      ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@477@01)))))
    0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 201 | $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))) < 0 | dead]
; [else-branch: 201 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))) < 0) | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 201 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@476@01
      ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@477@01)))))
    0)))
(pop) ; 8
; [eval] !($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) < 0)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) < 0
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 8
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 8
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (<
  ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
    l$i0$result@476@01
    ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
    ($unwrap<Int> l$i0$i@477@01)))))
  0)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@476@01
      ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@477@01)))))
    0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 202 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))) < 0) | live]
; [else-branch: 202 | $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))) < 0 | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 202 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@476@01
      ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@477@01)))))
    0)))
; [eval] 1000000000000000000 == 0
; [then-branch: 203 | False | dead]
; [else-branch: 203 | True | live]
(push) ; 9
; [else-branch: 203 | True]
(pop) ; 9
; [eval] !(1000000000000000000 == 0)
; [eval] 1000000000000000000 == 0
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 204 | True | live]
; [else-branch: 204 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 204 | True]
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000) < 0
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 10
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 10
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 10
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 10
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (<
    ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@476@01
      ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@477@01))))) 1000000000000000000 (div
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@476@01
        ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@477@01)))))
      1000000000000000000))
    0))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 205 | $div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))) / 1000000000000000000) < 0 | dead]
; [else-branch: 205 | !($div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))) / 1000000000000000000) < 0) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 205 | !($div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))) / 1000000000000000000) < 0)]
(assert (not
  (<
    ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@476@01
      ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@477@01))))) 1000000000000000000 (div
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@476@01
        ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@477@01)))))
      1000000000000000000))
    0)))
(pop) ; 10
; [eval] !($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000) < 0)
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000) < 0
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 10
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 10
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 10
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 10
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(set-option :timeout 10)
(assert (not (<
  ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
    l$i0$result@476@01
    ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
    ($unwrap<Int> l$i0$i@477@01))))) 1000000000000000000 (div
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@476@01
      ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@477@01)))))
    1000000000000000000))
  0)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (<
    ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@476@01
      ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@477@01))))) 1000000000000000000 (div
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@476@01
        ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@477@01)))))
      1000000000000000000))
    0))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 206 | !($div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))) / 1000000000000000000) < 0) | live]
; [else-branch: 206 | $div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))) / 1000000000000000000) < 0 | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 206 | !($div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@476@01[$unwrap[Int](l$i0$i@477@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@477@01)]))) / 1000000000000000000) < 0)]
(assert (not
  (<
    ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@476@01
      ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@477@01))))) 1000000000000000000 (div
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@476@01
        ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@477@01)))))
      1000000000000000000))
    0)))
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 11
; [then-branch: 207 | !(0 <= $unwrap[Int](l$i0$i@477@01)) | live]
; [else-branch: 207 | 0 <= $unwrap[Int](l$i0$i@477@01) | live]
(push) ; 12
; [then-branch: 207 | !(0 <= $unwrap[Int](l$i0$i@477@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@477@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 207 | 0 <= $unwrap[Int](l$i0$i@477@01)]
; [eval] $unwrap(l$i0$i) < |l$i0$result|
; [eval] $unwrap(l$i0$i)
; [eval] |l$i0$result|
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@477@01))
  (< ($unwrap<Int> l$i0$i@477@01) (Seq_length l$i0$result@476@01)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 208 | !(0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |l$i0$result@476@01|) | dead]
; [else-branch: 208 | 0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |l$i0$result@476@01| | live]
(set-option :timeout 0)
(push) ; 11
; [else-branch: 208 | 0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |l$i0$result@476@01|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@477@01))
  (< ($unwrap<Int> l$i0$i@477@01) (Seq_length l$i0$result@476@01))))
(pop) ; 11
; [eval] !!(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 11
; [then-branch: 209 | !(0 <= $unwrap[Int](l$i0$i@477@01)) | live]
; [else-branch: 209 | 0 <= $unwrap[Int](l$i0$i@477@01) | live]
(push) ; 12
; [then-branch: 209 | !(0 <= $unwrap[Int](l$i0$i@477@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@477@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 209 | 0 <= $unwrap[Int](l$i0$i@477@01)]
(assert (<= 0 ($unwrap<Int> l$i0$i@477@01)))
; [eval] $unwrap(l$i0$i) < |l$i0$result|
; [eval] $unwrap(l$i0$i)
; [eval] |l$i0$result|
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (and
    (<= 0 ($unwrap<Int> l$i0$i@477@01))
    (< ($unwrap<Int> l$i0$i@477@01) (Seq_length l$i0$result@476@01))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@477@01))
  (< ($unwrap<Int> l$i0$i@477@01) (Seq_length l$i0$result@476@01)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 210 | 0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |l$i0$result@476@01| | live]
; [else-branch: 210 | !(0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |l$i0$result@476@01|) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 210 | 0 <= $unwrap[Int](l$i0$i@477@01) && $unwrap[Int](l$i0$i@477@01) < |l$i0$result@476@01|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@477@01))
  (< ($unwrap<Int> l$i0$i@477@01) (Seq_length l$i0$result@476@01))))
; [exec]
; l$i0$result := l$i0$result[$unwrap(l$i0$i) :=
;   $unwrap($wrap($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self,
;   0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]),
;   $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \
;   1000000000000000000)))]
; [eval] l$i0$result[$unwrap(l$i0$i) := $unwrap($wrap($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)))]
; [eval] $unwrap(l$i0$i)
; [eval] $unwrap($wrap($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)))
; [eval] $wrap($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000))
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 12
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 12
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 12
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 12
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
(assert (not (>= ($unwrap<Int> l$i0$i@477@01) 0)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(declare-const l$i0$result@478@01 Seq<Int>)
(assert (=
  l$i0$result@478@01
  (Seq_append
    (Seq_take l$i0$result@476@01 ($unwrap<Int> l$i0$i@477@01))
    (Seq_append
      (Seq_singleton ($unwrap<Int> ($wrap<$Int> ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@476@01
        ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@477@01))))) 1000000000000000000 (div
        ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
          l$i0$result@476@01
          ($unwrap<Int> l$i0$i@477@01))) ($wrap<$Int> (Seq_index
          ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
          ($unwrap<Int> l$i0$i@477@01)))))
        1000000000000000000)))))
      (Seq_drop l$i0$result@476@01 (+ ($unwrap<Int> l$i0$i@477@01) 1))))))
; [exec]
; label continue_0
; [exec]
; l$i0$i := $wrap($range(0, 3)[1])
; [eval] $wrap($range(0, 3)[1])
; [eval] $range(0, 3)[1]
; [eval] $range(0, 3)
(push) ; 12
(assert (not (< 1 (Seq_length ($range<Seq<Int>> 0 3)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(declare-const l$i0$i@479@01 $Int)
(assert (= l$i0$i@479@01 ($wrap<$Int> (Seq_index ($range<Seq<Int>> 0 3) 1))))
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 12
; [then-branch: 211 | !(0 <= $unwrap[Int](l$i0$i@479@01)) | live]
; [else-branch: 211 | 0 <= $unwrap[Int](l$i0$i@479@01) | live]
(push) ; 13
; [then-branch: 211 | !(0 <= $unwrap[Int](l$i0$i@479@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@479@01))))
(pop) ; 13
(push) ; 13
; [else-branch: 211 | 0 <= $unwrap[Int](l$i0$i@479@01)]
(assert (<= 0 ($unwrap<Int> l$i0$i@479@01)))
; [eval] $unwrap(l$i0$i) < |l$i0$result|
; [eval] $unwrap(l$i0$i)
; [eval] |l$i0$result|
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or
  (<= 0 ($unwrap<Int> l$i0$i@479@01))
  (not (<= 0 ($unwrap<Int> l$i0$i@479@01)))))
(push) ; 12
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@479@01))
  (< ($unwrap<Int> l$i0$i@479@01) (Seq_length l$i0$result@478@01)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 212 | !(0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |l$i0$result@478@01|) | dead]
; [else-branch: 212 | 0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |l$i0$result@478@01| | live]
(set-option :timeout 0)
(push) ; 12
; [else-branch: 212 | 0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |l$i0$result@478@01|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@479@01))
  (< ($unwrap<Int> l$i0$i@479@01) (Seq_length l$i0$result@478@01))))
(pop) ; 12
; [eval] !!(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 12
; [then-branch: 213 | !(0 <= $unwrap[Int](l$i0$i@479@01)) | live]
; [else-branch: 213 | 0 <= $unwrap[Int](l$i0$i@479@01) | live]
(push) ; 13
; [then-branch: 213 | !(0 <= $unwrap[Int](l$i0$i@479@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@479@01))))
(pop) ; 13
(push) ; 13
; [else-branch: 213 | 0 <= $unwrap[Int](l$i0$i@479@01)]
(assert (<= 0 ($unwrap<Int> l$i0$i@479@01)))
; [eval] $unwrap(l$i0$i) < |l$i0$result|
; [eval] $unwrap(l$i0$i)
; [eval] |l$i0$result|
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(set-option :timeout 10)
(assert (not (not
  (and
    (<= 0 ($unwrap<Int> l$i0$i@479@01))
    (< ($unwrap<Int> l$i0$i@479@01) (Seq_length l$i0$result@478@01))))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@479@01))
  (< ($unwrap<Int> l$i0$i@479@01) (Seq_length l$i0$result@478@01)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 214 | 0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |l$i0$result@478@01| | live]
; [else-branch: 214 | !(0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |l$i0$result@478@01|) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 214 | 0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |l$i0$result@478@01|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@479@01))
  (< ($unwrap<Int> l$i0$i@479@01) (Seq_length l$i0$result@478@01))))
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 13
; [then-branch: 215 | !(0 <= $unwrap[Int](l$i0$i@479@01)) | live]
; [else-branch: 215 | 0 <= $unwrap[Int](l$i0$i@479@01) | live]
(push) ; 14
; [then-branch: 215 | !(0 <= $unwrap[Int](l$i0$i@479@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@479@01))))
(pop) ; 14
(push) ; 14
; [else-branch: 215 | 0 <= $unwrap[Int](l$i0$i@479@01)]
; [eval] $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] $unwrap(l$i0$i)
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@479@01))
  (<
    ($unwrap<Int> l$i0$i@479@01)
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0)))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 216 | !(0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|) | dead]
; [else-branch: 216 | 0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))| | live]
(set-option :timeout 0)
(push) ; 13
; [else-branch: 216 | 0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@479@01))
  (<
    ($unwrap<Int> l$i0$i@479@01)
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))))))
(pop) ; 13
; [eval] !!(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|)
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 13
; [then-branch: 217 | !(0 <= $unwrap[Int](l$i0$i@479@01)) | live]
; [else-branch: 217 | 0 <= $unwrap[Int](l$i0$i@479@01) | live]
(push) ; 14
; [then-branch: 217 | !(0 <= $unwrap[Int](l$i0$i@479@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@479@01))))
(pop) ; 14
(push) ; 14
; [else-branch: 217 | 0 <= $unwrap[Int](l$i0$i@479@01)]
(assert (<= 0 ($unwrap<Int> l$i0$i@479@01)))
; [eval] $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] $unwrap(l$i0$i)
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(push) ; 13
(set-option :timeout 10)
(assert (not (not
  (and
    (<= 0 ($unwrap<Int> l$i0$i@479@01))
    (<
      ($unwrap<Int> l$i0$i@479@01)
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@479@01))
  (<
    ($unwrap<Int> l$i0$i@479@01)
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0)))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 218 | 0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))| | live]
; [else-branch: 218 | !(0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 218 | 0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@479@01))
  (<
    ($unwrap<Int> l$i0$i@479@01)
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))))))
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) < 0
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 14
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 14
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@478@01
      ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@479@01)))))
    0))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 219 | $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))) < 0 | dead]
; [else-branch: 219 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))) < 0) | live]
(set-option :timeout 0)
(push) ; 14
; [else-branch: 219 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@478@01
      ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@479@01)))))
    0)))
(pop) ; 14
; [eval] !($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) < 0)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) < 0
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 14
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 14
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(set-option :timeout 10)
(assert (not (<
  ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
    l$i0$result@478@01
    ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
    ($unwrap<Int> l$i0$i@479@01)))))
  0)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@478@01
      ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@479@01)))))
    0))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 220 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))) < 0) | live]
; [else-branch: 220 | $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))) < 0 | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 220 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@478@01
      ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@479@01)))))
    0)))
; [eval] 1000000000000000000 == 0
; [then-branch: 221 | False | dead]
; [else-branch: 221 | True | live]
(push) ; 15
; [else-branch: 221 | True]
(pop) ; 15
; [eval] !(1000000000000000000 == 0)
; [eval] 1000000000000000000 == 0
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 222 | True | live]
; [else-branch: 222 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 222 | True]
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000) < 0
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 16
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 16
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 16
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 16
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(push) ; 16
(set-option :timeout 10)
(assert (not (not
  (<
    ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@478@01
      ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@479@01))))) 1000000000000000000 (div
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@478@01
        ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@479@01)))))
      1000000000000000000))
    0))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 223 | $div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))) / 1000000000000000000) < 0 | dead]
; [else-branch: 223 | !($div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))) / 1000000000000000000) < 0) | live]
(set-option :timeout 0)
(push) ; 16
; [else-branch: 223 | !($div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))) / 1000000000000000000) < 0)]
(assert (not
  (<
    ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@478@01
      ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@479@01))))) 1000000000000000000 (div
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@478@01
        ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@479@01)))))
      1000000000000000000))
    0)))
(pop) ; 16
; [eval] !($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000) < 0)
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000) < 0
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 16
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 16
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 16
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 16
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(push) ; 16
(set-option :timeout 10)
(assert (not (<
  ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
    l$i0$result@478@01
    ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
    ($unwrap<Int> l$i0$i@479@01))))) 1000000000000000000 (div
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@478@01
      ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@479@01)))))
    1000000000000000000))
  0)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (not
  (<
    ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@478@01
      ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@479@01))))) 1000000000000000000 (div
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@478@01
        ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@479@01)))))
      1000000000000000000))
    0))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 224 | !($div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))) / 1000000000000000000) < 0) | live]
; [else-branch: 224 | $div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))) / 1000000000000000000) < 0 | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 224 | !($div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@478@01[$unwrap[Int](l$i0$i@479@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@479@01)]))) / 1000000000000000000) < 0)]
(assert (not
  (<
    ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@478@01
      ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@479@01))))) 1000000000000000000 (div
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@478@01
        ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@479@01)))))
      1000000000000000000))
    0)))
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 17
; [then-branch: 225 | !(0 <= $unwrap[Int](l$i0$i@479@01)) | live]
; [else-branch: 225 | 0 <= $unwrap[Int](l$i0$i@479@01) | live]
(push) ; 18
; [then-branch: 225 | !(0 <= $unwrap[Int](l$i0$i@479@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@479@01))))
(pop) ; 18
(push) ; 18
; [else-branch: 225 | 0 <= $unwrap[Int](l$i0$i@479@01)]
; [eval] $unwrap(l$i0$i) < |l$i0$result|
; [eval] $unwrap(l$i0$i)
; [eval] |l$i0$result|
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(push) ; 17
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@479@01))
  (< ($unwrap<Int> l$i0$i@479@01) (Seq_length l$i0$result@478@01)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 226 | !(0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |l$i0$result@478@01|) | dead]
; [else-branch: 226 | 0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |l$i0$result@478@01| | live]
(set-option :timeout 0)
(push) ; 17
; [else-branch: 226 | 0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |l$i0$result@478@01|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@479@01))
  (< ($unwrap<Int> l$i0$i@479@01) (Seq_length l$i0$result@478@01))))
(pop) ; 17
; [eval] !!(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 17
; [then-branch: 227 | !(0 <= $unwrap[Int](l$i0$i@479@01)) | live]
; [else-branch: 227 | 0 <= $unwrap[Int](l$i0$i@479@01) | live]
(push) ; 18
; [then-branch: 227 | !(0 <= $unwrap[Int](l$i0$i@479@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@479@01))))
(pop) ; 18
(push) ; 18
; [else-branch: 227 | 0 <= $unwrap[Int](l$i0$i@479@01)]
(assert (<= 0 ($unwrap<Int> l$i0$i@479@01)))
; [eval] $unwrap(l$i0$i) < |l$i0$result|
; [eval] $unwrap(l$i0$i)
; [eval] |l$i0$result|
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(push) ; 17
(set-option :timeout 10)
(assert (not (not
  (and
    (<= 0 ($unwrap<Int> l$i0$i@479@01))
    (< ($unwrap<Int> l$i0$i@479@01) (Seq_length l$i0$result@478@01))))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@479@01))
  (< ($unwrap<Int> l$i0$i@479@01) (Seq_length l$i0$result@478@01)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 228 | 0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |l$i0$result@478@01| | live]
; [else-branch: 228 | !(0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |l$i0$result@478@01|) | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 228 | 0 <= $unwrap[Int](l$i0$i@479@01) && $unwrap[Int](l$i0$i@479@01) < |l$i0$result@478@01|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@479@01))
  (< ($unwrap<Int> l$i0$i@479@01) (Seq_length l$i0$result@478@01))))
; [exec]
; l$i0$result := l$i0$result[$unwrap(l$i0$i) :=
;   $unwrap($wrap($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self,
;   0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]),
;   $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \
;   1000000000000000000)))]
; [eval] l$i0$result[$unwrap(l$i0$i) := $unwrap($wrap($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)))]
; [eval] $unwrap(l$i0$i)
; [eval] $unwrap($wrap($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)))
; [eval] $wrap($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000))
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 18
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 18
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 18
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 18
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
(assert (not (>= ($unwrap<Int> l$i0$i@479@01) 0)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(declare-const l$i0$result@480@01 Seq<Int>)
(assert (=
  l$i0$result@480@01
  (Seq_append
    (Seq_take l$i0$result@478@01 ($unwrap<Int> l$i0$i@479@01))
    (Seq_append
      (Seq_singleton ($unwrap<Int> ($wrap<$Int> ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@478@01
        ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@479@01))))) 1000000000000000000 (div
        ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
          l$i0$result@478@01
          ($unwrap<Int> l$i0$i@479@01))) ($wrap<$Int> (Seq_index
          ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
          ($unwrap<Int> l$i0$i@479@01)))))
        1000000000000000000)))))
      (Seq_drop l$i0$result@478@01 (+ ($unwrap<Int> l$i0$i@479@01) 1))))))
; [exec]
; label continue_1
; [exec]
; l$i0$i := $wrap($range(0, 3)[2])
; [eval] $wrap($range(0, 3)[2])
; [eval] $range(0, 3)[2]
; [eval] $range(0, 3)
(push) ; 18
(assert (not (< 2 (Seq_length ($range<Seq<Int>> 0 3)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(declare-const l$i0$i@481@01 $Int)
(assert (= l$i0$i@481@01 ($wrap<$Int> (Seq_index ($range<Seq<Int>> 0 3) 2))))
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 18
; [then-branch: 229 | !(0 <= $unwrap[Int](l$i0$i@481@01)) | live]
; [else-branch: 229 | 0 <= $unwrap[Int](l$i0$i@481@01) | live]
(push) ; 19
; [then-branch: 229 | !(0 <= $unwrap[Int](l$i0$i@481@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@481@01))))
(pop) ; 19
(push) ; 19
; [else-branch: 229 | 0 <= $unwrap[Int](l$i0$i@481@01)]
(assert (<= 0 ($unwrap<Int> l$i0$i@481@01)))
; [eval] $unwrap(l$i0$i) < |l$i0$result|
; [eval] $unwrap(l$i0$i)
; [eval] |l$i0$result|
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (or
  (<= 0 ($unwrap<Int> l$i0$i@481@01))
  (not (<= 0 ($unwrap<Int> l$i0$i@481@01)))))
(push) ; 18
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@481@01))
  (< ($unwrap<Int> l$i0$i@481@01) (Seq_length l$i0$result@480@01)))))
(check-sat)
; unsat
(pop) ; 18
; 0.01s
; (get-info :all-statistics)
; [then-branch: 230 | !(0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |l$i0$result@480@01|) | dead]
; [else-branch: 230 | 0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |l$i0$result@480@01| | live]
(set-option :timeout 0)
(push) ; 18
; [else-branch: 230 | 0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |l$i0$result@480@01|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@481@01))
  (< ($unwrap<Int> l$i0$i@481@01) (Seq_length l$i0$result@480@01))))
(pop) ; 18
; [eval] !!(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 18
; [then-branch: 231 | !(0 <= $unwrap[Int](l$i0$i@481@01)) | live]
; [else-branch: 231 | 0 <= $unwrap[Int](l$i0$i@481@01) | live]
(push) ; 19
; [then-branch: 231 | !(0 <= $unwrap[Int](l$i0$i@481@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@481@01))))
(pop) ; 19
(push) ; 19
; [else-branch: 231 | 0 <= $unwrap[Int](l$i0$i@481@01)]
(assert (<= 0 ($unwrap<Int> l$i0$i@481@01)))
; [eval] $unwrap(l$i0$i) < |l$i0$result|
; [eval] $unwrap(l$i0$i)
; [eval] |l$i0$result|
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(push) ; 18
(set-option :timeout 10)
(assert (not (not
  (and
    (<= 0 ($unwrap<Int> l$i0$i@481@01))
    (< ($unwrap<Int> l$i0$i@481@01) (Seq_length l$i0$result@480@01))))))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@481@01))
  (< ($unwrap<Int> l$i0$i@481@01) (Seq_length l$i0$result@480@01)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 232 | 0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |l$i0$result@480@01| | live]
; [else-branch: 232 | !(0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |l$i0$result@480@01|) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 232 | 0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |l$i0$result@480@01|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@481@01))
  (< ($unwrap<Int> l$i0$i@481@01) (Seq_length l$i0$result@480@01))))
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 19
; [then-branch: 233 | !(0 <= $unwrap[Int](l$i0$i@481@01)) | live]
; [else-branch: 233 | 0 <= $unwrap[Int](l$i0$i@481@01) | live]
(push) ; 20
; [then-branch: 233 | !(0 <= $unwrap[Int](l$i0$i@481@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@481@01))))
(pop) ; 20
(push) ; 20
; [else-branch: 233 | 0 <= $unwrap[Int](l$i0$i@481@01)]
; [eval] $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] $unwrap(l$i0$i)
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@481@01))
  (<
    ($unwrap<Int> l$i0$i@481@01)
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0)))))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 234 | !(0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|) | dead]
; [else-branch: 234 | 0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))| | live]
(set-option :timeout 0)
(push) ; 19
; [else-branch: 234 | 0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@481@01))
  (<
    ($unwrap<Int> l$i0$i@481@01)
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))))))
(pop) ; 19
; [eval] !!(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|)
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 19
; [then-branch: 235 | !(0 <= $unwrap[Int](l$i0$i@481@01)) | live]
; [else-branch: 235 | 0 <= $unwrap[Int](l$i0$i@481@01) | live]
(push) ; 20
; [then-branch: 235 | !(0 <= $unwrap[Int](l$i0$i@481@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@481@01))))
(pop) ; 20
(push) ; 20
; [else-branch: 235 | 0 <= $unwrap[Int](l$i0$i@481@01)]
(assert (<= 0 ($unwrap<Int> l$i0$i@481@01)))
; [eval] $unwrap(l$i0$i) < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] $unwrap(l$i0$i)
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(set-option :timeout 10)
(assert (not (not
  (and
    (<= 0 ($unwrap<Int> l$i0$i@481@01))
    (<
      ($unwrap<Int> l$i0$i@481@01)
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))))))))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@481@01))
  (<
    ($unwrap<Int> l$i0$i@481@01)
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0)))))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 236 | 0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))| | live]
; [else-branch: 236 | !(0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 236 | 0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |$struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@481@01))
  (<
    ($unwrap<Int> l$i0$i@481@01)
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))))))
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) < 0
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 20
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 20
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(push) ; 20
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@480@01
      ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@481@01)))))
    0))))
(check-sat)
; unsat
(pop) ; 20
; 0.01s
; (get-info :all-statistics)
; [then-branch: 237 | $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))) < 0 | dead]
; [else-branch: 237 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))) < 0) | live]
(set-option :timeout 0)
(push) ; 20
; [else-branch: 237 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@480@01
      ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@481@01)))))
    0)))
(pop) ; 20
; [eval] !($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) < 0)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) < 0
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 20
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 20
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(push) ; 20
(set-option :timeout 10)
(assert (not (<
  ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
    l$i0$result@480@01
    ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
    ($unwrap<Int> l$i0$i@481@01)))))
  0)))
(check-sat)
; unknown
(pop) ; 20
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@480@01
      ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@481@01)))))
    0))))
(check-sat)
; unsat
(pop) ; 20
; 0.01s
; (get-info :all-statistics)
; [then-branch: 238 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))) < 0) | live]
; [else-branch: 238 | $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))) < 0 | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 238 | !($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@480@01
      ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@481@01)))))
    0)))
; [eval] 1000000000000000000 == 0
; [then-branch: 239 | False | dead]
; [else-branch: 239 | True | live]
(push) ; 21
; [else-branch: 239 | True]
(pop) ; 21
; [eval] !(1000000000000000000 == 0)
; [eval] 1000000000000000000 == 0
(push) ; 21
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 21
; 0.01s
; (get-info :all-statistics)
; [then-branch: 240 | True | live]
; [else-branch: 240 | False | dead]
(set-option :timeout 0)
(push) ; 21
; [then-branch: 240 | True]
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000) < 0
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 22
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 22
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 22
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 22
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(push) ; 22
(set-option :timeout 10)
(assert (not (not
  (<
    ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@480@01
      ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@481@01))))) 1000000000000000000 (div
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@480@01
        ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@481@01)))))
      1000000000000000000))
    0))))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 241 | $div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))) / 1000000000000000000) < 0 | dead]
; [else-branch: 241 | !($div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))) / 1000000000000000000) < 0) | live]
(set-option :timeout 0)
(push) ; 22
; [else-branch: 241 | !($div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))) / 1000000000000000000) < 0)]
(assert (not
  (<
    ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@480@01
      ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@481@01))))) 1000000000000000000 (div
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@480@01
        ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@481@01)))))
      1000000000000000000))
    0)))
(pop) ; 22
; [eval] !($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000) < 0)
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000) < 0
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 22
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 22
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 22
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 22
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(push) ; 22
(set-option :timeout 10)
(assert (not (<
  ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
    l$i0$result@480@01
    ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
    ($unwrap<Int> l$i0$i@481@01))))) 1000000000000000000 (div
    ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@480@01
      ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@481@01)))))
    1000000000000000000))
  0)))
(check-sat)
; unknown
(pop) ; 22
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not (not
  (<
    ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@480@01
      ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@481@01))))) 1000000000000000000 (div
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@480@01
        ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@481@01)))))
      1000000000000000000))
    0))))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 242 | !($div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))) / 1000000000000000000) < 0) | live]
; [else-branch: 242 | $div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))) / 1000000000000000000) < 0 | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 242 | !($div[Int]($unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))), 1000000000000000000, $unwrap[Int]($w_mul[$Int]($wrap[$Int](l$i0$result@480@01[$unwrap[Int](l$i0$i@481@01)]), $wrap[$Int]($struct_get[Seq[Int]]($struct_loc[Int](self@422@01, 0))[$unwrap[Int](l$i0$i@481@01)]))) / 1000000000000000000) < 0)]
(assert (not
  (<
    ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
      l$i0$result@480@01
      ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
      ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
      ($unwrap<Int> l$i0$i@481@01))))) 1000000000000000000 (div
      ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@480@01
        ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@481@01)))))
      1000000000000000000))
    0)))
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 23
; [then-branch: 243 | !(0 <= $unwrap[Int](l$i0$i@481@01)) | live]
; [else-branch: 243 | 0 <= $unwrap[Int](l$i0$i@481@01) | live]
(push) ; 24
; [then-branch: 243 | !(0 <= $unwrap[Int](l$i0$i@481@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@481@01))))
(pop) ; 24
(push) ; 24
; [else-branch: 243 | 0 <= $unwrap[Int](l$i0$i@481@01)]
; [eval] $unwrap(l$i0$i) < |l$i0$result|
; [eval] $unwrap(l$i0$i)
; [eval] |l$i0$result|
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@481@01))
  (< ($unwrap<Int> l$i0$i@481@01) (Seq_length l$i0$result@480@01)))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 244 | !(0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |l$i0$result@480@01|) | dead]
; [else-branch: 244 | 0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |l$i0$result@480@01| | live]
(set-option :timeout 0)
(push) ; 23
; [else-branch: 244 | 0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |l$i0$result@480@01|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@481@01))
  (< ($unwrap<Int> l$i0$i@481@01) (Seq_length l$i0$result@480@01))))
(pop) ; 23
; [eval] !!(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] !(0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|)
; [eval] 0 <= $unwrap(l$i0$i) && $unwrap(l$i0$i) < |l$i0$result|
; [eval] 0 <= $unwrap(l$i0$i)
; [eval] $unwrap(l$i0$i)
(push) ; 23
; [then-branch: 245 | !(0 <= $unwrap[Int](l$i0$i@481@01)) | live]
; [else-branch: 245 | 0 <= $unwrap[Int](l$i0$i@481@01) | live]
(push) ; 24
; [then-branch: 245 | !(0 <= $unwrap[Int](l$i0$i@481@01))]
(assert (not (<= 0 ($unwrap<Int> l$i0$i@481@01))))
(pop) ; 24
(push) ; 24
; [else-branch: 245 | 0 <= $unwrap[Int](l$i0$i@481@01)]
(assert (<= 0 ($unwrap<Int> l$i0$i@481@01)))
; [eval] $unwrap(l$i0$i) < |l$i0$result|
; [eval] $unwrap(l$i0$i)
; [eval] |l$i0$result|
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(set-option :timeout 10)
(assert (not (not
  (and
    (<= 0 ($unwrap<Int> l$i0$i@481@01))
    (< ($unwrap<Int> l$i0$i@481@01) (Seq_length l$i0$result@480@01))))))
(check-sat)
; unknown
(pop) ; 23
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 23
(set-option :timeout 10)
(assert (not (and
  (<= 0 ($unwrap<Int> l$i0$i@481@01))
  (< ($unwrap<Int> l$i0$i@481@01) (Seq_length l$i0$result@480@01)))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 246 | 0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |l$i0$result@480@01| | live]
; [else-branch: 246 | !(0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |l$i0$result@480@01|) | dead]
(set-option :timeout 0)
(push) ; 23
; [then-branch: 246 | 0 <= $unwrap[Int](l$i0$i@481@01) && $unwrap[Int](l$i0$i@481@01) < |l$i0$result@480@01|]
(assert (and
  (<= 0 ($unwrap<Int> l$i0$i@481@01))
  (< ($unwrap<Int> l$i0$i@481@01) (Seq_length l$i0$result@480@01))))
; [exec]
; l$i0$result := l$i0$result[$unwrap(l$i0$i) :=
;   $unwrap($wrap($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self,
;   0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]),
;   $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \
;   1000000000000000000)))]
; [eval] l$i0$result[$unwrap(l$i0$i) := $unwrap($wrap($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)))]
; [eval] $unwrap(l$i0$i)
; [eval] $unwrap($wrap($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)))
; [eval] $wrap($div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000))
; [eval] $div($unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))), 1000000000000000000, $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 24
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 24
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))) \ 1000000000000000000
; [eval] $unwrap($w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])))
; [eval] $w_mul($wrap(l$i0$result[$unwrap(l$i0$i)]), $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]))
; [eval] $wrap(l$i0$result[$unwrap(l$i0$i)])
; [eval] l$i0$result[$unwrap(l$i0$i)]
; [eval] $unwrap(l$i0$i)
(push) ; 24
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [eval] $wrap(($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)])
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$unwrap(l$i0$i)]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
; [eval] $unwrap(l$i0$i)
(push) ; 24
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(push) ; 24
(assert (not (>= ($unwrap<Int> l$i0$i@481@01) 0)))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(declare-const l$i0$result@482@01 Seq<Int>)
(assert (=
  l$i0$result@482@01
  (Seq_append
    (Seq_take l$i0$result@480@01 ($unwrap<Int> l$i0$i@481@01))
    (Seq_append
      (Seq_singleton ($unwrap<Int> ($wrap<$Int> ($div<Int> ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
        l$i0$result@480@01
        ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
        ($unwrap<Int> l$i0$i@481@01))))) 1000000000000000000 (div
        ($unwrap<Int> ($w_mul<$Int> ($wrap<$Int> (Seq_index
          l$i0$result@480@01
          ($unwrap<Int> l$i0$i@481@01))) ($wrap<$Int> (Seq_index
          ($struct_get<Seq<Int>> ($struct_loc<Int> self@422@01 0))
          ($unwrap<Int> l$i0$i@481@01)))))
        1000000000000000000)))))
      (Seq_drop l$i0$result@480@01 (+ ($unwrap<Int> l$i0$i@481@01) 1))))))
; [exec]
; label continue_2
; [exec]
; label break_0
; [exec]
; i0$$res := l$i0$result
; [exec]
; label i0$return
; [exec]
; l$i1$xp := i0$$res
; [exec]
; inhale i1$$succ ==>
;   (forall q$i: Int ::
;     { l$i1$xp[q$i] }
;     0 <= q$i ==> q$i < 3 ==> l$i1$xp[0] == l$i1$xp[q$i]) ==>
;   i1$$res == 3 * $unwrap($wrap(l$i1$xp[0]))
(declare-const $t@483@01 $Snap)
(assert (= $t@483@01 $Snap.unit))
; [eval] i1$$succ ==> (forall q$i: Int :: { l$i1$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$i1$xp[0] == l$i1$xp[q$i]) ==> i1$$res == 3 * $unwrap($wrap(l$i1$xp[0]))
(push) ; 24
(push) ; 25
(set-option :timeout 10)
(assert (not (not i1$$succ@435@01)))
(check-sat)
; unknown
(pop) ; 25
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 25
(set-option :timeout 10)
(assert (not i1$$succ@435@01))
(check-sat)
; unknown
(pop) ; 25
; 0.01s
; (get-info :all-statistics)
; [then-branch: 247 | i1$$succ@435@01 | live]
; [else-branch: 247 | !(i1$$succ@435@01) | live]
(set-option :timeout 0)
(push) ; 25
; [then-branch: 247 | i1$$succ@435@01]
(assert i1$$succ@435@01)
; [eval] (forall q$i: Int :: { l$i1$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$i1$xp[0] == l$i1$xp[q$i]) ==> i1$$res == 3 * $unwrap($wrap(l$i1$xp[0]))
; [eval] (forall q$i: Int :: { l$i1$xp[q$i] } 0 <= q$i ==> q$i < 3 ==> l$i1$xp[0] == l$i1$xp[q$i])
(declare-const q$i@484@01 Int)
(push) ; 26
; [eval] 0 <= q$i ==> q$i < 3 ==> l$i1$xp[0] == l$i1$xp[q$i]
; [eval] 0 <= q$i
(push) ; 27
; [then-branch: 248 | 0 <= q$i@484@01 | live]
; [else-branch: 248 | !(0 <= q$i@484@01) | live]
(push) ; 28
; [then-branch: 248 | 0 <= q$i@484@01]
(assert (<= 0 q$i@484@01))
; [eval] q$i < 3 ==> l$i1$xp[0] == l$i1$xp[q$i]
; [eval] q$i < 3
(push) ; 29
; [then-branch: 249 | q$i@484@01 < 3 | live]
; [else-branch: 249 | !(q$i@484@01 < 3) | live]
(push) ; 30
; [then-branch: 249 | q$i@484@01 < 3]
(assert (< q$i@484@01 3))
; [eval] l$i1$xp[0] == l$i1$xp[q$i]
; [eval] l$i1$xp[0]
(push) ; 31
(assert (not (< 0 (Seq_length l$i0$result@482@01))))
(check-sat)
; unsat
(pop) ; 31
; 0.01s
; (get-info :all-statistics)
; [eval] l$i1$xp[q$i]
(push) ; 31
(assert (not (>= q$i@484@01 0)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(push) ; 31
(assert (not (< q$i@484@01 (Seq_length l$i0$result@482@01))))
(check-sat)
; unsat
(pop) ; 31
; 0.01s
; (get-info :all-statistics)
(pop) ; 30
(push) ; 30
; [else-branch: 249 | !(q$i@484@01 < 3)]
(assert (not (< q$i@484@01 3)))
(pop) ; 30
(pop) ; 29
; Joined path conditions
; Joined path conditions
(assert (or (not (< q$i@484@01 3)) (< q$i@484@01 3)))
(pop) ; 28
(push) ; 28
; [else-branch: 248 | !(0 <= q$i@484@01)]
(assert (not (<= 0 q$i@484@01)))
(pop) ; 28
(pop) ; 27
; Joined path conditions
(assert (=>
  (<= 0 q$i@484@01)
  (and (<= 0 q$i@484@01) (or (not (< q$i@484@01 3)) (< q$i@484@01 3)))))
; Joined path conditions
(assert (or (not (<= 0 q$i@484@01)) (<= 0 q$i@484@01)))
(pop) ; 26
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q$i@484@01 Int)) (!
  (and
    (=>
      (<= 0 q$i@484@01)
      (and (<= 0 q$i@484@01) (or (not (< q$i@484@01 3)) (< q$i@484@01 3))))
    (or (not (<= 0 q$i@484@01)) (<= 0 q$i@484@01)))
  :pattern ((Seq_index l$i0$result@482@01 q$i@484@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1301@24@1301@94-aux|)))
(push) ; 26
(push) ; 27
(set-option :timeout 10)
(assert (not (not
  (forall ((q$i@484@01 Int)) (!
    (=>
      (and (<= 0 q$i@484@01) (< q$i@484@01 3))
      (=
        (Seq_index l$i0$result@482@01 0)
        (Seq_index l$i0$result@482@01 q$i@484@01)))
    :pattern ((Seq_index l$i0$result@482@01 q$i@484@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1301@24@1301@94|)))))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (forall ((q$i@484@01 Int)) (!
  (=>
    (and (<= 0 q$i@484@01) (< q$i@484@01 3))
    (=
      (Seq_index l$i0$result@482@01 0)
      (Seq_index l$i0$result@482@01 q$i@484@01)))
  :pattern ((Seq_index l$i0$result@482@01 q$i@484@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1301@24@1301@94|))))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
; [then-branch: 250 | QA q$i@484@01 :: 0 <= q$i@484@01 && q$i@484@01 < 3 ==> l$i0$result@482@01[0] == l$i0$result@482@01[q$i@484@01] | live]
; [else-branch: 250 | !(QA q$i@484@01 :: 0 <= q$i@484@01 && q$i@484@01 < 3 ==> l$i0$result@482@01[0] == l$i0$result@482@01[q$i@484@01]) | live]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 250 | QA q$i@484@01 :: 0 <= q$i@484@01 && q$i@484@01 < 3 ==> l$i0$result@482@01[0] == l$i0$result@482@01[q$i@484@01]]
(assert (forall ((q$i@484@01 Int)) (!
  (=>
    (and (<= 0 q$i@484@01) (< q$i@484@01 3))
    (=
      (Seq_index l$i0$result@482@01 0)
      (Seq_index l$i0$result@482@01 q$i@484@01)))
  :pattern ((Seq_index l$i0$result@482@01 q$i@484@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1301@24@1301@94|)))
; [eval] i1$$res == 3 * $unwrap($wrap(l$i1$xp[0]))
; [eval] 3 * $unwrap($wrap(l$i1$xp[0]))
; [eval] $unwrap($wrap(l$i1$xp[0]))
; [eval] $wrap(l$i1$xp[0])
; [eval] l$i1$xp[0]
(push) ; 28
(assert (not (< 0 (Seq_length l$i0$result@482@01))))
(check-sat)
; unsat
(pop) ; 28
; 0.01s
; (get-info :all-statistics)
(pop) ; 27
(push) ; 27
; [else-branch: 250 | !(QA q$i@484@01 :: 0 <= q$i@484@01 && q$i@484@01 < 3 ==> l$i0$result@482@01[0] == l$i0$result@482@01[q$i@484@01])]
(assert (not
  (forall ((q$i@484@01 Int)) (!
    (=>
      (and (<= 0 q$i@484@01) (< q$i@484@01 3))
      (=
        (Seq_index l$i0$result@482@01 0)
        (Seq_index l$i0$result@482@01 q$i@484@01)))
    :pattern ((Seq_index l$i0$result@482@01 q$i@484@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1301@24@1301@94|))))
(pop) ; 27
(pop) ; 26
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (forall ((q$i@484@01 Int)) (!
      (=>
        (and (<= 0 q$i@484@01) (< q$i@484@01 3))
        (=
          (Seq_index l$i0$result@482@01 0)
          (Seq_index l$i0$result@482@01 q$i@484@01)))
      :pattern ((Seq_index l$i0$result@482@01 q$i@484@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1301@24@1301@94|)))
  (forall ((q$i@484@01 Int)) (!
    (=>
      (and (<= 0 q$i@484@01) (< q$i@484@01 3))
      (=
        (Seq_index l$i0$result@482@01 0)
        (Seq_index l$i0$result@482@01 q$i@484@01)))
    :pattern ((Seq_index l$i0$result@482@01 q$i@484@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1301@24@1301@94|))))
(pop) ; 25
(push) ; 25
; [else-branch: 247 | !(i1$$succ@435@01)]
(assert (not i1$$succ@435@01))
(pop) ; 25
(pop) ; 24
; Joined path conditions
(assert (=>
  i1$$succ@435@01
  (and
    i1$$succ@435@01
    (forall ((q$i@484@01 Int)) (!
      (and
        (=>
          (<= 0 q$i@484@01)
          (and (<= 0 q$i@484@01) (or (not (< q$i@484@01 3)) (< q$i@484@01 3))))
        (or (not (<= 0 q$i@484@01)) (<= 0 q$i@484@01)))
      :pattern ((Seq_index l$i0$result@482@01 q$i@484@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1301@24@1301@94-aux|))
    (or
      (not
        (forall ((q$i@484@01 Int)) (!
          (=>
            (and (<= 0 q$i@484@01) (< q$i@484@01 3))
            (=
              (Seq_index l$i0$result@482@01 0)
              (Seq_index l$i0$result@482@01 q$i@484@01)))
          :pattern ((Seq_index l$i0$result@482@01 q$i@484@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1301@24@1301@94|)))
      (forall ((q$i@484@01 Int)) (!
        (=>
          (and (<= 0 q$i@484@01) (< q$i@484@01 3))
          (=
            (Seq_index l$i0$result@482@01 0)
            (Seq_index l$i0$result@482@01 q$i@484@01)))
        :pattern ((Seq_index l$i0$result@482@01 q$i@484@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1301@24@1301@94|))))))
; Joined path conditions
(assert (or (not i1$$succ@435@01) i1$$succ@435@01))
(assert (=>
  (and
    i1$$succ@435@01
    (forall ((q$i@484@01 Int)) (!
      (=>
        (and (<= 0 q$i@484@01) (< q$i@484@01 3))
        (=
          (Seq_index l$i0$result@482@01 0)
          (Seq_index l$i0$result@482@01 q$i@484@01)))
      :pattern ((Seq_index l$i0$result@482@01 q$i@484@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1301@24@1301@94|)))
  (=
    i1$$res@436@01
    (* 3 ($unwrap<Int> ($wrap<$Int> (Seq_index l$i0$result@482@01 0)))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] !i1$$succ
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not i1$$succ@435@01))
(check-sat)
; unknown
(pop) ; 24
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (not i1$$succ@435@01)))
(check-sat)
; unknown
(pop) ; 24
; 0.01s
; (get-info :all-statistics)
; [then-branch: 251 | !(i1$$succ@435@01) | live]
; [else-branch: 251 | i1$$succ@435@01 | live]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 251 | !(i1$$succ@435@01)]
(assert (not i1$$succ@435@01))
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_self
; [exec]
; $old_$contracts := $pre_$contracts
; [exec]
; label end
; [eval] !$succ
(push) ; 25
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 25
; 0.01s
; (get-info :all-statistics)
; [then-branch: 252 | True | live]
; [else-branch: 252 | False | dead]
(set-option :timeout 0)
(push) ; 25
; [then-branch: 252 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@485@01 $Snap)
(assert (= $t@485@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@443@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(declare-const self@486@01 $Struct)
(assert (=
  self@486@01
  ($struct_set<$Struct> self@422@01 3 (+
    ($struct_get<Int> ($struct_loc<Int> self@422@01 3))
    l$havoc$1@443@01))))
; [exec]
; $contracts := l$havoc$2
(pop) ; 25
; [then-branch: 253 | False | dead]
; [else-branch: 253 | True | live]
(set-option :timeout 0)
(push) ; 25
; [else-branch: 253 | True]
(pop) ; 25
(pop) ; 24
(push) ; 24
; [else-branch: 251 | i1$$succ@435@01]
(assert i1$$succ@435@01)
(pop) ; 24
; [eval] !!i1$$succ
; [eval] !i1$$succ
(push) ; 24
(set-option :timeout 10)
(assert (not (not i1$$succ@435@01)))
(check-sat)
; unknown
(pop) ; 24
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not i1$$succ@435@01))
(check-sat)
; unknown
(pop) ; 24
; 0.01s
; (get-info :all-statistics)
; [then-branch: 254 | i1$$succ@435@01 | live]
; [else-branch: 254 | !(i1$$succ@435@01) | live]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 254 | i1$$succ@435@01]
(assert i1$$succ@435@01)
; [exec]
; l$D := $wrap(i1$$res)
; [eval] $wrap(i1$$res)
(declare-const l$D@487@01 $Int)
(assert (= l$D@487@01 ($wrap<$Int> i1$$res@436@01)))
; [exec]
; inhale 0 <= l$raw_ret
(declare-const $t@488@01 $Snap)
(assert (= $t@488@01 $Snap.unit))
; [eval] 0 <= l$raw_ret
(assert (<= 0 l$raw_ret@439@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 25
(set-option :timeout 10)
(assert (not (not l$send_fail@438@01)))
(check-sat)
; unknown
(pop) ; 25
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 25
(set-option :timeout 10)
(assert (not l$send_fail@438@01))
(check-sat)
; unknown
(pop) ; 25
; 0.01s
; (get-info :all-statistics)
; [then-branch: 255 | l$send_fail@438@01 | live]
; [else-branch: 255 | !(l$send_fail@438@01) | live]
(set-option :timeout 0)
(push) ; 25
; [then-branch: 255 | l$send_fail@438@01]
(assert l$send_fail@438@01)
; [exec]
; inhale acc($failed(($struct_get($struct_loc(self, 2)): Int)), write)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const $t@489@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_self
; [exec]
; $old_$contracts := $pre_$contracts
; [exec]
; label end
; [eval] !$succ
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 256 | True | live]
; [else-branch: 256 | False | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 256 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@490@01 $Snap)
(assert (= $t@490@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@443@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(declare-const self@491@01 $Struct)
(assert (=
  self@491@01
  ($struct_set<$Struct> self@422@01 3 (+
    ($struct_get<Int> ($struct_loc<Int> self@422@01 3))
    l$havoc$1@443@01))))
; [exec]
; $contracts := l$havoc$2
(pop) ; 26
; [then-branch: 257 | False | dead]
; [else-branch: 257 | True | live]
(set-option :timeout 0)
(push) ; 26
; [else-branch: 257 | True]
(pop) ; 26
(pop) ; 25
(push) ; 25
; [else-branch: 255 | !(l$send_fail@438@01)]
(assert (not l$send_fail@438@01))
(pop) ; 25
; [eval] !l$send_fail
(push) ; 25
(set-option :timeout 10)
(assert (not l$send_fail@438@01))
(check-sat)
; unknown
(pop) ; 25
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 25
(set-option :timeout 10)
(assert (not (not l$send_fail@438@01)))
(check-sat)
; unknown
(pop) ; 25
; 0.01s
; (get-info :all-statistics)
; [then-branch: 258 | !(l$send_fail@438@01) | live]
; [else-branch: 258 | l$send_fail@438@01 | live]
(set-option :timeout 0)
(push) ; 25
; [then-branch: 258 | !(l$send_fail@438@01)]
(assert (not l$send_fail@438@01))
; [exec]
; $old_self := self
; [exec]
; $old_$contracts := $contracts
; [exec]
; $old_self := self
; [exec]
; $old_$contracts := $contracts
; [exec]
; l$token_supply := $wrap(l$raw_ret)
; [eval] $wrap(l$raw_ret)
(declare-const l$token_supply@492@01 $Int)
(assert (= l$token_supply@492@01 ($wrap<$Int> l$raw_ret@439@01)))
; [eval] $unwrap(l$D) * 1000000000000000000 < 0
; [eval] $unwrap(l$D) * 1000000000000000000
; [eval] $unwrap(l$D)
(push) ; 26
(set-option :timeout 10)
(assert (not (not (< (* ($unwrap<Int> l$D@487@01) 1000000000000000000) 0))))
(check-sat)
; unknown
(pop) ; 26
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (< (* ($unwrap<Int> l$D@487@01) 1000000000000000000) 0)))
(check-sat)
; unknown
(pop) ; 26
; 0.01s
; (get-info :all-statistics)
; [then-branch: 259 | $unwrap[Int](l$D@487@01) * 1000000000000000000 < 0 | live]
; [else-branch: 259 | !($unwrap[Int](l$D@487@01) * 1000000000000000000 < 0) | live]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 259 | $unwrap[Int](l$D@487@01) * 1000000000000000000 < 0]
(assert (< (* ($unwrap<Int> l$D@487@01) 1000000000000000000) 0))
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_self
; [exec]
; $old_$contracts := $pre_$contracts
; [exec]
; label end
; [eval] !$succ
(push) ; 27
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
; [then-branch: 260 | True | live]
; [else-branch: 260 | False | dead]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 260 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@493@01 $Snap)
(assert (= $t@493@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@443@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(declare-const self@494@01 $Struct)
(assert (=
  self@494@01
  ($struct_set<$Struct> self@422@01 3 (+
    ($struct_get<Int> ($struct_loc<Int> self@422@01 3))
    l$havoc$1@443@01))))
; [exec]
; $contracts := l$havoc$2
(pop) ; 27
; [then-branch: 261 | False | dead]
; [else-branch: 261 | True | live]
(set-option :timeout 0)
(push) ; 27
; [else-branch: 261 | True]
(pop) ; 27
(pop) ; 26
(push) ; 26
; [else-branch: 259 | !($unwrap[Int](l$D@487@01) * 1000000000000000000 < 0)]
(assert (not (< (* ($unwrap<Int> l$D@487@01) 1000000000000000000) 0)))
(pop) ; 26
; [eval] !($unwrap(l$D) * 1000000000000000000 < 0)
; [eval] $unwrap(l$D) * 1000000000000000000 < 0
; [eval] $unwrap(l$D) * 1000000000000000000
; [eval] $unwrap(l$D)
(push) ; 26
(set-option :timeout 10)
(assert (not (< (* ($unwrap<Int> l$D@487@01) 1000000000000000000) 0)))
(check-sat)
; unknown
(pop) ; 26
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (not (< (* ($unwrap<Int> l$D@487@01) 1000000000000000000) 0))))
(check-sat)
; unknown
(pop) ; 26
; 0.01s
; (get-info :all-statistics)
; [then-branch: 262 | !($unwrap[Int](l$D@487@01) * 1000000000000000000 < 0) | live]
; [else-branch: 262 | $unwrap[Int](l$D@487@01) * 1000000000000000000 < 0 | live]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 262 | !($unwrap[Int](l$D@487@01) * 1000000000000000000 < 0)]
(assert (not (< (* ($unwrap<Int> l$D@487@01) 1000000000000000000) 0)))
; [eval] $unwrap(l$token_supply) == 0
; [eval] $unwrap(l$token_supply)
(push) ; 27
(set-option :timeout 10)
(assert (not (not (= ($unwrap<Int> l$token_supply@492@01) 0))))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (= ($unwrap<Int> l$token_supply@492@01) 0)))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
; [then-branch: 263 | $unwrap[Int](l$token_supply@492@01) == 0 | live]
; [else-branch: 263 | $unwrap[Int](l$token_supply@492@01) != 0 | live]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 263 | $unwrap[Int](l$token_supply@492@01) == 0]
(assert (= ($unwrap<Int> l$token_supply@492@01) 0))
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_self
; [exec]
; $old_$contracts := $pre_$contracts
; [exec]
; label end
; [eval] !$succ
(push) ; 28
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 28
; 0.01s
; (get-info :all-statistics)
; [then-branch: 264 | True | live]
; [else-branch: 264 | False | dead]
(set-option :timeout 0)
(push) ; 28
; [then-branch: 264 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@495@01 $Snap)
(assert (= $t@495@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@443@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(declare-const self@496@01 $Struct)
(assert (=
  self@496@01
  ($struct_set<$Struct> self@422@01 3 (+
    ($struct_get<Int> ($struct_loc<Int> self@422@01 3))
    l$havoc$1@443@01))))
; [exec]
; $contracts := l$havoc$2
(pop) ; 28
; [then-branch: 265 | False | dead]
; [else-branch: 265 | True | live]
(set-option :timeout 0)
(push) ; 28
; [else-branch: 265 | True]
(pop) ; 28
(pop) ; 27
(push) ; 27
; [else-branch: 263 | $unwrap[Int](l$token_supply@492@01) != 0]
(assert (not (= ($unwrap<Int> l$token_supply@492@01) 0)))
(pop) ; 27
; [eval] !($unwrap(l$token_supply) == 0)
; [eval] $unwrap(l$token_supply) == 0
; [eval] $unwrap(l$token_supply)
(push) ; 27
(set-option :timeout 10)
(assert (not (= ($unwrap<Int> l$token_supply@492@01) 0)))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (not (= ($unwrap<Int> l$token_supply@492@01) 0))))
(check-sat)
; unknown
(pop) ; 27
; 0.01s
; (get-info :all-statistics)
; [then-branch: 266 | $unwrap[Int](l$token_supply@492@01) != 0 | live]
; [else-branch: 266 | $unwrap[Int](l$token_supply@492@01) == 0 | live]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 266 | $unwrap[Int](l$token_supply@492@01) != 0]
(assert (not (= ($unwrap<Int> l$token_supply@492@01) 0)))
; [eval] $unwrap((0 == $unwrap(l$token_supply) ? $wrap($unwrap($wrap($unwrap(l$D) * 1000000000000000000)) \ $unwrap(l$token_supply)) : $w_div($wrap($unwrap(l$D) * 1000000000000000000), l$token_supply))) < 0
; [eval] $unwrap((0 == $unwrap(l$token_supply) ? $wrap($unwrap($wrap($unwrap(l$D) * 1000000000000000000)) \ $unwrap(l$token_supply)) : $w_div($wrap($unwrap(l$D) * 1000000000000000000), l$token_supply)))
; [eval] (0 == $unwrap(l$token_supply) ? $wrap($unwrap($wrap($unwrap(l$D) * 1000000000000000000)) \ $unwrap(l$token_supply)) : $w_div($wrap($unwrap(l$D) * 1000000000000000000), l$token_supply))
; [eval] 0 == $unwrap(l$token_supply)
; [eval] $unwrap(l$token_supply)
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not (= 0 ($unwrap<Int> l$token_supply@492@01)))))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 267 | 0 == $unwrap[Int](l$token_supply@492@01) | dead]
; [else-branch: 267 | 0 != $unwrap[Int](l$token_supply@492@01) | live]
(set-option :timeout 0)
(push) ; 29
; [else-branch: 267 | 0 != $unwrap[Int](l$token_supply@492@01)]
(assert (not (= 0 ($unwrap<Int> l$token_supply@492@01))))
; [eval] $w_div($wrap($unwrap(l$D) * 1000000000000000000), l$token_supply)
; [eval] $wrap($unwrap(l$D) * 1000000000000000000)
; [eval] $unwrap(l$D) * 1000000000000000000
; [eval] $unwrap(l$D)
(pop) ; 29
(pop) ; 28
; Joined path conditions
(assert (not (= 0 ($unwrap<Int> l$token_supply@492@01))))
(push) ; 28
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_div<$Int> ($wrap<$Int> (*
      ($unwrap<Int> l$D@487@01)
      1000000000000000000)) l$token_supply@492@01))
    0))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [then-branch: 268 | $unwrap[Int]($w_div[$Int]($wrap[$Int]($unwrap[Int](l$D@487@01) * 1000000000000000000), l$token_supply@492@01)) < 0 | dead]
; [else-branch: 268 | !($unwrap[Int]($w_div[$Int]($wrap[$Int]($unwrap[Int](l$D@487@01) * 1000000000000000000), l$token_supply@492@01)) < 0) | live]
(set-option :timeout 0)
(push) ; 28
; [else-branch: 268 | !($unwrap[Int]($w_div[$Int]($wrap[$Int]($unwrap[Int](l$D@487@01) * 1000000000000000000), l$token_supply@492@01)) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_div<$Int> ($wrap<$Int> (*
      ($unwrap<Int> l$D@487@01)
      1000000000000000000)) l$token_supply@492@01))
    0)))
(pop) ; 28
; [eval] !($unwrap((0 == $unwrap(l$token_supply) ? $wrap($unwrap($wrap($unwrap(l$D) * 1000000000000000000)) \ $unwrap(l$token_supply)) : $w_div($wrap($unwrap(l$D) * 1000000000000000000), l$token_supply))) < 0)
; [eval] $unwrap((0 == $unwrap(l$token_supply) ? $wrap($unwrap($wrap($unwrap(l$D) * 1000000000000000000)) \ $unwrap(l$token_supply)) : $w_div($wrap($unwrap(l$D) * 1000000000000000000), l$token_supply))) < 0
; [eval] $unwrap((0 == $unwrap(l$token_supply) ? $wrap($unwrap($wrap($unwrap(l$D) * 1000000000000000000)) \ $unwrap(l$token_supply)) : $w_div($wrap($unwrap(l$D) * 1000000000000000000), l$token_supply)))
; [eval] (0 == $unwrap(l$token_supply) ? $wrap($unwrap($wrap($unwrap(l$D) * 1000000000000000000)) \ $unwrap(l$token_supply)) : $w_div($wrap($unwrap(l$D) * 1000000000000000000), l$token_supply))
; [eval] 0 == $unwrap(l$token_supply)
; [eval] $unwrap(l$token_supply)
(push) ; 28
; [then-branch: 269 | 0 == $unwrap[Int](l$token_supply@492@01) | dead]
; [else-branch: 269 | 0 != $unwrap[Int](l$token_supply@492@01) | live]
(push) ; 29
; [else-branch: 269 | 0 != $unwrap[Int](l$token_supply@492@01)]
; [eval] $w_div($wrap($unwrap(l$D) * 1000000000000000000), l$token_supply)
; [eval] $wrap($unwrap(l$D) * 1000000000000000000)
; [eval] $unwrap(l$D) * 1000000000000000000
; [eval] $unwrap(l$D)
(pop) ; 29
(pop) ; 28
; Joined path conditions
(push) ; 28
(set-option :timeout 10)
(assert (not (<
  ($unwrap<Int> ($w_div<$Int> ($wrap<$Int> (*
    ($unwrap<Int> l$D@487@01)
    1000000000000000000)) l$token_supply@492@01))
  0)))
(check-sat)
; unknown
(pop) ; 28
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (not
  (<
    ($unwrap<Int> ($w_div<$Int> ($wrap<$Int> (*
      ($unwrap<Int> l$D@487@01)
      1000000000000000000)) l$token_supply@492@01))
    0))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [then-branch: 270 | !($unwrap[Int]($w_div[$Int]($wrap[$Int]($unwrap[Int](l$D@487@01) * 1000000000000000000), l$token_supply@492@01)) < 0) | live]
; [else-branch: 270 | $unwrap[Int]($w_div[$Int]($wrap[$Int]($unwrap[Int](l$D@487@01) * 1000000000000000000), l$token_supply@492@01)) < 0 | dead]
(set-option :timeout 0)
(push) ; 28
; [then-branch: 270 | !($unwrap[Int]($w_div[$Int]($wrap[$Int]($unwrap[Int](l$D@487@01) * 1000000000000000000), l$token_supply@492@01)) < 0)]
(assert (not
  (<
    ($unwrap<Int> ($w_div<$Int> ($wrap<$Int> (*
      ($unwrap<Int> l$D@487@01)
      1000000000000000000)) l$token_supply@492@01))
    0)))
; [exec]
; $res := $unwrap((0 == $unwrap(l$token_supply) ?
;     $wrap($unwrap($wrap($unwrap(l$D) * 1000000000000000000)) \
;     $unwrap(l$token_supply)) :
;     $w_div($wrap($unwrap(l$D) * 1000000000000000000), l$token_supply)))
; [eval] $unwrap((0 == $unwrap(l$token_supply) ? $wrap($unwrap($wrap($unwrap(l$D) * 1000000000000000000)) \ $unwrap(l$token_supply)) : $w_div($wrap($unwrap(l$D) * 1000000000000000000), l$token_supply)))
; [eval] (0 == $unwrap(l$token_supply) ? $wrap($unwrap($wrap($unwrap(l$D) * 1000000000000000000)) \ $unwrap(l$token_supply)) : $w_div($wrap($unwrap(l$D) * 1000000000000000000), l$token_supply))
; [eval] 0 == $unwrap(l$token_supply)
; [eval] $unwrap(l$token_supply)
(push) ; 29
; [then-branch: 271 | 0 == $unwrap[Int](l$token_supply@492@01) | dead]
; [else-branch: 271 | 0 != $unwrap[Int](l$token_supply@492@01) | live]
(push) ; 30
; [else-branch: 271 | 0 != $unwrap[Int](l$token_supply@492@01)]
; [eval] $w_div($wrap($unwrap(l$D) * 1000000000000000000), l$token_supply)
; [eval] $wrap($unwrap(l$D) * 1000000000000000000)
; [eval] $unwrap(l$D) * 1000000000000000000
; [eval] $unwrap(l$D)
(pop) ; 30
(pop) ; 29
; Joined path conditions
(declare-const $res@497@01 Int)
(assert (=
  $res@497@01
  ($unwrap<Int> ($w_div<$Int> ($wrap<$Int> (*
    ($unwrap<Int> l$D@487@01)
    1000000000000000000)) l$token_supply@492@01))))
; [exec]
; label return
(push) ; 29
(set-option :timeout 10)
(assert (not (not $out_of_gas@441@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not $out_of_gas@441@01))
(check-sat)
; unknown
(pop) ; 29
; 0.01s
; (get-info :all-statistics)
; [then-branch: 272 | $out_of_gas@441@01 | live]
; [else-branch: 272 | !($out_of_gas@441@01) | live]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 272 | $out_of_gas@441@01]
(assert $out_of_gas@441@01)
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; $res := l$havoc
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_self
; [exec]
; $old_$contracts := $pre_$contracts
; [exec]
; label end
; [eval] !$succ
(push) ; 30
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 30
; 0.01s
; (get-info :all-statistics)
; [then-branch: 273 | True | live]
; [else-branch: 273 | False | dead]
(set-option :timeout 0)
(push) ; 30
; [then-branch: 273 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@498@01 $Snap)
(assert (= $t@498@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@443@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(declare-const self@499@01 $Struct)
(assert (=
  self@499@01
  ($struct_set<$Struct> self@422@01 3 (+
    ($struct_get<Int> ($struct_loc<Int> self@422@01 3))
    l$havoc$1@443@01))))
; [exec]
; $contracts := l$havoc$2
(pop) ; 30
; [then-branch: 274 | False | dead]
; [else-branch: 274 | True | live]
(set-option :timeout 0)
(push) ; 30
; [else-branch: 274 | True]
(pop) ; 30
(pop) ; 29
(push) ; 29
; [else-branch: 272 | !($out_of_gas@441@01)]
(assert (not $out_of_gas@441@01))
(pop) ; 29
; [eval] !$out_of_gas
(push) ; 29
(set-option :timeout 10)
(assert (not $out_of_gas@441@01))
(check-sat)
; unknown
(pop) ; 29
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (not $out_of_gas@441@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.01s
; (get-info :all-statistics)
; [then-branch: 275 | !($out_of_gas@441@01) | live]
; [else-branch: 275 | $out_of_gas@441@01 | live]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 275 | !($out_of_gas@441@01)]
(assert (not $out_of_gas@441@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 276 | False | dead]
; [else-branch: 276 | True | live]
(push) ; 30
; [else-branch: 276 | True]
(pop) ; 30
(push) ; 30
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 30
; 0.01s
; (get-info :all-statistics)
; [then-branch: 277 | True | live]
; [else-branch: 277 | False | dead]
(set-option :timeout 0)
(push) ; 30
; [then-branch: 277 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@500@01 $Snap)
(assert (= $t@500@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@443@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(declare-const self@501@01 $Struct)
(assert (=
  self@501@01
  ($struct_set<$Struct> self@422@01 3 (+
    ($struct_get<Int> ($struct_loc<Int> self@422@01 3))
    l$havoc$1@443@01))))
; [exec]
; $contracts := l$havoc$2
(pop) ; 30
(pop) ; 29
(set-option :timeout 0)
(push) ; 29
; [else-branch: 275 | $out_of_gas@441@01]
(assert $out_of_gas@441@01)
(pop) ; 29
(pop) ; 28
(pop) ; 27
(push) ; 27
; [else-branch: 266 | $unwrap[Int](l$token_supply@492@01) == 0]
(assert (= ($unwrap<Int> l$token_supply@492@01) 0))
(pop) ; 27
(pop) ; 26
(push) ; 26
; [else-branch: 262 | $unwrap[Int](l$D@487@01) * 1000000000000000000 < 0]
(assert (< (* ($unwrap<Int> l$D@487@01) 1000000000000000000) 0))
(pop) ; 26
(pop) ; 25
(push) ; 25
; [else-branch: 258 | l$send_fail@438@01]
(assert l$send_fail@438@01)
(pop) ; 25
(pop) ; 24
(push) ; 24
; [else-branch: 254 | !(i1$$succ@435@01)]
(assert (not i1$$succ@435@01))
(pop) ; 24
(pop) ; 23
(pop) ; 22
(pop) ; 21
(pop) ; 20
(pop) ; 19
(pop) ; 18
(pop) ; 17
(pop) ; 16
(pop) ; 15
(pop) ; 14
(pop) ; 13
(pop) ; 12
(pop) ; 11
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$__init__ ----------
(declare-const $succ@502@01 Bool)
(declare-const $succ@503@01 Bool)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var msg: $Struct
(declare-const msg@504@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@505@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@506@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@507@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@508@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@509@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@510@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@511@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@512@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@513@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@514@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@515@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@516@01 Bool)
; [exec]
; var $first_public_state: Bool
(declare-const $first_public_state@517@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@518@01 Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@519@01 Bool)
; [exec]
; var l$havoc$1: Int
(declare-const l$havoc$1@520@01 Int)
; [exec]
; var l$havoc$2: $Map[Int, $Struct]
(declare-const l$havoc$2@521@01 $Map<Int~_$Struct>)
; [exec]
; inhale |($struct_get($struct_loc(self, 0)): Seq[Int])| == 3
(declare-const $t@522@01 $Snap)
(assert (= $t@522@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])| == 3
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@508@01 0))) 3))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0] }
;     0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==>
;     0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0])
(declare-const $t@523@01 $Snap)
(assert (= $t@523@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0] } 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0])
(declare-const $q0@524@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])| ==> 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] 0 <= $q0 && $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] 0 <= $q0
(push) ; 4
; [then-branch: 278 | !(0 <= $q0@524@01) | live]
; [else-branch: 278 | 0 <= $q0@524@01 | live]
(push) ; 5
; [then-branch: 278 | !(0 <= $q0@524@01)]
(assert (not (<= 0 $q0@524@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 278 | 0 <= $q0@524@01]
(assert (<= 0 $q0@524@01))
; [eval] $q0 < |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] |($struct_get($struct_loc(self, 0)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 $q0@524@01) (not (<= 0 $q0@524@01))))
(push) ; 4
; [then-branch: 279 | 0 <= $q0@524@01 && $q0@524@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@508@01, 0))| | live]
; [else-branch: 279 | !(0 <= $q0@524@01 && $q0@524@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@508@01, 0))|) | live]
(push) ; 5
; [then-branch: 279 | 0 <= $q0@524@01 && $q0@524@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@508@01, 0))|]
(assert (and
  (<= 0 $q0@524@01)
  (<
    $q0@524@01
    (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@508@01 0))))))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])[$q0]
; [eval] ($struct_get($struct_loc(self, 0)): Seq[Int])
; [eval] $struct_loc(self, 0)
(push) ; 6
(assert (not (>= $q0@524@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 279 | !(0 <= $q0@524@01 && $q0@524@01 < |$struct_get[Seq[Int]]($struct_loc[Int](self@508@01, 0))|)]
(assert (not
  (and
    (<= 0 $q0@524@01)
    (<
      $q0@524@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@508@01 0)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 $q0@524@01)
      (<
        $q0@524@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@508@01 0))))))
  (and
    (<= 0 $q0@524@01)
    (<
      $q0@524@01
      (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@508@01 0)))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@524@01 Int)) (!
  (and
    (or (<= 0 $q0@524@01) (not (<= 0 $q0@524@01)))
    (or
      (not
        (and
          (<= 0 $q0@524@01)
          (<
            $q0@524@01
            (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@508@01 0))))))
      (and
        (<= 0 $q0@524@01)
        (<
          $q0@524@01
          (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@508@01 0)))))))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@508@01 0))
    $q0@524@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1376@11@1376@210-aux|)))
(assert (forall (($q0@524@01 Int)) (!
  (=>
    (and
      (<= 0 $q0@524@01)
      (<
        $q0@524@01
        (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@508@01 0)))))
    (<=
      0
      (Seq_index
        ($struct_get<Seq<Int>> ($struct_loc<Int> self@508@01 0))
        $q0@524@01)))
  :pattern ((Seq_index
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@508@01 0))
    $q0@524@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1376@11@1376@210|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int)
(declare-const $t@525@01 $Snap)
(assert (= $t@525@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@508@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int)
(declare-const $t@526@01 $Snap)
(assert (= $t@526@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@508@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 3)): Int)
(declare-const $t@527@01 $Snap)
(assert (= $t@527@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@508@01 3))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale true
(declare-const $t@528@01 $Snap)
(assert (= $t@528@01 $Snap.unit))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $t@529@01 $Snap)
(assert (= $t@529@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int))
(declare-const $q1@530@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@530@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@508@01 6)) $q1@530@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@508@01 6)) $q1@530@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1381@11@1381@186|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@531@01 $Snap)
(assert (= $t@531@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@532@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
; [eval] ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@532@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@508@01 6)) $q1@532@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@508@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@508@01 6)) $q1@532@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1382@11@1382@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $t@533@01 $Snap)
(assert (= $t@533@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int))
(declare-const $q2@534@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@534@01 Int)) (!
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@508@01 7)) $q2@534@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@508@01 7)) $q2@534@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1383@11@1383@186|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) }
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $t@535@01 $Snap)
(assert (= $t@535@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) } ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $q2@536@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
; [eval] ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@536@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@508@01 7)) $q2@536@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@508@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@508@01 7)) $q2@536@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesstableswap_get_virtual_price.vy.vpr@1384@11@1384@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@537@01 $Snap)
(assert (= $t@537@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@508@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address()
(declare-const $t@538@01 $Snap)
(assert (= $t@538@01 $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int)
(declare-const $t@539@01 $Snap)
(assert (= $t@539@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@505@01 0))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int)
(declare-const $t@540@01 $Snap)
(assert (= $t@540@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@505@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int)
(declare-const $t@541@01 $Snap)
(assert (= $t@541@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@505@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@542@01 $Snap)
(assert (= $t@542@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@505@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int)
(declare-const $t@543@01 $Snap)
(assert (= $t@543@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@505@01 4))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@544@01 $Snap)
(assert (= $t@544@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@505@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int)
(declare-const $t@545@01 $Snap)
(assert (= $t@545@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@504@01 0))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int)
(declare-const $t@546@01 $Snap)
(assert (= $t@546@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@504@01 1))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int)
(declare-const $t@547@01 $Snap)
(assert (= $t@547@01 $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@504@01 2))))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@548@01 $Snap)
(assert (= $t@548@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@504@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@549@01 $Snap)
(assert (= $t@549@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@504@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; $pre_self := self
; [exec]
; $pre_$contracts := $contracts
; [exec]
; $old_self := self
; [exec]
; $old_$contracts := $contracts
; [exec]
; $succ := true
; [exec]
; $overflow := false
; [exec]
; $first_public_state := true
; [exec]
; self := s$struct$self$init(($array_init(0, 3): Seq[Int]), 0, 0, 0, 0, false,
;   ($map_init(0): $Map[Int, Int]), ($map_init(0): $Map[Int, Int]), false)
; [eval] s$struct$self$init(($array_init(0, 3): Seq[Int]), 0, 0, 0, 0, false, ($map_init(0): $Map[Int, Int]), ($map_init(0): $Map[Int, Int]), false)
; [eval] ($array_init(0, 3): Seq[Int])
; [eval] ($map_init(0): $Map[Int, Int])
; [eval] ($map_init(0): $Map[Int, Int])
(declare-const self@550@01 $Struct)
(assert (=
  self@550@01
  (s$struct$self$init<$Struct> ($array_init<Seq<Int>> 0 3) 0 0 0 0 false ($map_init<$Map<Int~_Int>> 0) ($map_init<$Map<Int~_Int>> 0) false)))
; [exec]
; inhale l$havoc >= 0
(declare-const $t@551@01 $Snap)
(assert (= $t@551@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@518@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 3)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(declare-const self@552@01 $Struct)
(assert (=
  self@552@01
  ($struct_set<$Struct> self@550@01 3 (+
    ($struct_get<Int> ($struct_loc<Int> self@550@01 3))
    l$havoc@518@01))))
; [exec]
; inhale ($struct_get($struct_loc(msg, 1)): Int) == 0
(declare-const $t@553@01 $Snap)
(assert (= $t@553@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@504@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label return
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@519@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@519@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 280 | $out_of_gas@519@01 | live]
; [else-branch: 280 | !($out_of_gas@519@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 280 | $out_of_gas@519@01]
(assert $out_of_gas@519@01)
; [exec]
; label revert
; [exec]
; $succ := false
; [exec]
; self := $pre_self
; [exec]
; $contracts := $pre_$contracts
; [exec]
; $old_self := $pre_self
; [exec]
; $old_$contracts := $pre_$contracts
; [exec]
; label end
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 281 | True | live]
; [else-branch: 281 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 281 | True]
; [exec]
; $old_self := self
; [eval] !$succ
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 282 | True | live]
; [else-branch: 282 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 282 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@554@01 $Snap)
(assert (= $t@554@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@520@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(declare-const self@555@01 $Struct)
(assert (=
  self@555@01
  ($struct_set<$Struct> self@508@01 3 (+
    ($struct_get<Int> ($struct_loc<Int> self@508@01 3))
    l$havoc$1@520@01))))
; [exec]
; $contracts := l$havoc$2
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 283 | True | live]
; [else-branch: 283 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 283 | True]
; [exec]
; $old_self := self
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 284 | False | dead]
; [else-branch: 284 | True | live]
(push) ; 6
; [else-branch: 284 | True]
(pop) ; 6
(pop) ; 5
; [then-branch: 285 | False | dead]
; [else-branch: 285 | True | live]
(push) ; 5
; [else-branch: 285 | True]
(pop) ; 5
(pop) ; 4
; [eval] !$first_public_state
; [then-branch: 286 | False | dead]
; [else-branch: 286 | True | live]
(push) ; 4
; [else-branch: 286 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 280 | !($out_of_gas@519@01)]
(assert (not $out_of_gas@519@01))
(pop) ; 3
; [eval] !$out_of_gas
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@519@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@519@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 287 | !($out_of_gas@519@01) | live]
; [else-branch: 287 | $out_of_gas@519@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 287 | !($out_of_gas@519@01)]
(assert (not $out_of_gas@519@01))
; [exec]
; label end
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 288 | True | live]
; [else-branch: 288 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 288 | True]
; [exec]
; $old_self := self
; [eval] !$succ
; [then-branch: 289 | False | dead]
; [else-branch: 289 | True | live]
(push) ; 5
; [else-branch: 289 | True]
(pop) ; 5
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 290 | True | live]
; [else-branch: 290 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 290 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@556@01 $Snap)
(assert (= $t@556@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@520@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 3, ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 3)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(declare-const self@557@01 $Struct)
(assert (=
  self@557@01
  ($struct_set<$Struct> self@552@01 3 (+
    ($struct_get<Int> ($struct_loc<Int> self@552@01 3))
    l$havoc$1@520@01))))
; [exec]
; $contracts := l$havoc$2
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 291 | True | live]
; [else-branch: 291 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 291 | True]
; [exec]
; $old_self := self
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 292 | False | dead]
; [else-branch: 292 | True | live]
(push) ; 6
; [else-branch: 292 | True]
(pop) ; 6
(pop) ; 5
(pop) ; 4
; [eval] !$first_public_state
; [then-branch: 293 | False | dead]
; [else-branch: 293 | True | live]
(push) ; 4
; [else-branch: 293 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 287 | $out_of_gas@519@01]
(assert $out_of_gas@519@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
