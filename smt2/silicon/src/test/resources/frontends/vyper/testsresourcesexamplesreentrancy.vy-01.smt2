(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:08:51
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
(declare-sort $Blockchain 0)
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
(declare-fun s$struct$self$init<$Struct> (Bool Int Int Int Bool $Map<Int~_Int> $Map<Int~_Int> Bool) $Struct)
(declare-fun s$struct$self$eq<Bool> ($Struct $Struct) Bool)
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
(declare-fun $accessible$__init__%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$__init___0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$claim_reward%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$claim_reward_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$claim_reward_fail%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$claim_reward_fail_0%trigger ($Snap Int Int Int) Bool)
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
(assert (forall (($arg_0 Bool) ($arg_1 Int) ($arg_2 Int) ($arg_3 Int) ($arg_4 Bool) ($arg_5 $Map<Int~_Int>) ($arg_6 $Map<Int~_Int>) ($arg_7 Bool)) (!
  (and
    (=
      ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7) (- 0 1)))
      9122519725869122497593506884710)
    (and
      (=
        ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7) 0))
        $arg_0)
      (and
        (=
          ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7) 1))
          $arg_1)
        (and
          (=
            ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7) 2))
            $arg_2)
          (and
            (=
              ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7) 3))
              $arg_3)
            (and
              (=
                ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7) 4))
                $arg_4)
              (and
                (=
                  ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7) 5))
                  $arg_5)
                (and
                  (=
                    ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7) 6))
                    $arg_6)
                  (=
                    ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7) 7))
                    $arg_7)))))))))
  :pattern ((s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7))
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
          (=
            ($struct_get<Bool> ($struct_loc<Int> $l 0))
            ($struct_get<Bool> ($struct_loc<Int> $r 0)))
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
                    ($struct_get<Bool> ($struct_loc<Int> $l 4))
                    ($struct_get<Bool> ($struct_loc<Int> $r 4)))
                  (and
                    ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 5)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 5)))
                    (and
                      ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 6)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 6)))
                      (=
                        ($struct_get<Bool> ($struct_loc<Int> $l 7))
                        ($struct_get<Bool> ($struct_loc<Int> $r 7)))))))))))))
  :pattern ((s$struct$self$eq<Bool> $l $r))
  :qid |prog.s$struct$self$eq$ax|)))
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
(declare-fun letvar@7@00 ($Snap Int Int) Bool)
(declare-fun letvar@8@00 ($Snap Int Int) Bool)
(declare-fun letvar@9@00 ($Snap Int Int) Int)
(declare-fun letvar@10@00 ($Snap Int Int) Int)
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  (= ($pure$success_get%limited s@$ x@0@00) ($pure$success_get s@$ x@0@00))
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-777|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  ($pure$success_get%stateless x@0@00)
  :pattern (($pure$success_get%limited s@$ x@0@00))
  :qid |quant-u-778|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  (=>
    ($pure$success_get%precondition s@$ x@0@00)
    (=
      ($pure$success_get s@$ x@0@00)
      ($struct_get<Bool> ($struct_loc<Int> x@0@00 0))))
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-783|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  true
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-784|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (= ($pure$return_get%limited s@$ x@2@00) ($pure$return_get s@$ x@2@00))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-779|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  ($pure$return_get%stateless x@2@00)
  :pattern (($pure$return_get%limited s@$ x@2@00))
  :qid |quant-u-780|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (=>
    ($pure$return_get%precondition s@$ x@2@00)
    (= ($pure$return_get s@$ x@2@00) ($struct_loc<Int> x@2@00 1)))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-785|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  true
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-786|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  (= ($range_sum%limited s@$ $x@4@00 $y@5@00) ($range_sum s@$ $x@4@00 $y@5@00))
  :pattern (($range_sum s@$ $x@4@00 $y@5@00))
  :qid |quant-u-781|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  ($range_sum%stateless $x@4@00 $y@5@00)
  :pattern (($range_sum%limited s@$ $x@4@00 $y@5@00))
  :qid |quant-u-782|)))
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
  :qid |quant-u-787|)))
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
  :qid |quant-u-788|)))
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
; inhale 0 <= ($struct_get($struct_loc($self$0, 1)): Int) &&
;   ($struct_get($struct_loc($self$0, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (= ($Snap.first $t@8@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))))
(assert (= ($Snap.second $t@8@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 2)): Int) &&
;   ($struct_get($struct_loc($self$0, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 ($Snap.combine ($Snap.first $t@9@01) ($Snap.second $t@9@01))))
(assert (= ($Snap.first $t@9@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 2))))
(assert (= ($Snap.second $t@9@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 3)): Int) &&
;   ($struct_get($struct_loc($self$0, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (= ($Snap.first $t@10@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 3))))
(assert (= ($Snap.second $t@10@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 3))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@11@01 $Snap)
(assert (= $t@11@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@12@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(push) ; 4
; [then-branch: 0 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 5)), $q0@12@01)) | live]
; [else-branch: 0 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 5)), $q0@12@01) | live]
(push) ; 5
; [then-branch: 0 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 5)), $q0@12@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@12@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 5)), $q0@12@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@12@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@12@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@12@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@12@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@12@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@12@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@609@11@609@354-aux|)))
(assert (forall (($q0@12@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@12@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@12@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@609@11@609@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $t@13@01 $Snap)
(assert (= $t@13@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $q0@14@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@14@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@14@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $q0@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@610@11@610@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@15@01 $Snap)
(assert (= $t@15@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@16@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
(push) ; 4
; [then-branch: 1 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 6)), $q1@16@01)) | live]
; [else-branch: 1 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 6)), $q1@16@01) | live]
(push) ; 5
; [then-branch: 1 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 6)), $q1@16@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@16@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 6)), $q1@16@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@16@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@16@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@16@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@16@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@16@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@16@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@611@11@611@354-aux|)))
(assert (forall (($q1@16@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@16@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@16@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 6)) $q1@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@611@11@611@354|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@612@11@612@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 $Snap.unit))
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
; inhale 0 <= ($struct_get($struct_loc($self$1, 1)): Int) &&
;   ($struct_get($struct_loc($self$1, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@20@01 $Snap)
(assert (= $t@20@01 ($Snap.combine ($Snap.first $t@20@01) ($Snap.second $t@20@01))))
(assert (= ($Snap.first $t@20@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))
(assert (= ($Snap.second $t@20@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 2)): Int) &&
;   ($struct_get($struct_loc($self$1, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(assert (= ($Snap.first $t@21@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 2))))
(assert (= ($Snap.second $t@21@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 3)): Int) &&
;   ($struct_get($struct_loc($self$1, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@22@01 $Snap)
(assert (= $t@22@01 ($Snap.combine ($Snap.first $t@22@01) ($Snap.second $t@22@01))))
(assert (= ($Snap.first $t@22@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 3))))
(assert (= ($Snap.second $t@22@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 3))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@24@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(push) ; 4
; [then-branch: 2 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 5)), $q0@24@01)) | live]
; [else-branch: 2 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 5)), $q0@24@01) | live]
(push) ; 5
; [then-branch: 2 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 5)), $q0@24@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@24@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 5)), $q0@24@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@24@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@24@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@24@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@24@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@24@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@24@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@24@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@617@11@617@354-aux|)))
(assert (forall (($q0@24@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@24@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@24@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@24@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@617@11@617@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $q0@26@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@26@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $q0@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@618@11@618@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@28@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
(push) ; 4
; [then-branch: 3 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 6)), $q1@28@01)) | live]
; [else-branch: 3 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 6)), $q1@28@01) | live]
(push) ; 5
; [then-branch: 3 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 6)), $q1@28@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@28@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 6)), $q1@28@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@28@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@28@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@28@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@28@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@28@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@28@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@619@11@619@354-aux|)))
(assert (forall (($q1@28@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@28@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@28@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@619@11@619@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int))
(declare-const $t@29@01 $Snap)
(assert (= $t@29@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int))
(declare-const $q1@30@01 Int)
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
(assert (forall (($q1@30@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 6)) $q1@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@620@11@620@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@31@01 $Snap)
(assert (= $t@31@01 $Snap.unit))
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
; inhale 0 <= ($struct_get($struct_loc($self$2, 1)): Int) &&
;   ($struct_get($struct_loc($self$2, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@32@01 $Snap)
(assert (= $t@32@01 ($Snap.combine ($Snap.first $t@32@01) ($Snap.second $t@32@01))))
(assert (= ($Snap.first $t@32@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))
(assert (= ($Snap.second $t@32@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$2, 2)): Int) &&
;   ($struct_get($struct_loc($self$2, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@33@01 $Snap)
(assert (= $t@33@01 ($Snap.combine ($Snap.first $t@33@01) ($Snap.second $t@33@01))))
(assert (= ($Snap.first $t@33@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] $struct_loc($self$2, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 2))))
(assert (= ($Snap.second $t@33@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] $struct_loc($self$2, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$2, 3)): Int) &&
;   ($struct_get($struct_loc($self$2, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(assert (= ($Snap.first $t@34@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$2, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$2, 3)): Int)
; [eval] $struct_loc($self$2, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 3))))
(assert (= ($Snap.second $t@34@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$2, 3)): Int)
; [eval] $struct_loc($self$2, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 3))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@36@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 5)
(push) ; 4
; [then-branch: 4 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 5)), $q0@36@01)) | live]
; [else-branch: 4 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 5)), $q0@36@01) | live]
(push) ; 5
; [then-branch: 4 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 5)), $q0@36@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@36@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 5)), $q0@36@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@36@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@36@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@36@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@36@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@36@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@36@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@625@11@625@354-aux|)))
(assert (forall (($q0@36@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@36@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@36@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@625@11@625@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int))
(declare-const $t@37@01 $Snap)
(assert (= $t@37@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int))
(declare-const $q0@38@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 5)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@38@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@38@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $q0@38@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@626@11@626@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@40@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 6)
(push) ; 4
; [then-branch: 5 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 6)), $q1@40@01)) | live]
; [else-branch: 5 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 6)), $q1@40@01) | live]
(push) ; 5
; [then-branch: 5 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 6)), $q1@40@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@40@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 6)), $q1@40@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@40@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 6)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@40@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@40@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@40@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@40@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@40@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@627@11@627@354-aux|)))
(assert (forall (($q1@40@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@40@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@40@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@627@11@627@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])): Int))
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 6)): $Map[Int, Int])): Int))
(declare-const $q1@42@01 Int)
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
(assert (forall (($q1@42@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@42@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 6)) $q1@42@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@628@11@628@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$2, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@43@01 $Snap)
(assert (= $t@43@01 $Snap.unit))
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
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 ($Snap.combine ($Snap.first $t@44@01) ($Snap.second $t@44@01))))
(assert (= ($Snap.first $t@44@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 0))))
(assert (= ($Snap.second $t@44@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@6@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@45@01 $Snap)
(assert (= $t@45@01 ($Snap.combine ($Snap.first $t@45@01) ($Snap.second $t@45@01))))
(assert (= ($Snap.first $t@45@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 1))))
(assert (= ($Snap.second $t@45@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@6@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@46@01 $Snap)
(assert (= $t@46@01 ($Snap.combine ($Snap.first $t@46@01) ($Snap.second $t@46@01))))
(assert (= ($Snap.first $t@46@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 2))))
(assert (= ($Snap.second $t@46@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@6@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@47@01 $Snap)
(assert (= $t@47@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@6@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@48@01 $Snap)
(assert (= $t@48@01 ($Snap.combine ($Snap.first $t@48@01) ($Snap.second $t@48@01))))
(assert (= ($Snap.first $t@48@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 4))))
(assert (= ($Snap.second $t@48@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@6@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@49@01 $Snap)
(assert (= $t@49@01 $Snap.unit))
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
;     { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@50@01 $Snap)
(assert (= $t@50@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@51@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$0, 0)): Bool)
(declare-const $t@52@01 $Snap)
(assert (= $t@52@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool) ==> ($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] $struct_loc($self$0, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)) | live]
; [else-branch: 6 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 6 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] $struct_loc($self$0, 0)
(pop) ; 4
(push) ; 4
; [else-branch: 6 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc($self$0, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$0, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc($self$0, 1)): Int)))
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 $Snap.unit))
; [eval] !($struct_get($struct_loc($self$0, 0)): Bool) ==> ($struct_get($struct_loc($self$0, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc($self$0, 1)): Int)))
; [eval] !($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] $struct_loc($self$0, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))) | live]
; [else-branch: 7 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 7 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
; [eval] ($struct_get($struct_loc($self$0, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc($self$0, 1)): Int)))
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc($self$0, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc($self$0, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc($self$0, 1)): Int))
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 7 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))))
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$0, 2)): Int) >=
;   ($struct_get($struct_loc($self$0, 2)): Int)
(declare-const $t@54@01 $Snap)
(assert (= $t@54@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool) ==> ($struct_get($struct_loc($self$0, 2)): Int) >= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] $struct_loc($self$0, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)) | live]
; [else-branch: 8 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 8 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))
; [eval] ($struct_get($struct_loc($self$0, 2)): Int) >= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(pop) ; 4
(push) ; 4
; [else-branch: 8 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc($self$0, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int) ==
;   0
(declare-const $t@55@01 $Snap)
(assert (= $t@55@01 $Snap.unit))
; [eval] !($struct_get($struct_loc($self$0, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] $struct_loc($self$0, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))) | live]
; [else-branch: 9 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 9 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int) == 0
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(pop) ; 4
(push) ; 4
; [else-branch: 9 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)))
    0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc($self$0, 1)): Int)
(declare-const $t@56@01 $Snap)
(assert (= $t@56@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] $struct_loc($self$0, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)) | live]
; [else-branch: 10 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 10 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 10 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)))
    ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@57@01 $Snap)
(assert (= $t@57@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@58@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@58@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $a@58@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 5)) $a@58@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $a@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@642@11@642@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 0)): Bool)
(declare-const $t@59@01 $Snap)
(assert (= $t@59@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool) ==> ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] $struct_loc($self$0, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)) | live]
; [else-branch: 11 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 11 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(pop) ; 4
(push) ; 4
; [else-branch: 11 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc($self$1, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 $Snap.unit))
; [eval] !($struct_get($struct_loc($self$1, 0)): Bool) ==> ($struct_get($struct_loc($self$1, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] !($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0))) | live]
; [else-branch: 12 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 12 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc($self$1, 1)): Int))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 12 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0)))))
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 2)): Int) >=
;   ($struct_get($struct_loc($self$0, 2)): Int)
(declare-const $t@61@01 $Snap)
(assert (= $t@61@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool) ==> ($struct_get($struct_loc($self$1, 2)): Int) >= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] $struct_loc($self$0, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)) | live]
; [else-branch: 13 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 13 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) >= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(pop) ; 4
(push) ; 4
; [else-branch: 13 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))
  (>=
    ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 2))
    ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 2)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc($self$1, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) ==
;   0
(declare-const $t@62@01 $Snap)
(assert (= $t@62@01 $Snap.unit))
; [eval] !($struct_get($struct_loc($self$1, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0))) | live]
; [else-branch: 14 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 14 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))))
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) == 0
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(pop) ; 4
(push) ; 4
; [else-branch: 14 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)))
    0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc($self$1, 1)): Int)
(declare-const $t@63@01 $Snap)
(assert (= $t@63@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0)) | live]
; [else-branch: 15 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 15 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0)))
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 15 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0)))
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))))
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)))
    ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@64@01 $Snap)
(assert (= $t@64@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@65@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 5)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@65@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $a@65@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 5)) $a@65@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)) $a@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@648@11@648@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$2, 0)): Bool)
(declare-const $t@66@01 $Snap)
(assert (= $t@66@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool) ==> ($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0)) | live]
; [else-branch: 16 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 16 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0)))
; [eval] ($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] $struct_loc($self$2, 0)
(pop) ; 4
(push) ; 4
; [else-branch: 16 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc($self$2, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$2, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc($self$2, 1)): Int)))
(declare-const $t@67@01 $Snap)
(assert (= $t@67@01 $Snap.unit))
; [eval] !($struct_get($struct_loc($self$2, 0)): Bool) ==> ($struct_get($struct_loc($self$2, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc($self$2, 1)): Int)))
; [eval] !($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] $struct_loc($self$2, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0))) | live]
; [else-branch: 17 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 17 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
; [eval] ($struct_get($struct_loc($self$2, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc($self$2, 1)): Int)))
; [eval] ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] $struct_loc($self$2, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc($self$2, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc($self$2, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc($self$2, 1)): Int))
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 17 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))))
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$2, 2)): Int) >=
;   ($struct_get($struct_loc($self$1, 2)): Int)
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool) ==> ($struct_get($struct_loc($self$2, 2)): Int) >= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0)) | live]
; [else-branch: 18 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 18 | $struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0)))
; [eval] ($struct_get($struct_loc($self$2, 2)): Int) >= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] $struct_loc($self$2, 2)
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(pop) ; 4
(push) ; 4
; [else-branch: 18 | !($struct_get[Bool]($struct_loc[Int]($self$1@2@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@2@01 0))
  (>=
    ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 2))
    ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 2)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc($self$2, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int) ==
;   0
(declare-const $t@69@01 $Snap)
(assert (= $t@69@01 $Snap.unit))
; [eval] !($struct_get($struct_loc($self$2, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] $struct_loc($self$2, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0))) | live]
; [else-branch: 19 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 19 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int) == 0
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 5)
(pop) ; 4
(push) ; 4
; [else-branch: 19 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)))
    0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$2, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc($self$2, 1)): Int)
(declare-const $t@70@01 $Snap)
(assert (= $t@70@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] ($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] $struct_loc($self$2, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0)) | live]
; [else-branch: 20 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 20 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 5)
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 20 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 5)))
    ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert ($struct_get($struct_loc($self$0, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool) ==> ($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] $struct_loc($self$0, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)) | live]
; [else-branch: 21 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 21 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))
; [eval] ($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] $struct_loc($self$2, 0)
(pop) ; 4
(push) ; 4
; [else-branch: 21 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))
  ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
; [exec]
; assert !($struct_get($struct_loc($self$2, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$2, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc($self$2, 1)): Int)))
; [eval] !($struct_get($struct_loc($self$2, 0)): Bool) ==> ($struct_get($struct_loc($self$2, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc($self$2, 1)): Int)))
; [eval] !($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] $struct_loc($self$2, 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0))) | live]
; [else-branch: 22 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 22 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
; [eval] ($struct_get($struct_loc($self$2, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc($self$2, 1)): Int)))
; [eval] ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] $struct_loc($self$2, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc($self$2, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc($self$2, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc($self$2, 1)): Int))
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 22 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc($self$0, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$2, 2)): Int) >=
;   ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool) ==> ($struct_get($struct_loc($self$2, 2)): Int) >= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] $struct_loc($self$0, 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)) | live]
; [else-branch: 23 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 23 | $struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0)))
; [eval] ($struct_get($struct_loc($self$2, 2)): Int) >= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] $struct_loc($self$2, 2)
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(pop) ; 4
(push) ; 4
; [else-branch: 23 | !($struct_get[Bool]($struct_loc[Int]($self$0@0@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))
  (>=
    ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 2))
    ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 2))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$0@0@01 0))
  (>=
    ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 2))
    ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 2)))))
; [exec]
; assert !($struct_get($struct_loc($self$2, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int) ==
;   0
; [eval] !($struct_get($struct_loc($self$2, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] $struct_loc($self$2, 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0))) | live]
; [else-branch: 24 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 24 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int) == 0
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 5)
(pop) ; 4
(push) ; 4
; [else-branch: 24 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc($self$2, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] ($struct_get($struct_loc($self$2, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] ($struct_get($struct_loc($self$2, 0)): Bool)
; [eval] $struct_loc($self$2, 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0)) | live]
; [else-branch: 25 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 25 | $struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0)))
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 5)
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 25 | !($struct_get[Bool]($struct_loc[Int]($self$2@4@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$2@4@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(pop) ; 2
(pop) ; 1
; ---------- $reflexivity_check ----------
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
(declare-const $self$0@71@01 $Struct)
; [exec]
; var $$contracts$0: $Map[Int, $Struct]
(declare-const $$contracts$0@72@01 $Map<Int~_$Struct>)
; [exec]
; var $self$1: $Struct
(declare-const $self$1@73@01 $Struct)
; [exec]
; var $$contracts$1: $Map[Int, $Struct]
(declare-const $$contracts$1@74@01 $Map<Int~_$Struct>)
; [exec]
; var block: $Struct
(declare-const block@75@01 $Struct)
; [exec]
; var $post: Bool
(declare-const $post@76@01 Bool)
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 1)): Int) &&
;   ($struct_get($struct_loc($self$0, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@77@01 $Snap)
(assert (= $t@77@01 ($Snap.combine ($Snap.first $t@77@01) ($Snap.second $t@77@01))))
(assert (= ($Snap.first $t@77@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@71@01 1))))
(assert (= ($Snap.second $t@77@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@71@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 2)): Int) &&
;   ($struct_get($struct_loc($self$0, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@78@01 $Snap)
(assert (= $t@78@01 ($Snap.combine ($Snap.first $t@78@01) ($Snap.second $t@78@01))))
(assert (= ($Snap.first $t@78@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@71@01 2))))
(assert (= ($Snap.second $t@78@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@71@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 3)): Int) &&
;   ($struct_get($struct_loc($self$0, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@79@01 $Snap)
(assert (= $t@79@01 ($Snap.combine ($Snap.first $t@79@01) ($Snap.second $t@79@01))))
(assert (= ($Snap.first $t@79@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@71@01 3))))
(assert (= ($Snap.second $t@79@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@71@01 3))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@81@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(push) ; 4
; [then-branch: 26 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@71@01, 5)), $q0@81@01)) | live]
; [else-branch: 26 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@71@01, 5)), $q0@81@01) | live]
(push) ; 5
; [then-branch: 26 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@71@01, 5)), $q0@81@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 5)) $q0@81@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 26 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@71@01, 5)), $q0@81@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 5)) $q0@81@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 5)) $q0@81@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 5)) $q0@81@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@81@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 5)) $q0@81@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 5)) $q0@81@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 5)) $q0@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@672@11@672@354-aux|)))
(assert (forall (($q0@81@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 5)) $q0@81@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 5)) $q0@81@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 5)) $q0@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@672@11@672@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $t@82@01 $Snap)
(assert (= $t@82@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int))
(declare-const $q0@83@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@83@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 5)) $q0@83@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 5)) $q0@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@673@11@673@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@84@01 $Snap)
(assert (= $t@84@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@85@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
(push) ; 4
; [then-branch: 27 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@71@01, 6)), $q1@85@01)) | live]
; [else-branch: 27 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@71@01, 6)), $q1@85@01) | live]
(push) ; 5
; [then-branch: 27 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@71@01, 6)), $q1@85@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 6)) $q1@85@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 27 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@71@01, 6)), $q1@85@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 6)) $q1@85@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 6)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 6)) $q1@85@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 6)) $q1@85@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@85@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 6)) $q1@85@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 6)) $q1@85@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 6)) $q1@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@674@11@674@354-aux|)))
(assert (forall (($q1@85@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 6)) $q1@85@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 6)) $q1@85@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 6)) $q1@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@674@11@674@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int))
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 6)): $Map[Int, Int])): Int))
(declare-const $q1@87@01 Int)
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
(assert (forall (($q1@87@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 6)) $q1@87@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 6)) $q1@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@675@11@675@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@88@01 $Snap)
(assert (= $t@88@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$0, -1)): Int)
; [eval] $struct_loc($self$0, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$0@71@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 1)): Int) &&
;   ($struct_get($struct_loc($self$1, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 ($Snap.combine ($Snap.first $t@89@01) ($Snap.second $t@89@01))))
(assert (= ($Snap.first $t@89@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@73@01 1))))
(assert (= ($Snap.second $t@89@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@73@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 2)): Int) &&
;   ($struct_get($struct_loc($self$1, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@90@01 $Snap)
(assert (= $t@90@01 ($Snap.combine ($Snap.first $t@90@01) ($Snap.second $t@90@01))))
(assert (= ($Snap.first $t@90@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@73@01 2))))
(assert (= ($Snap.second $t@90@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@73@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 3)): Int) &&
;   ($struct_get($struct_loc($self$1, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@91@01 $Snap)
(assert (= $t@91@01 ($Snap.combine ($Snap.first $t@91@01) ($Snap.second $t@91@01))))
(assert (= ($Snap.first $t@91@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@73@01 3))))
(assert (= ($Snap.second $t@91@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@73@01 3))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@92@01 $Snap)
(assert (= $t@92@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@93@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(push) ; 4
; [then-branch: 28 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@73@01, 5)), $q0@93@01)) | live]
; [else-branch: 28 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@73@01, 5)), $q0@93@01) | live]
(push) ; 5
; [then-branch: 28 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@73@01, 5)), $q0@93@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)) $q0@93@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 28 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@73@01, 5)), $q0@93@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)) $q0@93@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)) $q0@93@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)) $q0@93@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@93@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)) $q0@93@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)) $q0@93@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)) $q0@93@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@680@11@680@354-aux|)))
(assert (forall (($q0@93@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)) $q0@93@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)) $q0@93@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)) $q0@93@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@680@11@680@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $t@94@01 $Snap)
(assert (= $t@94@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int))
(declare-const $q0@95@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@95@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)) $q0@95@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)) $q0@95@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@681@11@681@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@96@01 $Snap)
(assert (= $t@96@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@97@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
(push) ; 4
; [then-branch: 29 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@73@01, 6)), $q1@97@01)) | live]
; [else-branch: 29 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@73@01, 6)), $q1@97@01) | live]
(push) ; 5
; [then-branch: 29 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@73@01, 6)), $q1@97@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 6)) $q1@97@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 29 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@73@01, 6)), $q1@97@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 6)) $q1@97@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 6)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 6)) $q1@97@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 6)) $q1@97@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@97@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 6)) $q1@97@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 6)) $q1@97@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 6)) $q1@97@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@682@11@682@354-aux|)))
(assert (forall (($q1@97@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 6)) $q1@97@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 6)) $q1@97@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 6)) $q1@97@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@682@11@682@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int))
(declare-const $t@98@01 $Snap)
(assert (= $t@98@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 6)): $Map[Int, Int])): Int))
(declare-const $q1@99@01 Int)
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
(assert (forall (($q1@99@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 6)) $q1@99@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 6)) $q1@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@683@11@683@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@100@01 $Snap)
(assert (= $t@100@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$1, -1)): Int)
; [eval] $struct_loc($self$1, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$1@73@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@101@01 $Snap)
(assert (= $t@101@01 ($Snap.combine ($Snap.first $t@101@01) ($Snap.second $t@101@01))))
(assert (= ($Snap.first $t@101@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@75@01 0))))
(assert (= ($Snap.second $t@101@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@75@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@102@01 $Snap)
(assert (= $t@102@01 ($Snap.combine ($Snap.first $t@102@01) ($Snap.second $t@102@01))))
(assert (= ($Snap.first $t@102@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@75@01 1))))
(assert (= ($Snap.second $t@102@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@75@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@103@01 $Snap)
(assert (= $t@103@01 ($Snap.combine ($Snap.first $t@103@01) ($Snap.second $t@103@01))))
(assert (= ($Snap.first $t@103@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@75@01 2))))
(assert (= ($Snap.second $t@103@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@75@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@104@01 $Snap)
(assert (= $t@104@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@75@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 ($Snap.combine ($Snap.first $t@105@01) ($Snap.second $t@105@01))))
(assert (= ($Snap.first $t@105@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@75@01 4))))
(assert (= ($Snap.second $t@105@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@75@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@106@01 $Snap)
(assert (= $t@106@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@75@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@108@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@108@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)) $a@108@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@71@01 5)) $a@108@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)) $a@108@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@691@11@691@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 0)): Bool)
(declare-const $t@109@01 $Snap)
(assert (= $t@109@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool) ==> ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] $struct_loc($self$0, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$0@71@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@71@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | $struct_get[Bool]($struct_loc[Int]($self$0@71@01, 0)) | live]
; [else-branch: 30 | !($struct_get[Bool]($struct_loc[Int]($self$0@71@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 30 | $struct_get[Bool]($struct_loc[Int]($self$0@71@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@71@01 0)))
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(pop) ; 4
(push) ; 4
; [else-branch: 30 | !($struct_get[Bool]($struct_loc[Int]($self$0@71@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@71@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> $self$0@71@01 0)))
  ($struct_get<Bool> ($struct_loc<Int> $self$0@71@01 0))))
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$0@71@01 0))
  ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc($self$1, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
(declare-const $t@110@01 $Snap)
(assert (= $t@110@01 $Snap.unit))
; [eval] !($struct_get($struct_loc($self$1, 0)): Bool) ==> ($struct_get($struct_loc($self$1, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] !($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 31 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))) | live]
; [else-branch: 31 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 31 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc($self$1, 1)): Int))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 31 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))))
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> $self$1@73@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> $self$1@73@01 1))))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 2)): Int) >=
;   ($struct_get($struct_loc($self$0, 2)): Int)
(declare-const $t@111@01 $Snap)
(assert (= $t@111@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool) ==> ($struct_get($struct_loc($self$1, 2)): Int) >= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$0, 0)): Bool)
; [eval] $struct_loc($self$0, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$0@71@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@71@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 32 | $struct_get[Bool]($struct_loc[Int]($self$0@71@01, 0)) | live]
; [else-branch: 32 | !($struct_get[Bool]($struct_loc[Int]($self$0@71@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 32 | $struct_get[Bool]($struct_loc[Int]($self$0@71@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$0@71@01 0)))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) >= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(pop) ; 4
(push) ; 4
; [else-branch: 32 | !($struct_get[Bool]($struct_loc[Int]($self$0@71@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$0@71@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$0@71@01 0))
  (>=
    ($struct_get<Int> ($struct_loc<Int> $self$1@73@01 2))
    ($struct_get<Int> ($struct_loc<Int> $self$0@71@01 2)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc($self$1, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) ==
;   0
(declare-const $t@112@01 $Snap)
(assert (= $t@112@01 $Snap.unit))
; [eval] !($struct_get($struct_loc($self$1, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))) | live]
; [else-branch: 33 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 33 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) == 0
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(pop) ; 4
(push) ; 4
; [else-branch: 33 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)))
    0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc($self$1, 1)): Int)
(declare-const $t@113@01 $Snap)
(assert (= $t@113@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)) | live]
; [else-branch: 34 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 34 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 34 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))
  ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@73@01 5)))
    ($struct_get<Int> ($struct_loc<Int> $self$1@73@01 1)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert ($struct_get($struct_loc($self$1, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool) ==> ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)) | live]
; [else-branch: 35 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 35 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(pop) ; 4
(push) ; 4
; [else-branch: 35 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; [exec]
; assert !($struct_get($struct_loc($self$1, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] !($struct_get($struct_loc($self$1, 0)): Bool) ==> ($struct_get($struct_loc($self$1, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] !($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))) | live]
; [else-branch: 36 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 36 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc($self$1, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc($self$1, 1)): Int))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 36 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc($self$1, 0)): Bool) ==>
;   ($struct_get($struct_loc($self$1, 2)): Int) >=
;   ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool) ==> ($struct_get($struct_loc($self$1, 2)): Int) >= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)) | live]
; [else-branch: 37 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 37 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) >= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(pop) ; 4
(push) ; 4
; [else-branch: 37 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; [exec]
; assert !($struct_get($struct_loc($self$1, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) ==
;   0
; [eval] !($struct_get($struct_loc($self$1, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 38 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))) | live]
; [else-branch: 38 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 38 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) == 0
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
(pop) ; 4
(push) ; 4
; [else-branch: 38 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc($self$1, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Bool)
; [eval] $struct_loc($self$1, 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)) | live]
; [else-branch: 39 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 39 | $struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0)))
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 5)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 5)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 39 | !($struct_get[Bool]($struct_loc[Int]($self$1@73@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> $self$1@73@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(pop) ; 2
(pop) ; 1
; ---------- $forced_ether_check ----------
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
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@121@01 $Snap)
(assert (= $t@121@01 ($Snap.combine ($Snap.first $t@121@01) ($Snap.second $t@121@01))))
(assert (= ($Snap.first $t@121@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@114@01 1))))
(assert (= ($Snap.second $t@121@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@114@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@122@01 $Snap)
(assert (= $t@122@01 ($Snap.combine ($Snap.first $t@122@01) ($Snap.second $t@122@01))))
(assert (= ($Snap.first $t@122@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@114@01 2))))
(assert (= ($Snap.second $t@122@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@114@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@123@01 $Snap)
(assert (= $t@123@01 ($Snap.combine ($Snap.first $t@123@01) ($Snap.second $t@123@01))))
(assert (= ($Snap.first $t@123@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@114@01 3))))
(assert (= ($Snap.second $t@123@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@114@01 3))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@124@01 $Snap)
(assert (= $t@124@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@125@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 40 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@114@01, 5)), $q0@125@01)) | live]
; [else-branch: 40 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@114@01, 5)), $q0@125@01) | live]
(push) ; 5
; [then-branch: 40 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@114@01, 5)), $q0@125@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5)) $q0@125@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 40 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@114@01, 5)), $q0@125@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5)) $q0@125@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5)) $q0@125@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5)) $q0@125@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@125@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5)) $q0@125@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5)) $q0@125@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5)) $q0@125@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@716@11@716@345-aux|)))
(assert (forall (($q0@125@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5)) $q0@125@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5)) $q0@125@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5)) $q0@125@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@716@11@716@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@126@01 $Snap)
(assert (= $t@126@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@127@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@127@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5)) $q0@127@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5)) $q0@127@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@717@11@717@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@128@01 $Snap)
(assert (= $t@128@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@129@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 41 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@114@01, 6)), $q1@129@01)) | live]
; [else-branch: 41 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@114@01, 6)), $q1@129@01) | live]
(push) ; 5
; [then-branch: 41 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@114@01, 6)), $q1@129@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6)) $q1@129@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 41 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@114@01, 6)), $q1@129@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6)) $q1@129@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6)) $q1@129@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6)) $q1@129@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@129@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6)) $q1@129@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6)) $q1@129@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6)) $q1@129@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@718@11@718@345-aux|)))
(assert (forall (($q1@129@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6)) $q1@129@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6)) $q1@129@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 6)) $q1@129@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@718@11@718@345|)))
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
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@719@11@719@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@132@01 $Snap)
(assert (= $t@132@01 $Snap.unit))
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
; inhale 0 <= ($struct_get($struct_loc($pre_self, 1)): Int) &&
;   ($struct_get($struct_loc($pre_self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@133@01 $Snap)
(assert (= $t@133@01 ($Snap.combine ($Snap.first $t@133@01) ($Snap.second $t@133@01))))
(assert (= ($Snap.first $t@133@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@116@01 1))))
(assert (= ($Snap.second $t@133@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@116@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 2)): Int) &&
;   ($struct_get($struct_loc($pre_self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 ($Snap.combine ($Snap.first $t@134@01) ($Snap.second $t@134@01))))
(assert (= ($Snap.first $t@134@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@116@01 2))))
(assert (= ($Snap.second $t@134@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@116@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($pre_self, 3)): Int) &&
;   ($struct_get($struct_loc($pre_self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@135@01 $Snap)
(assert (= $t@135@01 ($Snap.combine ($Snap.first $t@135@01) ($Snap.second $t@135@01))))
(assert (= ($Snap.first $t@135@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($pre_self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($pre_self, 3)): Int)
; [eval] $struct_loc($pre_self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $pre_self@116@01 3))))
(assert (= ($Snap.second $t@135@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($pre_self, 3)): Int)
; [eval] $struct_loc($pre_self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@116@01 3))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@136@01 $Snap)
(assert (= $t@136@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@137@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 5)
(push) ; 4
; [then-branch: 42 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@116@01, 5)), $q0@137@01)) | live]
; [else-branch: 42 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@116@01, 5)), $q0@137@01) | live]
(push) ; 5
; [then-branch: 42 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@116@01, 5)), $q0@137@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 5)) $q0@137@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 42 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@116@01, 5)), $q0@137@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 5)) $q0@137@01)))
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 5)) $q0@137@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 5)) $q0@137@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@137@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 5)) $q0@137@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 5)) $q0@137@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 5)) $q0@137@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@724@11@724@360-aux|)))
(assert (forall (($q0@137@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 5)) $q0@137@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 5)) $q0@137@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 5)) $q0@137@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@724@11@724@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])): Int))
(declare-const $t@138@01 $Snap)
(assert (= $t@138@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@139@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 5)
; [eval] ($map_sum(($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($pre_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@139@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 5)) $q0@139@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 5)) $q0@139@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@725@11@725@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@140@01 $Snap)
(assert (= $t@140@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@141@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 6)
(push) ; 4
; [then-branch: 43 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@116@01, 6)), $q1@141@01)) | live]
; [else-branch: 43 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@116@01, 6)), $q1@141@01) | live]
(push) ; 5
; [then-branch: 43 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@116@01, 6)), $q1@141@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@141@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 43 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@116@01, 6)), $q1@141@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@141@01)))
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 6)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@141@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@141@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@141@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@141@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@141@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@726@11@726@360-aux|)))
(assert (forall (($q1@141@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@141@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@141@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@726@11@726@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])): Int))
(declare-const $t@142@01 $Snap)
(assert (= $t@142@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@143@01 Int)
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
(assert (forall (($q1@143@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@143@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@116@01 6)) $q1@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@727@11@727@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($pre_self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@144@01 $Snap)
(assert (= $t@144@01 $Snap.unit))
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
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@145@01 $Snap)
(assert (= $t@145@01 ($Snap.combine ($Snap.first $t@145@01) ($Snap.second $t@145@01))))
(assert (= ($Snap.first $t@145@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@120@01 0))))
(assert (= ($Snap.second $t@145@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@120@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@146@01 $Snap)
(assert (= $t@146@01 ($Snap.combine ($Snap.first $t@146@01) ($Snap.second $t@146@01))))
(assert (= ($Snap.first $t@146@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@120@01 1))))
(assert (= ($Snap.second $t@146@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@120@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@147@01 $Snap)
(assert (= $t@147@01 ($Snap.combine ($Snap.first $t@147@01) ($Snap.second $t@147@01))))
(assert (= ($Snap.first $t@147@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@120@01 2))))
(assert (= ($Snap.second $t@147@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@120@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@148@01 $Snap)
(assert (= $t@148@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@120@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@149@01 $Snap)
(assert (= $t@149@01 ($Snap.combine ($Snap.first $t@149@01) ($Snap.second $t@149@01))))
(assert (= ($Snap.first $t@149@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@120@01 4))))
(assert (= ($Snap.second $t@149@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@120@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@150@01 $Snap)
(assert (= $t@150@01 $Snap.unit))
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
(declare-const $t@151@01 $Snap)
(assert (= $t@151@01 $Snap.unit))
; [eval] $havoc >= 0
(assert (>= $havoc@119@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@152@01 $Snap)
(assert (= $t@152@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@153@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
(declare-const $t@154@01 $Snap)
(assert (= $t@154@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 44 | $struct_get[Bool]($struct_loc[Int](self@114@01, 0)) | live]
; [else-branch: 44 | !($struct_get[Bool]($struct_loc[Int](self@114@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 44 | $struct_get[Bool]($struct_loc[Int](self@114@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@114@01 0)))
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(pop) ; 4
(push) ; 4
; [else-branch: 44 | !($struct_get[Bool]($struct_loc[Int](self@114@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0)))
  ($struct_get<Bool> ($struct_loc<Int> self@114@01 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
(declare-const $t@155@01 $Snap)
(assert (= $t@155@01 $Snap.unit))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 45 | !($struct_get[Bool]($struct_loc[Int](self@114@01, 0))) | live]
; [else-branch: 45 | $struct_get[Bool]($struct_loc[Int](self@114@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 45 | !($struct_get[Bool]($struct_loc[Int](self@114@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0))))
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 45 | $struct_get[Bool]($struct_loc[Int](self@114@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@114@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@114@01 0))
  (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0)))))
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@114@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@114@01 1))))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc(self, 2)): Int)
(declare-const $t@156@01 $Snap)
(assert (= $t@156@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 46 | $struct_get[Bool]($struct_loc[Int](self@114@01, 0)) | live]
; [else-branch: 46 | !($struct_get[Bool]($struct_loc[Int](self@114@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 46 | $struct_get[Bool]($struct_loc[Int](self@114@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@114@01 0)))
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(pop) ; 4
(push) ; 4
; [else-branch: 46 | !($struct_get[Bool]($struct_loc[Int](self@114@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
(declare-const $t@157@01 $Snap)
(assert (= $t@157@01 $Snap.unit))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 47 | !($struct_get[Bool]($struct_loc[Int](self@114@01, 0))) | live]
; [else-branch: 47 | $struct_get[Bool]($struct_loc[Int](self@114@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 47 | !($struct_get[Bool]($struct_loc[Int](self@114@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0))))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 4
(push) ; 4
; [else-branch: 47 | $struct_get[Bool]($struct_loc[Int](self@114@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@114@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5)))
    0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
(declare-const $t@158@01 $Snap)
(assert (= $t@158@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 48 | $struct_get[Bool]($struct_loc[Int](self@114@01, 0)) | live]
; [else-branch: 48 | !($struct_get[Bool]($struct_loc[Int](self@114@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 48 | $struct_get[Bool]($struct_loc[Int](self@114@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@114@01 0)))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 48 | !($struct_get[Bool]($struct_loc[Int](self@114@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@114@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@114@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@114@01 5)))
    ($struct_get<Int> ($struct_loc<Int> self@114@01 1)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; $pre_self := self
; [exec]
; $pre_$contracts := $contracts
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   $havoc): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + $havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + $havoc
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@159@01 $Struct)
(assert (=
  self@159@01
  ($struct_set<$Struct> self@114@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@114@01 2))
    $havoc@119@01))))
(pop) ; 2
(pop) ; 1
; ---------- f$__init__ ----------
(declare-const $succ@160@01 Bool)
(declare-const $succ@161@01 Bool)
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
(declare-const msg@162@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@163@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@164@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@165@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@166@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@167@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@168@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@169@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@170@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@171@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@172@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@173@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@174@01 Bool)
; [exec]
; var $first_public_state: Bool
(declare-const $first_public_state@175@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@176@01 Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@177@01 Bool)
; [exec]
; var l$havoc$1: Int
(declare-const l$havoc$1@178@01 Int)
; [exec]
; var l$havoc$2: $Map[Int, $Struct]
(declare-const l$havoc$2@179@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@180@01 $Snap)
(assert (= $t@180@01 ($Snap.combine ($Snap.first $t@180@01) ($Snap.second $t@180@01))))
(assert (= ($Snap.first $t@180@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@166@01 1))))
(assert (= ($Snap.second $t@180@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@166@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@181@01 $Snap)
(assert (= $t@181@01 ($Snap.combine ($Snap.first $t@181@01) ($Snap.second $t@181@01))))
(assert (= ($Snap.first $t@181@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@166@01 2))))
(assert (= ($Snap.second $t@181@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@166@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@182@01 $Snap)
(assert (= $t@182@01 ($Snap.combine ($Snap.first $t@182@01) ($Snap.second $t@182@01))))
(assert (= ($Snap.first $t@182@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@166@01 3))))
(assert (= ($Snap.second $t@182@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@166@01 3))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@183@01 $Snap)
(assert (= $t@183@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@184@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 49 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@166@01, 5)), $q0@184@01)) | live]
; [else-branch: 49 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@166@01, 5)), $q0@184@01) | live]
(push) ; 5
; [then-branch: 49 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@166@01, 5)), $q0@184@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 5)) $q0@184@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 49 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@166@01, 5)), $q0@184@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 5)) $q0@184@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 5)) $q0@184@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 5)) $q0@184@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@184@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 5)) $q0@184@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 5)) $q0@184@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 5)) $q0@184@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@772@11@772@345-aux|)))
(assert (forall (($q0@184@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 5)) $q0@184@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 5)) $q0@184@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 5)) $q0@184@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@772@11@772@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@185@01 $Snap)
(assert (= $t@185@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@186@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@186@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 5)) $q0@186@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 5)) $q0@186@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@773@11@773@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@187@01 $Snap)
(assert (= $t@187@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@188@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 50 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@166@01, 6)), $q1@188@01)) | live]
; [else-branch: 50 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@166@01, 6)), $q1@188@01) | live]
(push) ; 5
; [then-branch: 50 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@166@01, 6)), $q1@188@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 6)) $q1@188@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 50 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@166@01, 6)), $q1@188@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 6)) $q1@188@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 6)) $q1@188@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 6)) $q1@188@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@188@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 6)) $q1@188@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 6)) $q1@188@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 6)) $q1@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@774@11@774@345-aux|)))
(assert (forall (($q1@188@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 6)) $q1@188@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 6)) $q1@188@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 6)) $q1@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@774@11@774@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@189@01 $Snap)
(assert (= $t@189@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@190@01 Int)
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
(assert (forall (($q1@190@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 6)) $q1@190@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@166@01 6)) $q1@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@775@11@775@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@191@01 $Snap)
(assert (= $t@191@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@166@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@192@01 $Snap)
(assert (= $t@192@01 ($Snap.combine ($Snap.first $t@192@01) ($Snap.second $t@192@01))))
(assert (= ($Snap.first $t@192@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@192@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@193@01 $Snap)
(assert (= $t@193@01 ($Snap.combine ($Snap.first $t@193@01) ($Snap.second $t@193@01))))
(assert (= ($Snap.first $t@193@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@163@01 0))))
(assert (= ($Snap.second $t@193@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@163@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@194@01 $Snap)
(assert (= $t@194@01 ($Snap.combine ($Snap.first $t@194@01) ($Snap.second $t@194@01))))
(assert (= ($Snap.first $t@194@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@163@01 1))))
(assert (= ($Snap.second $t@194@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@163@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@195@01 $Snap)
(assert (= $t@195@01 ($Snap.combine ($Snap.first $t@195@01) ($Snap.second $t@195@01))))
(assert (= ($Snap.first $t@195@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@163@01 2))))
(assert (= ($Snap.second $t@195@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@163@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@196@01 $Snap)
(assert (= $t@196@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@163@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@197@01 $Snap)
(assert (= $t@197@01 ($Snap.combine ($Snap.first $t@197@01) ($Snap.second $t@197@01))))
(assert (= ($Snap.first $t@197@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@163@01 4))))
(assert (= ($Snap.second $t@197@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@163@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@198@01 $Snap)
(assert (= $t@198@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@163@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@199@01 $Snap)
(assert (= $t@199@01 ($Snap.combine ($Snap.first $t@199@01) ($Snap.second $t@199@01))))
(assert (= ($Snap.first $t@199@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@162@01 0))))
(assert (= ($Snap.second $t@199@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@162@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@200@01 $Snap)
(assert (= $t@200@01 ($Snap.combine ($Snap.first $t@200@01) ($Snap.second $t@200@01))))
(assert (= ($Snap.first $t@200@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
(assert (= ($Snap.second $t@200@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@201@01 $Snap)
(assert (= $t@201@01 ($Snap.combine ($Snap.first $t@201@01) ($Snap.second $t@201@01))))
(assert (= ($Snap.first $t@201@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@162@01 2))))
(assert (= ($Snap.second $t@201@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@162@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@202@01 $Snap)
(assert (= $t@202@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@162@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@203@01 $Snap)
(assert (= $t@203@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@162@01 0)) 0)))
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
; self := s$struct$self$init(false, 0, 0, 0, false, ($map_init(0): $Map[Int, Int]),
;   ($map_init(0): $Map[Int, Int]), false)
; [eval] s$struct$self$init(false, 0, 0, 0, false, ($map_init(0): $Map[Int, Int]), ($map_init(0): $Map[Int, Int]), false)
; [eval] ($map_init(0): $Map[Int, Int])
; [eval] ($map_init(0): $Map[Int, Int])
(declare-const self@204@01 $Struct)
(assert (=
  self@204@01
  (s$struct$self$init<$Struct> false 0 0 0 false ($map_init<$Map<Int~_Int>> 0) ($map_init<$Map<Int~_Int>> 0) false)))
; [exec]
; inhale l$havoc >= 0
(declare-const $t@205@01 $Snap)
(assert (= $t@205@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@176@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@206@01 $Struct)
(assert (=
  self@206@01
  ($struct_set<$Struct> self@204@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@204@01 2))
    l$havoc@176@01))))
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   ($struct_get($struct_loc(msg, 1)): Int)): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + ($struct_get($struct_loc(msg, 1)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(declare-const self@207@01 $Struct)
(assert (=
  self@207@01
  ($struct_set<$Struct> self@206@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@206@01 2))
    ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))))
; [exec]
; self := ($struct_set(self, 6, ($map_set(($struct_get($struct_loc(self, 6)): $Map[Int, Int]),
;   ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self,
;   6)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) +
;   ($struct_get($struct_loc(msg, 1)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 6, ($map_set(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(msg, 1)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(msg, 1)): Int)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(declare-const self@208@01 $Struct)
(assert (=
  self@208@01
  ($struct_set<$Struct> self@207@01 6 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@207@01 6)) ($struct_get<Int> ($struct_loc<Int> msg@162@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@207@01 6)) ($struct_get<Int> ($struct_loc<Int> msg@162@01 0)))
    ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))))))
; [eval] 2 == 0
; [then-branch: 51 | False | dead]
; [else-branch: 51 | True | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 51 | True]
(pop) ; 3
; [eval] !(2 == 0)
; [eval] 2 == 0
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 52 | True | live]
; [else-branch: 52 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 52 | True]
; [eval] $mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2) < 0
; [eval] $mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (<
    ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 53 | $mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) < 0 | dead]
; [else-branch: 53 | !($mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) < 0) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 53 | !($mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) < 0)]
(assert (not
  (<
    ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    0)))
(pop) ; 4
; [eval] !($mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2) < 0)
; [eval] $mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2) < 0
; [eval] $mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
    2))
  0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (<
    ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 54 | !($mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) < 0) | live]
; [else-branch: 54 | $mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) < 0 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 54 | !($mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) < 0)]
(assert (not
  (<
    ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    0)))
; [eval] $mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (>
    ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | $mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935 | dead]
; [else-branch: 55 | !($mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 55 | !($mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (>
    ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(pop) ; 5
; [eval] !($mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935)
; [eval] $mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(push) ; 5
(set-option :timeout 10)
(assert (not (>
  ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
    2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (>
    ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 56 | !($mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
; [else-branch: 56 | $mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 56 | !($mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (>
    ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
; [eval] !($mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2) == 0)
; [eval] $mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2) == 0
; [eval] $mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
    2))
  0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (=
    ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | $mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) != 0 | live]
; [else-branch: 57 | $mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) == 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 57 | $mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) != 0]
(assert (not
  (=
    ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    0)))
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
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 58 | True | live]
; [else-branch: 58 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 58 | True]
; [exec]
; $old_self := self
; [eval] !$succ
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 59 | True | live]
; [else-branch: 59 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 59 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@209@01 $Snap)
(assert (= $t@209@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@178@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@210@01 $Struct)
(assert (=
  self@210@01
  ($struct_set<$Struct> self@166@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@166@01 2))
    l$havoc$1@178@01))))
; [exec]
; $contracts := l$havoc$2
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 60 | True | live]
; [else-branch: 60 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 60 | True]
; [exec]
; $old_self := self
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $succ ==> ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
(push) ; 10
; [then-branch: 61 | False | dead]
; [else-branch: 61 | True | live]
(push) ; 11
; [else-branch: 61 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; [exec]
; assert $succ ==>
;   !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $succ ==> !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
(push) ; 10
; [then-branch: 62 | False | dead]
; [else-branch: 62 | True | live]
(push) ; 11
; [else-branch: 62 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] $succ ==> ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
(push) ; 10
; [then-branch: 63 | False | dead]
; [else-branch: 63 | True | live]
(push) ; 11
; [else-branch: 63 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; [exec]
; assert $succ ==>
;   !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] $succ ==> !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
(push) ; 10
; [then-branch: 64 | False | dead]
; [else-branch: 64 | True | live]
(push) ; 11
; [else-branch: 64 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] $succ ==> ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
(push) ; 10
; [then-branch: 65 | False | dead]
; [else-branch: 65 | True | live]
(push) ; 11
; [else-branch: 65 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
(pop) ; 9
; [eval] !$first_public_state
; [then-branch: 66 | False | dead]
; [else-branch: 66 | True | live]
(push) ; 9
; [else-branch: 66 | True]
(pop) ; 9
(pop) ; 8
; [then-branch: 67 | False | dead]
; [else-branch: 67 | True | live]
(push) ; 8
; [else-branch: 67 | True]
(pop) ; 8
(pop) ; 7
; [eval] !$first_public_state
; [then-branch: 68 | False | dead]
; [else-branch: 68 | True | live]
(push) ; 7
; [else-branch: 68 | True]
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 57 | $mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) == 0]
(assert (=
  ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
    2))
  0))
(pop) ; 6
; [eval] !!($mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2) == 0)
; [eval] !($mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2) == 0)
; [eval] $mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2) == 0
; [eval] $mod($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) % 2
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (=
    ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
    2))
  0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 69 | $mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) == 0 | live]
; [else-branch: 69 | $mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) != 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 69 | $mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) == 0]
(assert (=
  ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
    2))
  0))
; [exec]
; self := ($struct_set(self, 0, false): $Struct)
; [eval] ($struct_set(self, 0, false): $Struct)
(declare-const self@211@01 $Struct)
(assert (= self@211@01 ($struct_set<$Struct> self@208@01 0 false)))
; [eval] 2 == 0
; [then-branch: 70 | False | dead]
; [else-branch: 70 | True | live]
(push) ; 7
; [else-branch: 70 | True]
(pop) ; 7
; [eval] !(2 == 0)
; [eval] 2 == 0
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 71 | True | live]
; [else-branch: 71 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 71 | True]
; [eval] $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2) < 0
; [eval] $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (<
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 72 | $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) / 2) < 0 | dead]
; [else-branch: 72 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) / 2) < 0) | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 72 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) / 2) < 0)]
(assert (not
  (<
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    0)))
(pop) ; 8
; [eval] !($div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2) < 0)
; [eval] $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2) < 0
; [eval] $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(push) ; 8
(set-option :timeout 10)
(assert (not (<
  ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (div
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
    2))
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
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    0))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 73 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) / 2) < 0) | live]
; [else-branch: 73 | $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) / 2) < 0 | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 73 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) / 2) < 0)]
(assert (not
  (<
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    0)))
; [eval] $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (>
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 74 | $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935 | dead]
; [else-branch: 74 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 74 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (>
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(pop) ; 9
; [eval] !($div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935)
; [eval] $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(push) ; 9
(set-option :timeout 10)
(assert (not (>
  ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (div
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
    2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (>
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 75 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
; [else-branch: 75 | $div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935 | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 75 | !($div[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) / 2) > 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (>
    ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (div
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
; [exec]
; self := ($struct_set(self, 1, $unwrap($wrap($div($unwrap($wrap(($struct_get($struct_loc(msg,
;   1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \
;   2)))): $Struct)
; [eval] ($struct_set(self, 1, $unwrap($wrap($div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)))): $Struct)
; [eval] $unwrap($wrap($div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)))
; [eval] $wrap($div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2))
; [eval] $div($unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))), 2, $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int))) \ 2
; [eval] $unwrap($wrap(($struct_get($struct_loc(msg, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(msg, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(declare-const self@212@01 $Struct)
(assert (=
  self@212@01
  ($struct_set<$Struct> self@211@01 1 ($unwrap<Int> ($wrap<$Int> ($div<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (div
    ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
    2)))))))
; [exec]
; label return
(push) ; 10
(set-option :timeout 10)
(assert (not (not $out_of_gas@177@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not $out_of_gas@177@01))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 76 | $out_of_gas@177@01 | live]
; [else-branch: 76 | !($out_of_gas@177@01) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 76 | $out_of_gas@177@01]
(assert $out_of_gas@177@01)
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
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 77 | True | live]
; [else-branch: 77 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 77 | True]
; [exec]
; $old_self := self
; [eval] !$succ
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 78 | True | live]
; [else-branch: 78 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 78 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@213@01 $Snap)
(assert (= $t@213@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@178@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@214@01 $Struct)
(assert (=
  self@214@01
  ($struct_set<$Struct> self@166@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@166@01 2))
    l$havoc$1@178@01))))
; [exec]
; $contracts := l$havoc$2
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 79 | True | live]
; [else-branch: 79 | False | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 79 | True]
; [exec]
; $old_self := self
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $succ ==> ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
(push) ; 14
; [then-branch: 80 | False | dead]
; [else-branch: 80 | True | live]
(push) ; 15
; [else-branch: 80 | True]
(pop) ; 15
(pop) ; 14
; Joined path conditions
; [exec]
; assert $succ ==>
;   !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $succ ==> !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
(push) ; 14
; [then-branch: 81 | False | dead]
; [else-branch: 81 | True | live]
(push) ; 15
; [else-branch: 81 | True]
(pop) ; 15
(pop) ; 14
; Joined path conditions
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] $succ ==> ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
(push) ; 14
; [then-branch: 82 | False | dead]
; [else-branch: 82 | True | live]
(push) ; 15
; [else-branch: 82 | True]
(pop) ; 15
(pop) ; 14
; Joined path conditions
; [exec]
; assert $succ ==>
;   !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] $succ ==> !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
(push) ; 14
; [then-branch: 83 | False | dead]
; [else-branch: 83 | True | live]
(push) ; 15
; [else-branch: 83 | True]
(pop) ; 15
(pop) ; 14
; Joined path conditions
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] $succ ==> ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
(push) ; 14
; [then-branch: 84 | False | dead]
; [else-branch: 84 | True | live]
(push) ; 15
; [else-branch: 84 | True]
(pop) ; 15
(pop) ; 14
; Joined path conditions
(pop) ; 13
; [eval] !$first_public_state
; [then-branch: 85 | False | dead]
; [else-branch: 85 | True | live]
(push) ; 13
; [else-branch: 85 | True]
(pop) ; 13
(pop) ; 12
; [then-branch: 86 | False | dead]
; [else-branch: 86 | True | live]
(push) ; 12
; [else-branch: 86 | True]
(pop) ; 12
(pop) ; 11
; [eval] !$first_public_state
; [then-branch: 87 | False | dead]
; [else-branch: 87 | True | live]
(push) ; 11
; [else-branch: 87 | True]
(pop) ; 11
(pop) ; 10
(push) ; 10
; [else-branch: 76 | !($out_of_gas@177@01)]
(assert (not $out_of_gas@177@01))
(pop) ; 10
; [eval] !$out_of_gas
(push) ; 10
(set-option :timeout 10)
(assert (not $out_of_gas@177@01))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not $out_of_gas@177@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 88 | !($out_of_gas@177@01) | live]
; [else-branch: 88 | $out_of_gas@177@01 | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 88 | !($out_of_gas@177@01)]
(assert (not $out_of_gas@177@01))
; [exec]
; label end
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 89 | True | live]
; [else-branch: 89 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 89 | True]
; [exec]
; $old_self := self
; [eval] !$succ
; [then-branch: 90 | False | dead]
; [else-branch: 90 | True | live]
(push) ; 12
; [else-branch: 90 | True]
(pop) ; 12
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 91 | True | live]
; [else-branch: 91 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 91 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@215@01 $Snap)
(assert (= $t@215@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@178@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@216@01 $Struct)
(assert (=
  self@216@01
  ($struct_set<$Struct> self@212@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@212@01 2))
    l$havoc$1@178@01))))
; [exec]
; $contracts := l$havoc$2
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 92 | True | live]
; [else-branch: 92 | False | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 92 | True]
; [exec]
; $old_self := self
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $succ ==> ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 93 | True | live]
; [else-branch: 93 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 93 | True]
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@216@01 0)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 94 | $struct_get[Bool]($struct_loc[Int](self@216@01, 0)) | dead]
; [else-branch: 94 | !($struct_get[Bool]($struct_loc[Int](self@216@01, 0))) | live]
(set-option :timeout 0)
(push) ; 17
; [else-branch: 94 | !($struct_get[Bool]($struct_loc[Int](self@216@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@216@01 0))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@216@01 0))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@216@01 0))))
; [exec]
; assert $succ ==>
;   !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $succ ==> !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 95 | True | live]
; [else-branch: 95 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 95 | True]
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@216@01 0))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 96 | !($struct_get[Bool]($struct_loc[Int](self@216@01, 0))) | live]
; [else-branch: 96 | $struct_get[Bool]($struct_loc[Int](self@216@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 96 | !($struct_get[Bool]($struct_loc[Int](self@216@01, 0)))]
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@216@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@216@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@216@01 1)))))))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@216@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@216@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@216@01 1))))))))
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] $succ ==> ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 97 | True | live]
; [else-branch: 97 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 97 | True]
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(push) ; 16
; [then-branch: 98 | $struct_get[Bool]($struct_loc[Int](self@216@01, 0)) | dead]
; [else-branch: 98 | !($struct_get[Bool]($struct_loc[Int](self@216@01, 0))) | live]
(push) ; 17
; [else-branch: 98 | !($struct_get[Bool]($struct_loc[Int](self@216@01, 0)))]
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
; [exec]
; assert $succ ==>
;   !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] $succ ==> !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 99 | True | live]
; [else-branch: 99 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 99 | True]
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@216@01 0))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 100 | !($struct_get[Bool]($struct_loc[Int](self@216@01, 0))) | live]
; [else-branch: 100 | $struct_get[Bool]($struct_loc[Int](self@216@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 100 | !($struct_get[Bool]($struct_loc[Int](self@216@01, 0)))]
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@216@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@216@01 5)))
    0))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@216@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@216@01 5)))
    0)))
; [exec]
; assert $succ ==>
;   ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] $succ ==> ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 101 | True | live]
; [else-branch: 101 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 101 | True]
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 16
; [then-branch: 102 | $struct_get[Bool]($struct_loc[Int](self@216@01, 0)) | dead]
; [else-branch: 102 | !($struct_get[Bool]($struct_loc[Int](self@216@01, 0))) | live]
(push) ; 17
; [else-branch: 102 | !($struct_get[Bool]($struct_loc[Int](self@216@01, 0)))]
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(pop) ; 13
; [eval] !$first_public_state
; [then-branch: 103 | False | dead]
; [else-branch: 103 | True | live]
(push) ; 13
; [else-branch: 103 | True]
(pop) ; 13
(pop) ; 12
(pop) ; 11
; [eval] !$first_public_state
; [then-branch: 104 | False | dead]
; [else-branch: 104 | True | live]
(push) ; 11
; [else-branch: 104 | True]
(pop) ; 11
(pop) ; 10
(push) ; 10
; [else-branch: 88 | $out_of_gas@177@01]
(assert $out_of_gas@177@01)
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 69 | $mod[Int]($unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))), 2, $unwrap[Int]($wrap[$Int]($struct_get[Int]($struct_loc[Int](msg@162@01, 1)))) % 2) != 0]
(assert (not
  (=
    ($mod<Int> ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1)))) 2 (mod
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> msg@162@01 1))))
      2))
    0)))
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$claim_reward ----------
(declare-const $succ@217@01 Bool)
(declare-const $succ@218@01 Bool)
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
(declare-const msg@219@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@220@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@221@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@222@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@223@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@224@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@225@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@226@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@227@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@228@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@229@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@230@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@231@01 Bool)
; [exec]
; var l$gas: Int
(declare-const l$gas@232@01 Int)
; [exec]
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@233@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@234@01 Bool)
; [exec]
; var l$raw_ret: Seq[Int]
(declare-const l$raw_ret@235@01 Seq<Int>)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@236@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@237@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@238@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@239@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@240@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@241@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@242@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@243@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@244@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@245@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@246@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@247@01 $Snap)
(assert (= $t@247@01 ($Snap.combine ($Snap.first $t@247@01) ($Snap.second $t@247@01))))
(assert (= ($Snap.first $t@247@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@223@01 1))))
(assert (= ($Snap.second $t@247@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@223@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@248@01 $Snap)
(assert (= $t@248@01 ($Snap.combine ($Snap.first $t@248@01) ($Snap.second $t@248@01))))
(assert (= ($Snap.first $t@248@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@223@01 2))))
(assert (= ($Snap.second $t@248@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@223@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@249@01 $Snap)
(assert (= $t@249@01 ($Snap.combine ($Snap.first $t@249@01) ($Snap.second $t@249@01))))
(assert (= ($Snap.first $t@249@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@223@01 3))))
(assert (= ($Snap.second $t@249@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@223@01 3))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@250@01 $Snap)
(assert (= $t@250@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@251@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 105 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@223@01, 5)), $q0@251@01)) | live]
; [else-branch: 105 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@223@01, 5)), $q0@251@01) | live]
(push) ; 5
; [then-branch: 105 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@223@01, 5)), $q0@251@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5)) $q0@251@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 105 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@223@01, 5)), $q0@251@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5)) $q0@251@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5)) $q0@251@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5)) $q0@251@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@251@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5)) $q0@251@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5)) $q0@251@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5)) $q0@251@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@903@11@903@345-aux|)))
(assert (forall (($q0@251@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5)) $q0@251@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5)) $q0@251@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5)) $q0@251@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@903@11@903@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@252@01 $Snap)
(assert (= $t@252@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@253@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@253@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5)) $q0@253@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5)) $q0@253@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@904@11@904@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@254@01 $Snap)
(assert (= $t@254@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@255@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 106 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@223@01, 6)), $q1@255@01)) | live]
; [else-branch: 106 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@223@01, 6)), $q1@255@01) | live]
(push) ; 5
; [then-branch: 106 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@223@01, 6)), $q1@255@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 6)) $q1@255@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 106 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@223@01, 6)), $q1@255@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 6)) $q1@255@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 6)) $q1@255@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 6)) $q1@255@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@255@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 6)) $q1@255@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 6)) $q1@255@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 6)) $q1@255@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@905@11@905@345-aux|)))
(assert (forall (($q1@255@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 6)) $q1@255@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 6)) $q1@255@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 6)) $q1@255@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@905@11@905@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@256@01 $Snap)
(assert (= $t@256@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@257@01 Int)
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
(assert (forall (($q1@257@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 6)) $q1@257@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 6)) $q1@257@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@906@11@906@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@258@01 $Snap)
(assert (= $t@258@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@223@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@259@01 $Snap)
(assert (= $t@259@01 ($Snap.combine ($Snap.first $t@259@01) ($Snap.second $t@259@01))))
(assert (= ($Snap.first $t@259@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@259@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@260@01 $Snap)
(assert (= $t@260@01 ($Snap.combine ($Snap.first $t@260@01) ($Snap.second $t@260@01))))
(assert (= ($Snap.first $t@260@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@220@01 0))))
(assert (= ($Snap.second $t@260@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@220@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@261@01 $Snap)
(assert (= $t@261@01 ($Snap.combine ($Snap.first $t@261@01) ($Snap.second $t@261@01))))
(assert (= ($Snap.first $t@261@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@220@01 1))))
(assert (= ($Snap.second $t@261@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@220@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@262@01 $Snap)
(assert (= $t@262@01 ($Snap.combine ($Snap.first $t@262@01) ($Snap.second $t@262@01))))
(assert (= ($Snap.first $t@262@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@220@01 2))))
(assert (= ($Snap.second $t@262@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@220@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@263@01 $Snap)
(assert (= $t@263@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@220@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@264@01 $Snap)
(assert (= $t@264@01 ($Snap.combine ($Snap.first $t@264@01) ($Snap.second $t@264@01))))
(assert (= ($Snap.first $t@264@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@220@01 4))))
(assert (= ($Snap.second $t@264@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@220@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@265@01 $Snap)
(assert (= $t@265@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@220@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@266@01 $Snap)
(assert (= $t@266@01 ($Snap.combine ($Snap.first $t@266@01) ($Snap.second $t@266@01))))
(assert (= ($Snap.first $t@266@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@219@01 0))))
(assert (= ($Snap.second $t@266@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@219@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@267@01 $Snap)
(assert (= $t@267@01 ($Snap.combine ($Snap.first $t@267@01) ($Snap.second $t@267@01))))
(assert (= ($Snap.first $t@267@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@219@01 1))))
(assert (= ($Snap.second $t@267@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@219@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@268@01 $Snap)
(assert (= $t@268@01 ($Snap.combine ($Snap.first $t@268@01) ($Snap.second $t@268@01))))
(assert (= ($Snap.first $t@268@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@219@01 2))))
(assert (= ($Snap.second $t@268@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@219@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@269@01 $Snap)
(assert (= $t@269@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@219@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@270@01 $Snap)
(assert (= $t@270@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@219@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@271@01 $Snap)
(assert (= $t@271@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@272@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
(declare-const $t@273@01 $Snap)
(assert (= $t@273@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 107 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | live]
; [else-branch: 107 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 107 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(pop) ; 4
(push) ; 4
; [else-branch: 107 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))
  ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
(declare-const $t@274@01 $Snap)
(assert (= $t@274@01 $Snap.unit))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 108 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
; [else-branch: 108 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 108 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 108 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))
  (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))))
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@223@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@223@01 1))))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc(self, 2)): Int)
(declare-const $t@275@01 $Snap)
(assert (= $t@275@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 109 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | live]
; [else-branch: 109 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 109 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(pop) ; 4
(push) ; 4
; [else-branch: 109 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
(declare-const $t@276@01 $Snap)
(assert (= $t@276@01 $Snap.unit))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 110 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
; [else-branch: 110 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 110 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 4
(push) ; 4
; [else-branch: 110 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5)))
    0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
(declare-const $t@277@01 $Snap)
(assert (= $t@277@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 111 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | live]
; [else-branch: 111 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 111 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 111 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@223@01 5)))
    ($struct_get<Int> ($struct_loc<Int> self@223@01 1)))))
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
(declare-const $t@278@01 $Snap)
(assert (= $t@278@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@219@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 112 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
; [else-branch: 112 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 112 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
; [exec]
; self := ($struct_set(self, 0, true): $Struct)
; [eval] ($struct_set(self, 0, true): $Struct)
(declare-const self@279@01 $Struct)
(assert (= self@279@01 ($struct_set<$Struct> self@223@01 0 true)))
; [exec]
; inhale l$gas >= 0
(declare-const $t@280@01 $Snap)
(assert (= $t@280@01 $Snap.unit))
; [eval] l$gas >= 0
(assert (>= l$gas@232@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 2)): Int) < ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@279@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@279@01 1))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 113 | $struct_get[Int]($struct_loc[Int](self@279@01, 2)) < $struct_get[Int]($struct_loc[Int](self@279@01, 1)) | dead]
; [else-branch: 113 | !($struct_get[Int]($struct_loc[Int](self@279@01, 2)) < $struct_get[Int]($struct_loc[Int](self@279@01, 1))) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 113 | !($struct_get[Int]($struct_loc[Int](self@279@01, 2)) < $struct_get[Int]($struct_loc[Int](self@279@01, 1)))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@279@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@279@01 1)))))
(pop) ; 4
; [eval] !(($struct_get($struct_loc(self, 2)): Int) < ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 2)): Int) < ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@279@01 2))
  ($struct_get<Int> ($struct_loc<Int> self@279@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@279@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@279@01 1))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 114 | !($struct_get[Int]($struct_loc[Int](self@279@01, 2)) < $struct_get[Int]($struct_loc[Int](self@279@01, 1))) | live]
; [else-branch: 114 | $struct_get[Int]($struct_loc[Int](self@279@01, 2)) < $struct_get[Int]($struct_loc[Int](self@279@01, 1)) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 114 | !($struct_get[Int]($struct_loc[Int](self@279@01, 2)) < $struct_get[Int]($struct_loc[Int](self@279@01, 1)))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@279@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@279@01 1)))))
; [exec]
; self := ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]),
;   ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self,
;   5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 1)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 1)): Int)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@281@01 $Struct)
(assert (=
  self@281@01
  ($struct_set<$Struct> self@279@01 5 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@279@01 5)) ($struct_get<Int> ($struct_loc<Int> msg@219@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@279@01 5)) ($struct_get<Int> ($struct_loc<Int> msg@219@01 0)))
    ($struct_get<Int> ($struct_loc<Int> self@279@01 1)))))))
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) -
;   ($struct_get($struct_loc(self, 1)): Int)): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) - ($struct_get($struct_loc(self, 1)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) - ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@282@01 $Struct)
(assert (=
  self@282@01
  ($struct_set<$Struct> self@281@01 2 (-
    ($struct_get<Int> ($struct_loc<Int> self@281@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@281@01 1))))))
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(push) ; 5
; [then-branch: 115 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | dead]
; [else-branch: 115 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
(push) ; 6
; [else-branch: 115 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@282@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 116 | !($struct_get[Bool]($struct_loc[Int](self@282@01, 0))) | dead]
; [else-branch: 116 | $struct_get[Bool]($struct_loc[Int](self@282@01, 0)) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 116 | $struct_get[Bool]($struct_loc[Int](self@282@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@282@01 0)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert ($struct_get<Bool> ($struct_loc<Int> self@282@01 0)))
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(push) ; 5
; [then-branch: 117 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | dead]
; [else-branch: 117 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
(push) ; 6
; [else-branch: 117 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 5
; [then-branch: 118 | !($struct_get[Bool]($struct_loc[Int](self@282@01, 0))) | dead]
; [else-branch: 118 | $struct_get[Bool]($struct_loc[Int](self@282@01, 0)) | live]
(push) ; 6
; [else-branch: 118 | $struct_get[Bool]($struct_loc[Int](self@282@01, 0))]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@282@01 0)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 119 | $struct_get[Bool]($struct_loc[Int](self@282@01, 0)) | live]
; [else-branch: 119 | !($struct_get[Bool]($struct_loc[Int](self@282@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 119 | $struct_get[Bool]($struct_loc[Int](self@282@01, 0))]
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 6
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@282@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@282@01 5)))
    ($struct_get<Int> ($struct_loc<Int> self@282@01 1))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@282@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@282@01 5)))
    ($struct_get<Int> ($struct_loc<Int> self@282@01 1)))))
; [exec]
; inhale |l$raw_ret| <= 0
(declare-const $t@283@01 $Snap)
(assert (= $t@283@01 $Snap.unit))
; [eval] |l$raw_ret| <= 0
; [eval] |l$raw_ret|
(assert (<= (Seq_length l$raw_ret@235@01) 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not l$send_fail@234@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not l$send_fail@234@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 120 | l$send_fail@234@01 | live]
; [else-branch: 120 | !(l$send_fail@234@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 120 | l$send_fail@234@01]
(assert l$send_fail@234@01)
; [exec]
; inhale acc($failed(($struct_get($struct_loc(msg, 0)): Int)), write)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const $t@284@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
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
; [eval] !$succ
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 121 | True | live]
; [else-branch: 121 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 121 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@285@01 $Snap)
(assert (= $t@285@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@245@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@286@01 $Struct)
(assert (=
  self@286@01
  ($struct_set<$Struct> self@223@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@223@01 2))
    l$havoc$6@245@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(set-option :timeout 0)
(push) ; 7
; [then-branch: 122 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | dead]
; [else-branch: 122 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
(push) ; 8
; [else-branch: 122 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@286@01 0))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@286@01 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 123 | !($struct_get[Bool]($struct_loc[Int](self@286@01, 0))) | live]
; [else-branch: 123 | $struct_get[Bool]($struct_loc[Int](self@286@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 123 | !($struct_get[Bool]($struct_loc[Int](self@286@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@286@01 0))))
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@286@01 0))))
(push) ; 7
(assert (not (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@286@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@286@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@286@01 1)))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@286@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@286@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@286@01 1))))))))
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(push) ; 7
; [then-branch: 124 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | dead]
; [else-branch: 124 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
(push) ; 8
; [else-branch: 124 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@286@01 0))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 125 | !($struct_get[Bool]($struct_loc[Int](self@286@01, 0))) | live]
; [else-branch: 125 | $struct_get[Bool]($struct_loc[Int](self@286@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 125 | !($struct_get[Bool]($struct_loc[Int](self@286@01, 0)))]
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 8
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@286@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@286@01 5)))
    0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@286@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@286@01 5)))
    0)))
; [exec]
; assert ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 7
; [then-branch: 126 | $struct_get[Bool]($struct_loc[Int](self@286@01, 0)) | dead]
; [else-branch: 126 | !($struct_get[Bool]($struct_loc[Int](self@286@01, 0))) | live]
(push) ; 8
; [else-branch: 126 | !($struct_get[Bool]($struct_loc[Int](self@286@01, 0)))]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
; [then-branch: 127 | False | dead]
; [else-branch: 127 | True | live]
(push) ; 6
; [else-branch: 127 | True]
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 120 | !(l$send_fail@234@01)]
(assert (not l$send_fail@234@01))
(pop) ; 5
; [eval] !l$send_fail
(push) ; 5
(set-option :timeout 10)
(assert (not l$send_fail@234@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not l$send_fail@234@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 128 | !(l$send_fail@234@01) | live]
; [else-branch: 128 | l$send_fail@234@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 128 | !(l$send_fail@234@01)]
(assert (not l$send_fail@234@01))
; [exec]
; $contracts := $old_$contracts
; [exec]
; $old_self := self
; [exec]
; $old_$contracts := $contracts
; [exec]
; i0$$pre_self := self
; [exec]
; i0$$pre_$contracts := $contracts
; [exec]
; $contracts := l$havoc$1
; [exec]
; $old_$contracts := $contracts
; [exec]
; self := l$havoc$2
; [exec]
; $contracts := l$havoc$3
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@287@01 $Snap)
(assert (= $t@287@01 ($Snap.combine ($Snap.first $t@287@01) ($Snap.second $t@287@01))))
(assert (= ($Snap.first $t@287@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@239@01 1))))
(assert (= ($Snap.second $t@287@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@239@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@288@01 $Snap)
(assert (= $t@288@01 ($Snap.combine ($Snap.first $t@288@01) ($Snap.second $t@288@01))))
(assert (= ($Snap.first $t@288@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@239@01 2))))
(assert (= ($Snap.second $t@288@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@239@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@289@01 $Snap)
(assert (= $t@289@01 ($Snap.combine ($Snap.first $t@289@01) ($Snap.second $t@289@01))))
(assert (= ($Snap.first $t@289@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@239@01 3))))
(assert (= ($Snap.second $t@289@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@239@01 3))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@290@01 $Snap)
(assert (= $t@290@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@291@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 7
; [then-branch: 129 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@239@01, 5)), $q0@291@01)) | live]
; [else-branch: 129 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@239@01, 5)), $q0@291@01) | live]
(push) ; 8
; [then-branch: 129 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@239@01, 5)), $q0@291@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)) $q0@291@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 129 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@239@01, 5)), $q0@291@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)) $q0@291@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)) $q0@291@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)) $q0@291@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@291@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)) $q0@291@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)) $q0@291@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)) $q0@291@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@983@13@983@347-aux|)))
(assert (forall (($q0@291@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)) $q0@291@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)) $q0@291@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)) $q0@291@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@983@13@983@347|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@292@01 $Snap)
(assert (= $t@292@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@293@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@293@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)) $q0@293@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)) $q0@293@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@984@13@984@255|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@294@01 $Snap)
(assert (= $t@294@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@295@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 7
; [then-branch: 130 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@239@01, 6)), $q1@295@01)) | live]
; [else-branch: 130 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@239@01, 6)), $q1@295@01) | live]
(push) ; 8
; [then-branch: 130 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@239@01, 6)), $q1@295@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 6)) $q1@295@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 130 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@239@01, 6)), $q1@295@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 6)) $q1@295@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 6)) $q1@295@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 6)) $q1@295@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@295@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 6)) $q1@295@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 6)) $q1@295@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 6)) $q1@295@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@985@13@985@347-aux|)))
(assert (forall (($q1@295@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 6)) $q1@295@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 6)) $q1@295@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 6)) $q1@295@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@985@13@985@347|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@296@01 $Snap)
(assert (= $t@296@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@297@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
; [eval] ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@297@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 6)) $q1@297@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 6)) $q1@297@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@986@13@986@255|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@298@01 $Snap)
(assert (= $t@298@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@239@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@299@01 $Snap)
(assert (= $t@299@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@300@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 5)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 5)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@300@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)) $a@300@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@282@01 5)) $a@300@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)) $a@300@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@989@13@989@261|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
(declare-const $t@301@01 $Snap)
(assert (= $t@301@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@282@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 131 | $struct_get[Bool]($struct_loc[Int](self@282@01, 0)) | live]
; [else-branch: 131 | !($struct_get[Bool]($struct_loc[Int](self@282@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 131 | $struct_get[Bool]($struct_loc[Int](self@282@01, 0))]
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@282@01 0))
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@239@01 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
(declare-const $t@302@01 $Snap)
(assert (= $t@302@01 $Snap.unit))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@239@01 0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 132 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0))) | dead]
; [else-branch: 132 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0)) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 132 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@239@01 0)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@239@01 0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc($old_self, 2)): Int)
(declare-const $t@303@01 $Snap)
(assert (= $t@303@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@282@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 133 | $struct_get[Bool]($struct_loc[Int](self@282@01, 0)) | live]
; [else-branch: 133 | !($struct_get[Bool]($struct_loc[Int](self@282@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 133 | $struct_get[Bool]($struct_loc[Int](self@282@01, 0))]
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] $struct_loc($old_self, 2)
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@282@01 0))
  (>=
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@239@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@282@01 2)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
(declare-const $t@304@01 $Snap)
(assert (= $t@304@01 $Snap.unit))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 6
; [then-branch: 134 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0))) | dead]
; [else-branch: 134 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0)) | live]
(push) ; 7
; [else-branch: 134 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0))]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
(declare-const $t@305@01 $Snap)
(assert (= $t@305@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@239@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 135 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0)) | live]
; [else-branch: 135 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 135 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0))]
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@239@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@239@01 5)))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@239@01 1)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@241@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not l$no_reentrant_call@241@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 136 | l$no_reentrant_call@241@01 | live]
; [else-branch: 136 | !(l$no_reentrant_call@241@01) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 136 | l$no_reentrant_call@241@01]
(assert l$no_reentrant_call@241@01)
; [exec]
; self := $old_self
; [exec]
; $contracts := $old_$contracts
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc$4
; [exec]
; $old_$contracts := i0$$pre_$contracts
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc$5
; [exec]
; $old_$contracts := i0$$pre_$contracts
; [exec]
; $old_self := self
; [exec]
; $old_$contracts := $contracts
; [exec]
; label return
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@244@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@244@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 137 | $out_of_gas@244@01 | live]
; [else-branch: 137 | !($out_of_gas@244@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 137 | $out_of_gas@244@01]
(assert $out_of_gas@244@01)
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
; [eval] !$succ
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 138 | True | live]
; [else-branch: 138 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 138 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@306@01 $Snap)
(assert (= $t@306@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@245@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@307@01 $Struct)
(assert (=
  self@307@01
  ($struct_set<$Struct> self@223@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@223@01 2))
    l$havoc$6@245@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 139 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | dead]
; [else-branch: 139 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
(push) ; 10
; [else-branch: 139 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@307@01 0))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@307@01 0)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 140 | !($struct_get[Bool]($struct_loc[Int](self@307@01, 0))) | live]
; [else-branch: 140 | $struct_get[Bool]($struct_loc[Int](self@307@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 140 | !($struct_get[Bool]($struct_loc[Int](self@307@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@307@01 0))))
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@307@01 0))))
(push) ; 9
(assert (not (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@307@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@307@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@307@01 1)))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@307@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@307@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@307@01 1))))))))
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(push) ; 9
; [then-branch: 141 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | dead]
; [else-branch: 141 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
(push) ; 10
; [else-branch: 141 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@307@01 0))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 142 | !($struct_get[Bool]($struct_loc[Int](self@307@01, 0))) | live]
; [else-branch: 142 | $struct_get[Bool]($struct_loc[Int](self@307@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 142 | !($struct_get[Bool]($struct_loc[Int](self@307@01, 0)))]
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 10
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@307@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@307@01 5)))
    0))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@307@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@307@01 5)))
    0)))
; [exec]
; assert ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 9
; [then-branch: 143 | $struct_get[Bool]($struct_loc[Int](self@307@01, 0)) | dead]
; [else-branch: 143 | !($struct_get[Bool]($struct_loc[Int](self@307@01, 0))) | live]
(push) ; 10
; [else-branch: 143 | !($struct_get[Bool]($struct_loc[Int](self@307@01, 0)))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
; [then-branch: 144 | False | dead]
; [else-branch: 144 | True | live]
(push) ; 8
; [else-branch: 144 | True]
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 137 | !($out_of_gas@244@01)]
(assert (not $out_of_gas@244@01))
(pop) ; 7
; [eval] !$out_of_gas
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@244@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@244@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 145 | !($out_of_gas@244@01) | live]
; [else-branch: 145 | $out_of_gas@244@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 145 | !($out_of_gas@244@01)]
(assert (not $out_of_gas@244@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 146 | False | dead]
; [else-branch: 146 | True | live]
(push) ; 8
; [else-branch: 146 | True]
(pop) ; 8
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 147 | True | live]
; [else-branch: 147 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 147 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@308@01 $Snap)
(assert (= $t@308@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@245@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@309@01 $Struct)
(assert (=
  self@309@01
  ($struct_set<$Struct> self@282@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@282@01 2))
    l$havoc$6@245@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(set-option :timeout 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@282@01 0)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 148 | $struct_get[Bool]($struct_loc[Int](self@282@01, 0)) | live]
; [else-branch: 148 | !($struct_get[Bool]($struct_loc[Int](self@282@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 148 | $struct_get[Bool]($struct_loc[Int](self@282@01, 0))]
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(pop) ; 10
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@282@01 0))
  ($struct_get<Bool> ($struct_loc<Int> self@309@01 0)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@282@01 0))
  ($struct_get<Bool> ($struct_loc<Int> self@309@01 0))))
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@309@01 0))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 149 | !($struct_get[Bool]($struct_loc[Int](self@309@01, 0))) | dead]
; [else-branch: 149 | $struct_get[Bool]($struct_loc[Int](self@309@01, 0)) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 149 | $struct_get[Bool]($struct_loc[Int](self@309@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@309@01 0)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert ($struct_get<Bool> ($struct_loc<Int> self@309@01 0)))
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@282@01 0)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 150 | $struct_get[Bool]($struct_loc[Int](self@282@01, 0)) | live]
; [else-branch: 150 | !($struct_get[Bool]($struct_loc[Int](self@282@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 150 | $struct_get[Bool]($struct_loc[Int](self@282@01, 0))]
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] $struct_loc($old_self, 2)
(pop) ; 10
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@282@01 0))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@309@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@282@01 2))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@282@01 0))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@309@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@282@01 2)))))
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 9
; [then-branch: 151 | !($struct_get[Bool]($struct_loc[Int](self@309@01, 0))) | dead]
; [else-branch: 151 | $struct_get[Bool]($struct_loc[Int](self@309@01, 0)) | live]
(push) ; 10
; [else-branch: 151 | $struct_get[Bool]($struct_loc[Int](self@309@01, 0))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@309@01 0)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 152 | $struct_get[Bool]($struct_loc[Int](self@309@01, 0)) | live]
; [else-branch: 152 | !($struct_get[Bool]($struct_loc[Int](self@309@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 152 | $struct_get[Bool]($struct_loc[Int](self@309@01, 0))]
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 10
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@309@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@309@01 5)))
    ($struct_get<Int> ($struct_loc<Int> self@309@01 1))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@309@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@309@01 5)))
    ($struct_get<Int> ($struct_loc<Int> self@309@01 1)))))
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 145 | $out_of_gas@244@01]
(assert $out_of_gas@244@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 136 | !(l$no_reentrant_call@241@01)]
(assert (not l$no_reentrant_call@241@01))
(pop) ; 6
; [eval] !l$no_reentrant_call
(push) ; 6
(set-option :timeout 10)
(assert (not l$no_reentrant_call@241@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@241@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 153 | !(l$no_reentrant_call@241@01) | live]
; [else-branch: 153 | l$no_reentrant_call@241@01 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 153 | !(l$no_reentrant_call@241@01)]
(assert (not l$no_reentrant_call@241@01))
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc$4
; [exec]
; $old_$contracts := i0$$pre_$contracts
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc$5
; [exec]
; $old_$contracts := i0$$pre_$contracts
; [exec]
; $old_self := self
; [exec]
; $old_$contracts := $contracts
; [exec]
; label return
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@244@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@244@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 154 | $out_of_gas@244@01 | live]
; [else-branch: 154 | !($out_of_gas@244@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 154 | $out_of_gas@244@01]
(assert $out_of_gas@244@01)
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
; [eval] !$succ
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 155 | True | live]
; [else-branch: 155 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 155 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@310@01 $Snap)
(assert (= $t@310@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@245@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@311@01 $Struct)
(assert (=
  self@311@01
  ($struct_set<$Struct> self@223@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@223@01 2))
    l$havoc$6@245@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 156 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | dead]
; [else-branch: 156 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
(push) ; 10
; [else-branch: 156 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@311@01 0))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@311@01 0)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 157 | !($struct_get[Bool]($struct_loc[Int](self@311@01, 0))) | live]
; [else-branch: 157 | $struct_get[Bool]($struct_loc[Int](self@311@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 157 | !($struct_get[Bool]($struct_loc[Int](self@311@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@311@01 0))))
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@311@01 0))))
(push) ; 9
(assert (not (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@311@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@311@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@311@01 1)))))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@311@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@311@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@311@01 1))))))))
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(push) ; 9
; [then-branch: 158 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | dead]
; [else-branch: 158 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
(push) ; 10
; [else-branch: 158 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@311@01 0))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 159 | !($struct_get[Bool]($struct_loc[Int](self@311@01, 0))) | live]
; [else-branch: 159 | $struct_get[Bool]($struct_loc[Int](self@311@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 159 | !($struct_get[Bool]($struct_loc[Int](self@311@01, 0)))]
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 10
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@311@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@311@01 5)))
    0))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@311@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@311@01 5)))
    0)))
; [exec]
; assert ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 9
; [then-branch: 160 | $struct_get[Bool]($struct_loc[Int](self@311@01, 0)) | dead]
; [else-branch: 160 | !($struct_get[Bool]($struct_loc[Int](self@311@01, 0))) | live]
(push) ; 10
; [else-branch: 160 | !($struct_get[Bool]($struct_loc[Int](self@311@01, 0)))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
; [then-branch: 161 | False | dead]
; [else-branch: 161 | True | live]
(push) ; 8
; [else-branch: 161 | True]
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 154 | !($out_of_gas@244@01)]
(assert (not $out_of_gas@244@01))
(pop) ; 7
; [eval] !$out_of_gas
(push) ; 7
(set-option :timeout 10)
(assert (not $out_of_gas@244@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not $out_of_gas@244@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 162 | !($out_of_gas@244@01) | live]
; [else-branch: 162 | $out_of_gas@244@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 162 | !($out_of_gas@244@01)]
(assert (not $out_of_gas@244@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 163 | False | dead]
; [else-branch: 163 | True | live]
(push) ; 8
; [else-branch: 163 | True]
(pop) ; 8
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 164 | True | live]
; [else-branch: 164 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 164 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@312@01 $Snap)
(assert (= $t@312@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@245@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@313@01 $Struct)
(assert (=
  self@313@01
  ($struct_set<$Struct> l$havoc$2@239@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@239@01 2))
    l$havoc$6@245@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(set-option :timeout 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@239@01 0)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 165 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0)) | live]
; [else-branch: 165 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 165 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0))]
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(pop) ; 10
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@239@01 0))
  ($struct_get<Bool> ($struct_loc<Int> self@313@01 0)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@239@01 0))
  ($struct_get<Bool> ($struct_loc<Int> self@313@01 0))))
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@313@01 0))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 166 | !($struct_get[Bool]($struct_loc[Int](self@313@01, 0))) | dead]
; [else-branch: 166 | $struct_get[Bool]($struct_loc[Int](self@313@01, 0)) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 166 | $struct_get[Bool]($struct_loc[Int](self@313@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@313@01 0)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert ($struct_get<Bool> ($struct_loc<Int> self@313@01 0)))
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@239@01 0)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 167 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0)) | live]
; [else-branch: 167 | !($struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 167 | $struct_get[Bool]($struct_loc[Int](l$havoc$2@239@01, 0))]
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] $struct_loc($old_self, 2)
(pop) ; 10
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@239@01 0))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@313@01 2))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@239@01 2))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> l$havoc$2@239@01 0))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@313@01 2))
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@239@01 2)))))
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 9
; [then-branch: 168 | !($struct_get[Bool]($struct_loc[Int](self@313@01, 0))) | dead]
; [else-branch: 168 | $struct_get[Bool]($struct_loc[Int](self@313@01, 0)) | live]
(push) ; 10
; [else-branch: 168 | $struct_get[Bool]($struct_loc[Int](self@313@01, 0))]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@313@01 0)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 169 | $struct_get[Bool]($struct_loc[Int](self@313@01, 0)) | live]
; [else-branch: 169 | !($struct_get[Bool]($struct_loc[Int](self@313@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 169 | $struct_get[Bool]($struct_loc[Int](self@313@01, 0))]
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 10
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@313@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@313@01 5)))
    ($struct_get<Int> ($struct_loc<Int> self@313@01 1))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@313@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@313@01 5)))
    ($struct_get<Int> ($struct_loc<Int> self@313@01 1)))))
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 162 | $out_of_gas@244@01]
(assert $out_of_gas@244@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 153 | l$no_reentrant_call@241@01]
(assert l$no_reentrant_call@241@01)
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 128 | l$send_fail@234@01]
(assert l$send_fail@234@01)
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 112 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))
(pop) ; 3
; [eval] !!($struct_get($struct_loc(self, 0)): Bool)
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 170 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | live]
; [else-branch: 170 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 170 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))
; [exec]
; label return
(push) ; 4
(set-option :timeout 10)
(assert (not (not $out_of_gas@244@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not $out_of_gas@244@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 171 | $out_of_gas@244@01 | live]
; [else-branch: 171 | !($out_of_gas@244@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 171 | $out_of_gas@244@01]
(assert $out_of_gas@244@01)
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
; [eval] !$succ
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 172 | True | live]
; [else-branch: 172 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 172 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@314@01 $Snap)
(assert (= $t@314@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@245@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@315@01 $Struct)
(assert (=
  self@315@01
  ($struct_set<$Struct> self@223@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@223@01 2))
    l$havoc$6@245@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 173 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | live]
; [else-branch: 173 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 173 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0))]
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(pop) ; 7
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))
  ($struct_get<Bool> ($struct_loc<Int> self@315@01 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))
  ($struct_get<Bool> ($struct_loc<Int> self@315@01 0))))
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@315@01 0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 174 | !($struct_get[Bool]($struct_loc[Int](self@315@01, 0))) | dead]
; [else-branch: 174 | $struct_get[Bool]($struct_loc[Int](self@315@01, 0)) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 174 | $struct_get[Bool]($struct_loc[Int](self@315@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@315@01 0)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert ($struct_get<Bool> ($struct_loc<Int> self@315@01 0)))
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 175 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | live]
; [else-branch: 175 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 175 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0))]
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] $struct_loc($old_self, 2)
(pop) ; 7
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@223@01 2))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@315@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@223@01 2)))))
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 6
; [then-branch: 176 | !($struct_get[Bool]($struct_loc[Int](self@315@01, 0))) | dead]
; [else-branch: 176 | $struct_get[Bool]($struct_loc[Int](self@315@01, 0)) | live]
(push) ; 7
; [else-branch: 176 | $struct_get[Bool]($struct_loc[Int](self@315@01, 0))]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@315@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 177 | $struct_get[Bool]($struct_loc[Int](self@315@01, 0)) | live]
; [else-branch: 177 | !($struct_get[Bool]($struct_loc[Int](self@315@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 177 | $struct_get[Bool]($struct_loc[Int](self@315@01, 0))]
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 7
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@315@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)))
    ($struct_get<Int> ($struct_loc<Int> self@315@01 1))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@315@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@315@01 5)))
    ($struct_get<Int> ($struct_loc<Int> self@315@01 1)))))
(pop) ; 5
; [then-branch: 178 | False | dead]
; [else-branch: 178 | True | live]
(push) ; 5
; [else-branch: 178 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 171 | !($out_of_gas@244@01)]
(assert (not $out_of_gas@244@01))
(pop) ; 4
; [eval] !$out_of_gas
(push) ; 4
(set-option :timeout 10)
(assert (not $out_of_gas@244@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not $out_of_gas@244@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 179 | !($out_of_gas@244@01) | live]
; [else-branch: 179 | $out_of_gas@244@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 179 | !($out_of_gas@244@01)]
(assert (not $out_of_gas@244@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 180 | False | dead]
; [else-branch: 180 | True | live]
(push) ; 5
; [else-branch: 180 | True]
(pop) ; 5
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 181 | True | live]
; [else-branch: 181 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 181 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@316@01 $Snap)
(assert (= $t@316@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@245@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@317@01 $Struct)
(assert (=
  self@317@01
  ($struct_set<$Struct> self@223@01 2 (+
    ($struct_get<Int> ($struct_loc<Int> self@223@01 2))
    l$havoc$6@245@01))))
; [exec]
; $contracts := l$havoc$7
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 182 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | live]
; [else-branch: 182 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 182 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0))]
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(pop) ; 7
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))
  ($struct_get<Bool> ($struct_loc<Int> self@317@01 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))
  ($struct_get<Bool> ($struct_loc<Int> self@317@01 0))))
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@317@01 0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 183 | !($struct_get[Bool]($struct_loc[Int](self@317@01, 0))) | dead]
; [else-branch: 183 | $struct_get[Bool]($struct_loc[Int](self@317@01, 0)) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 183 | $struct_get[Bool]($struct_loc[Int](self@317@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@317@01 0)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert ($struct_get<Bool> ($struct_loc<Int> self@317@01 0)))
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 184 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0)) | live]
; [else-branch: 184 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 184 | $struct_get[Bool]($struct_loc[Int](self@223@01, 0))]
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc($old_self, 2)): Int)
; [eval] $struct_loc($old_self, 2)
(pop) ; 7
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@317@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@223@01 2))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@317@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@223@01 2)))))
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 6
; [then-branch: 185 | !($struct_get[Bool]($struct_loc[Int](self@317@01, 0))) | dead]
; [else-branch: 185 | $struct_get[Bool]($struct_loc[Int](self@317@01, 0)) | live]
(push) ; 7
; [else-branch: 185 | $struct_get[Bool]($struct_loc[Int](self@317@01, 0))]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [exec]
; assert ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@317@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 186 | $struct_get[Bool]($struct_loc[Int](self@317@01, 0)) | live]
; [else-branch: 186 | !($struct_get[Bool]($struct_loc[Int](self@317@01, 0))) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 186 | $struct_get[Bool]($struct_loc[Int](self@317@01, 0))]
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 7
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (=>
  ($struct_get<Bool> ($struct_loc<Int> self@317@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@317@01 5)))
    ($struct_get<Int> ($struct_loc<Int> self@317@01 1))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@317@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@317@01 5)))
    ($struct_get<Int> ($struct_loc<Int> self@317@01 1)))))
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 179 | $out_of_gas@244@01]
(assert $out_of_gas@244@01)
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 170 | !($struct_get[Bool]($struct_loc[Int](self@223@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@223@01 0))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$claim_reward_fail ----------
(declare-const $succ@318@01 Bool)
(declare-const $succ@319@01 Bool)
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
(declare-const msg@320@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@321@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@322@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@323@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@324@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@325@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@326@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@327@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@328@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@329@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@330@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@331@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@332@01 Bool)
; [exec]
; var l$gas: Int
(declare-const l$gas@333@01 Int)
; [exec]
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@334@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@335@01 Bool)
; [exec]
; var l$raw_ret: Seq[Int]
(declare-const l$raw_ret@336@01 Seq<Int>)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@337@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@338@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@339@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@340@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@341@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@342@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@343@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@344@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@345@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@346@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@347@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@348@01 $Snap)
(assert (= $t@348@01 ($Snap.combine ($Snap.first $t@348@01) ($Snap.second $t@348@01))))
(assert (= ($Snap.first $t@348@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@324@01 1))))
(assert (= ($Snap.second $t@348@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@324@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@349@01 $Snap)
(assert (= $t@349@01 ($Snap.combine ($Snap.first $t@349@01) ($Snap.second $t@349@01))))
(assert (= ($Snap.first $t@349@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@324@01 2))))
(assert (= ($Snap.second $t@349@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@324@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@350@01 $Snap)
(assert (= $t@350@01 ($Snap.combine ($Snap.first $t@350@01) ($Snap.second $t@350@01))))
(assert (= ($Snap.first $t@350@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@324@01 3))))
(assert (= ($Snap.second $t@350@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@324@01 3))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@351@01 $Snap)
(assert (= $t@351@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@352@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(push) ; 4
; [then-branch: 187 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@324@01, 5)), $q0@352@01)) | live]
; [else-branch: 187 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@324@01, 5)), $q0@352@01) | live]
(push) ; 5
; [then-branch: 187 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@324@01, 5)), $q0@352@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)) $q0@352@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 187 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@324@01, 5)), $q0@352@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)) $q0@352@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)) $q0@352@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)) $q0@352@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@352@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)) $q0@352@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)) $q0@352@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)) $q0@352@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@1080@11@1080@345-aux|)))
(assert (forall (($q0@352@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)) $q0@352@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)) $q0@352@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)) $q0@352@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@1080@11@1080@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $t@353@01 $Snap)
(assert (= $t@353@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int))
(declare-const $q0@354@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@354@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)) $q0@354@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)) $q0@354@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@1081@11@1081@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@355@01 $Snap)
(assert (= $t@355@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@356@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(push) ; 4
; [then-branch: 188 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@324@01, 6)), $q1@356@01)) | live]
; [else-branch: 188 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@324@01, 6)), $q1@356@01) | live]
(push) ; 5
; [then-branch: 188 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@324@01, 6)), $q1@356@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 6)) $q1@356@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 188 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@324@01, 6)), $q1@356@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 6)) $q1@356@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 6)): $Map[Int, Int])
; [eval] $struct_loc(self, 6)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 6)) $q1@356@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 6)) $q1@356@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@356@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 6)) $q1@356@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 6)) $q1@356@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 6)) $q1@356@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@1082@11@1082@345-aux|)))
(assert (forall (($q1@356@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 6)) $q1@356@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 6)) $q1@356@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 6)) $q1@356@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@1082@11@1082@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $t@357@01 $Snap)
(assert (= $t@357@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 6)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 6)): $Map[Int, Int])): Int))
(declare-const $q1@358@01 Int)
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
(assert (forall (($q1@358@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 6)) $q1@358@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 6))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 6)) $q1@358@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplesreentrancy.vy.vpr@1083@11@1083@253|)))
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
  ($struct_get<Int> ($struct_loc<Int> self@324@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@360@01 $Snap)
(assert (= $t@360@01 ($Snap.combine ($Snap.first $t@360@01) ($Snap.second $t@360@01))))
(assert (= ($Snap.first $t@360@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@360@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@361@01 $Snap)
(assert (= $t@361@01 ($Snap.combine ($Snap.first $t@361@01) ($Snap.second $t@361@01))))
(assert (= ($Snap.first $t@361@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@321@01 0))))
(assert (= ($Snap.second $t@361@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@321@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@362@01 $Snap)
(assert (= $t@362@01 ($Snap.combine ($Snap.first $t@362@01) ($Snap.second $t@362@01))))
(assert (= ($Snap.first $t@362@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@321@01 1))))
(assert (= ($Snap.second $t@362@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@321@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@363@01 $Snap)
(assert (= $t@363@01 ($Snap.combine ($Snap.first $t@363@01) ($Snap.second $t@363@01))))
(assert (= ($Snap.first $t@363@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@321@01 2))))
(assert (= ($Snap.second $t@363@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@321@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@364@01 $Snap)
(assert (= $t@364@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@321@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@365@01 $Snap)
(assert (= $t@365@01 ($Snap.combine ($Snap.first $t@365@01) ($Snap.second $t@365@01))))
(assert (= ($Snap.first $t@365@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@321@01 4))))
(assert (= ($Snap.second $t@365@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@321@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@366@01 $Snap)
(assert (= $t@366@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@321@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@367@01 $Snap)
(assert (= $t@367@01 ($Snap.combine ($Snap.first $t@367@01) ($Snap.second $t@367@01))))
(assert (= ($Snap.first $t@367@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@320@01 0))))
(assert (= ($Snap.second $t@367@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@320@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@368@01 $Snap)
(assert (= $t@368@01 ($Snap.combine ($Snap.first $t@368@01) ($Snap.second $t@368@01))))
(assert (= ($Snap.first $t@368@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@320@01 1))))
(assert (= ($Snap.second $t@368@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@320@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@369@01 $Snap)
(assert (= $t@369@01 ($Snap.combine ($Snap.first $t@369@01) ($Snap.second $t@369@01))))
(assert (= ($Snap.first $t@369@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@320@01 2))))
(assert (= ($Snap.second $t@369@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@320@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@370@01 $Snap)
(assert (= $t@370@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@320@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@371@01 $Snap)
(assert (= $t@371@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@320@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $t@372@01 $Snap)
(assert (= $t@372@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int))
(declare-const $a@373@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
(declare-const $t@374@01 $Snap)
(assert (= $t@374@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 189 | $struct_get[Bool]($struct_loc[Int](self@324@01, 0)) | live]
; [else-branch: 189 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 189 | $struct_get[Bool]($struct_loc[Int](self@324@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(pop) ; 4
(push) ; 4
; [else-branch: 189 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))
  ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
(declare-const $t@375@01 $Snap)
(assert (= $t@375@01 $Snap.unit))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 190 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 0))) | live]
; [else-branch: 190 | $struct_get[Bool]($struct_loc[Int](self@324@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 190 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))))
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 190 | $struct_get[Bool]($struct_loc[Int](self@324@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))
  (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))))
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@324@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@324@01 1))))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   ($struct_get($struct_loc(self, 2)): Int)
(declare-const $t@376@01 $Snap)
(assert (= $t@376@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 191 | $struct_get[Bool]($struct_loc[Int](self@324@01, 0)) | live]
; [else-branch: 191 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 191 | $struct_get[Bool]($struct_loc[Int](self@324@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(pop) ; 4
(push) ; 4
; [else-branch: 191 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
(declare-const $t@377@01 $Snap)
(assert (= $t@377@01 $Snap.unit))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 192 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 0))) | live]
; [else-branch: 192 | $struct_get[Bool]($struct_loc[Int](self@324@01, 0)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 192 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == 0
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
(pop) ; 4
(push) ; 4
; [else-branch: 192 | $struct_get[Bool]($struct_loc[Int](self@324@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)))
    0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) ==
;   ($struct_get($struct_loc(self, 1)): Int)
(declare-const $t@378@01 $Snap)
(assert (= $t@378@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Bool) ==> ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 193 | $struct_get[Bool]($struct_loc[Int](self@324@01, 0)) | live]
; [else-branch: 193 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 0))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 193 | $struct_get[Bool]($struct_loc[Int](self@324@01, 0))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($map_sum(($struct_get($struct_loc(self, 5)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 4
(push) ; 4
; [else-branch: 193 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))
  (=
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)))
    ($struct_get<Int> ($struct_loc<Int> self@324@01 1)))))
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
(declare-const $t@379@01 $Snap)
(assert (= $t@379@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@320@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 194 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 0))) | live]
; [else-branch: 194 | $struct_get[Bool]($struct_loc[Int](self@324@01, 0)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 194 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@324@01 0))))
; [exec]
; inhale l$gas >= 0
(declare-const $t@380@01 $Snap)
(assert (= $t@380@01 $Snap.unit))
; [eval] l$gas >= 0
(assert (>= l$gas@333@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 2)): Int) < ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@324@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@324@01 1))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 195 | $struct_get[Int]($struct_loc[Int](self@324@01, 2)) < $struct_get[Int]($struct_loc[Int](self@324@01, 1)) | dead]
; [else-branch: 195 | !($struct_get[Int]($struct_loc[Int](self@324@01, 2)) < $struct_get[Int]($struct_loc[Int](self@324@01, 1))) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 195 | !($struct_get[Int]($struct_loc[Int](self@324@01, 2)) < $struct_get[Int]($struct_loc[Int](self@324@01, 1)))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@324@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@324@01 1)))))
(pop) ; 4
; [eval] !(($struct_get($struct_loc(self, 2)): Int) < ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 2)): Int) < ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@324@01 2))
  ($struct_get<Int> ($struct_loc<Int> self@324@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@324@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@324@01 1))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 196 | !($struct_get[Int]($struct_loc[Int](self@324@01, 2)) < $struct_get[Int]($struct_loc[Int](self@324@01, 1))) | live]
; [else-branch: 196 | $struct_get[Int]($struct_loc[Int](self@324@01, 2)) < $struct_get[Int]($struct_loc[Int](self@324@01, 1)) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 196 | !($struct_get[Int]($struct_loc[Int](self@324@01, 2)) < $struct_get[Int]($struct_loc[Int](self@324@01, 1)))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@324@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@324@01 1)))))
; [exec]
; self := ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]),
;   ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self,
;   5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) +
;   ($struct_get($struct_loc(self, 1)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 5, ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 1)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 1)): Int)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 5)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 5)): $Map[Int, Int])
; [eval] $struct_loc(self, 5)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@381@01 $Struct)
(assert (=
  self@381@01
  ($struct_set<$Struct> self@324@01 5 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)) ($struct_get<Int> ($struct_loc<Int> msg@320@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@324@01 5)) ($struct_get<Int> ($struct_loc<Int> msg@320@01 0)))
    ($struct_get<Int> ($struct_loc<Int> self@324@01 1)))))))
; [exec]
; self := ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) -
;   ($struct_get($struct_loc(self, 1)): Int)): $Struct)
; [eval] ($struct_set(self, 2, ($struct_get($struct_loc(self, 2)): Int) - ($struct_get($struct_loc(self, 1)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(self, 2)): Int) - ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(declare-const self@382@01 $Struct)
(assert (=
  self@382@01
  ($struct_set<$Struct> self@381@01 2 (-
    ($struct_get<Int> ($struct_loc<Int> self@381@01 2))
    ($struct_get<Int> ($struct_loc<Int> self@381@01 1))))))
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc
; [exec]
; assert ($struct_get($struct_loc($old_self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool) ==> ($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc($old_self, 0)): Bool)
; [eval] $struct_loc($old_self, 0)
(push) ; 5
; [then-branch: 197 | $struct_get[Bool]($struct_loc[Int](self@324@01, 0)) | dead]
; [else-branch: 197 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 0))) | live]
(push) ; 6
; [else-branch: 197 | !($struct_get[Bool]($struct_loc[Int](self@324@01, 0)))]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [exec]
; assert !($struct_get($struct_loc(self, 0)): Bool) ==>
;   ($struct_get($struct_loc(self, 2)): Int) >=
;   2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@382@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@382@01 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 198 | !($struct_get[Bool]($struct_loc[Int](self@382@01, 0))) | live]
; [else-branch: 198 | $struct_get[Bool]($struct_loc[Int](self@382@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 198 | !($struct_get[Bool]($struct_loc[Int](self@382@01, 0)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@382@01 0))))
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@382@01 0))))
(push) ; 5
(assert (not (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@382@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@382@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@382@01 1)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@382@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 199 | !($struct_get[Bool]($struct_loc[Int](self@382@01, 0))) | live]
; [else-branch: 199 | $struct_get[Bool]($struct_loc[Int](self@382@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 199 | !($struct_get[Bool]($struct_loc[Int](self@382@01, 0)))]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 6
(pop) ; 5
; Joined path conditions
(set-option :timeout 0)
(push) ; 5
(assert (not (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@382@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@382@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@382@01 1)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@382@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 200 | !($struct_get[Bool]($struct_loc[Int](self@382@01, 0))) | live]
; [else-branch: 200 | $struct_get[Bool]($struct_loc[Int](self@382@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 200 | !($struct_get[Bool]($struct_loc[Int](self@382@01, 0)))]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 6
(pop) ; 5
; Joined path conditions
(set-option :timeout 0)
(push) ; 5
(assert (not (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@382@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@382@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@382@01 1)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !($struct_get($struct_loc(self, 0)): Bool) ==> ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] !($struct_get($struct_loc(self, 0)): Bool)
; [eval] ($struct_get($struct_loc(self, 0)): Bool)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@382@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 201 | !($struct_get[Bool]($struct_loc[Int](self@382@01, 0))) | live]
; [else-branch: 201 | $struct_get[Bool]($struct_loc[Int](self@382@01, 0)) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 201 | !($struct_get[Bool]($struct_loc[Int](self@382@01, 0)))]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 2)): Int) >= 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
; [eval] 2 * $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $unwrap($wrap(($struct_get($struct_loc(self, 1)): Int)))
; [eval] $wrap(($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(pop) ; 6
(pop) ; 5
; Joined path conditions
(set-option :timeout 0)
(push) ; 5
(assert (not (=>
  (not ($struct_get<Bool> ($struct_loc<Int> self@382@01 0)))
  (>=
    ($struct_get<Int> ($struct_loc<Int> self@382@01 2))
    (*
      2
      ($unwrap<Int> ($wrap<$Int> ($struct_get<Int> ($struct_loc<Int> self@382@01 1)))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
