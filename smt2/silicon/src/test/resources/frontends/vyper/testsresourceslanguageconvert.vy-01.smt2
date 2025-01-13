(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 12:25:33
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
(declare-fun s$struct$self$init<$Struct> (Int Int Bool $Map<Int~_Int> $Map<Int~_Int> Bool) $Struct)
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
(declare-fun $accessible$test_convert%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$test_convert_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$test_convert_revert%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$test_convert_revert_0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$test_convert_overflow%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$test_convert_overflow_0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$test_convert_decimal_overflow%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$test_convert_decimal_overflow_0%trigger ($Snap Int Int Int Int) Bool)
(declare-fun $accessible$test_convert_bytes%trigger ($Snap Int Int Int Seq<Int> Seq<Int>) Bool)
(declare-fun $accessible$test_convert_bytes_0%trigger ($Snap Int Int Int Seq<Int> Seq<Int>) Bool)
(declare-fun $accessible$check%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$check_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$check_fail%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$check_fail_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$convert_int_fail%trigger ($Snap Int Int Int Seq<Int>) Bool)
(declare-fun $accessible$convert_int_fail_0%trigger ($Snap Int Int Int Seq<Int>) Bool)
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
(assert (forall (($arg_0 Int) ($arg_1 Int) ($arg_2 Bool) ($arg_3 $Map<Int~_Int>) ($arg_4 $Map<Int~_Int>) ($arg_5 Bool)) (!
  (and
    (=
      ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5) (- 0 1)))
      9122519725869122497593506884710)
    (and
      (=
        ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5) 0))
        $arg_0)
      (and
        (=
          ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5) 1))
          $arg_1)
        (and
          (=
            ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5) 2))
            $arg_2)
          (and
            (=
              ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5) 3))
              $arg_3)
            (and
              (=
                ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5) 4))
                $arg_4)
              (=
                ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5) 5))
                $arg_5)))))))
  :pattern ((s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5))
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
            ($struct_get<Int> ($struct_loc<Int> $l 0))
            ($struct_get<Int> ($struct_loc<Int> $r 0)))
          (and
            (=
              ($struct_get<Int> ($struct_loc<Int> $l 1))
              ($struct_get<Int> ($struct_loc<Int> $r 1)))
            (and
              (=
                ($struct_get<Bool> ($struct_loc<Int> $l 2))
                ($struct_get<Bool> ($struct_loc<Int> $r 2)))
              (and
                ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 3)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 3)))
                (and
                  ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 4)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 4)))
                  (=
                    ($struct_get<Bool> ($struct_loc<Int> $l 5))
                    ($struct_get<Bool> ($struct_loc<Int> $r 5)))))))))))
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
  :qid |quant-u-906|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  ($pure$success_get%stateless x@0@00)
  :pattern (($pure$success_get%limited s@$ x@0@00))
  :qid |quant-u-907|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  (=>
    ($pure$success_get%precondition s@$ x@0@00)
    (=
      ($pure$success_get s@$ x@0@00)
      ($struct_get<Bool> ($struct_loc<Int> x@0@00 0))))
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-912|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  true
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-913|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (= ($pure$return_get%limited s@$ x@2@00) ($pure$return_get s@$ x@2@00))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-908|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  ($pure$return_get%stateless x@2@00)
  :pattern (($pure$return_get%limited s@$ x@2@00))
  :qid |quant-u-909|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (=>
    ($pure$return_get%precondition s@$ x@2@00)
    (= ($pure$return_get s@$ x@2@00) ($struct_loc<Int> x@2@00 1)))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-914|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  true
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-915|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  (= ($range_sum%limited s@$ $x@4@00 $y@5@00) ($range_sum s@$ $x@4@00 $y@5@00))
  :pattern (($range_sum s@$ $x@4@00 $y@5@00))
  :qid |quant-u-910|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  ($range_sum%stateless $x@4@00 $y@5@00)
  :pattern (($range_sum%limited s@$ $x@4@00 $y@5@00))
  :qid |quant-u-911|)))
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
  :qid |quant-u-916|)))
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
  :qid |quant-u-917|)))
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
; inhale 0 <= ($struct_get($struct_loc($self$0, 0)): Int) &&
;   ($struct_get($struct_loc($self$0, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (= ($Snap.first $t@8@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 0))))
(assert (= ($Snap.second $t@8@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 1)): Int) &&
;   ($struct_get($struct_loc($self$0, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 ($Snap.combine ($Snap.first $t@9@01) ($Snap.second $t@9@01))))
(assert (= ($Snap.first $t@9@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))))
(assert (= ($Snap.second $t@9@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@11@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 3)
(push) ; 4
; [then-branch: 0 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 3)), $q0@11@01)) | live]
; [else-branch: 0 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 3)), $q0@11@01) | live]
(push) ; 5
; [then-branch: 0 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 3)), $q0@11@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 3)) $q0@11@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 3)), $q0@11@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 3)) $q0@11@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 3)) $q0@11@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 3)) $q0@11@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@11@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 3)) $q0@11@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 3)) $q0@11@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 3)) $q0@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@632@11@632@354-aux|)))
(assert (forall (($q0@11@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 3)) $q0@11@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 3)) $q0@11@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 3)) $q0@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@632@11@632@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])): Int))
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])): Int))
(declare-const $q0@13@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 3)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@13@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 3)) $q0@13@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 3)) $q0@13@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@633@11@633@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@15@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(push) ; 4
; [then-branch: 1 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 4)), $q1@15@01)) | live]
; [else-branch: 1 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 4)), $q1@15@01) | live]
(push) ; 5
; [then-branch: 1 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 4)), $q1@15@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q1@15@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 4)), $q1@15@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q1@15@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q1@15@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q1@15@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@15@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q1@15@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q1@15@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q1@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@634@11@634@354-aux|)))
(assert (forall (($q1@15@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q1@15@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q1@15@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q1@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@634@11@634@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int))
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int))
(declare-const $q1@17@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@17@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q1@17@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 4)) $q1@17@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@635@11@635@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@18@01 $Snap)
(assert (= $t@18@01 $Snap.unit))
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
; inhale 0 <= ($struct_get($struct_loc($self$1, 0)): Int) &&
;   ($struct_get($struct_loc($self$1, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 ($Snap.combine ($Snap.first $t@19@01) ($Snap.second $t@19@01))))
(assert (= ($Snap.first $t@19@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 0))))
(assert (= ($Snap.second $t@19@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 1)): Int) &&
;   ($struct_get($struct_loc($self$1, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@20@01 $Snap)
(assert (= $t@20@01 ($Snap.combine ($Snap.first $t@20@01) ($Snap.second $t@20@01))))
(assert (= ($Snap.first $t@20@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))
(assert (= ($Snap.second $t@20@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@22@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 3)
(push) ; 4
; [then-branch: 2 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 3)), $q0@22@01)) | live]
; [else-branch: 2 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 3)), $q0@22@01) | live]
(push) ; 5
; [then-branch: 2 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 3)), $q0@22@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $q0@22@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 3)), $q0@22@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $q0@22@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $q0@22@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $q0@22@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@22@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $q0@22@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $q0@22@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $q0@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@639@11@639@354-aux|)))
(assert (forall (($q0@22@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $q0@22@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $q0@22@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $q0@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@639@11@639@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])): Int))
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])): Int))
(declare-const $q0@24@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 3)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@24@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $q0@24@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $q0@24@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@640@11@640@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@26@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
(push) ; 4
; [then-branch: 3 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 4)), $q1@26@01)) | live]
; [else-branch: 3 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 4)), $q1@26@01) | live]
(push) ; 5
; [then-branch: 3 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 4)), $q1@26@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q1@26@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 4)), $q1@26@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q1@26@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q1@26@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q1@26@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@26@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q1@26@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q1@26@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q1@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@641@11@641@354-aux|)))
(assert (forall (($q1@26@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q1@26@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q1@26@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q1@26@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@641@11@641@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int))
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int))
(declare-const $q1@28@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@28@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q1@28@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 4)) $q1@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@642@11@642@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@29@01 $Snap)
(assert (= $t@29@01 $Snap.unit))
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
; inhale 0 <= ($struct_get($struct_loc($self$2, 0)): Int) &&
;   ($struct_get($struct_loc($self$2, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@30@01 $Snap)
(assert (= $t@30@01 ($Snap.combine ($Snap.first $t@30@01) ($Snap.second $t@30@01))))
(assert (= ($Snap.first $t@30@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] $struct_loc($self$2, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 0))))
(assert (= ($Snap.second $t@30@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] $struct_loc($self$2, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$2, 1)): Int) &&
;   ($struct_get($struct_loc($self$2, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@31@01 $Snap)
(assert (= $t@31@01 ($Snap.combine ($Snap.first $t@31@01) ($Snap.second $t@31@01))))
(assert (= ($Snap.first $t@31@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))
(assert (= ($Snap.second $t@31@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@32@01 $Snap)
(assert (= $t@32@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@33@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$2, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 3)
(push) ; 4
; [then-branch: 4 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 3)), $q0@33@01)) | live]
; [else-branch: 4 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 3)), $q0@33@01) | live]
(push) ; 5
; [then-branch: 4 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 3)), $q0@33@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3)) $q0@33@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 3)), $q0@33@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3)) $q0@33@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$2, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3)) $q0@33@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3)) $q0@33@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@33@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3)) $q0@33@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3)) $q0@33@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3)) $q0@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@646@11@646@354-aux|)))
(assert (forall (($q0@33@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3)) $q0@33@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3)) $q0@33@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3)) $q0@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@646@11@646@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int])): Int))
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int])): Int))
(declare-const $q0@35@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$2, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 3)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@35@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3)) $q0@35@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3)) $q0@35@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@647@11@647@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@36@01 $Snap)
(assert (= $t@36@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@37@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 4)
(push) ; 4
; [then-branch: 5 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 4)), $q1@37@01)) | live]
; [else-branch: 5 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 4)), $q1@37@01) | live]
(push) ; 5
; [then-branch: 5 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 4)), $q1@37@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q1@37@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 4)), $q1@37@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q1@37@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q1@37@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q1@37@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@37@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q1@37@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q1@37@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q1@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@648@11@648@354-aux|)))
(assert (forall (($q1@37@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q1@37@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q1@37@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q1@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@648@11@648@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])): Int))
(declare-const $t@38@01 $Snap)
(assert (= $t@38@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])): Int))
(declare-const $q1@39@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 4)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@39@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q1@39@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 4)) $q1@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@649@11@649@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$2, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@40@01 $Snap)
(assert (= $t@40@01 $Snap.unit))
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
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 ($Snap.combine ($Snap.first $t@41@01) ($Snap.second $t@41@01))))
(assert (= ($Snap.first $t@41@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 0))))
(assert (= ($Snap.second $t@41@01) $Snap.unit))
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
(declare-const $t@42@01 $Snap)
(assert (= $t@42@01 ($Snap.combine ($Snap.first $t@42@01) ($Snap.second $t@42@01))))
(assert (= ($Snap.first $t@42@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 1))))
(assert (= ($Snap.second $t@42@01) $Snap.unit))
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
(declare-const $t@43@01 $Snap)
(assert (= $t@43@01 ($Snap.combine ($Snap.first $t@43@01) ($Snap.second $t@43@01))))
(assert (= ($Snap.first $t@43@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 2))))
(assert (= ($Snap.second $t@43@01) $Snap.unit))
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
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 $Snap.unit))
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
(declare-const $t@45@01 $Snap)
(assert (= $t@45@01 ($Snap.combine ($Snap.first $t@45@01) ($Snap.second $t@45@01))))
(assert (= ($Snap.first $t@45@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 4))))
(assert (= ($Snap.second $t@45@01) $Snap.unit))
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
(declare-const $t@46@01 $Snap)
(assert (= $t@46@01 $Snap.unit))
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
;     { ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int))
(declare-const $t@47@01 $Snap)
(assert (= $t@47@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int))
(declare-const $a@48@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 3)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int))
(declare-const $t@49@01 $Snap)
(assert (= $t@49@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int))
(declare-const $a@50@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 3)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@50@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $a@50@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 3)) $a@50@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $a@50@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@658@11@658@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int))
(declare-const $t@51@01 $Snap)
(assert (= $t@51@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int))
(declare-const $a@52@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$2, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 3)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@52@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3)) $a@52@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 3)) $a@52@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 3)) $a@52@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@659@11@659@263|)))
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
(declare-const $self$0@53@01 $Struct)
; [exec]
; var $$contracts$0: $Map[Int, $Struct]
(declare-const $$contracts$0@54@01 $Map<Int~_$Struct>)
; [exec]
; var $self$1: $Struct
(declare-const $self$1@55@01 $Struct)
; [exec]
; var $$contracts$1: $Map[Int, $Struct]
(declare-const $$contracts$1@56@01 $Map<Int~_$Struct>)
; [exec]
; var block: $Struct
(declare-const block@57@01 $Struct)
; [exec]
; var $post: Bool
(declare-const $post@58@01 Bool)
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 0)): Int) &&
;   ($struct_get($struct_loc($self$0, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@59@01 $Snap)
(assert (= $t@59@01 ($Snap.combine ($Snap.first $t@59@01) ($Snap.second $t@59@01))))
(assert (= ($Snap.first $t@59@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@53@01 0))))
(assert (= ($Snap.second $t@59@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@53@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 1)): Int) &&
;   ($struct_get($struct_loc($self$0, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 ($Snap.combine ($Snap.first $t@60@01) ($Snap.second $t@60@01))))
(assert (= ($Snap.first $t@60@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@53@01 1))))
(assert (= ($Snap.second $t@60@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@53@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@61@01 $Snap)
(assert (= $t@61@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@62@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 3)
(push) ; 4
; [then-branch: 6 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@53@01, 3)), $q0@62@01)) | live]
; [else-branch: 6 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@53@01, 3)), $q0@62@01) | live]
(push) ; 5
; [then-branch: 6 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@53@01, 3)), $q0@62@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 3)) $q0@62@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@53@01, 3)), $q0@62@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 3)) $q0@62@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 3)) $q0@62@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 3)) $q0@62@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@62@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 3)) $q0@62@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 3)) $q0@62@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 3)) $q0@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@672@11@672@354-aux|)))
(assert (forall (($q0@62@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 3)) $q0@62@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 3)) $q0@62@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 3)) $q0@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@672@11@672@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])): Int))
(declare-const $t@63@01 $Snap)
(assert (= $t@63@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])): Int))
(declare-const $q0@64@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 3)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@64@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 3)) $q0@64@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 3)) $q0@64@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@673@11@673@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@66@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(push) ; 4
; [then-branch: 7 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@53@01, 4)), $q1@66@01)) | live]
; [else-branch: 7 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@53@01, 4)), $q1@66@01) | live]
(push) ; 5
; [then-branch: 7 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@53@01, 4)), $q1@66@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 4)) $q1@66@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@53@01, 4)), $q1@66@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 4)) $q1@66@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 4)) $q1@66@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 4)) $q1@66@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@66@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 4)) $q1@66@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 4)) $q1@66@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 4)) $q1@66@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@674@11@674@354-aux|)))
(assert (forall (($q1@66@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 4)) $q1@66@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 4)) $q1@66@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 4)) $q1@66@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@674@11@674@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int))
(declare-const $t@67@01 $Snap)
(assert (= $t@67@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int))
(declare-const $q1@68@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@68@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 4)) $q1@68@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 4)) $q1@68@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@675@11@675@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@69@01 $Snap)
(assert (= $t@69@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$0, -1)): Int)
; [eval] $struct_loc($self$0, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$0@53@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 0)): Int) &&
;   ($struct_get($struct_loc($self$1, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@70@01 $Snap)
(assert (= $t@70@01 ($Snap.combine ($Snap.first $t@70@01) ($Snap.second $t@70@01))))
(assert (= ($Snap.first $t@70@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@55@01 0))))
(assert (= ($Snap.second $t@70@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@55@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 1)): Int) &&
;   ($struct_get($struct_loc($self$1, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@71@01 $Snap)
(assert (= $t@71@01 ($Snap.combine ($Snap.first $t@71@01) ($Snap.second $t@71@01))))
(assert (= ($Snap.first $t@71@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@55@01 1))))
(assert (= ($Snap.second $t@71@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@55@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@73@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 3)
(push) ; 4
; [then-branch: 8 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@55@01, 3)), $q0@73@01)) | live]
; [else-branch: 8 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@55@01, 3)), $q0@73@01) | live]
(push) ; 5
; [then-branch: 8 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@55@01, 3)), $q0@73@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3)) $q0@73@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 8 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@55@01, 3)), $q0@73@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3)) $q0@73@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3)) $q0@73@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3)) $q0@73@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@73@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3)) $q0@73@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3)) $q0@73@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3)) $q0@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@679@11@679@354-aux|)))
(assert (forall (($q0@73@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3)) $q0@73@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3)) $q0@73@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3)) $q0@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@679@11@679@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])): Int))
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])): Int))
(declare-const $q0@75@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 3)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@75@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3)) $q0@75@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3)) $q0@75@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@680@11@680@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@76@01 $Snap)
(assert (= $t@76@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@77@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
(push) ; 4
; [then-branch: 9 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@55@01, 4)), $q1@77@01)) | live]
; [else-branch: 9 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@55@01, 4)), $q1@77@01) | live]
(push) ; 5
; [then-branch: 9 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@55@01, 4)), $q1@77@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 4)) $q1@77@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@55@01, 4)), $q1@77@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 4)) $q1@77@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 4)) $q1@77@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 4)) $q1@77@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@77@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 4)) $q1@77@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 4)) $q1@77@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 4)) $q1@77@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@681@11@681@354-aux|)))
(assert (forall (($q1@77@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 4)) $q1@77@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 4)) $q1@77@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 4)) $q1@77@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@681@11@681@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int))
(declare-const $t@78@01 $Snap)
(assert (= $t@78@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int))
(declare-const $q1@79@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@79@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 4)) $q1@79@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 4)) $q1@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@682@11@682@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$1, -1)): Int)
; [eval] $struct_loc($self$1, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$1@55@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@81@01 $Snap)
(assert (= $t@81@01 ($Snap.combine ($Snap.first $t@81@01) ($Snap.second $t@81@01))))
(assert (= ($Snap.first $t@81@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@57@01 0))))
(assert (= ($Snap.second $t@81@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@57@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@82@01 $Snap)
(assert (= $t@82@01 ($Snap.combine ($Snap.first $t@82@01) ($Snap.second $t@82@01))))
(assert (= ($Snap.first $t@82@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@57@01 1))))
(assert (= ($Snap.second $t@82@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@57@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@83@01 $Snap)
(assert (= $t@83@01 ($Snap.combine ($Snap.first $t@83@01) ($Snap.second $t@83@01))))
(assert (= ($Snap.first $t@83@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@57@01 2))))
(assert (= ($Snap.second $t@83@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@57@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@84@01 $Snap)
(assert (= $t@84@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@57@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@85@01 $Snap)
(assert (= $t@85@01 ($Snap.combine ($Snap.first $t@85@01) ($Snap.second $t@85@01))))
(assert (= ($Snap.first $t@85@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@57@01 4))))
(assert (= ($Snap.second $t@85@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@57@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@57@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int))
(declare-const $t@87@01 $Snap)
(assert (= $t@87@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int))
(declare-const $a@88@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 3)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@88@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3)) $a@88@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@53@01 3)) $a@88@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@55@01 3)) $a@88@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@690@11@690@263|)))
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
(declare-const self@89@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@90@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@91@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@92@01 $Map<Int~_$Struct>)
; [exec]
; var $post: Bool
(declare-const $post@93@01 Bool)
; [exec]
; var $havoc: Int
(declare-const $havoc@94@01 Int)
; [exec]
; var block: $Struct
(declare-const block@95@01 $Struct)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@96@01 $Snap)
(assert (= $t@96@01 ($Snap.combine ($Snap.first $t@96@01) ($Snap.second $t@96@01))))
(assert (= ($Snap.first $t@96@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@89@01 0))))
(assert (= ($Snap.second $t@96@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@89@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 ($Snap.combine ($Snap.first $t@97@01) ($Snap.second $t@97@01))))
(assert (= ($Snap.first $t@97@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@89@01 1))))
(assert (= ($Snap.second $t@97@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@89@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@98@01 $Snap)
(assert (= $t@98@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@99@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(push) ; 4
; [then-branch: 10 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@89@01, 3)), $q0@99@01)) | live]
; [else-branch: 10 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@89@01, 3)), $q0@99@01) | live]
(push) ; 5
; [then-branch: 10 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@89@01, 3)), $q0@99@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 3)) $q0@99@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@89@01, 3)), $q0@99@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 3)) $q0@99@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 3)) $q0@99@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 3)) $q0@99@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@99@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 3)) $q0@99@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 3)) $q0@99@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 3)) $q0@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@704@11@704@345-aux|)))
(assert (forall (($q0@99@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 3)) $q0@99@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 3)) $q0@99@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 3)) $q0@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@704@11@704@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $t@100@01 $Snap)
(assert (= $t@100@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $q0@101@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@101@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 3)) $q0@101@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 3)) $q0@101@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@705@11@705@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@102@01 $Snap)
(assert (= $t@102@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@103@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 11 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@89@01, 4)), $q1@103@01)) | live]
; [else-branch: 11 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@89@01, 4)), $q1@103@01) | live]
(push) ; 5
; [then-branch: 11 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@89@01, 4)), $q1@103@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 4)) $q1@103@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 11 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@89@01, 4)), $q1@103@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 4)) $q1@103@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 4)) $q1@103@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 4)) $q1@103@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@103@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 4)) $q1@103@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 4)) $q1@103@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 4)) $q1@103@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@706@11@706@345-aux|)))
(assert (forall (($q1@103@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 4)) $q1@103@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 4)) $q1@103@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 4)) $q1@103@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@706@11@706@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@104@01 $Snap)
(assert (= $t@104@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q1@105@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@105@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 4)) $q1@105@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@89@01 4)) $q1@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@707@11@707@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@106@01 $Snap)
(assert (= $t@106@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@89@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 0)): Int) &&
;   ($struct_get($struct_loc($pre_self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01))))
(assert (= ($Snap.first $t@107@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@91@01 0))))
(assert (= ($Snap.second $t@107@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@91@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($pre_self, 1)): Int) &&
;   ($struct_get($struct_loc($pre_self, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@108@01 $Snap)
(assert (= $t@108@01 ($Snap.combine ($Snap.first $t@108@01) ($Snap.second $t@108@01))))
(assert (= ($Snap.first $t@108@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $pre_self@91@01 1))))
(assert (= ($Snap.second $t@108@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@91@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@109@01 $Snap)
(assert (= $t@109@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@110@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 3)
(push) ; 4
; [then-branch: 12 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@91@01, 3)), $q0@110@01)) | live]
; [else-branch: 12 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@91@01, 3)), $q0@110@01) | live]
(push) ; 5
; [then-branch: 12 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@91@01, 3)), $q0@110@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 3)) $q0@110@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@91@01, 3)), $q0@110@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 3)) $q0@110@01)))
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 3)) $q0@110@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 3)) $q0@110@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@110@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 3)) $q0@110@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 3)) $q0@110@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 3)) $q0@110@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@711@11@711@360-aux|)))
(assert (forall (($q0@110@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 3)) $q0@110@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 3)) $q0@110@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 3)) $q0@110@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@711@11@711@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int])): Int))
(declare-const $t@111@01 $Snap)
(assert (= $t@111@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int])): Int))
(declare-const $q0@112@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 3)
; [eval] ($map_sum(($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($pre_self, 3)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@112@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 3)) $q0@112@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 3)) $q0@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@712@11@712@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@113@01 $Snap)
(assert (= $t@113@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@114@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 4)
(push) ; 4
; [then-branch: 13 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@91@01, 4)), $q1@114@01)) | live]
; [else-branch: 13 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@91@01, 4)), $q1@114@01) | live]
(push) ; 5
; [then-branch: 13 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@91@01, 4)), $q1@114@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 4)) $q1@114@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 13 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@91@01, 4)), $q1@114@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 4)) $q1@114@01)))
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 4)) $q1@114@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 4)) $q1@114@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@114@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 4)) $q1@114@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 4)) $q1@114@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 4)) $q1@114@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@713@11@713@360-aux|)))
(assert (forall (($q1@114@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 4)) $q1@114@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 4)) $q1@114@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 4)) $q1@114@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@713@11@713@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])): Int))
(declare-const $t@115@01 $Snap)
(assert (= $t@115@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])): Int))
(declare-const $q1@116@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 4)
; [eval] ($map_sum(($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($pre_self, 4)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@116@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 4)) $q1@116@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@91@01 4)) $q1@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@714@11@714@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($pre_self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@117@01 $Snap)
(assert (= $t@117@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int)
; [eval] $struct_loc($pre_self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@91@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@118@01 $Snap)
(assert (= $t@118@01 ($Snap.combine ($Snap.first $t@118@01) ($Snap.second $t@118@01))))
(assert (= ($Snap.first $t@118@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@95@01 0))))
(assert (= ($Snap.second $t@118@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@95@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@119@01 $Snap)
(assert (= $t@119@01 ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01))))
(assert (= ($Snap.first $t@119@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@95@01 1))))
(assert (= ($Snap.second $t@119@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@95@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@120@01 $Snap)
(assert (= $t@120@01 ($Snap.combine ($Snap.first $t@120@01) ($Snap.second $t@120@01))))
(assert (= ($Snap.first $t@120@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@95@01 2))))
(assert (= ($Snap.second $t@120@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@95@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@121@01 $Snap)
(assert (= $t@121@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@95@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@122@01 $Snap)
(assert (= $t@122@01 ($Snap.combine ($Snap.first $t@122@01) ($Snap.second $t@122@01))))
(assert (= ($Snap.first $t@122@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@95@01 4))))
(assert (= ($Snap.second $t@122@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@95@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@123@01 $Snap)
(assert (= $t@123@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@95@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale $havoc >= 0
(declare-const $t@124@01 $Snap)
(assert (= $t@124@01 $Snap.unit))
; [eval] $havoc >= 0
(assert (>= $havoc@94@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $t@125@01 $Snap)
(assert (= $t@125@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $a@126@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
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
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   $havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + $havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + $havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@127@01 $Struct)
(assert (=
  self@127@01
  ($struct_set<$Struct> self@89@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@89@01 0))
    $havoc@94@01))))
(pop) ; 2
(pop) ; 1
; ---------- f$test_convert ----------
(declare-const $succ@128@01 Bool)
(declare-const $succ@129@01 Bool)
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
(declare-const msg@130@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@131@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@132@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@133@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@134@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@135@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@136@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@137@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@138@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@139@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@140@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@141@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@142@01 Bool)
; [exec]
; var l$u: Int
(declare-const l$u@143@01 Int)
; [exec]
; var l$i: Int
(declare-const l$i@144@01 Int)
; [exec]
; var l$d: Int
(declare-const l$d@145@01 Int)
; [exec]
; var l$e: Int
(declare-const l$e@146@01 Int)
; [exec]
; var l$z: Int
(declare-const l$z@147@01 Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@148@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@149@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@150@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@151@01 $Snap)
(assert (= $t@151@01 ($Snap.combine ($Snap.first $t@151@01) ($Snap.second $t@151@01))))
(assert (= ($Snap.first $t@151@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@134@01 0))))
(assert (= ($Snap.second $t@151@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@134@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@152@01 $Snap)
(assert (= $t@152@01 ($Snap.combine ($Snap.first $t@152@01) ($Snap.second $t@152@01))))
(assert (= ($Snap.first $t@152@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@134@01 1))))
(assert (= ($Snap.second $t@152@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@134@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@153@01 $Snap)
(assert (= $t@153@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@154@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(push) ; 4
; [then-branch: 14 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@134@01, 3)), $q0@154@01)) | live]
; [else-branch: 14 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@134@01, 3)), $q0@154@01) | live]
(push) ; 5
; [then-branch: 14 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@134@01, 3)), $q0@154@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 3)) $q0@154@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 14 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@134@01, 3)), $q0@154@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 3)) $q0@154@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 3)) $q0@154@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 3)) $q0@154@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@154@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 3)) $q0@154@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 3)) $q0@154@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 3)) $q0@154@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@756@11@756@345-aux|)))
(assert (forall (($q0@154@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 3)) $q0@154@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 3)) $q0@154@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 3)) $q0@154@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@756@11@756@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $t@155@01 $Snap)
(assert (= $t@155@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $q0@156@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@156@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 3)) $q0@156@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 3)) $q0@156@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@757@11@757@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@157@01 $Snap)
(assert (= $t@157@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@158@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 15 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@134@01, 4)), $q1@158@01)) | live]
; [else-branch: 15 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@134@01, 4)), $q1@158@01) | live]
(push) ; 5
; [then-branch: 15 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@134@01, 4)), $q1@158@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 4)) $q1@158@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@134@01, 4)), $q1@158@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 4)) $q1@158@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 4)) $q1@158@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 4)) $q1@158@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@158@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 4)) $q1@158@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 4)) $q1@158@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 4)) $q1@158@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@758@11@758@345-aux|)))
(assert (forall (($q1@158@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 4)) $q1@158@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 4)) $q1@158@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 4)) $q1@158@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@758@11@758@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@159@01 $Snap)
(assert (= $t@159@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q1@160@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@160@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 4)) $q1@160@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@134@01 4)) $q1@160@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@759@11@759@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@161@01 $Snap)
(assert (= $t@161@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@134@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@162@01 $Snap)
(assert (= $t@162@01 ($Snap.combine ($Snap.first $t@162@01) ($Snap.second $t@162@01))))
(assert (= ($Snap.first $t@162@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@162@01) $Snap.unit))
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
(declare-const $t@163@01 $Snap)
(assert (= $t@163@01 ($Snap.combine ($Snap.first $t@163@01) ($Snap.second $t@163@01))))
(assert (= ($Snap.first $t@163@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@131@01 0))))
(assert (= ($Snap.second $t@163@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@131@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@164@01 $Snap)
(assert (= $t@164@01 ($Snap.combine ($Snap.first $t@164@01) ($Snap.second $t@164@01))))
(assert (= ($Snap.first $t@164@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@131@01 1))))
(assert (= ($Snap.second $t@164@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@131@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@165@01 $Snap)
(assert (= $t@165@01 ($Snap.combine ($Snap.first $t@165@01) ($Snap.second $t@165@01))))
(assert (= ($Snap.first $t@165@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@131@01 2))))
(assert (= ($Snap.second $t@165@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@131@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@166@01 $Snap)
(assert (= $t@166@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@131@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@167@01 $Snap)
(assert (= $t@167@01 ($Snap.combine ($Snap.first $t@167@01) ($Snap.second $t@167@01))))
(assert (= ($Snap.first $t@167@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@131@01 4))))
(assert (= ($Snap.second $t@167@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@131@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@168@01 $Snap)
(assert (= $t@168@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@131@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@169@01 $Snap)
(assert (= $t@169@01 ($Snap.combine ($Snap.first $t@169@01) ($Snap.second $t@169@01))))
(assert (= ($Snap.first $t@169@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@130@01 0))))
(assert (= ($Snap.second $t@169@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@130@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@170@01 $Snap)
(assert (= $t@170@01 ($Snap.combine ($Snap.first $t@170@01) ($Snap.second $t@170@01))))
(assert (= ($Snap.first $t@170@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@130@01 1))))
(assert (= ($Snap.second $t@170@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@130@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@171@01 $Snap)
(assert (= $t@171@01 ($Snap.combine ($Snap.first $t@171@01) ($Snap.second $t@171@01))))
(assert (= ($Snap.first $t@171@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@130@01 2))))
(assert (= ($Snap.second $t@171@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@130@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@172@01 $Snap)
(assert (= $t@172@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@130@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@173@01 $Snap)
(assert (= $t@173@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@130@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $t@174@01 $Snap)
(assert (= $t@174@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $a@175@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
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
(declare-const $t@176@01 $Snap)
(assert (= $t@176@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@130@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; l$u := 2
; [exec]
; l$i := 2
; [exec]
; l$d := 20000000000
; [eval] 100000000000 == 0
; [then-branch: 16 | False | dead]
; [else-branch: 16 | True | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 16 | True]
(pop) ; 3
; [eval] !(100000000000 == 0)
; [eval] 100000000000 == 0
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | True | live]
; [else-branch: 17 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 17 | True]
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) < -1701411834604692317316873037158841057280000000000 || $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) > 1701411834604692317316873037158841057270000000000
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) < -1701411834604692317316873037158841057280000000000
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] 70000000000 * 10000000000
; [eval] 70000000000 * 10000000000 \ 100000000000
; [eval] 70000000000 * 10000000000
; [eval] -1701411834604692317316873037158841057280000000000
(push) ; 4
; [then-branch: 18 | $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 | live]
; [else-branch: 18 | !($div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000) | live]
(push) ; 5
; [then-branch: 18 | $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000]
(assert (<
  ($div<Int> 700000000000000000000 100000000000 (div
    700000000000000000000
    100000000000))
  (- 0 1701411834604692317316873037158841057280000000000)))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | !($div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000)]
(assert (not
  (<
    ($div<Int> 700000000000000000000 100000000000 (div
      700000000000000000000
      100000000000))
    (- 0 1701411834604692317316873037158841057280000000000))))
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) > 1701411834604692317316873037158841057270000000000
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] 70000000000 * 10000000000
; [eval] 70000000000 * 10000000000 \ 100000000000
; [eval] 70000000000 * 10000000000
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (<
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000))
      (- 0 1701411834604692317316873037158841057280000000000)))
  (<
    ($div<Int> 700000000000000000000 100000000000 (div
      700000000000000000000
      100000000000))
    (- 0 1701411834604692317316873037158841057280000000000))))
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (or
    (<
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000))
      1701411834604692317316873037158841057270000000000)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 || $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) > 1701411834604692317316873037158841057270000000000 | dead]
; [else-branch: 19 | !($div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 || $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) > 1701411834604692317316873037158841057270000000000) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 19 | !($div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 || $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) > 1701411834604692317316873037158841057270000000000)]
(assert (not
  (or
    (<
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000))
      1701411834604692317316873037158841057270000000000))))
(pop) ; 4
; [eval] !($div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) < -1701411834604692317316873037158841057280000000000 || $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) > 1701411834604692317316873037158841057270000000000)
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) < -1701411834604692317316873037158841057280000000000 || $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) > 1701411834604692317316873037158841057270000000000
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) < -1701411834604692317316873037158841057280000000000
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] 70000000000 * 10000000000
; [eval] 70000000000 * 10000000000 \ 100000000000
; [eval] 70000000000 * 10000000000
; [eval] -1701411834604692317316873037158841057280000000000
(push) ; 4
; [then-branch: 20 | $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 | live]
; [else-branch: 20 | !($div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000) | live]
(push) ; 5
; [then-branch: 20 | $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000]
(assert (<
  ($div<Int> 700000000000000000000 100000000000 (div
    700000000000000000000
    100000000000))
  (- 0 1701411834604692317316873037158841057280000000000)))
(pop) ; 5
(push) ; 5
; [else-branch: 20 | !($div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000)]
(assert (not
  (<
    ($div<Int> 700000000000000000000 100000000000 (div
      700000000000000000000
      100000000000))
    (- 0 1701411834604692317316873037158841057280000000000))))
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) > 1701411834604692317316873037158841057270000000000
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] 70000000000 * 10000000000
; [eval] 70000000000 * 10000000000 \ 100000000000
; [eval] 70000000000 * 10000000000
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not (or
  (<
    ($div<Int> 700000000000000000000 100000000000 (div
      700000000000000000000
      100000000000))
    (- 0 1701411834604692317316873037158841057280000000000))
  (>
    ($div<Int> 700000000000000000000 100000000000 (div
      700000000000000000000
      100000000000))
    1701411834604692317316873037158841057270000000000))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (or
    (<
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000))
      1701411834604692317316873037158841057270000000000)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | !($div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 || $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) > 1701411834604692317316873037158841057270000000000) | live]
; [else-branch: 21 | $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 || $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) > 1701411834604692317316873037158841057270000000000 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 21 | !($div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 || $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) > 1701411834604692317316873037158841057270000000000)]
(assert (not
  (or
    (<
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000))
      1701411834604692317316873037158841057270000000000))))
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) > 1701411834604692317316873037158841057270000000000
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) < -1701411834604692317316873037158841057280000000000
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] 70000000000 * 10000000000
; [eval] 70000000000 * 10000000000 \ 100000000000
; [eval] 70000000000 * 10000000000
; [eval] -1701411834604692317316873037158841057280000000000
(push) ; 5
; [then-branch: 22 | 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 | live]
; [else-branch: 22 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000) | live]
(push) ; 6
; [then-branch: 22 | 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000]
(assert (<
  (+
    20000000000
    ($div<Int> 700000000000000000000 100000000000 (div
      700000000000000000000
      100000000000)))
  (- 0 1701411834604692317316873037158841057280000000000)))
(pop) ; 6
(push) ; 6
; [else-branch: 22 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000)]
(assert (not
  (<
    (+
      20000000000
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000)))
    (- 0 1701411834604692317316873037158841057280000000000))))
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) > 1701411834604692317316873037158841057270000000000
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] 70000000000 * 10000000000
; [eval] 70000000000 * 10000000000 \ 100000000000
; [eval] 70000000000 * 10000000000
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (<
      (+
        20000000000
        ($div<Int> 700000000000000000000 100000000000 (div
          700000000000000000000
          100000000000)))
      (- 0 1701411834604692317316873037158841057280000000000)))
  (<
    (+
      20000000000
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000)))
    (- 0 1701411834604692317316873037158841057280000000000))))
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (or
    (<
      (+
        20000000000
        ($div<Int> 700000000000000000000 100000000000 (div
          700000000000000000000
          100000000000)))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      (+
        20000000000
        ($div<Int> 700000000000000000000 100000000000 (div
          700000000000000000000
          100000000000)))
      1701411834604692317316873037158841057270000000000)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) > 1701411834604692317316873037158841057270000000000 | dead]
; [else-branch: 23 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) > 1701411834604692317316873037158841057270000000000) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 23 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) > 1701411834604692317316873037158841057270000000000)]
(assert (not
  (or
    (<
      (+
        20000000000
        ($div<Int> 700000000000000000000 100000000000 (div
          700000000000000000000
          100000000000)))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      (+
        20000000000
        ($div<Int> 700000000000000000000 100000000000 (div
          700000000000000000000
          100000000000)))
      1701411834604692317316873037158841057270000000000))))
(pop) ; 5
; [eval] !(20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) > 1701411834604692317316873037158841057270000000000)
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) > 1701411834604692317316873037158841057270000000000
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) < -1701411834604692317316873037158841057280000000000
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] 70000000000 * 10000000000
; [eval] 70000000000 * 10000000000 \ 100000000000
; [eval] 70000000000 * 10000000000
; [eval] -1701411834604692317316873037158841057280000000000
(push) ; 5
; [then-branch: 24 | 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 | live]
; [else-branch: 24 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000) | live]
(push) ; 6
; [then-branch: 24 | 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000]
(assert (<
  (+
    20000000000
    ($div<Int> 700000000000000000000 100000000000 (div
      700000000000000000000
      100000000000)))
  (- 0 1701411834604692317316873037158841057280000000000)))
(pop) ; 6
(push) ; 6
; [else-branch: 24 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000)]
(assert (not
  (<
    (+
      20000000000
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000)))
    (- 0 1701411834604692317316873037158841057280000000000))))
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) > 1701411834604692317316873037158841057270000000000
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] 70000000000 * 10000000000
; [eval] 70000000000 * 10000000000 \ 100000000000
; [eval] 70000000000 * 10000000000
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (or
  (<
    (+
      20000000000
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000)))
    (- 0 1701411834604692317316873037158841057280000000000))
  (>
    (+
      20000000000
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000)))
    1701411834604692317316873037158841057270000000000))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (or
    (<
      (+
        20000000000
        ($div<Int> 700000000000000000000 100000000000 (div
          700000000000000000000
          100000000000)))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      (+
        20000000000
        ($div<Int> 700000000000000000000 100000000000 (div
          700000000000000000000
          100000000000)))
      1701411834604692317316873037158841057270000000000)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) > 1701411834604692317316873037158841057270000000000) | live]
; [else-branch: 25 | 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) > 1701411834604692317316873037158841057270000000000 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 25 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) > 1701411834604692317316873037158841057270000000000)]
(assert (not
  (or
    (<
      (+
        20000000000
        ($div<Int> 700000000000000000000 100000000000 (div
          700000000000000000000
          100000000000)))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      (+
        20000000000
        ($div<Int> 700000000000000000000 100000000000 (div
          700000000000000000000
          100000000000)))
      1701411834604692317316873037158841057270000000000))))
; [eval] 1000000000000 == 0
; [then-branch: 26 | False | dead]
; [else-branch: 26 | True | live]
(push) ; 6
; [else-branch: 26 | True]
(pop) ; 6
; [eval] !(1000000000000 == 0)
; [eval] 1000000000000 == 0
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | True | live]
; [else-branch: 27 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 27 | True]
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) < -1701411834604692317316873037158841057280000000000 || $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) > 1701411834604692317316873037158841057270000000000
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) < -1701411834604692317316873037158841057280000000000
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000)
; [eval] 10000000000 * 10000000000
; [eval] 10000000000 * 10000000000 \ 1000000000000
; [eval] 10000000000 * 10000000000
; [eval] -1701411834604692317316873037158841057280000000000
(push) ; 7
; [then-branch: 28 | $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 | live]
; [else-branch: 28 | !($div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000) | live]
(push) ; 8
; [then-branch: 28 | $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000]
(assert (<
  ($div<Int> 100000000000000000000 1000000000000 (div
    100000000000000000000
    1000000000000))
  (- 0 1701411834604692317316873037158841057280000000000)))
(pop) ; 8
(push) ; 8
; [else-branch: 28 | !($div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000)]
(assert (not
  (<
    ($div<Int> 100000000000000000000 1000000000000 (div
      100000000000000000000
      1000000000000))
    (- 0 1701411834604692317316873037158841057280000000000))))
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) > 1701411834604692317316873037158841057270000000000
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000)
; [eval] 10000000000 * 10000000000
; [eval] 10000000000 * 10000000000 \ 1000000000000
; [eval] 10000000000 * 10000000000
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (<
      ($div<Int> 100000000000000000000 1000000000000 (div
        100000000000000000000
        1000000000000))
      (- 0 1701411834604692317316873037158841057280000000000)))
  (<
    ($div<Int> 100000000000000000000 1000000000000 (div
      100000000000000000000
      1000000000000))
    (- 0 1701411834604692317316873037158841057280000000000))))
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (or
    (<
      ($div<Int> 100000000000000000000 1000000000000 (div
        100000000000000000000
        1000000000000))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      ($div<Int> 100000000000000000000 1000000000000 (div
        100000000000000000000
        1000000000000))
      1701411834604692317316873037158841057270000000000)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 29 | $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 || $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) > 1701411834604692317316873037158841057270000000000 | dead]
; [else-branch: 29 | !($div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 || $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) > 1701411834604692317316873037158841057270000000000) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 29 | !($div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 || $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) > 1701411834604692317316873037158841057270000000000)]
(assert (not
  (or
    (<
      ($div<Int> 100000000000000000000 1000000000000 (div
        100000000000000000000
        1000000000000))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      ($div<Int> 100000000000000000000 1000000000000 (div
        100000000000000000000
        1000000000000))
      1701411834604692317316873037158841057270000000000))))
(pop) ; 7
; [eval] !($div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) < -1701411834604692317316873037158841057280000000000 || $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) > 1701411834604692317316873037158841057270000000000)
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) < -1701411834604692317316873037158841057280000000000 || $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) > 1701411834604692317316873037158841057270000000000
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) < -1701411834604692317316873037158841057280000000000
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000)
; [eval] 10000000000 * 10000000000
; [eval] 10000000000 * 10000000000 \ 1000000000000
; [eval] 10000000000 * 10000000000
; [eval] -1701411834604692317316873037158841057280000000000
(push) ; 7
; [then-branch: 30 | $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 | live]
; [else-branch: 30 | !($div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000) | live]
(push) ; 8
; [then-branch: 30 | $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000]
(assert (<
  ($div<Int> 100000000000000000000 1000000000000 (div
    100000000000000000000
    1000000000000))
  (- 0 1701411834604692317316873037158841057280000000000)))
(pop) ; 8
(push) ; 8
; [else-branch: 30 | !($div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000)]
(assert (not
  (<
    ($div<Int> 100000000000000000000 1000000000000 (div
      100000000000000000000
      1000000000000))
    (- 0 1701411834604692317316873037158841057280000000000))))
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) > 1701411834604692317316873037158841057270000000000
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000)
; [eval] 10000000000 * 10000000000
; [eval] 10000000000 * 10000000000 \ 1000000000000
; [eval] 10000000000 * 10000000000
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(push) ; 7
(set-option :timeout 10)
(assert (not (or
  (<
    ($div<Int> 100000000000000000000 1000000000000 (div
      100000000000000000000
      1000000000000))
    (- 0 1701411834604692317316873037158841057280000000000))
  (>
    ($div<Int> 100000000000000000000 1000000000000 (div
      100000000000000000000
      1000000000000))
    1701411834604692317316873037158841057270000000000))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (or
    (<
      ($div<Int> 100000000000000000000 1000000000000 (div
        100000000000000000000
        1000000000000))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      ($div<Int> 100000000000000000000 1000000000000 (div
        100000000000000000000
        1000000000000))
      1701411834604692317316873037158841057270000000000)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 31 | !($div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 || $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) > 1701411834604692317316873037158841057270000000000) | live]
; [else-branch: 31 | $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 || $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) > 1701411834604692317316873037158841057270000000000 | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 31 | !($div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 || $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) > 1701411834604692317316873037158841057270000000000)]
(assert (not
  (or
    (<
      ($div<Int> 100000000000000000000 1000000000000 (div
        100000000000000000000
        1000000000000))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      ($div<Int> 100000000000000000000 1000000000000 (div
        100000000000000000000
        1000000000000))
      1701411834604692317316873037158841057270000000000))))
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) > 1701411834604692317316873037158841057270000000000
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) < -1701411834604692317316873037158841057280000000000
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000)
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] 70000000000 * 10000000000
; [eval] 70000000000 * 10000000000 \ 100000000000
; [eval] 70000000000 * 10000000000
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000)
; [eval] 10000000000 * 10000000000
; [eval] 10000000000 * 10000000000 \ 1000000000000
; [eval] 10000000000 * 10000000000
; [eval] -1701411834604692317316873037158841057280000000000
(push) ; 8
; [then-branch: 32 | 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 | live]
; [else-branch: 32 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000) | live]
(push) ; 9
; [then-branch: 32 | 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000]
(assert (<
  (+
    (+
      20000000000
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000)))
    ($div<Int> 100000000000000000000 1000000000000 (div
      100000000000000000000
      1000000000000)))
  (- 0 1701411834604692317316873037158841057280000000000)))
(pop) ; 9
(push) ; 9
; [else-branch: 32 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000)]
(assert (not
  (<
    (+
      (+
        20000000000
        ($div<Int> 700000000000000000000 100000000000 (div
          700000000000000000000
          100000000000)))
      ($div<Int> 100000000000000000000 1000000000000 (div
        100000000000000000000
        1000000000000)))
    (- 0 1701411834604692317316873037158841057280000000000))))
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) > 1701411834604692317316873037158841057270000000000
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000)
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] 70000000000 * 10000000000
; [eval] 70000000000 * 10000000000 \ 100000000000
; [eval] 70000000000 * 10000000000
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000)
; [eval] 10000000000 * 10000000000
; [eval] 10000000000 * 10000000000 \ 1000000000000
; [eval] 10000000000 * 10000000000
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (<
      (+
        (+
          20000000000
          ($div<Int> 700000000000000000000 100000000000 (div
            700000000000000000000
            100000000000)))
        ($div<Int> 100000000000000000000 1000000000000 (div
          100000000000000000000
          1000000000000)))
      (- 0 1701411834604692317316873037158841057280000000000)))
  (<
    (+
      (+
        20000000000
        ($div<Int> 700000000000000000000 100000000000 (div
          700000000000000000000
          100000000000)))
      ($div<Int> 100000000000000000000 1000000000000 (div
        100000000000000000000
        1000000000000)))
    (- 0 1701411834604692317316873037158841057280000000000))))
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (or
    (<
      (+
        (+
          20000000000
          ($div<Int> 700000000000000000000 100000000000 (div
            700000000000000000000
            100000000000)))
        ($div<Int> 100000000000000000000 1000000000000 (div
          100000000000000000000
          1000000000000)))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      (+
        (+
          20000000000
          ($div<Int> 700000000000000000000 100000000000 (div
            700000000000000000000
            100000000000)))
        ($div<Int> 100000000000000000000 1000000000000 (div
          100000000000000000000
          1000000000000)))
      1701411834604692317316873037158841057270000000000)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) > 1701411834604692317316873037158841057270000000000 | dead]
; [else-branch: 33 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) > 1701411834604692317316873037158841057270000000000) | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 33 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) > 1701411834604692317316873037158841057270000000000)]
(assert (not
  (or
    (<
      (+
        (+
          20000000000
          ($div<Int> 700000000000000000000 100000000000 (div
            700000000000000000000
            100000000000)))
        ($div<Int> 100000000000000000000 1000000000000 (div
          100000000000000000000
          1000000000000)))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      (+
        (+
          20000000000
          ($div<Int> 700000000000000000000 100000000000 (div
            700000000000000000000
            100000000000)))
        ($div<Int> 100000000000000000000 1000000000000 (div
          100000000000000000000
          1000000000000)))
      1701411834604692317316873037158841057270000000000))))
(pop) ; 8
; [eval] !(20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) > 1701411834604692317316873037158841057270000000000)
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) > 1701411834604692317316873037158841057270000000000
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) < -1701411834604692317316873037158841057280000000000
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000)
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] 70000000000 * 10000000000
; [eval] 70000000000 * 10000000000 \ 100000000000
; [eval] 70000000000 * 10000000000
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000)
; [eval] 10000000000 * 10000000000
; [eval] 10000000000 * 10000000000 \ 1000000000000
; [eval] 10000000000 * 10000000000
; [eval] -1701411834604692317316873037158841057280000000000
(push) ; 8
; [then-branch: 34 | 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 | live]
; [else-branch: 34 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000) | live]
(push) ; 9
; [then-branch: 34 | 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000]
(assert (<
  (+
    (+
      20000000000
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000)))
    ($div<Int> 100000000000000000000 1000000000000 (div
      100000000000000000000
      1000000000000)))
  (- 0 1701411834604692317316873037158841057280000000000)))
(pop) ; 9
(push) ; 9
; [else-branch: 34 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000)]
(assert (not
  (<
    (+
      (+
        20000000000
        ($div<Int> 700000000000000000000 100000000000 (div
          700000000000000000000
          100000000000)))
      ($div<Int> 100000000000000000000 1000000000000 (div
        100000000000000000000
        1000000000000)))
    (- 0 1701411834604692317316873037158841057280000000000))))
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000) > 1701411834604692317316873037158841057270000000000
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000)
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] 70000000000 * 10000000000
; [eval] 70000000000 * 10000000000 \ 100000000000
; [eval] 70000000000 * 10000000000
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000)
; [eval] 10000000000 * 10000000000
; [eval] 10000000000 * 10000000000 \ 1000000000000
; [eval] 10000000000 * 10000000000
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (or
  (<
    (+
      (+
        20000000000
        ($div<Int> 700000000000000000000 100000000000 (div
          700000000000000000000
          100000000000)))
      ($div<Int> 100000000000000000000 1000000000000 (div
        100000000000000000000
        1000000000000)))
    (- 0 1701411834604692317316873037158841057280000000000))
  (>
    (+
      (+
        20000000000
        ($div<Int> 700000000000000000000 100000000000 (div
          700000000000000000000
          100000000000)))
      ($div<Int> 100000000000000000000 1000000000000 (div
        100000000000000000000
        1000000000000)))
    1701411834604692317316873037158841057270000000000))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (or
    (<
      (+
        (+
          20000000000
          ($div<Int> 700000000000000000000 100000000000 (div
            700000000000000000000
            100000000000)))
        ($div<Int> 100000000000000000000 1000000000000 (div
          100000000000000000000
          1000000000000)))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      (+
        (+
          20000000000
          ($div<Int> 700000000000000000000 100000000000 (div
            700000000000000000000
            100000000000)))
        ($div<Int> 100000000000000000000 1000000000000 (div
          100000000000000000000
          1000000000000)))
      1701411834604692317316873037158841057270000000000)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) > 1701411834604692317316873037158841057270000000000) | live]
; [else-branch: 35 | 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) > 1701411834604692317316873037158841057270000000000 | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 35 | !(20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) < -1701411834604692317316873037158841057280000000000 || 20000000000 + $div[Int](700000000000000000000, 100000000000, 700000000000000000000 / 100000000000) + $div[Int](100000000000000000000, 1000000000000, 100000000000000000000 / 1000000000000) > 1701411834604692317316873037158841057270000000000)]
(assert (not
  (or
    (<
      (+
        (+
          20000000000
          ($div<Int> 700000000000000000000 100000000000 (div
            700000000000000000000
            100000000000)))
        ($div<Int> 100000000000000000000 1000000000000 (div
          100000000000000000000
          1000000000000)))
      (- 0 1701411834604692317316873037158841057280000000000))
    (>
      (+
        (+
          20000000000
          ($div<Int> 700000000000000000000 100000000000 (div
            700000000000000000000
            100000000000)))
        ($div<Int> 100000000000000000000 1000000000000 (div
          100000000000000000000
          1000000000000)))
      1701411834604692317316873037158841057270000000000))))
; [exec]
; l$e := 20000000000 +
;   $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \
;   100000000000) +
;   $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \
;   1000000000000)
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000) + $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000)
; [eval] 20000000000 + $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] $div(70000000000 * 10000000000, 100000000000, 70000000000 * 10000000000 \ 100000000000)
; [eval] 70000000000 * 10000000000
; [eval] 70000000000 * 10000000000 \ 100000000000
; [eval] 70000000000 * 10000000000
; [eval] $div(10000000000 * 10000000000, 1000000000000, 10000000000 * 10000000000 \ 1000000000000)
; [eval] 10000000000 * 10000000000
; [eval] 10000000000 * 10000000000 \ 1000000000000
; [eval] 10000000000 * 10000000000
(declare-const l$e@177@01 Int)
(assert (=
  l$e@177@01
  (+
    (+
      20000000000
      ($div<Int> 700000000000000000000 100000000000 (div
        700000000000000000000
        100000000000)))
    ($div<Int> 100000000000000000000 1000000000000 (div
      100000000000000000000
      1000000000000)))))
; [exec]
; l$z := 0
; [eval] l$u > 170141183460469231731687303715884105727
; [then-branch: 36 | False | dead]
; [else-branch: 36 | True | live]
(push) ; 9
; [else-branch: 36 | True]
(pop) ; 9
; [eval] !(l$u > 170141183460469231731687303715884105727)
; [eval] l$u > 170141183460469231731687303715884105727
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | True | live]
; [else-branch: 37 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 37 | True]
; [exec]
; assert l$u == l$i
; [eval] l$u == l$i
; [eval] l$i < 0
; [then-branch: 38 | False | dead]
; [else-branch: 38 | True | live]
(push) ; 10
; [else-branch: 38 | True]
(pop) ; 10
; [eval] !(l$i < 0)
; [eval] l$i < 0
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | True | live]
; [else-branch: 39 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 39 | True]
; [exec]
; assert l$i == l$u
; [eval] l$i == l$u
; [exec]
; assert $unwrap($wrap((true ? 1 : 0))) == 1
; [eval] $unwrap($wrap((true ? 1 : 0))) == 1
; [eval] $unwrap($wrap((true ? 1 : 0)))
; [eval] $wrap((true ? 1 : 0))
; [eval] (true ? 1 : 0)
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 40 | True | live]
; [else-branch: 40 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 40 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (not (= ($unwrap<Int> ($wrap<$Int> 1)) 1)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (= ($unwrap<Int> ($wrap<$Int> 1)) 1))
; [exec]
; assert $unwrap($wrap((false ? 1 : 0))) == 0
; [eval] $unwrap($wrap((false ? 1 : 0))) == 0
; [eval] $unwrap($wrap((false ? 1 : 0)))
; [eval] $wrap((false ? 1 : 0))
; [eval] (false ? 1 : 0)
(push) ; 11
; [then-branch: 41 | False | dead]
; [else-branch: 41 | True | live]
(push) ; 12
; [else-branch: 41 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (not (= ($unwrap<Int> ($wrap<$Int> 0)) 0)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (= ($unwrap<Int> ($wrap<$Int> 0)) 0))
; [exec]
; assert $unwrap($wrap((true ? 1 : 0))) == 1
; [eval] $unwrap($wrap((true ? 1 : 0))) == 1
; [eval] $unwrap($wrap((true ? 1 : 0)))
; [eval] $wrap((true ? 1 : 0))
; [eval] (true ? 1 : 0)
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 42 | True | live]
; [else-branch: 42 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 42 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
; [exec]
; assert $unwrap($wrap((false ? 1 : 0))) == 0
; [eval] $unwrap($wrap((false ? 1 : 0))) == 0
; [eval] $unwrap($wrap((false ? 1 : 0)))
; [eval] $wrap((false ? 1 : 0))
; [eval] (false ? 1 : 0)
(push) ; 11
; [then-branch: 43 | False | dead]
; [else-branch: 43 | True | live]
(push) ; 12
; [else-branch: 43 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
; [exec]
; assert $unwrap($wrap((true ? 10000000000 : 0))) == 10000000000
; [eval] $unwrap($wrap((true ? 10000000000 : 0))) == 10000000000
; [eval] $unwrap($wrap((true ? 10000000000 : 0)))
; [eval] $wrap((true ? 10000000000 : 0))
; [eval] (true ? 10000000000 : 0)
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 44 | True | live]
; [else-branch: 44 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 44 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (not (= ($unwrap<Int> ($wrap<$Int> 10000000000)) 10000000000)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (= ($unwrap<Int> ($wrap<$Int> 10000000000)) 10000000000))
; [exec]
; assert $unwrap($wrap((false ? 10000000000 : 0))) == 0
; [eval] $unwrap($wrap((false ? 10000000000 : 0))) == 0
; [eval] $unwrap($wrap((false ? 10000000000 : 0)))
; [eval] $wrap((false ? 10000000000 : 0))
; [eval] (false ? 10000000000 : 0)
(push) ; 11
; [then-branch: 45 | False | dead]
; [else-branch: 45 | True | live]
(push) ; 12
; [else-branch: 45 | True]
(pop) ; 12
(pop) ; 11
; Joined path conditions
; [eval] !((true ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1))
; [eval] (true ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
; [eval] (true ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 46 | True | live]
; [else-branch: 46 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 46 | True]
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_singleton 0)
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))
      (Seq_singleton 1)))
  32))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_singleton 0)
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))
      (Seq_singleton 1)))
  32))
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
; [then-branch: 47 | False | dead]
; [else-branch: 47 | True | live]
(push) ; 11
; [else-branch: 47 | True]
(pop) ; 11
; [eval] !!((true ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1))
; [eval] !((true ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1))
; [eval] (true ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
; [eval] (true ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.01s
; (get-info :all-statistics)
; [then-branch: 48 | True | live]
; [else-branch: 48 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 48 | True]
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
; [then-branch: 49 | True | live]
; [else-branch: 49 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 49 | True]
; [eval] !((false ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
; [eval] (false ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
; [eval] (false ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
(push) ; 12
; [then-branch: 50 | False | dead]
; [else-branch: 50 | True | live]
(push) ; 13
; [else-branch: 50 | True]
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_singleton 0)
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))
      (Seq_singleton 0)))
  32))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_singleton 0)
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))
      (Seq_singleton 0)))
  32))
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
; [then-branch: 51 | False | dead]
; [else-branch: 51 | True | live]
(push) ; 12
; [else-branch: 51 | True]
(pop) ; 12
; [eval] !!((false ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
; [eval] !((false ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
; [eval] (false ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
; [eval] (false ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
(push) ; 12
; [then-branch: 52 | False | dead]
; [else-branch: 52 | True | live]
(push) ; 13
; [else-branch: 52 | True]
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
(push) ; 12
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 12
; 0.01s
; (get-info :all-statistics)
; [then-branch: 53 | True | live]
; [else-branch: 53 | False | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 53 | True]
; [eval] !((false ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
; [eval] (false ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
; [eval] (false ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
(push) ; 13
; [then-branch: 54 | False | dead]
; [else-branch: 54 | True | live]
(push) ; 14
; [else-branch: 54 | True]
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
; [then-branch: 55 | False | dead]
; [else-branch: 55 | True | live]
(push) ; 13
; [else-branch: 55 | True]
(pop) ; 13
; [eval] !!((false ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
; [eval] !((false ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
; [eval] (false ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
; [eval] (false ? Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) : Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
(push) ; 13
; [then-branch: 56 | False | dead]
; [else-branch: 56 | True | live]
(push) ; 14
; [else-branch: 56 | True]
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
; [then-branch: 57 | True | live]
; [else-branch: 57 | False | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 57 | True]
; [exec]
; assert (3 != 0) == true
; [eval] (3 != 0) == true
; [eval] 3 != 0
; [exec]
; assert (l$u != 0) == true
; [eval] (l$u != 0) == true
; [eval] l$u != 0
; [exec]
; assert (l$i != 0) == true
; [eval] (l$i != 0) == true
; [eval] l$i != 0
; [exec]
; assert (l$d != 0) == true
; [eval] (l$d != 0) == true
; [eval] l$d != 0
; [exec]
; assert (0 != 0) == false
; [eval] (0 != 0) == false
; [eval] 0 != 0
; [exec]
; assert (0 != 0) == false
; [eval] (0 != 0) == false
; [eval] 0 != 0
; [exec]
; assert (l$z != 0) == false
; [eval] (l$z != 0) == false
; [eval] l$z != 0
; [eval] l$u * 10000000000 > 1701411834604692317316873037158841057270000000000
; [eval] l$u * 10000000000
; [then-branch: 58 | False | dead]
; [else-branch: 58 | True | live]
(push) ; 14
; [else-branch: 58 | True]
(pop) ; 14
; [eval] !(l$u * 10000000000 > 1701411834604692317316873037158841057270000000000)
; [eval] l$u * 10000000000 > 1701411834604692317316873037158841057270000000000
; [eval] l$u * 10000000000
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.01s
; (get-info :all-statistics)
; [then-branch: 59 | True | live]
; [else-branch: 59 | False | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 59 | True]
; [exec]
; assert l$u * 10000000000 == l$d
; [eval] l$u * 10000000000 == l$d
; [eval] l$u * 10000000000
; [exec]
; assert $div(l$d, 10000000000, l$d \ 10000000000) == l$i
; [eval] $div(l$d, 10000000000, l$d \ 10000000000) == l$i
; [eval] $div(l$d, 10000000000, l$d \ 10000000000)
; [eval] l$d \ 10000000000
(push) ; 15
(assert (not (= ($div<Int> 20000000000 10000000000 (div 20000000000 10000000000)) 2)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (= ($div<Int> 20000000000 10000000000 (div 20000000000 10000000000)) 2))
; [eval] $div(l$d, 10000000000, l$d \ 10000000000) < 0
; [eval] $div(l$d, 10000000000, l$d \ 10000000000)
; [eval] l$d \ 10000000000
(push) ; 15
(set-option :timeout 10)
(assert (not (not (< ($div<Int> 20000000000 10000000000 (div 20000000000 10000000000)) 0))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 60 | $div[Int](20000000000, 10000000000, 20000000000 / 10000000000) < 0 | dead]
; [else-branch: 60 | !($div[Int](20000000000, 10000000000, 20000000000 / 10000000000) < 0) | live]
(set-option :timeout 0)
(push) ; 15
; [else-branch: 60 | !($div[Int](20000000000, 10000000000, 20000000000 / 10000000000) < 0)]
(assert (not (< ($div<Int> 20000000000 10000000000 (div 20000000000 10000000000)) 0)))
(pop) ; 15
; [eval] !($div(l$d, 10000000000, l$d \ 10000000000) < 0)
; [eval] $div(l$d, 10000000000, l$d \ 10000000000) < 0
; [eval] $div(l$d, 10000000000, l$d \ 10000000000)
; [eval] l$d \ 10000000000
(push) ; 15
(set-option :timeout 10)
(assert (not (< ($div<Int> 20000000000 10000000000 (div 20000000000 10000000000)) 0)))
(check-sat)
; unknown
(pop) ; 15
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not (< ($div<Int> 20000000000 10000000000 (div 20000000000 10000000000)) 0))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 61 | !($div[Int](20000000000, 10000000000, 20000000000 / 10000000000) < 0) | live]
; [else-branch: 61 | $div[Int](20000000000, 10000000000, 20000000000 / 10000000000) < 0 | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 61 | !($div[Int](20000000000, 10000000000, 20000000000 / 10000000000) < 0)]
(assert (not (< ($div<Int> 20000000000 10000000000 (div 20000000000 10000000000)) 0)))
; [exec]
; assert $div(l$d, 10000000000, l$d \ 10000000000) == l$u
; [eval] $div(l$d, 10000000000, l$d \ 10000000000) == l$u
; [eval] $div(l$d, 10000000000, l$d \ 10000000000)
; [eval] l$d \ 10000000000
; [exec]
; assert $div(l$e, 10000000000, l$e \ 10000000000) == l$i
; [eval] $div(l$e, 10000000000, l$e \ 10000000000) == l$i
; [eval] $div(l$e, 10000000000, l$e \ 10000000000)
; [eval] l$e \ 10000000000
(push) ; 16
(assert (not (= ($div<Int> l$e@177@01 10000000000 (div l$e@177@01 10000000000)) 2)))
(check-sat)
; unsat
(pop) ; 16
; 0.03s
; (get-info :all-statistics)
(assert (= ($div<Int> l$e@177@01 10000000000 (div l$e@177@01 10000000000)) 2))
; [eval] -l$e > 1701411834604692317316873037158841057270000000000
; [eval] -l$e
(push) ; 16
(set-option :timeout 10)
(assert (not (not (> (- 0 l$e@177@01) 1701411834604692317316873037158841057270000000000))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 62 | 0 - l$e@177@01 > 1701411834604692317316873037158841057270000000000 | dead]
; [else-branch: 62 | !(0 - l$e@177@01 > 1701411834604692317316873037158841057270000000000) | live]
(set-option :timeout 0)
(push) ; 16
; [else-branch: 62 | !(0 - l$e@177@01 > 1701411834604692317316873037158841057270000000000)]
(assert (not (> (- 0 l$e@177@01) 1701411834604692317316873037158841057270000000000)))
(pop) ; 16
; [eval] !(-l$e > 1701411834604692317316873037158841057270000000000)
; [eval] -l$e > 1701411834604692317316873037158841057270000000000
; [eval] -l$e
(push) ; 16
(set-option :timeout 10)
(assert (not (> (- 0 l$e@177@01) 1701411834604692317316873037158841057270000000000)))
(check-sat)
; unknown
(pop) ; 16
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (not (> (- 0 l$e@177@01) 1701411834604692317316873037158841057270000000000))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 63 | !(0 - l$e@177@01 > 1701411834604692317316873037158841057270000000000) | live]
; [else-branch: 63 | 0 - l$e@177@01 > 1701411834604692317316873037158841057270000000000 | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 63 | !(0 - l$e@177@01 > 1701411834604692317316873037158841057270000000000)]
(assert (not (> (- 0 l$e@177@01) 1701411834604692317316873037158841057270000000000)))
; [eval] -l$i > 170141183460469231731687303715884105727
; [eval] -l$i
; [then-branch: 64 | False | dead]
; [else-branch: 64 | True | live]
(push) ; 17
; [else-branch: 64 | True]
(pop) ; 17
; [eval] !(-l$i > 170141183460469231731687303715884105727)
; [eval] -l$i > 170141183460469231731687303715884105727
; [eval] -l$i
(push) ; 17
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 17
; 0.01s
; (get-info :all-statistics)
; [then-branch: 65 | True | live]
; [else-branch: 65 | False | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 65 | True]
; [exec]
; assert $div(-l$e, 10000000000, -l$e \ 10000000000) == -l$i
; [eval] $div(-l$e, 10000000000, -l$e \ 10000000000) == -l$i
; [eval] $div(-l$e, 10000000000, -l$e \ 10000000000)
; [eval] -l$e
; [eval] -l$e \ 10000000000
; [eval] -l$e
; [eval] -l$i
(push) ; 18
(assert (not (=
  ($div<Int> (- 0 l$e@177@01) 10000000000 (div (- 0 l$e@177@01) 10000000000))
  (- 0 2))))
(check-sat)
; unsat
(pop) ; 18
; 0.02s
; (get-info :all-statistics)
(assert (=
  ($div<Int> (- 0 l$e@177@01) 10000000000 (div (- 0 l$e@177@01) 10000000000))
  (- 0 2)))
; [eval] l$i < 0
; [then-branch: 66 | False | dead]
; [else-branch: 66 | True | live]
(push) ; 18
; [else-branch: 66 | True]
(pop) ; 18
; [eval] !(l$i < 0)
; [eval] l$i < 0
(push) ; 18
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 18
; 0.01s
; (get-info :all-statistics)
; [then-branch: 67 | True | live]
; [else-branch: 67 | False | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 67 | True]
; [eval] l$u + 1 < 0
; [eval] l$u + 1
; [then-branch: 68 | False | dead]
; [else-branch: 68 | True | live]
(push) ; 19
; [else-branch: 68 | True]
(pop) ; 19
; [eval] !(l$u + 1 < 0)
; [eval] l$u + 1 < 0
; [eval] l$u + 1
(push) ; 19
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 19
; 0.01s
; (get-info :all-statistics)
; [then-branch: 69 | True | live]
; [else-branch: 69 | False | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 69 | True]
; [eval] l$u + 1 > 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] l$u + 1
; [then-branch: 70 | False | dead]
; [else-branch: 70 | True | live]
(push) ; 20
; [else-branch: 70 | True]
(pop) ; 20
; [eval] !(l$u + 1 > 115792089237316195423570985008687907853269984665640564039457584007913129639935)
; [eval] l$u + 1 > 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] l$u + 1
(push) ; 20
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 20
; 0.01s
; (get-info :all-statistics)
; [then-branch: 71 | True | live]
; [else-branch: 71 | False | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 71 | True]
; [exec]
; assert l$i == l$u + 1
; [eval] l$i == l$u + 1
; [eval] l$u + 1
(push) ; 21
(assert (not false))
(check-sat)
; unknown
(pop) ; 21
; 0.51s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] l$i == l$u + 1
; [eval] l$u + 1
(set-option :timeout 0)
(push) ; 21
(assert (not false))
(check-sat)
; unknown
(pop) ; 21
; 0.50s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] l$i == l$u + 1
; [eval] l$u + 1
(set-option :timeout 0)
(push) ; 21
(assert (not false))
(check-sat)
; unknown
(pop) ; 21
; 0.46s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] l$i == l$u + 1
; [eval] l$u + 1
(set-option :timeout 0)
(push) ; 21
(assert (not false))
(check-sat)
; unknown
(pop) ; 21
; 0.45s
; (get-info :all-statistics)
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
; ---------- f$test_convert_revert ----------
(declare-const l$i@178@01 $Int)
(declare-const $succ@179@01 Bool)
(declare-const l$i@180@01 $Int)
(declare-const $succ@181@01 Bool)
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
(declare-const msg@182@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@183@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@184@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@185@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@186@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@187@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@188@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@189@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@190@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@191@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@192@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@193@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@194@01 Bool)
; [exec]
; var l$u: $Int
(declare-const l$u@195@01 $Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@196@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@197@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@198@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@199@01 $Snap)
(assert (= $t@199@01 ($Snap.combine ($Snap.first $t@199@01) ($Snap.second $t@199@01))))
(assert (= ($Snap.first $t@199@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@186@01 0))))
(assert (= ($Snap.second $t@199@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@186@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@200@01 $Snap)
(assert (= $t@200@01 ($Snap.combine ($Snap.first $t@200@01) ($Snap.second $t@200@01))))
(assert (= ($Snap.first $t@200@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@186@01 1))))
(assert (= ($Snap.second $t@200@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@186@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@201@01 $Snap)
(assert (= $t@201@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@202@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(push) ; 4
; [then-branch: 72 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@186@01, 3)), $q0@202@01)) | live]
; [else-branch: 72 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@186@01, 3)), $q0@202@01) | live]
(push) ; 5
; [then-branch: 72 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@186@01, 3)), $q0@202@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 3)) $q0@202@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 72 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@186@01, 3)), $q0@202@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 3)) $q0@202@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 3)) $q0@202@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 3)) $q0@202@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@202@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 3)) $q0@202@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 3)) $q0@202@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 3)) $q0@202@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@924@11@924@345-aux|)))
(assert (forall (($q0@202@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 3)) $q0@202@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 3)) $q0@202@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 3)) $q0@202@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@924@11@924@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $t@203@01 $Snap)
(assert (= $t@203@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $q0@204@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@204@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 3)) $q0@204@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 3)) $q0@204@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@925@11@925@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@205@01 $Snap)
(assert (= $t@205@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@206@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 73 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@186@01, 4)), $q1@206@01)) | live]
; [else-branch: 73 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@186@01, 4)), $q1@206@01) | live]
(push) ; 5
; [then-branch: 73 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@186@01, 4)), $q1@206@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 4)) $q1@206@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 73 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@186@01, 4)), $q1@206@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 4)) $q1@206@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 4)) $q1@206@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 4)) $q1@206@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@206@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 4)) $q1@206@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 4)) $q1@206@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 4)) $q1@206@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@926@11@926@345-aux|)))
(assert (forall (($q1@206@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 4)) $q1@206@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 4)) $q1@206@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 4)) $q1@206@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@926@11@926@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@207@01 $Snap)
(assert (= $t@207@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q1@208@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@208@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 4)) $q1@208@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@186@01 4)) $q1@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@927@11@927@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@209@01 $Snap)
(assert (= $t@209@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@186@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@210@01 $Snap)
(assert (= $t@210@01 ($Snap.combine ($Snap.first $t@210@01) ($Snap.second $t@210@01))))
(assert (= ($Snap.first $t@210@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@210@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <= $unwrap(l$i) &&
;   $unwrap(l$i) <= 170141183460469231731687303715884105727
(declare-const $t@211@01 $Snap)
(assert (= $t@211@01 ($Snap.combine ($Snap.first $t@211@01) ($Snap.second $t@211@01))))
(assert (= ($Snap.first $t@211@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= $unwrap(l$i)
; [eval] -170141183460469231731687303715884105728
; [eval] $unwrap(l$i)
(assert (<= (- 0 170141183460469231731687303715884105728) ($unwrap<Int> l$i@180@01)))
(assert (= ($Snap.second $t@211@01) $Snap.unit))
; [eval] $unwrap(l$i) <= 170141183460469231731687303715884105727
; [eval] $unwrap(l$i)
(assert (<= ($unwrap<Int> l$i@180@01) 170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@212@01 $Snap)
(assert (= $t@212@01 ($Snap.combine ($Snap.first $t@212@01) ($Snap.second $t@212@01))))
(assert (= ($Snap.first $t@212@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@183@01 0))))
(assert (= ($Snap.second $t@212@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@183@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@213@01 $Snap)
(assert (= $t@213@01 ($Snap.combine ($Snap.first $t@213@01) ($Snap.second $t@213@01))))
(assert (= ($Snap.first $t@213@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@183@01 1))))
(assert (= ($Snap.second $t@213@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@183@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@214@01 $Snap)
(assert (= $t@214@01 ($Snap.combine ($Snap.first $t@214@01) ($Snap.second $t@214@01))))
(assert (= ($Snap.first $t@214@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@183@01 2))))
(assert (= ($Snap.second $t@214@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@183@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@215@01 $Snap)
(assert (= $t@215@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@183@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@216@01 $Snap)
(assert (= $t@216@01 ($Snap.combine ($Snap.first $t@216@01) ($Snap.second $t@216@01))))
(assert (= ($Snap.first $t@216@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@183@01 4))))
(assert (= ($Snap.second $t@216@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@183@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@217@01 $Snap)
(assert (= $t@217@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@183@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@218@01 $Snap)
(assert (= $t@218@01 ($Snap.combine ($Snap.first $t@218@01) ($Snap.second $t@218@01))))
(assert (= ($Snap.first $t@218@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@182@01 0))))
(assert (= ($Snap.second $t@218@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@182@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@219@01 $Snap)
(assert (= $t@219@01 ($Snap.combine ($Snap.first $t@219@01) ($Snap.second $t@219@01))))
(assert (= ($Snap.first $t@219@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@182@01 1))))
(assert (= ($Snap.second $t@219@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@182@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@220@01 $Snap)
(assert (= $t@220@01 ($Snap.combine ($Snap.first $t@220@01) ($Snap.second $t@220@01))))
(assert (= ($Snap.first $t@220@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@182@01 2))))
(assert (= ($Snap.second $t@220@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@182@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@221@01 $Snap)
(assert (= $t@221@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@182@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@222@01 $Snap)
(assert (= $t@222@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@182@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $t@223@01 $Snap)
(assert (= $t@223@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $a@224@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
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
(declare-const $t@225@01 $Snap)
(assert (= $t@225@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@182@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] $unwrap(l$i) < 0
; [eval] $unwrap(l$i)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< ($unwrap<Int> l$i@180@01) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< ($unwrap<Int> l$i@180@01) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 74 | $unwrap[Int](l$i@180@01) < 0 | live]
; [else-branch: 74 | !($unwrap[Int](l$i@180@01) < 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 74 | $unwrap[Int](l$i@180@01) < 0]
(assert (< ($unwrap<Int> l$i@180@01) 0))
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
; [exec]
; exhale $unwrap(l$i) < 0 ==> !$succ
; [eval] $unwrap(l$i) < 0 ==> !$succ
; [eval] $unwrap(l$i) < 0
; [eval] $unwrap(l$i)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< ($unwrap<Int> l$i@180@01) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 75 | $unwrap[Int](l$i@180@01) < 0 | live]
; [else-branch: 75 | !($unwrap[Int](l$i@180@01) < 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 75 | $unwrap[Int](l$i@180@01) < 0]
; [eval] !$succ
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [eval] !$succ
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 76 | True | live]
; [else-branch: 76 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 76 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@226@01 $Snap)
(assert (= $t@226@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@197@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@227@01 $Struct)
(assert (=
  self@227@01
  ($struct_set<$Struct> self@186@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@186@01 0))
    l$havoc@197@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 4
; [then-branch: 77 | False | dead]
; [else-branch: 77 | True | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 77 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 74 | !($unwrap[Int](l$i@180@01) < 0)]
(assert (not (< ($unwrap<Int> l$i@180@01) 0)))
(pop) ; 3
; [eval] !($unwrap(l$i) < 0)
; [eval] $unwrap(l$i) < 0
; [eval] $unwrap(l$i)
(push) ; 3
(set-option :timeout 10)
(assert (not (< ($unwrap<Int> l$i@180@01) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< ($unwrap<Int> l$i@180@01) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 78 | !($unwrap[Int](l$i@180@01) < 0) | live]
; [else-branch: 78 | $unwrap[Int](l$i@180@01) < 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 78 | !($unwrap[Int](l$i@180@01) < 0)]
(assert (not (< ($unwrap<Int> l$i@180@01) 0)))
; [exec]
; l$u := l$i
; [exec]
; label return
(push) ; 4
(set-option :timeout 10)
(assert (not (not $out_of_gas@196@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not $out_of_gas@196@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 79 | $out_of_gas@196@01 | live]
; [else-branch: 79 | !($out_of_gas@196@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 79 | $out_of_gas@196@01]
(assert $out_of_gas@196@01)
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
; [exec]
; exhale $unwrap(l$i) < 0 ==> !$succ
; [eval] $unwrap(l$i) < 0 ==> !$succ
; [eval] $unwrap(l$i) < 0
; [eval] $unwrap(l$i)
(push) ; 5
; [then-branch: 80 | $unwrap[Int](l$i@180@01) < 0 | dead]
; [else-branch: 80 | !($unwrap[Int](l$i@180@01) < 0) | live]
(push) ; 6
; [else-branch: 80 | !($unwrap[Int](l$i@180@01) < 0)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] !$succ
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 81 | True | live]
; [else-branch: 81 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 81 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@228@01 $Snap)
(assert (= $t@228@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@197@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@229@01 $Struct)
(assert (=
  self@229@01
  ($struct_set<$Struct> self@186@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@186@01 0))
    l$havoc@197@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 5
; [then-branch: 82 | False | dead]
; [else-branch: 82 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 82 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 79 | !($out_of_gas@196@01)]
(assert (not $out_of_gas@196@01))
(pop) ; 4
; [eval] !$out_of_gas
(push) ; 4
(set-option :timeout 10)
(assert (not $out_of_gas@196@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not $out_of_gas@196@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 83 | !($out_of_gas@196@01) | live]
; [else-branch: 83 | $out_of_gas@196@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 83 | !($out_of_gas@196@01)]
(assert (not $out_of_gas@196@01))
; [exec]
; label end
; [exec]
; exhale $unwrap(l$i) < 0 ==> !$succ
; [eval] $unwrap(l$i) < 0 ==> !$succ
; [eval] $unwrap(l$i) < 0
; [eval] $unwrap(l$i)
(push) ; 5
; [then-branch: 84 | $unwrap[Int](l$i@180@01) < 0 | dead]
; [else-branch: 84 | !($unwrap[Int](l$i@180@01) < 0) | live]
(push) ; 6
; [else-branch: 84 | !($unwrap[Int](l$i@180@01) < 0)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] !$succ
; [then-branch: 85 | False | dead]
; [else-branch: 85 | True | live]
(push) ; 5
; [else-branch: 85 | True]
(pop) ; 5
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 86 | True | live]
; [else-branch: 86 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 86 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@230@01 $Snap)
(assert (= $t@230@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@197@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@231@01 $Struct)
(assert (=
  self@231@01
  ($struct_set<$Struct> self@186@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@186@01 0))
    l$havoc@197@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 5
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 83 | $out_of_gas@196@01]
(assert $out_of_gas@196@01)
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 78 | $unwrap[Int](l$i@180@01) < 0]
(assert (< ($unwrap<Int> l$i@180@01) 0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$test_convert_overflow ----------
(declare-const l$u@232@01 $Int)
(declare-const $succ@233@01 Bool)
(declare-const l$u@234@01 $Int)
(declare-const $succ@235@01 Bool)
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
(declare-const msg@236@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@237@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@238@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@239@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@240@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@241@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@242@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@243@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@244@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@245@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@246@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@247@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@248@01 Bool)
; [exec]
; var l$i: $Int
(declare-const l$i@249@01 $Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@250@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@251@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@252@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@253@01 $Snap)
(assert (= $t@253@01 ($Snap.combine ($Snap.first $t@253@01) ($Snap.second $t@253@01))))
(assert (= ($Snap.first $t@253@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@240@01 0))))
(assert (= ($Snap.second $t@253@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@240@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@254@01 $Snap)
(assert (= $t@254@01 ($Snap.combine ($Snap.first $t@254@01) ($Snap.second $t@254@01))))
(assert (= ($Snap.first $t@254@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@240@01 1))))
(assert (= ($Snap.second $t@254@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@240@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@255@01 $Snap)
(assert (= $t@255@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@256@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(push) ; 4
; [then-branch: 87 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 3)), $q0@256@01)) | live]
; [else-branch: 87 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 3)), $q0@256@01) | live]
(push) ; 5
; [then-branch: 87 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 3)), $q0@256@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 3)) $q0@256@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 87 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 3)), $q0@256@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 3)) $q0@256@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 3)) $q0@256@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 3)) $q0@256@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@256@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 3)) $q0@256@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 3)) $q0@256@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 3)) $q0@256@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1011@11@1011@345-aux|)))
(assert (forall (($q0@256@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 3)) $q0@256@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 3)) $q0@256@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 3)) $q0@256@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1011@11@1011@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $t@257@01 $Snap)
(assert (= $t@257@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $q0@258@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@258@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 3)) $q0@258@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 3)) $q0@258@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1012@11@1012@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@259@01 $Snap)
(assert (= $t@259@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@260@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 88 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 4)), $q1@260@01)) | live]
; [else-branch: 88 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 4)), $q1@260@01) | live]
(push) ; 5
; [then-branch: 88 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 4)), $q1@260@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 4)) $q1@260@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 88 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 4)), $q1@260@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 4)) $q1@260@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 4)) $q1@260@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 4)) $q1@260@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@260@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 4)) $q1@260@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 4)) $q1@260@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 4)) $q1@260@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1013@11@1013@345-aux|)))
(assert (forall (($q1@260@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 4)) $q1@260@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 4)) $q1@260@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 4)) $q1@260@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1013@11@1013@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@261@01 $Snap)
(assert (= $t@261@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q1@262@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@262@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 4)) $q1@262@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 4)) $q1@262@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1014@11@1014@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@263@01 $Snap)
(assert (= $t@263@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@240@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@264@01 $Snap)
(assert (= $t@264@01 ($Snap.combine ($Snap.first $t@264@01) ($Snap.second $t@264@01))))
(assert (= ($Snap.first $t@264@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@264@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$u) &&
;   $unwrap(l$u) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@265@01 $Snap)
(assert (= $t@265@01 ($Snap.combine ($Snap.first $t@265@01) ($Snap.second $t@265@01))))
(assert (= ($Snap.first $t@265@01) $Snap.unit))
; [eval] 0 <= $unwrap(l$u)
; [eval] $unwrap(l$u)
(assert (<= 0 ($unwrap<Int> l$u@234@01)))
(assert (= ($Snap.second $t@265@01) $Snap.unit))
; [eval] $unwrap(l$u) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $unwrap(l$u)
(assert (<=
  ($unwrap<Int> l$u@234@01)
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@266@01 $Snap)
(assert (= $t@266@01 ($Snap.combine ($Snap.first $t@266@01) ($Snap.second $t@266@01))))
(assert (= ($Snap.first $t@266@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@237@01 0))))
(assert (= ($Snap.second $t@266@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@237@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@267@01 $Snap)
(assert (= $t@267@01 ($Snap.combine ($Snap.first $t@267@01) ($Snap.second $t@267@01))))
(assert (= ($Snap.first $t@267@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@237@01 1))))
(assert (= ($Snap.second $t@267@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@237@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@268@01 $Snap)
(assert (= $t@268@01 ($Snap.combine ($Snap.first $t@268@01) ($Snap.second $t@268@01))))
(assert (= ($Snap.first $t@268@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@237@01 2))))
(assert (= ($Snap.second $t@268@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@237@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@269@01 $Snap)
(assert (= $t@269@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@237@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@270@01 $Snap)
(assert (= $t@270@01 ($Snap.combine ($Snap.first $t@270@01) ($Snap.second $t@270@01))))
(assert (= ($Snap.first $t@270@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@237@01 4))))
(assert (= ($Snap.second $t@270@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@237@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@271@01 $Snap)
(assert (= $t@271@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@237@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@272@01 $Snap)
(assert (= $t@272@01 ($Snap.combine ($Snap.first $t@272@01) ($Snap.second $t@272@01))))
(assert (= ($Snap.first $t@272@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@236@01 0))))
(assert (= ($Snap.second $t@272@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@236@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@273@01 $Snap)
(assert (= $t@273@01 ($Snap.combine ($Snap.first $t@273@01) ($Snap.second $t@273@01))))
(assert (= ($Snap.first $t@273@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@236@01 1))))
(assert (= ($Snap.second $t@273@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@236@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@274@01 $Snap)
(assert (= $t@274@01 ($Snap.combine ($Snap.first $t@274@01) ($Snap.second $t@274@01))))
(assert (= ($Snap.first $t@274@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@236@01 2))))
(assert (= ($Snap.second $t@274@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@236@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@275@01 $Snap)
(assert (= $t@275@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@236@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@276@01 $Snap)
(assert (= $t@276@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@236@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $t@277@01 $Snap)
(assert (= $t@277@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $a@278@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
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
(declare-const $t@279@01 $Snap)
(assert (= $t@279@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@236@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] $unwrap(l$u) > 170141183460469231731687303715884105727
; [eval] $unwrap(l$u)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105727))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (> ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105727)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 89 | $unwrap[Int](l$u@234@01) > 170141183460469231731687303715884105727 | live]
; [else-branch: 89 | !($unwrap[Int](l$u@234@01) > 170141183460469231731687303715884105727) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 89 | $unwrap[Int](l$u@234@01) > 170141183460469231731687303715884105727]
(assert (> ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105727))
; [exec]
; $overflow := true
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
; [exec]
; exhale $unwrap(l$u) >= 170141183460469231731687303715884105728 ==> !$succ
; [eval] $unwrap(l$u) >= 170141183460469231731687303715884105728 ==> !$succ
; [eval] $unwrap(l$u) >= 170141183460469231731687303715884105728
; [eval] $unwrap(l$u)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (>= ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105728))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (>= ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105728)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 90 | $unwrap[Int](l$u@234@01) >= 170141183460469231731687303715884105728 | live]
; [else-branch: 90 | !($unwrap[Int](l$u@234@01) >= 170141183460469231731687303715884105728) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 90 | $unwrap[Int](l$u@234@01) >= 170141183460469231731687303715884105728]
(assert (>= ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105728))
; [eval] !$succ
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (>= ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105728))
; [eval] !$succ
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 91 | True | live]
; [else-branch: 91 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 91 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@280@01 $Snap)
(assert (= $t@280@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@251@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@281@01 $Struct)
(assert (=
  self@281@01
  ($struct_set<$Struct> self@240@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@240@01 0))
    l$havoc@251@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 4
; [then-branch: 92 | False | dead]
; [else-branch: 92 | True | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 92 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 89 | !($unwrap[Int](l$u@234@01) > 170141183460469231731687303715884105727)]
(assert (not (> ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105727)))
(pop) ; 3
; [eval] !($unwrap(l$u) > 170141183460469231731687303715884105727)
; [eval] $unwrap(l$u) > 170141183460469231731687303715884105727
; [eval] $unwrap(l$u)
(push) ; 3
(set-option :timeout 10)
(assert (not (> ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105727)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105727))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 93 | !($unwrap[Int](l$u@234@01) > 170141183460469231731687303715884105727) | live]
; [else-branch: 93 | $unwrap[Int](l$u@234@01) > 170141183460469231731687303715884105727 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 93 | !($unwrap[Int](l$u@234@01) > 170141183460469231731687303715884105727)]
(assert (not (> ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105727)))
; [exec]
; l$i := l$u
; [exec]
; label return
(push) ; 4
(set-option :timeout 10)
(assert (not (not $out_of_gas@250@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not $out_of_gas@250@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 94 | $out_of_gas@250@01 | live]
; [else-branch: 94 | !($out_of_gas@250@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 94 | $out_of_gas@250@01]
(assert $out_of_gas@250@01)
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
; [exec]
; exhale $unwrap(l$u) >= 170141183460469231731687303715884105728 ==> !$succ
; [eval] $unwrap(l$u) >= 170141183460469231731687303715884105728 ==> !$succ
; [eval] $unwrap(l$u) >= 170141183460469231731687303715884105728
; [eval] $unwrap(l$u)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (>= ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105728))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 95 | $unwrap[Int](l$u@234@01) >= 170141183460469231731687303715884105728 | dead]
; [else-branch: 95 | !($unwrap[Int](l$u@234@01) >= 170141183460469231731687303715884105728) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 95 | !($unwrap[Int](l$u@234@01) >= 170141183460469231731687303715884105728)]
(assert (not (>= ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105728)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (not (>= ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105728)))
; [eval] !$succ
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 96 | True | live]
; [else-branch: 96 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 96 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@282@01 $Snap)
(assert (= $t@282@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@251@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@283@01 $Struct)
(assert (=
  self@283@01
  ($struct_set<$Struct> self@240@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@240@01 0))
    l$havoc@251@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 5
; [then-branch: 97 | False | dead]
; [else-branch: 97 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 97 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 94 | !($out_of_gas@250@01)]
(assert (not $out_of_gas@250@01))
(pop) ; 4
; [eval] !$out_of_gas
(push) ; 4
(set-option :timeout 10)
(assert (not $out_of_gas@250@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not $out_of_gas@250@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 98 | !($out_of_gas@250@01) | live]
; [else-branch: 98 | $out_of_gas@250@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 98 | !($out_of_gas@250@01)]
(assert (not $out_of_gas@250@01))
; [exec]
; label end
; [exec]
; exhale $unwrap(l$u) >= 170141183460469231731687303715884105728 ==> !$succ
; [eval] $unwrap(l$u) >= 170141183460469231731687303715884105728 ==> !$succ
; [eval] $unwrap(l$u) >= 170141183460469231731687303715884105728
; [eval] $unwrap(l$u)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (>= ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105728))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 99 | $unwrap[Int](l$u@234@01) >= 170141183460469231731687303715884105728 | dead]
; [else-branch: 99 | !($unwrap[Int](l$u@234@01) >= 170141183460469231731687303715884105728) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 99 | !($unwrap[Int](l$u@234@01) >= 170141183460469231731687303715884105728)]
(assert (not (>= ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105728)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (not (>= ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105728)))
; [eval] !$succ
; [then-branch: 100 | False | dead]
; [else-branch: 100 | True | live]
(push) ; 5
; [else-branch: 100 | True]
(pop) ; 5
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 101 | True | live]
; [else-branch: 101 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 101 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@284@01 $Snap)
(assert (= $t@284@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@251@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@285@01 $Struct)
(assert (=
  self@285@01
  ($struct_set<$Struct> self@240@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@240@01 0))
    l$havoc@251@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 5
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 98 | $out_of_gas@250@01]
(assert $out_of_gas@250@01)
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 93 | $unwrap[Int](l$u@234@01) > 170141183460469231731687303715884105727]
(assert (> ($unwrap<Int> l$u@234@01) 170141183460469231731687303715884105727))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$test_convert_decimal_overflow ----------
(declare-const l$u@286@01 $Int)
(declare-const $succ@287@01 Bool)
(declare-const l$u@288@01 $Int)
(declare-const $succ@289@01 Bool)
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
(declare-const msg@290@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@291@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@292@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@293@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@294@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@295@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@296@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@297@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@298@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@299@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@300@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@301@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@302@01 Bool)
; [exec]
; var l$d: $Int
(declare-const l$d@303@01 $Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@304@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@305@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@306@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@307@01 $Snap)
(assert (= $t@307@01 ($Snap.combine ($Snap.first $t@307@01) ($Snap.second $t@307@01))))
(assert (= ($Snap.first $t@307@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@294@01 0))))
(assert (= ($Snap.second $t@307@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@294@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@308@01 $Snap)
(assert (= $t@308@01 ($Snap.combine ($Snap.first $t@308@01) ($Snap.second $t@308@01))))
(assert (= ($Snap.first $t@308@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@294@01 1))))
(assert (= ($Snap.second $t@308@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@294@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@309@01 $Snap)
(assert (= $t@309@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@310@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(push) ; 4
; [then-branch: 102 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@294@01, 3)), $q0@310@01)) | live]
; [else-branch: 102 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@294@01, 3)), $q0@310@01) | live]
(push) ; 5
; [then-branch: 102 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@294@01, 3)), $q0@310@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 3)) $q0@310@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 102 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@294@01, 3)), $q0@310@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 3)) $q0@310@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 3)) $q0@310@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 3)) $q0@310@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@310@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 3)) $q0@310@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 3)) $q0@310@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 3)) $q0@310@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1099@11@1099@345-aux|)))
(assert (forall (($q0@310@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 3)) $q0@310@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 3)) $q0@310@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 3)) $q0@310@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1099@11@1099@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $t@311@01 $Snap)
(assert (= $t@311@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $q0@312@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@312@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 3)) $q0@312@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 3)) $q0@312@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1100@11@1100@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@313@01 $Snap)
(assert (= $t@313@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@314@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 103 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@294@01, 4)), $q1@314@01)) | live]
; [else-branch: 103 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@294@01, 4)), $q1@314@01) | live]
(push) ; 5
; [then-branch: 103 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@294@01, 4)), $q1@314@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 4)) $q1@314@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 103 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@294@01, 4)), $q1@314@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 4)) $q1@314@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 4)) $q1@314@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 4)) $q1@314@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@314@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 4)) $q1@314@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 4)) $q1@314@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 4)) $q1@314@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1101@11@1101@345-aux|)))
(assert (forall (($q1@314@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 4)) $q1@314@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 4)) $q1@314@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 4)) $q1@314@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1101@11@1101@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@315@01 $Snap)
(assert (= $t@315@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q1@316@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@316@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 4)) $q1@316@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@294@01 4)) $q1@316@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1102@11@1102@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@317@01 $Snap)
(assert (= $t@317@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@294@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@318@01 $Snap)
(assert (= $t@318@01 ($Snap.combine ($Snap.first $t@318@01) ($Snap.second $t@318@01))))
(assert (= ($Snap.first $t@318@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@318@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$u) &&
;   $unwrap(l$u) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@319@01 $Snap)
(assert (= $t@319@01 ($Snap.combine ($Snap.first $t@319@01) ($Snap.second $t@319@01))))
(assert (= ($Snap.first $t@319@01) $Snap.unit))
; [eval] 0 <= $unwrap(l$u)
; [eval] $unwrap(l$u)
(assert (<= 0 ($unwrap<Int> l$u@288@01)))
(assert (= ($Snap.second $t@319@01) $Snap.unit))
; [eval] $unwrap(l$u) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $unwrap(l$u)
(assert (<=
  ($unwrap<Int> l$u@288@01)
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@320@01 $Snap)
(assert (= $t@320@01 ($Snap.combine ($Snap.first $t@320@01) ($Snap.second $t@320@01))))
(assert (= ($Snap.first $t@320@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@291@01 0))))
(assert (= ($Snap.second $t@320@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@291@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@321@01 $Snap)
(assert (= $t@321@01 ($Snap.combine ($Snap.first $t@321@01) ($Snap.second $t@321@01))))
(assert (= ($Snap.first $t@321@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@291@01 1))))
(assert (= ($Snap.second $t@321@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@291@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@322@01 $Snap)
(assert (= $t@322@01 ($Snap.combine ($Snap.first $t@322@01) ($Snap.second $t@322@01))))
(assert (= ($Snap.first $t@322@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@291@01 2))))
(assert (= ($Snap.second $t@322@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@291@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@323@01 $Snap)
(assert (= $t@323@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@291@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@324@01 $Snap)
(assert (= $t@324@01 ($Snap.combine ($Snap.first $t@324@01) ($Snap.second $t@324@01))))
(assert (= ($Snap.first $t@324@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@291@01 4))))
(assert (= ($Snap.second $t@324@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@291@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@325@01 $Snap)
(assert (= $t@325@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@291@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@326@01 $Snap)
(assert (= $t@326@01 ($Snap.combine ($Snap.first $t@326@01) ($Snap.second $t@326@01))))
(assert (= ($Snap.first $t@326@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@290@01 0))))
(assert (= ($Snap.second $t@326@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@290@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@327@01 $Snap)
(assert (= $t@327@01 ($Snap.combine ($Snap.first $t@327@01) ($Snap.second $t@327@01))))
(assert (= ($Snap.first $t@327@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@290@01 1))))
(assert (= ($Snap.second $t@327@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@290@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@328@01 $Snap)
(assert (= $t@328@01 ($Snap.combine ($Snap.first $t@328@01) ($Snap.second $t@328@01))))
(assert (= ($Snap.first $t@328@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@290@01 2))))
(assert (= ($Snap.second $t@328@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@290@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@329@01 $Snap)
(assert (= $t@329@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@290@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@330@01 $Snap)
(assert (= $t@330@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@290@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $t@331@01 $Snap)
(assert (= $t@331@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $a@332@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
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
(declare-const $t@333@01 $Snap)
(assert (= $t@333@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@290@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] $unwrap(l$u) * 10000000000 > 1701411834604692317316873037158841057270000000000
; [eval] $unwrap(l$u) * 10000000000
; [eval] $unwrap(l$u)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (>
    (* ($unwrap<Int> l$u@288@01) 10000000000)
    1701411834604692317316873037158841057270000000000))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (>
  (* ($unwrap<Int> l$u@288@01) 10000000000)
  1701411834604692317316873037158841057270000000000)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 104 | $unwrap[Int](l$u@288@01) * 10000000000 > 1701411834604692317316873037158841057270000000000 | live]
; [else-branch: 104 | !($unwrap[Int](l$u@288@01) * 10000000000 > 1701411834604692317316873037158841057270000000000) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 104 | $unwrap[Int](l$u@288@01) * 10000000000 > 1701411834604692317316873037158841057270000000000]
(assert (>
  (* ($unwrap<Int> l$u@288@01) 10000000000)
  1701411834604692317316873037158841057270000000000))
; [exec]
; $overflow := true
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
; [exec]
; exhale $unwrap(l$u) >= 170141183460469231731687303715884105728 ==> !$succ
; [eval] $unwrap(l$u) >= 170141183460469231731687303715884105728 ==> !$succ
; [eval] $unwrap(l$u) >= 170141183460469231731687303715884105728
; [eval] $unwrap(l$u)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (>= ($unwrap<Int> l$u@288@01) 170141183460469231731687303715884105728))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (>= ($unwrap<Int> l$u@288@01) 170141183460469231731687303715884105728)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 105 | $unwrap[Int](l$u@288@01) >= 170141183460469231731687303715884105728 | live]
; [else-branch: 105 | !($unwrap[Int](l$u@288@01) >= 170141183460469231731687303715884105728) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 105 | $unwrap[Int](l$u@288@01) >= 170141183460469231731687303715884105728]
(assert (>= ($unwrap<Int> l$u@288@01) 170141183460469231731687303715884105728))
; [eval] !$succ
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (>= ($unwrap<Int> l$u@288@01) 170141183460469231731687303715884105728))
; [eval] !$succ
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 106 | True | live]
; [else-branch: 106 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 106 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@334@01 $Snap)
(assert (= $t@334@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@305@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@335@01 $Struct)
(assert (=
  self@335@01
  ($struct_set<$Struct> self@294@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@294@01 0))
    l$havoc@305@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 4
; [then-branch: 107 | False | dead]
; [else-branch: 107 | True | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 107 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 104 | !($unwrap[Int](l$u@288@01) * 10000000000 > 1701411834604692317316873037158841057270000000000)]
(assert (not
  (>
    (* ($unwrap<Int> l$u@288@01) 10000000000)
    1701411834604692317316873037158841057270000000000)))
(pop) ; 3
; [eval] !($unwrap(l$u) * 10000000000 > 1701411834604692317316873037158841057270000000000)
; [eval] $unwrap(l$u) * 10000000000 > 1701411834604692317316873037158841057270000000000
; [eval] $unwrap(l$u) * 10000000000
; [eval] $unwrap(l$u)
(push) ; 3
(set-option :timeout 10)
(assert (not (>
  (* ($unwrap<Int> l$u@288@01) 10000000000)
  1701411834604692317316873037158841057270000000000)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (>
    (* ($unwrap<Int> l$u@288@01) 10000000000)
    1701411834604692317316873037158841057270000000000))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 108 | !($unwrap[Int](l$u@288@01) * 10000000000 > 1701411834604692317316873037158841057270000000000) | live]
; [else-branch: 108 | $unwrap[Int](l$u@288@01) * 10000000000 > 1701411834604692317316873037158841057270000000000 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 108 | !($unwrap[Int](l$u@288@01) * 10000000000 > 1701411834604692317316873037158841057270000000000)]
(assert (not
  (>
    (* ($unwrap<Int> l$u@288@01) 10000000000)
    1701411834604692317316873037158841057270000000000)))
; [exec]
; l$d := $wrap($unwrap(l$u) * 10000000000)
; [eval] $wrap($unwrap(l$u) * 10000000000)
; [eval] $unwrap(l$u) * 10000000000
; [eval] $unwrap(l$u)
(declare-const l$d@336@01 $Int)
(assert (= l$d@336@01 ($wrap<$Int> (* ($unwrap<Int> l$u@288@01) 10000000000))))
; [exec]
; label return
(push) ; 4
(set-option :timeout 10)
(assert (not (not $out_of_gas@304@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not $out_of_gas@304@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 109 | $out_of_gas@304@01 | live]
; [else-branch: 109 | !($out_of_gas@304@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 109 | $out_of_gas@304@01]
(assert $out_of_gas@304@01)
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
; [exec]
; exhale $unwrap(l$u) >= 170141183460469231731687303715884105728 ==> !$succ
; [eval] $unwrap(l$u) >= 170141183460469231731687303715884105728 ==> !$succ
; [eval] $unwrap(l$u) >= 170141183460469231731687303715884105728
; [eval] $unwrap(l$u)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (>= ($unwrap<Int> l$u@288@01) 170141183460469231731687303715884105728))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 110 | $unwrap[Int](l$u@288@01) >= 170141183460469231731687303715884105728 | dead]
; [else-branch: 110 | !($unwrap[Int](l$u@288@01) >= 170141183460469231731687303715884105728) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 110 | !($unwrap[Int](l$u@288@01) >= 170141183460469231731687303715884105728)]
(assert (not (>= ($unwrap<Int> l$u@288@01) 170141183460469231731687303715884105728)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (not (>= ($unwrap<Int> l$u@288@01) 170141183460469231731687303715884105728)))
; [eval] !$succ
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 111 | True | live]
; [else-branch: 111 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 111 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@337@01 $Snap)
(assert (= $t@337@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@305@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@338@01 $Struct)
(assert (=
  self@338@01
  ($struct_set<$Struct> self@294@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@294@01 0))
    l$havoc@305@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 5
; [then-branch: 112 | False | dead]
; [else-branch: 112 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 112 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 109 | !($out_of_gas@304@01)]
(assert (not $out_of_gas@304@01))
(pop) ; 4
; [eval] !$out_of_gas
(push) ; 4
(set-option :timeout 10)
(assert (not $out_of_gas@304@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not $out_of_gas@304@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 113 | !($out_of_gas@304@01) | live]
; [else-branch: 113 | $out_of_gas@304@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 113 | !($out_of_gas@304@01)]
(assert (not $out_of_gas@304@01))
; [exec]
; label end
; [exec]
; exhale $unwrap(l$u) >= 170141183460469231731687303715884105728 ==> !$succ
; [eval] $unwrap(l$u) >= 170141183460469231731687303715884105728 ==> !$succ
; [eval] $unwrap(l$u) >= 170141183460469231731687303715884105728
; [eval] $unwrap(l$u)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (>= ($unwrap<Int> l$u@288@01) 170141183460469231731687303715884105728))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 114 | $unwrap[Int](l$u@288@01) >= 170141183460469231731687303715884105728 | dead]
; [else-branch: 114 | !($unwrap[Int](l$u@288@01) >= 170141183460469231731687303715884105728) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 114 | !($unwrap[Int](l$u@288@01) >= 170141183460469231731687303715884105728)]
(assert (not (>= ($unwrap<Int> l$u@288@01) 170141183460469231731687303715884105728)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (not (>= ($unwrap<Int> l$u@288@01) 170141183460469231731687303715884105728)))
; [eval] !$succ
; [then-branch: 115 | False | dead]
; [else-branch: 115 | True | live]
(push) ; 5
; [else-branch: 115 | True]
(pop) ; 5
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 116 | True | live]
; [else-branch: 116 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 116 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@339@01 $Snap)
(assert (= $t@339@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@305@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@340@01 $Struct)
(assert (=
  self@340@01
  ($struct_set<$Struct> self@294@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@294@01 0))
    l$havoc@305@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 5
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 113 | $out_of_gas@304@01]
(assert $out_of_gas@304@01)
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 108 | $unwrap[Int](l$u@288@01) * 10000000000 > 1701411834604692317316873037158841057270000000000]
(assert (>
  (* ($unwrap<Int> l$u@288@01) 10000000000)
  1701411834604692317316873037158841057270000000000))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$test_convert_bytes ----------
(declare-const l$bb@341@01 Seq<Int>)
(declare-const l$bc@342@01 Seq<Int>)
(declare-const $succ@343@01 Bool)
(declare-const l$bb@344@01 Seq<Int>)
(declare-const l$bc@345@01 Seq<Int>)
(declare-const $succ@346@01 Bool)
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
(declare-const msg@347@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@348@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@349@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@350@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@351@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@352@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@353@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@354@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@355@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@356@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@357@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@358@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@359@01 Bool)
; [exec]
; var l$sc: Seq[Int]
(declare-const l$sc@360@01 Seq<Int>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@361@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@362@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@363@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@364@01 $Snap)
(assert (= $t@364@01 ($Snap.combine ($Snap.first $t@364@01) ($Snap.second $t@364@01))))
(assert (= ($Snap.first $t@364@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@351@01 0))))
(assert (= ($Snap.second $t@364@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@351@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@365@01 $Snap)
(assert (= $t@365@01 ($Snap.combine ($Snap.first $t@365@01) ($Snap.second $t@365@01))))
(assert (= ($Snap.first $t@365@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@351@01 1))))
(assert (= ($Snap.second $t@365@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@351@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@366@01 $Snap)
(assert (= $t@366@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@367@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(push) ; 4
; [then-branch: 117 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@351@01, 3)), $q0@367@01)) | live]
; [else-branch: 117 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@351@01, 3)), $q0@367@01) | live]
(push) ; 5
; [then-branch: 117 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@351@01, 3)), $q0@367@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 3)) $q0@367@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 117 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@351@01, 3)), $q0@367@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 3)) $q0@367@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 3)) $q0@367@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 3)) $q0@367@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@367@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 3)) $q0@367@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 3)) $q0@367@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 3)) $q0@367@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1187@11@1187@345-aux|)))
(assert (forall (($q0@367@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 3)) $q0@367@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 3)) $q0@367@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 3)) $q0@367@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1187@11@1187@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $t@368@01 $Snap)
(assert (= $t@368@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $q0@369@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@369@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 3)) $q0@369@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 3)) $q0@369@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1188@11@1188@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@370@01 $Snap)
(assert (= $t@370@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@371@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 118 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@351@01, 4)), $q1@371@01)) | live]
; [else-branch: 118 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@351@01, 4)), $q1@371@01) | live]
(push) ; 5
; [then-branch: 118 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@351@01, 4)), $q1@371@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 4)) $q1@371@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 118 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@351@01, 4)), $q1@371@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 4)) $q1@371@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 4)) $q1@371@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 4)) $q1@371@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@371@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 4)) $q1@371@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 4)) $q1@371@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 4)) $q1@371@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1189@11@1189@345-aux|)))
(assert (forall (($q1@371@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 4)) $q1@371@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 4)) $q1@371@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 4)) $q1@371@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1189@11@1189@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@372@01 $Snap)
(assert (= $t@372@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q1@373@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@373@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 4)) $q1@373@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@351@01 4)) $q1@373@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1190@11@1190@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@374@01 $Snap)
(assert (= $t@374@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@351@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@375@01 $Snap)
(assert (= $t@375@01 ($Snap.combine ($Snap.first $t@375@01) ($Snap.second $t@375@01))))
(assert (= ($Snap.first $t@375@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@375@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |l$bb| <= 3
(declare-const $t@376@01 $Snap)
(assert (= $t@376@01 $Snap.unit))
; [eval] |l$bb| <= 3
; [eval] |l$bb|
(assert (<= (Seq_length l$bb@344@01) 3))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |l$bc| <= 3
(declare-const $t@377@01 $Snap)
(assert (= $t@377@01 $Snap.unit))
; [eval] |l$bc| <= 3
; [eval] |l$bc|
(assert (<= (Seq_length l$bc@345@01) 3))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@378@01 $Snap)
(assert (= $t@378@01 ($Snap.combine ($Snap.first $t@378@01) ($Snap.second $t@378@01))))
(assert (= ($Snap.first $t@378@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@348@01 0))))
(assert (= ($Snap.second $t@378@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@348@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@379@01 $Snap)
(assert (= $t@379@01 ($Snap.combine ($Snap.first $t@379@01) ($Snap.second $t@379@01))))
(assert (= ($Snap.first $t@379@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@348@01 1))))
(assert (= ($Snap.second $t@379@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@348@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@380@01 $Snap)
(assert (= $t@380@01 ($Snap.combine ($Snap.first $t@380@01) ($Snap.second $t@380@01))))
(assert (= ($Snap.first $t@380@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@348@01 2))))
(assert (= ($Snap.second $t@380@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@348@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@381@01 $Snap)
(assert (= $t@381@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@348@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@382@01 $Snap)
(assert (= $t@382@01 ($Snap.combine ($Snap.first $t@382@01) ($Snap.second $t@382@01))))
(assert (= ($Snap.first $t@382@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@348@01 4))))
(assert (= ($Snap.second $t@382@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@348@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@383@01 $Snap)
(assert (= $t@383@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@348@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@384@01 $Snap)
(assert (= $t@384@01 ($Snap.combine ($Snap.first $t@384@01) ($Snap.second $t@384@01))))
(assert (= ($Snap.first $t@384@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@347@01 0))))
(assert (= ($Snap.second $t@384@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@347@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@385@01 $Snap)
(assert (= $t@385@01 ($Snap.combine ($Snap.first $t@385@01) ($Snap.second $t@385@01))))
(assert (= ($Snap.first $t@385@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@347@01 1))))
(assert (= ($Snap.second $t@385@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@347@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@386@01 $Snap)
(assert (= $t@386@01 ($Snap.combine ($Snap.first $t@386@01) ($Snap.second $t@386@01))))
(assert (= ($Snap.first $t@386@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@347@01 2))))
(assert (= ($Snap.second $t@386@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@347@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@387@01 $Snap)
(assert (= $t@387@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@347@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@388@01 $Snap)
(assert (= $t@388@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@347@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $t@389@01 $Snap)
(assert (= $t@389@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $a@390@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
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
(declare-const $t@391@01 $Snap)
(assert (= $t@391@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@347@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] !(($pad32(l$bc) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == false)
; [eval] ($pad32(l$bc) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == false
; [eval] $pad32(l$bc) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
; [eval] $pad32(l$bc)
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_singleton 0)
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))
      (Seq_singleton 0)))
  32))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (not
    (Seq_equal
      ($pad32<Seq<Int>> l$bc@345@01)
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_singleton 0)
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))))
  false)))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    (not
      (Seq_equal
        ($pad32<Seq<Int>> l$bc@345@01)
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_append
                                                                      (Seq_singleton 0)
                                                                      (Seq_singleton 0))
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))))
    false))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; [then-branch: 119 | !($pad32[Seq[Int]](l$bc@345@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) != False | live]
; [else-branch: 119 | !($pad32[Seq[Int]](l$bc@345@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) == False | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 119 | !($pad32[Seq[Int]](l$bc@345@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) != False]
(assert (not
  (=
    (not
      (Seq_equal
        ($pad32<Seq<Int>> l$bc@345@01)
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_append
                                                                      (Seq_singleton 0)
                                                                      (Seq_singleton 0))
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))))
    false)))
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
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
; [then-branch: 120 | True | live]
; [else-branch: 120 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 120 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@392@01 $Snap)
(assert (= $t@392@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@362@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@393@01 $Struct)
(assert (=
  self@393@01
  ($struct_set<$Struct> self@351@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@351@01 0))
    l$havoc@362@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 4
; [then-branch: 121 | False | dead]
; [else-branch: 121 | True | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 121 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 119 | !($pad32[Seq[Int]](l$bc@345@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) == False]
(assert (=
  (not
    (Seq_equal
      ($pad32<Seq<Int>> l$bc@345@01)
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_singleton 0)
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))))
  false))
(pop) ; 3
; [eval] !!(($pad32(l$bc) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == false)
; [eval] !(($pad32(l$bc) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == false)
; [eval] ($pad32(l$bc) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == false
; [eval] $pad32(l$bc) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
; [eval] $pad32(l$bc)
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    (not
      (Seq_equal
        ($pad32<Seq<Int>> l$bc@345@01)
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_append
                                                                      (Seq_singleton 0)
                                                                      (Seq_singleton 0))
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))))
    false))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (not
    (Seq_equal
      ($pad32<Seq<Int>> l$bc@345@01)
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_singleton 0)
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))))
  false)))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; [then-branch: 122 | !($pad32[Seq[Int]](l$bc@345@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) == False | live]
; [else-branch: 122 | !($pad32[Seq[Int]](l$bc@345@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) != False | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 122 | !($pad32[Seq[Int]](l$bc@345@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) == False]
(assert (=
  (not
    (Seq_equal
      ($pad32<Seq<Int>> l$bc@345@01)
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_singleton 0)
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))))
  false))
; [eval] !(($pad32(l$bb) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == true)
; [eval] ($pad32(l$bb) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == true
; [eval] $pad32(l$bb) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
; [eval] $pad32(l$bb)
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (not
    (Seq_equal
      ($pad32<Seq<Int>> l$bb@344@01)
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_singleton 0)
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))))
  true)))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    (not
      (Seq_equal
        ($pad32<Seq<Int>> l$bb@344@01)
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_append
                                                                      (Seq_singleton 0)
                                                                      (Seq_singleton 0))
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))))
    true))))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
; [then-branch: 123 | !($pad32[Seq[Int]](l$bb@344@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) != True | live]
; [else-branch: 123 | !($pad32[Seq[Int]](l$bb@344@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) == True | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 123 | !($pad32[Seq[Int]](l$bb@344@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) != True]
(assert (not
  (=
    (not
      (Seq_equal
        ($pad32<Seq<Int>> l$bb@344@01)
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_append
                                                                      (Seq_singleton 0)
                                                                      (Seq_singleton 0))
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))))
    true)))
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
; 0.01s
; (get-info :all-statistics)
; [then-branch: 124 | True | live]
; [else-branch: 124 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 124 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@394@01 $Snap)
(assert (= $t@394@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@362@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@395@01 $Struct)
(assert (=
  self@395@01
  ($struct_set<$Struct> self@351@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@351@01 0))
    l$havoc@362@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 5
; [then-branch: 125 | False | dead]
; [else-branch: 125 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 125 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 123 | !($pad32[Seq[Int]](l$bb@344@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) == True]
(assert (=
  (not
    (Seq_equal
      ($pad32<Seq<Int>> l$bb@344@01)
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_singleton 0)
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))))
  true))
(pop) ; 4
; [eval] !!(($pad32(l$bb) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == true)
; [eval] !(($pad32(l$bb) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == true)
; [eval] ($pad32(l$bb) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == true
; [eval] $pad32(l$bb) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
; [eval] $pad32(l$bb)
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    (not
      (Seq_equal
        ($pad32<Seq<Int>> l$bb@344@01)
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_append
                                                                      (Seq_singleton 0)
                                                                      (Seq_singleton 0))
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))))
    true))))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (not
    (Seq_equal
      ($pad32<Seq<Int>> l$bb@344@01)
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_singleton 0)
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))))
  true)))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
; [then-branch: 126 | !($pad32[Seq[Int]](l$bb@344@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) == True | live]
; [else-branch: 126 | !($pad32[Seq[Int]](l$bb@344@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) != True | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 126 | !($pad32[Seq[Int]](l$bb@344@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) == True]
(assert (=
  (not
    (Seq_equal
      ($pad32<Seq<Int>> l$bb@344@01)
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_singleton 0)
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))))
  true))
; [exec]
; l$sc := l$bc ++ l$bb
; [eval] l$bc ++ l$bb
(declare-const l$sc@396@01 Seq<Int>)
(assert (= l$sc@396@01 (Seq_append l$bc@345@01 l$bb@344@01)))
; [exec]
; assert ($pad32(l$sc) !=
;   Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
;   0, 0, 0, 0, 0, 0, 0, 0)) ==
;   true
; [eval] ($pad32(l$sc) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)) == true
; [eval] $pad32(l$sc) != Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
; [eval] $pad32(l$sc)
; [eval] Seq(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
(push) ; 5
(assert (not (=
  (not
    (Seq_equal
      ($pad32<Seq<Int>> l$sc@396@01)
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_singleton 0)
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))))
  true)))
(check-sat)
; unsat
(pop) ; 5
; 2.21s
; (get-info :all-statistics)
(assert (=
  (not
    (Seq_equal
      ($pad32<Seq<Int>> l$sc@396@01)
      (Seq_append
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_singleton 0)
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))
        (Seq_singleton 0))))
  true))
; [exec]
; label return
(push) ; 5
(set-option :timeout 10)
(assert (not (not $out_of_gas@361@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not $out_of_gas@361@01))
(check-sat)
; unknown
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
; [then-branch: 127 | $out_of_gas@361@01 | live]
; [else-branch: 127 | !($out_of_gas@361@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 127 | $out_of_gas@361@01]
(assert $out_of_gas@361@01)
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
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
; [then-branch: 128 | True | live]
; [else-branch: 128 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 128 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@397@01 $Snap)
(assert (= $t@397@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@362@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@398@01 $Struct)
(assert (=
  self@398@01
  ($struct_set<$Struct> self@351@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@351@01 0))
    l$havoc@362@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 6
; [then-branch: 129 | False | dead]
; [else-branch: 129 | True | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 129 | True]
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 127 | !($out_of_gas@361@01)]
(assert (not $out_of_gas@361@01))
(pop) ; 5
; [eval] !$out_of_gas
(push) ; 5
(set-option :timeout 10)
(assert (not $out_of_gas@361@01))
(check-sat)
; unknown
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not $out_of_gas@361@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
; [then-branch: 130 | !($out_of_gas@361@01) | live]
; [else-branch: 130 | $out_of_gas@361@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 130 | !($out_of_gas@361@01)]
(assert (not $out_of_gas@361@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 131 | False | dead]
; [else-branch: 131 | True | live]
(push) ; 6
; [else-branch: 131 | True]
(pop) ; 6
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
; [then-branch: 132 | True | live]
; [else-branch: 132 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 132 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@399@01 $Snap)
(assert (= $t@399@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@362@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@400@01 $Struct)
(assert (=
  self@400@01
  ($struct_set<$Struct> self@351@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@351@01 0))
    l$havoc@362@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 6
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 130 | $out_of_gas@361@01]
(assert $out_of_gas@361@01)
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 126 | !($pad32[Seq[Int]](l$bb@344@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) != True]
(assert (not
  (=
    (not
      (Seq_equal
        ($pad32<Seq<Int>> l$bb@344@01)
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_append
                                                                      (Seq_singleton 0)
                                                                      (Seq_singleton 0))
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))))
    true)))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 122 | !($pad32[Seq[Int]](l$bc@345@01) === [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0] ++ [0]) != False]
(assert (not
  (=
    (not
      (Seq_equal
        ($pad32<Seq<Int>> l$bc@345@01)
        (Seq_append
          (Seq_append
            (Seq_append
              (Seq_append
                (Seq_append
                  (Seq_append
                    (Seq_append
                      (Seq_append
                        (Seq_append
                          (Seq_append
                            (Seq_append
                              (Seq_append
                                (Seq_append
                                  (Seq_append
                                    (Seq_append
                                      (Seq_append
                                        (Seq_append
                                          (Seq_append
                                            (Seq_append
                                              (Seq_append
                                                (Seq_append
                                                  (Seq_append
                                                    (Seq_append
                                                      (Seq_append
                                                        (Seq_append
                                                          (Seq_append
                                                            (Seq_append
                                                              (Seq_append
                                                                (Seq_append
                                                                  (Seq_append
                                                                    (Seq_append
                                                                      (Seq_singleton 0)
                                                                      (Seq_singleton 0))
                                                                    (Seq_singleton 0))
                                                                  (Seq_singleton 0))
                                                                (Seq_singleton 0))
                                                              (Seq_singleton 0))
                                                            (Seq_singleton 0))
                                                          (Seq_singleton 0))
                                                        (Seq_singleton 0))
                                                      (Seq_singleton 0))
                                                    (Seq_singleton 0))
                                                  (Seq_singleton 0))
                                                (Seq_singleton 0))
                                              (Seq_singleton 0))
                                            (Seq_singleton 0))
                                          (Seq_singleton 0))
                                        (Seq_singleton 0))
                                      (Seq_singleton 0))
                                    (Seq_singleton 0))
                                  (Seq_singleton 0))
                                (Seq_singleton 0))
                              (Seq_singleton 0))
                            (Seq_singleton 0))
                          (Seq_singleton 0))
                        (Seq_singleton 0))
                      (Seq_singleton 0))
                    (Seq_singleton 0))
                  (Seq_singleton 0))
                (Seq_singleton 0))
              (Seq_singleton 0))
            (Seq_singleton 0))
          (Seq_singleton 0))))
    false)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$check ----------
(declare-const $succ@401@01 Bool)
(declare-const $succ@402@01 Bool)
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
(declare-const msg@403@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@404@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@405@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@406@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@407@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@408@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@409@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@410@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@411@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@412@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@413@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@414@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@415@01 Bool)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@416@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@417@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@418@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@419@01 $Snap)
(assert (= $t@419@01 ($Snap.combine ($Snap.first $t@419@01) ($Snap.second $t@419@01))))
(assert (= ($Snap.first $t@419@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@407@01 0))))
(assert (= ($Snap.second $t@419@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@407@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@420@01 $Snap)
(assert (= $t@420@01 ($Snap.combine ($Snap.first $t@420@01) ($Snap.second $t@420@01))))
(assert (= ($Snap.first $t@420@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@407@01 1))))
(assert (= ($Snap.second $t@420@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@407@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@421@01 $Snap)
(assert (= $t@421@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@422@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(push) ; 4
; [then-branch: 133 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@407@01, 3)), $q0@422@01)) | live]
; [else-branch: 133 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@407@01, 3)), $q0@422@01) | live]
(push) ; 5
; [then-branch: 133 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@407@01, 3)), $q0@422@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 3)) $q0@422@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 133 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@407@01, 3)), $q0@422@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 3)) $q0@422@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 3)) $q0@422@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 3)) $q0@422@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@422@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 3)) $q0@422@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 3)) $q0@422@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 3)) $q0@422@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1276@11@1276@345-aux|)))
(assert (forall (($q0@422@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 3)) $q0@422@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 3)) $q0@422@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 3)) $q0@422@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1276@11@1276@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $t@423@01 $Snap)
(assert (= $t@423@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $q0@424@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@424@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 3)) $q0@424@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 3)) $q0@424@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1277@11@1277@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@425@01 $Snap)
(assert (= $t@425@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@426@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 134 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@407@01, 4)), $q1@426@01)) | live]
; [else-branch: 134 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@407@01, 4)), $q1@426@01) | live]
(push) ; 5
; [then-branch: 134 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@407@01, 4)), $q1@426@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 4)) $q1@426@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 134 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@407@01, 4)), $q1@426@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 4)) $q1@426@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 4)) $q1@426@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 4)) $q1@426@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@426@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 4)) $q1@426@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 4)) $q1@426@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 4)) $q1@426@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1278@11@1278@345-aux|)))
(assert (forall (($q1@426@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 4)) $q1@426@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 4)) $q1@426@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 4)) $q1@426@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1278@11@1278@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@427@01 $Snap)
(assert (= $t@427@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q1@428@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@428@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 4)) $q1@428@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@407@01 4)) $q1@428@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1279@11@1279@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@429@01 $Snap)
(assert (= $t@429@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@407@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@430@01 $Snap)
(assert (= $t@430@01 ($Snap.combine ($Snap.first $t@430@01) ($Snap.second $t@430@01))))
(assert (= ($Snap.first $t@430@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@430@01) $Snap.unit))
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
(declare-const $t@431@01 $Snap)
(assert (= $t@431@01 ($Snap.combine ($Snap.first $t@431@01) ($Snap.second $t@431@01))))
(assert (= ($Snap.first $t@431@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@404@01 0))))
(assert (= ($Snap.second $t@431@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@404@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@432@01 $Snap)
(assert (= $t@432@01 ($Snap.combine ($Snap.first $t@432@01) ($Snap.second $t@432@01))))
(assert (= ($Snap.first $t@432@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@404@01 1))))
(assert (= ($Snap.second $t@432@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@404@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@433@01 $Snap)
(assert (= $t@433@01 ($Snap.combine ($Snap.first $t@433@01) ($Snap.second $t@433@01))))
(assert (= ($Snap.first $t@433@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@404@01 2))))
(assert (= ($Snap.second $t@433@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@404@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@434@01 $Snap)
(assert (= $t@434@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@404@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@435@01 $Snap)
(assert (= $t@435@01 ($Snap.combine ($Snap.first $t@435@01) ($Snap.second $t@435@01))))
(assert (= ($Snap.first $t@435@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@404@01 4))))
(assert (= ($Snap.second $t@435@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@404@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@436@01 $Snap)
(assert (= $t@436@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@404@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@437@01 $Snap)
(assert (= $t@437@01 ($Snap.combine ($Snap.first $t@437@01) ($Snap.second $t@437@01))))
(assert (= ($Snap.first $t@437@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@403@01 0))))
(assert (= ($Snap.second $t@437@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@403@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@438@01 $Snap)
(assert (= $t@438@01 ($Snap.combine ($Snap.first $t@438@01) ($Snap.second $t@438@01))))
(assert (= ($Snap.first $t@438@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@403@01 1))))
(assert (= ($Snap.second $t@438@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@403@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@439@01 $Snap)
(assert (= $t@439@01 ($Snap.combine ($Snap.first $t@439@01) ($Snap.second $t@439@01))))
(assert (= ($Snap.first $t@439@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@403@01 2))))
(assert (= ($Snap.second $t@439@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@403@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@440@01 $Snap)
(assert (= $t@440@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@403@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@441@01 $Snap)
(assert (= $t@441@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@403@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $t@442@01 $Snap)
(assert (= $t@442@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $a@443@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
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
(declare-const $t@444@01 $Snap)
(assert (= $t@444@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@403@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label return
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@416@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@416@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 135 | $out_of_gas@416@01 | live]
; [else-branch: 135 | !($out_of_gas@416@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 135 | $out_of_gas@416@01]
(assert $out_of_gas@416@01)
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
; [exec]
; exhale (forall q$i: Int ::-170141183460469231731687303715884105728 <= q$i &&
;     q$i <= 170141183460469231731687303715884105727 ==>
;     q$i != 0 ==> q$i != 0)
; [eval] (forall q$i: Int ::-170141183460469231731687303715884105728 <= q$i && q$i <= 170141183460469231731687303715884105727 ==> q$i != 0 ==> q$i != 0)
(declare-const q$i@445@01 Int)
(push) ; 4
; [eval] -170141183460469231731687303715884105728 <= q$i && q$i <= 170141183460469231731687303715884105727 ==> q$i != 0 ==> q$i != 0
; [eval] -170141183460469231731687303715884105728 <= q$i && q$i <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= q$i
; [eval] -170141183460469231731687303715884105728
(push) ; 5
; [then-branch: 136 | !(-170141183460469231731687303715884105728 <= q$i@445@01) | live]
; [else-branch: 136 | -170141183460469231731687303715884105728 <= q$i@445@01 | live]
(push) ; 6
; [then-branch: 136 | !(-170141183460469231731687303715884105728 <= q$i@445@01)]
(assert (not (<= (- 0 170141183460469231731687303715884105728) q$i@445@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 136 | -170141183460469231731687303715884105728 <= q$i@445@01]
(assert (<= (- 0 170141183460469231731687303715884105728) q$i@445@01))
; [eval] q$i <= 170141183460469231731687303715884105727
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<= (- 0 170141183460469231731687303715884105728) q$i@445@01)
  (not (<= (- 0 170141183460469231731687303715884105728) q$i@445@01))))
(push) ; 5
; [then-branch: 137 | -170141183460469231731687303715884105728 <= q$i@445@01 && q$i@445@01 <= 170141183460469231731687303715884105727 | live]
; [else-branch: 137 | !(-170141183460469231731687303715884105728 <= q$i@445@01 && q$i@445@01 <= 170141183460469231731687303715884105727) | live]
(push) ; 6
; [then-branch: 137 | -170141183460469231731687303715884105728 <= q$i@445@01 && q$i@445@01 <= 170141183460469231731687303715884105727]
(assert (and
  (<= (- 0 170141183460469231731687303715884105728) q$i@445@01)
  (<= q$i@445@01 170141183460469231731687303715884105727)))
; [eval] q$i != 0 ==> q$i != 0
; [eval] q$i != 0
(push) ; 7
; [then-branch: 138 | q$i@445@01 != 0 | live]
; [else-branch: 138 | q$i@445@01 == 0 | live]
(push) ; 8
; [then-branch: 138 | q$i@445@01 != 0]
(assert (not (= q$i@445@01 0)))
; [eval] q$i != 0
(pop) ; 8
(push) ; 8
; [else-branch: 138 | q$i@445@01 == 0]
(assert (= q$i@445@01 0))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (= q$i@445@01 0) (not (= q$i@445@01 0))))
(pop) ; 6
(push) ; 6
; [else-branch: 137 | !(-170141183460469231731687303715884105728 <= q$i@445@01 && q$i@445@01 <= 170141183460469231731687303715884105727)]
(assert (not
  (and
    (<= (- 0 170141183460469231731687303715884105728) q$i@445@01)
    (<= q$i@445@01 170141183460469231731687303715884105727))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (<= (- 0 170141183460469231731687303715884105728) q$i@445@01)
    (<= q$i@445@01 170141183460469231731687303715884105727))
  (and
    (<= (- 0 170141183460469231731687303715884105728) q$i@445@01)
    (<= q$i@445@01 170141183460469231731687303715884105727)
    (or (= q$i@445@01 0) (not (= q$i@445@01 0))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= (- 0 170141183460469231731687303715884105728) q$i@445@01)
      (<= q$i@445@01 170141183460469231731687303715884105727)))
  (and
    (<= (- 0 170141183460469231731687303715884105728) q$i@445@01)
    (<= q$i@445@01 170141183460469231731687303715884105727))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; [exec]
; exhale !(0 != 0)
; [eval] !(0 != 0)
; [eval] 0 != 0
; [exec]
; exhale (forall q$i: Int ::-170141183460469231731687303715884105728 <= q$i &&
;     q$i <= 170141183460469231731687303715884105727 ==>
;     $div(q$i * 10000000000, 10000000000, q$i * 10000000000 \ 10000000000) ==
;     q$i)
; [eval] (forall q$i: Int ::-170141183460469231731687303715884105728 <= q$i && q$i <= 170141183460469231731687303715884105727 ==> $div(q$i * 10000000000, 10000000000, q$i * 10000000000 \ 10000000000) == q$i)
(declare-const q$i@446@01 Int)
(push) ; 4
; [eval] -170141183460469231731687303715884105728 <= q$i && q$i <= 170141183460469231731687303715884105727 ==> $div(q$i * 10000000000, 10000000000, q$i * 10000000000 \ 10000000000) == q$i
; [eval] -170141183460469231731687303715884105728 <= q$i && q$i <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= q$i
; [eval] -170141183460469231731687303715884105728
(push) ; 5
; [then-branch: 139 | !(-170141183460469231731687303715884105728 <= q$i@446@01) | live]
; [else-branch: 139 | -170141183460469231731687303715884105728 <= q$i@446@01 | live]
(push) ; 6
; [then-branch: 139 | !(-170141183460469231731687303715884105728 <= q$i@446@01)]
(assert (not (<= (- 0 170141183460469231731687303715884105728) q$i@446@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 139 | -170141183460469231731687303715884105728 <= q$i@446@01]
(assert (<= (- 0 170141183460469231731687303715884105728) q$i@446@01))
; [eval] q$i <= 170141183460469231731687303715884105727
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<= (- 0 170141183460469231731687303715884105728) q$i@446@01)
  (not (<= (- 0 170141183460469231731687303715884105728) q$i@446@01))))
(push) ; 5
; [then-branch: 140 | -170141183460469231731687303715884105728 <= q$i@446@01 && q$i@446@01 <= 170141183460469231731687303715884105727 | live]
; [else-branch: 140 | !(-170141183460469231731687303715884105728 <= q$i@446@01 && q$i@446@01 <= 170141183460469231731687303715884105727) | live]
(push) ; 6
; [then-branch: 140 | -170141183460469231731687303715884105728 <= q$i@446@01 && q$i@446@01 <= 170141183460469231731687303715884105727]
(assert (and
  (<= (- 0 170141183460469231731687303715884105728) q$i@446@01)
  (<= q$i@446@01 170141183460469231731687303715884105727)))
; [eval] $div(q$i * 10000000000, 10000000000, q$i * 10000000000 \ 10000000000) == q$i
; [eval] $div(q$i * 10000000000, 10000000000, q$i * 10000000000 \ 10000000000)
; [eval] q$i * 10000000000
; [eval] q$i * 10000000000 \ 10000000000
; [eval] q$i * 10000000000
(pop) ; 6
(push) ; 6
; [else-branch: 140 | !(-170141183460469231731687303715884105728 <= q$i@446@01 && q$i@446@01 <= 170141183460469231731687303715884105727)]
(assert (not
  (and
    (<= (- 0 170141183460469231731687303715884105728) q$i@446@01)
    (<= q$i@446@01 170141183460469231731687303715884105727))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= (- 0 170141183460469231731687303715884105728) q$i@446@01)
      (<= q$i@446@01 170141183460469231731687303715884105727)))
  (and
    (<= (- 0 170141183460469231731687303715884105728) q$i@446@01)
    (<= q$i@446@01 170141183460469231731687303715884105727))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((q$i@446@01 Int)) (!
  (=>
    (and
      (<= (- 0 170141183460469231731687303715884105728) q$i@446@01)
      (<= q$i@446@01 170141183460469231731687303715884105727))
    (=
      ($div<Int> (* q$i@446@01 10000000000) 10000000000 (div
        (* q$i@446@01 10000000000)
        10000000000))
      q$i@446@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1325@11@1325@208|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((q$i@446@01 Int)) (!
  (=>
    (and
      (<= (- 0 170141183460469231731687303715884105728) q$i@446@01)
      (<= q$i@446@01 170141183460469231731687303715884105727))
    (=
      ($div<Int> (* q$i@446@01 10000000000) 10000000000 (div
        (* q$i@446@01 10000000000)
        10000000000))
      q$i@446@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1325@11@1325@208|)))
; [exec]
; exhale $signed_int_to_bytes32(1) == $signed_int_to_bytes32(1)
; [eval] $signed_int_to_bytes32(1) == $signed_int_to_bytes32(1)
; [eval] $signed_int_to_bytes32(1)
; [eval] $signed_int_to_bytes32(1)
; [eval] !$succ
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 141 | True | live]
; [else-branch: 141 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 141 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@447@01 $Snap)
(assert (= $t@447@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@417@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@448@01 $Struct)
(assert (=
  self@448@01
  ($struct_set<$Struct> self@407@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@407@01 0))
    l$havoc@417@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 4
; [then-branch: 142 | False | dead]
; [else-branch: 142 | True | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 142 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 135 | !($out_of_gas@416@01)]
(assert (not $out_of_gas@416@01))
(pop) ; 3
; [eval] !$out_of_gas
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@416@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@416@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 143 | !($out_of_gas@416@01) | live]
; [else-branch: 143 | $out_of_gas@416@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 143 | !($out_of_gas@416@01)]
(assert (not $out_of_gas@416@01))
; [exec]
; label end
; [exec]
; exhale (forall q$i: Int ::-170141183460469231731687303715884105728 <= q$i &&
;     q$i <= 170141183460469231731687303715884105727 ==>
;     q$i != 0 ==> q$i != 0)
; [eval] (forall q$i: Int ::-170141183460469231731687303715884105728 <= q$i && q$i <= 170141183460469231731687303715884105727 ==> q$i != 0 ==> q$i != 0)
(declare-const q$i@449@01 Int)
(push) ; 4
; [eval] -170141183460469231731687303715884105728 <= q$i && q$i <= 170141183460469231731687303715884105727 ==> q$i != 0 ==> q$i != 0
; [eval] -170141183460469231731687303715884105728 <= q$i && q$i <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= q$i
; [eval] -170141183460469231731687303715884105728
(push) ; 5
; [then-branch: 144 | !(-170141183460469231731687303715884105728 <= q$i@449@01) | live]
; [else-branch: 144 | -170141183460469231731687303715884105728 <= q$i@449@01 | live]
(push) ; 6
; [then-branch: 144 | !(-170141183460469231731687303715884105728 <= q$i@449@01)]
(assert (not (<= (- 0 170141183460469231731687303715884105728) q$i@449@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 144 | -170141183460469231731687303715884105728 <= q$i@449@01]
(assert (<= (- 0 170141183460469231731687303715884105728) q$i@449@01))
; [eval] q$i <= 170141183460469231731687303715884105727
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<= (- 0 170141183460469231731687303715884105728) q$i@449@01)
  (not (<= (- 0 170141183460469231731687303715884105728) q$i@449@01))))
(push) ; 5
; [then-branch: 145 | -170141183460469231731687303715884105728 <= q$i@449@01 && q$i@449@01 <= 170141183460469231731687303715884105727 | live]
; [else-branch: 145 | !(-170141183460469231731687303715884105728 <= q$i@449@01 && q$i@449@01 <= 170141183460469231731687303715884105727) | live]
(push) ; 6
; [then-branch: 145 | -170141183460469231731687303715884105728 <= q$i@449@01 && q$i@449@01 <= 170141183460469231731687303715884105727]
(assert (and
  (<= (- 0 170141183460469231731687303715884105728) q$i@449@01)
  (<= q$i@449@01 170141183460469231731687303715884105727)))
; [eval] q$i != 0 ==> q$i != 0
; [eval] q$i != 0
(push) ; 7
; [then-branch: 146 | q$i@449@01 != 0 | live]
; [else-branch: 146 | q$i@449@01 == 0 | live]
(push) ; 8
; [then-branch: 146 | q$i@449@01 != 0]
(assert (not (= q$i@449@01 0)))
; [eval] q$i != 0
(pop) ; 8
(push) ; 8
; [else-branch: 146 | q$i@449@01 == 0]
(assert (= q$i@449@01 0))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (= q$i@449@01 0) (not (= q$i@449@01 0))))
(pop) ; 6
(push) ; 6
; [else-branch: 145 | !(-170141183460469231731687303715884105728 <= q$i@449@01 && q$i@449@01 <= 170141183460469231731687303715884105727)]
(assert (not
  (and
    (<= (- 0 170141183460469231731687303715884105728) q$i@449@01)
    (<= q$i@449@01 170141183460469231731687303715884105727))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (<= (- 0 170141183460469231731687303715884105728) q$i@449@01)
    (<= q$i@449@01 170141183460469231731687303715884105727))
  (and
    (<= (- 0 170141183460469231731687303715884105728) q$i@449@01)
    (<= q$i@449@01 170141183460469231731687303715884105727)
    (or (= q$i@449@01 0) (not (= q$i@449@01 0))))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= (- 0 170141183460469231731687303715884105728) q$i@449@01)
      (<= q$i@449@01 170141183460469231731687303715884105727)))
  (and
    (<= (- 0 170141183460469231731687303715884105728) q$i@449@01)
    (<= q$i@449@01 170141183460469231731687303715884105727))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; [exec]
; exhale !(0 != 0)
; [eval] !(0 != 0)
; [eval] 0 != 0
; [exec]
; exhale (forall q$i: Int ::-170141183460469231731687303715884105728 <= q$i &&
;     q$i <= 170141183460469231731687303715884105727 ==>
;     $div(q$i * 10000000000, 10000000000, q$i * 10000000000 \ 10000000000) ==
;     q$i)
; [eval] (forall q$i: Int ::-170141183460469231731687303715884105728 <= q$i && q$i <= 170141183460469231731687303715884105727 ==> $div(q$i * 10000000000, 10000000000, q$i * 10000000000 \ 10000000000) == q$i)
(declare-const q$i@450@01 Int)
(push) ; 4
; [eval] -170141183460469231731687303715884105728 <= q$i && q$i <= 170141183460469231731687303715884105727 ==> $div(q$i * 10000000000, 10000000000, q$i * 10000000000 \ 10000000000) == q$i
; [eval] -170141183460469231731687303715884105728 <= q$i && q$i <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= q$i
; [eval] -170141183460469231731687303715884105728
(push) ; 5
; [then-branch: 147 | !(-170141183460469231731687303715884105728 <= q$i@450@01) | live]
; [else-branch: 147 | -170141183460469231731687303715884105728 <= q$i@450@01 | live]
(push) ; 6
; [then-branch: 147 | !(-170141183460469231731687303715884105728 <= q$i@450@01)]
(assert (not (<= (- 0 170141183460469231731687303715884105728) q$i@450@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 147 | -170141183460469231731687303715884105728 <= q$i@450@01]
(assert (<= (- 0 170141183460469231731687303715884105728) q$i@450@01))
; [eval] q$i <= 170141183460469231731687303715884105727
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<= (- 0 170141183460469231731687303715884105728) q$i@450@01)
  (not (<= (- 0 170141183460469231731687303715884105728) q$i@450@01))))
(push) ; 5
; [then-branch: 148 | -170141183460469231731687303715884105728 <= q$i@450@01 && q$i@450@01 <= 170141183460469231731687303715884105727 | live]
; [else-branch: 148 | !(-170141183460469231731687303715884105728 <= q$i@450@01 && q$i@450@01 <= 170141183460469231731687303715884105727) | live]
(push) ; 6
; [then-branch: 148 | -170141183460469231731687303715884105728 <= q$i@450@01 && q$i@450@01 <= 170141183460469231731687303715884105727]
(assert (and
  (<= (- 0 170141183460469231731687303715884105728) q$i@450@01)
  (<= q$i@450@01 170141183460469231731687303715884105727)))
; [eval] $div(q$i * 10000000000, 10000000000, q$i * 10000000000 \ 10000000000) == q$i
; [eval] $div(q$i * 10000000000, 10000000000, q$i * 10000000000 \ 10000000000)
; [eval] q$i * 10000000000
; [eval] q$i * 10000000000 \ 10000000000
; [eval] q$i * 10000000000
(pop) ; 6
(push) ; 6
; [else-branch: 148 | !(-170141183460469231731687303715884105728 <= q$i@450@01 && q$i@450@01 <= 170141183460469231731687303715884105727)]
(assert (not
  (and
    (<= (- 0 170141183460469231731687303715884105728) q$i@450@01)
    (<= q$i@450@01 170141183460469231731687303715884105727))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (<= (- 0 170141183460469231731687303715884105728) q$i@450@01)
      (<= q$i@450@01 170141183460469231731687303715884105727)))
  (and
    (<= (- 0 170141183460469231731687303715884105728) q$i@450@01)
    (<= q$i@450@01 170141183460469231731687303715884105727))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((q$i@450@01 Int)) (!
  (=>
    (and
      (<= (- 0 170141183460469231731687303715884105728) q$i@450@01)
      (<= q$i@450@01 170141183460469231731687303715884105727))
    (=
      ($div<Int> (* q$i@450@01 10000000000) 10000000000 (div
        (* q$i@450@01 10000000000)
        10000000000))
      q$i@450@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1325@11@1325@208|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((q$i@450@01 Int)) (!
  (=>
    (and
      (<= (- 0 170141183460469231731687303715884105728) q$i@450@01)
      (<= q$i@450@01 170141183460469231731687303715884105727))
    (=
      ($div<Int> (* q$i@450@01 10000000000) 10000000000 (div
        (* q$i@450@01 10000000000)
        10000000000))
      q$i@450@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1325@11@1325@208|)))
; [exec]
; exhale $signed_int_to_bytes32(1) == $signed_int_to_bytes32(1)
; [eval] $signed_int_to_bytes32(1) == $signed_int_to_bytes32(1)
; [eval] $signed_int_to_bytes32(1)
; [eval] $signed_int_to_bytes32(1)
; [eval] !$succ
; [then-branch: 149 | False | dead]
; [else-branch: 149 | True | live]
(push) ; 4
; [else-branch: 149 | True]
(pop) ; 4
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 150 | True | live]
; [else-branch: 150 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 150 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@451@01 $Snap)
(assert (= $t@451@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@417@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@452@01 $Struct)
(assert (=
  self@452@01
  ($struct_set<$Struct> self@407@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@407@01 0))
    l$havoc@417@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 143 | $out_of_gas@416@01]
(assert $out_of_gas@416@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$check_fail ----------
(declare-const $succ@453@01 Bool)
(declare-const $succ@454@01 Bool)
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
(declare-const msg@455@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@456@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@457@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@458@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@459@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@460@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@461@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@462@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@463@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@464@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@465@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@466@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@467@01 Bool)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@468@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@469@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@470@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@471@01 $Snap)
(assert (= $t@471@01 ($Snap.combine ($Snap.first $t@471@01) ($Snap.second $t@471@01))))
(assert (= ($Snap.first $t@471@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@459@01 0))))
(assert (= ($Snap.second $t@471@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@459@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@472@01 $Snap)
(assert (= $t@472@01 ($Snap.combine ($Snap.first $t@472@01) ($Snap.second $t@472@01))))
(assert (= ($Snap.first $t@472@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@459@01 1))))
(assert (= ($Snap.second $t@472@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@459@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@473@01 $Snap)
(assert (= $t@473@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@474@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(push) ; 4
; [then-branch: 151 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@459@01, 3)), $q0@474@01)) | live]
; [else-branch: 151 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@459@01, 3)), $q0@474@01) | live]
(push) ; 5
; [then-branch: 151 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@459@01, 3)), $q0@474@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 3)) $q0@474@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 151 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@459@01, 3)), $q0@474@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 3)) $q0@474@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 3)) $q0@474@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 3)) $q0@474@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@474@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 3)) $q0@474@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 3)) $q0@474@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 3)) $q0@474@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1358@11@1358@345-aux|)))
(assert (forall (($q0@474@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 3)) $q0@474@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 3)) $q0@474@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 3)) $q0@474@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1358@11@1358@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $t@475@01 $Snap)
(assert (= $t@475@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $q0@476@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@476@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 3)) $q0@476@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 3)) $q0@476@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1359@11@1359@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@477@01 $Snap)
(assert (= $t@477@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@478@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 152 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@459@01, 4)), $q1@478@01)) | live]
; [else-branch: 152 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@459@01, 4)), $q1@478@01) | live]
(push) ; 5
; [then-branch: 152 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@459@01, 4)), $q1@478@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 4)) $q1@478@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 152 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@459@01, 4)), $q1@478@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 4)) $q1@478@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 4)) $q1@478@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 4)) $q1@478@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@478@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 4)) $q1@478@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 4)) $q1@478@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 4)) $q1@478@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1360@11@1360@345-aux|)))
(assert (forall (($q1@478@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 4)) $q1@478@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 4)) $q1@478@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 4)) $q1@478@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1360@11@1360@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@479@01 $Snap)
(assert (= $t@479@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q1@480@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@480@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 4)) $q1@480@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@459@01 4)) $q1@480@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1361@11@1361@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@481@01 $Snap)
(assert (= $t@481@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@459@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@482@01 $Snap)
(assert (= $t@482@01 ($Snap.combine ($Snap.first $t@482@01) ($Snap.second $t@482@01))))
(assert (= ($Snap.first $t@482@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@482@01) $Snap.unit))
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
(declare-const $t@483@01 $Snap)
(assert (= $t@483@01 ($Snap.combine ($Snap.first $t@483@01) ($Snap.second $t@483@01))))
(assert (= ($Snap.first $t@483@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@456@01 0))))
(assert (= ($Snap.second $t@483@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@456@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@484@01 $Snap)
(assert (= $t@484@01 ($Snap.combine ($Snap.first $t@484@01) ($Snap.second $t@484@01))))
(assert (= ($Snap.first $t@484@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@456@01 1))))
(assert (= ($Snap.second $t@484@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@456@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@485@01 $Snap)
(assert (= $t@485@01 ($Snap.combine ($Snap.first $t@485@01) ($Snap.second $t@485@01))))
(assert (= ($Snap.first $t@485@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@456@01 2))))
(assert (= ($Snap.second $t@485@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@456@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@486@01 $Snap)
(assert (= $t@486@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@456@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@487@01 $Snap)
(assert (= $t@487@01 ($Snap.combine ($Snap.first $t@487@01) ($Snap.second $t@487@01))))
(assert (= ($Snap.first $t@487@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@456@01 4))))
(assert (= ($Snap.second $t@487@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@456@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@488@01 $Snap)
(assert (= $t@488@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@456@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@489@01 $Snap)
(assert (= $t@489@01 ($Snap.combine ($Snap.first $t@489@01) ($Snap.second $t@489@01))))
(assert (= ($Snap.first $t@489@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@455@01 0))))
(assert (= ($Snap.second $t@489@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@455@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@490@01 $Snap)
(assert (= $t@490@01 ($Snap.combine ($Snap.first $t@490@01) ($Snap.second $t@490@01))))
(assert (= ($Snap.first $t@490@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@455@01 1))))
(assert (= ($Snap.second $t@490@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@455@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@491@01 $Snap)
(assert (= $t@491@01 ($Snap.combine ($Snap.first $t@491@01) ($Snap.second $t@491@01))))
(assert (= ($Snap.first $t@491@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@455@01 2))))
(assert (= ($Snap.second $t@491@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@455@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@492@01 $Snap)
(assert (= $t@492@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@455@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@493@01 $Snap)
(assert (= $t@493@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@455@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $t@494@01 $Snap)
(assert (= $t@494@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $a@495@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
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
(declare-const $t@496@01 $Snap)
(assert (= $t@496@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@455@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label return
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@468@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@468@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 153 | $out_of_gas@468@01 | live]
; [else-branch: 153 | !($out_of_gas@468@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 153 | $out_of_gas@468@01]
(assert $out_of_gas@468@01)
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
; [exec]
; exhale $signed_int_to_bytes32(1) == $unsigned_int_to_bytes32(1)
; [eval] $signed_int_to_bytes32(1) == $unsigned_int_to_bytes32(1)
; [eval] $signed_int_to_bytes32(1)
; [eval] $unsigned_int_to_bytes32(1)
(push) ; 4
(assert (not (Seq_equal
  ($signed_int_to_bytes32<Seq<Int>> 1)
  ($unsigned_int_to_bytes32<Seq<Int>> 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] $signed_int_to_bytes32(1) == $unsigned_int_to_bytes32(1)
; [eval] $signed_int_to_bytes32(1)
; [eval] $unsigned_int_to_bytes32(1)
(set-option :timeout 0)
(push) ; 4
(assert (not (Seq_equal
  ($signed_int_to_bytes32<Seq<Int>> 1)
  ($unsigned_int_to_bytes32<Seq<Int>> 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] $signed_int_to_bytes32(1) == $unsigned_int_to_bytes32(1)
; [eval] $signed_int_to_bytes32(1)
; [eval] $unsigned_int_to_bytes32(1)
(set-option :timeout 0)
(push) ; 4
(assert (not (Seq_equal
  ($signed_int_to_bytes32<Seq<Int>> 1)
  ($unsigned_int_to_bytes32<Seq<Int>> 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] $signed_int_to_bytes32(1) == $unsigned_int_to_bytes32(1)
; [eval] $signed_int_to_bytes32(1)
; [eval] $unsigned_int_to_bytes32(1)
(set-option :timeout 0)
(push) ; 4
(assert (not (Seq_equal
  ($signed_int_to_bytes32<Seq<Int>> 1)
  ($unsigned_int_to_bytes32<Seq<Int>> 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$convert_int_fail ----------
(declare-const l$bb@497@01 Seq<Int>)
(declare-const $succ@498@01 Bool)
(declare-const $res@499@01 Int)
(declare-const l$bb@500@01 Seq<Int>)
(declare-const $succ@501@01 Bool)
(declare-const $res@502@01 Int)
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
(declare-const msg@503@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@504@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@505@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@506@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@507@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@508@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@509@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@510@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@511@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@512@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@513@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@514@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@515@01 Bool)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@516@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@517@01 Int)
; [exec]
; var l$havoc$1: Int
(declare-const l$havoc$1@518@01 Int)
; [exec]
; var l$havoc$2: $Map[Int, $Struct]
(declare-const l$havoc$2@519@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@520@01 $Snap)
(assert (= $t@520@01 ($Snap.combine ($Snap.first $t@520@01) ($Snap.second $t@520@01))))
(assert (= ($Snap.first $t@520@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@507@01 0))))
(assert (= ($Snap.second $t@520@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@507@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@521@01 $Snap)
(assert (= $t@521@01 ($Snap.combine ($Snap.first $t@521@01) ($Snap.second $t@521@01))))
(assert (= ($Snap.first $t@521@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@507@01 1))))
(assert (= ($Snap.second $t@521@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@507@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@522@01 $Snap)
(assert (= $t@522@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@523@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(push) ; 4
; [then-branch: 154 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 3)), $q0@523@01)) | live]
; [else-branch: 154 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 3)), $q0@523@01) | live]
(push) ; 5
; [then-branch: 154 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 3)), $q0@523@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 3)) $q0@523@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 154 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 3)), $q0@523@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 3)) $q0@523@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 3)) $q0@523@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 3)) $q0@523@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@523@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 3)) $q0@523@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 3)) $q0@523@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 3)) $q0@523@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1438@11@1438@345-aux|)))
(assert (forall (($q0@523@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 3)) $q0@523@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 3)) $q0@523@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 3)) $q0@523@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1438@11@1438@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $t@524@01 $Snap)
(assert (= $t@524@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $q0@525@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@525@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 3)) $q0@525@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 3)) $q0@525@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1439@11@1439@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@526@01 $Snap)
(assert (= $t@526@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@527@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 155 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 4)), $q1@527@01)) | live]
; [else-branch: 155 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 4)), $q1@527@01) | live]
(push) ; 5
; [then-branch: 155 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 4)), $q1@527@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 4)) $q1@527@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 155 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 4)), $q1@527@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 4)) $q1@527@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 4)) $q1@527@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 4)) $q1@527@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@527@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 4)) $q1@527@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 4)) $q1@527@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 4)) $q1@527@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1440@11@1440@345-aux|)))
(assert (forall (($q1@527@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 4)) $q1@527@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 4)) $q1@527@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 4)) $q1@527@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1440@11@1440@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@528@01 $Snap)
(assert (= $t@528@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q1@529@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@529@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 4)) $q1@529@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 4)) $q1@529@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1441@11@1441@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@530@01 $Snap)
(assert (= $t@530@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@507@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@531@01 $Snap)
(assert (= $t@531@01 ($Snap.combine ($Snap.first $t@531@01) ($Snap.second $t@531@01))))
(assert (= ($Snap.first $t@531@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@531@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |l$bb| == 32
(declare-const $t@532@01 $Snap)
(assert (= $t@532@01 $Snap.unit))
; [eval] |l$bb| == 32
; [eval] |l$bb|
(assert (= (Seq_length l$bb@500@01) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@533@01 $Snap)
(assert (= $t@533@01 ($Snap.combine ($Snap.first $t@533@01) ($Snap.second $t@533@01))))
(assert (= ($Snap.first $t@533@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@504@01 0))))
(assert (= ($Snap.second $t@533@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@504@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@534@01 $Snap)
(assert (= $t@534@01 ($Snap.combine ($Snap.first $t@534@01) ($Snap.second $t@534@01))))
(assert (= ($Snap.first $t@534@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@504@01 1))))
(assert (= ($Snap.second $t@534@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@504@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@535@01 $Snap)
(assert (= $t@535@01 ($Snap.combine ($Snap.first $t@535@01) ($Snap.second $t@535@01))))
(assert (= ($Snap.first $t@535@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@504@01 2))))
(assert (= ($Snap.second $t@535@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@504@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@536@01 $Snap)
(assert (= $t@536@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@504@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@537@01 $Snap)
(assert (= $t@537@01 ($Snap.combine ($Snap.first $t@537@01) ($Snap.second $t@537@01))))
(assert (= ($Snap.first $t@537@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@504@01 4))))
(assert (= ($Snap.second $t@537@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@504@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@538@01 $Snap)
(assert (= $t@538@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@504@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@539@01 $Snap)
(assert (= $t@539@01 ($Snap.combine ($Snap.first $t@539@01) ($Snap.second $t@539@01))))
(assert (= ($Snap.first $t@539@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@503@01 0))))
(assert (= ($Snap.second $t@539@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@503@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@540@01 $Snap)
(assert (= $t@540@01 ($Snap.combine ($Snap.first $t@540@01) ($Snap.second $t@540@01))))
(assert (= ($Snap.first $t@540@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@503@01 1))))
(assert (= ($Snap.second $t@540@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@503@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@541@01 $Snap)
(assert (= $t@541@01 ($Snap.combine ($Snap.first $t@541@01) ($Snap.second $t@541@01))))
(assert (= ($Snap.first $t@541@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@503@01 2))))
(assert (= ($Snap.second $t@541@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@503@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@542@01 $Snap)
(assert (= $t@542@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@503@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@543@01 $Snap)
(assert (= $t@543@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@503@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $t@544@01 $Snap)
(assert (= $t@544@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int))
(declare-const $a@545@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
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
(declare-const $t@546@01 $Snap)
(assert (= $t@546@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@503@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] $bytes32_to_signed_int($pad32(l$bb)) < -170141183460469231731687303715884105728 || $bytes32_to_signed_int($pad32(l$bb)) > 170141183460469231731687303715884105727
; [eval] $bytes32_to_signed_int($pad32(l$bb)) < -170141183460469231731687303715884105728
; [eval] $bytes32_to_signed_int($pad32(l$bb))
; [eval] $pad32(l$bb)
; [eval] -170141183460469231731687303715884105728
(set-option :timeout 0)
(push) ; 3
; [then-branch: 156 | $bytes32_to_signed_int[Int]($pad32[Seq[Int]](l$bb@500@01)) < -170141183460469231731687303715884105728 | live]
; [else-branch: 156 | !($bytes32_to_signed_int[Int]($pad32[Seq[Int]](l$bb@500@01)) < -170141183460469231731687303715884105728) | live]
(push) ; 4
; [then-branch: 156 | $bytes32_to_signed_int[Int]($pad32[Seq[Int]](l$bb@500@01)) < -170141183460469231731687303715884105728]
(assert (<
  ($bytes32_to_signed_int<Int> ($pad32<Seq<Int>> l$bb@500@01))
  (- 0 170141183460469231731687303715884105728)))
(pop) ; 4
(push) ; 4
; [else-branch: 156 | !($bytes32_to_signed_int[Int]($pad32[Seq[Int]](l$bb@500@01)) < -170141183460469231731687303715884105728)]
(assert (not
  (<
    ($bytes32_to_signed_int<Int> ($pad32<Seq<Int>> l$bb@500@01))
    (- 0 170141183460469231731687303715884105728))))
; [eval] $bytes32_to_signed_int($pad32(l$bb)) > 170141183460469231731687303715884105727
; [eval] $bytes32_to_signed_int($pad32(l$bb))
; [eval] $pad32(l$bb)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (<
      ($bytes32_to_signed_int<Int> ($pad32<Seq<Int>> l$bb@500@01))
      (- 0 170141183460469231731687303715884105728)))
  (<
    ($bytes32_to_signed_int<Int> ($pad32<Seq<Int>> l$bb@500@01))
    (- 0 170141183460469231731687303715884105728))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (or
    (<
      ($bytes32_to_signed_int<Int> ($pad32<Seq<Int>> l$bb@500@01))
      (- 0 170141183460469231731687303715884105728))
    (>
      ($bytes32_to_signed_int<Int> ($pad32<Seq<Int>> l$bb@500@01))
      170141183460469231731687303715884105727)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (or
  (<
    ($bytes32_to_signed_int<Int> ($pad32<Seq<Int>> l$bb@500@01))
    (- 0 170141183460469231731687303715884105728))
  (>
    ($bytes32_to_signed_int<Int> ($pad32<Seq<Int>> l$bb@500@01))
    170141183460469231731687303715884105727))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 157 | $bytes32_to_signed_int[Int]($pad32[Seq[Int]](l$bb@500@01)) < -170141183460469231731687303715884105728 || $bytes32_to_signed_int[Int]($pad32[Seq[Int]](l$bb@500@01)) > 170141183460469231731687303715884105727 | live]
; [else-branch: 157 | !($bytes32_to_signed_int[Int]($pad32[Seq[Int]](l$bb@500@01)) < -170141183460469231731687303715884105728 || $bytes32_to_signed_int[Int]($pad32[Seq[Int]](l$bb@500@01)) > 170141183460469231731687303715884105727) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 157 | $bytes32_to_signed_int[Int]($pad32[Seq[Int]](l$bb@500@01)) < -170141183460469231731687303715884105728 || $bytes32_to_signed_int[Int]($pad32[Seq[Int]](l$bb@500@01)) > 170141183460469231731687303715884105727]
(assert (or
  (<
    ($bytes32_to_signed_int<Int> ($pad32<Seq<Int>> l$bb@500@01))
    (- 0 170141183460469231731687303715884105728))
  (>
    ($bytes32_to_signed_int<Int> ($pad32<Seq<Int>> l$bb@500@01))
    170141183460469231731687303715884105727)))
; [exec]
; $overflow := true
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
; [exec]
; exhale !($overflow || $out_of_gas) ==> $succ
; [eval] !($overflow || $out_of_gas) ==> $succ
; [eval] !($overflow || $out_of_gas)
; [eval] $overflow || $out_of_gas
(push) ; 4
; [then-branch: 158 | False | dead]
; [else-branch: 158 | True | live]
(push) ; 5
; [else-branch: 158 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [exec]
; exhale !$out_of_gas ==> $succ
; [eval] !$out_of_gas ==> $succ
; [eval] !$out_of_gas
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not $out_of_gas@516@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not $out_of_gas@516@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 159 | !($out_of_gas@516@01) | live]
; [else-branch: 159 | $out_of_gas@516@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 159 | !($out_of_gas@516@01)]
(assert (not $out_of_gas@516@01))
(pop) ; 5
(push) ; 5
; [else-branch: 159 | $out_of_gas@516@01]
(assert $out_of_gas@516@01)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or $out_of_gas@516@01 (not $out_of_gas@516@01)))
(push) ; 4
(assert (not (=> (not $out_of_gas@516@01) false)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !$out_of_gas ==> $succ
; [eval] !$out_of_gas
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not $out_of_gas@516@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not $out_of_gas@516@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 160 | !($out_of_gas@516@01) | live]
; [else-branch: 160 | $out_of_gas@516@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 160 | !($out_of_gas@516@01)]
(assert (not $out_of_gas@516@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 160 | $out_of_gas@516@01]
(assert $out_of_gas@516@01)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (=> (not $out_of_gas@516@01) false)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !$out_of_gas ==> $succ
; [eval] !$out_of_gas
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not $out_of_gas@516@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not $out_of_gas@516@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 161 | !($out_of_gas@516@01) | live]
; [else-branch: 161 | $out_of_gas@516@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 161 | !($out_of_gas@516@01)]
(assert (not $out_of_gas@516@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 161 | $out_of_gas@516@01]
(assert $out_of_gas@516@01)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (=> (not $out_of_gas@516@01) false)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !$out_of_gas ==> $succ
; [eval] !$out_of_gas
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not $out_of_gas@516@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not $out_of_gas@516@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 162 | !($out_of_gas@516@01) | live]
; [else-branch: 162 | $out_of_gas@516@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 162 | !($out_of_gas@516@01)]
(assert (not $out_of_gas@516@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 162 | $out_of_gas@516@01]
(assert $out_of_gas@516@01)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (=> (not $out_of_gas@516@01) false)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$__init__ ----------
(declare-const $succ@547@01 Bool)
(declare-const $succ@548@01 Bool)
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
(declare-const msg@549@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@550@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@551@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@552@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@553@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@554@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@555@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@556@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@557@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@558@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@559@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@560@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@561@01 Bool)
; [exec]
; var $first_public_state: Bool
(declare-const $first_public_state@562@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@563@01 Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@564@01 Bool)
; [exec]
; var l$havoc$1: Int
(declare-const l$havoc$1@565@01 Int)
; [exec]
; var l$havoc$2: $Map[Int, $Struct]
(declare-const l$havoc$2@566@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@567@01 $Snap)
(assert (= $t@567@01 ($Snap.combine ($Snap.first $t@567@01) ($Snap.second $t@567@01))))
(assert (= ($Snap.first $t@567@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@553@01 0))))
(assert (= ($Snap.second $t@567@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@553@01 0))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@568@01 $Snap)
(assert (= $t@568@01 ($Snap.combine ($Snap.first $t@568@01) ($Snap.second $t@568@01))))
(assert (= ($Snap.first $t@568@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@553@01 1))))
(assert (= ($Snap.second $t@568@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@553@01 1))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@569@01 $Snap)
(assert (= $t@569@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q0@570@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) && ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(push) ; 4
; [then-branch: 163 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@553@01, 3)), $q0@570@01)) | live]
; [else-branch: 163 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@553@01, 3)), $q0@570@01) | live]
(push) ; 5
; [then-branch: 163 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@553@01, 3)), $q0@570@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 3)) $q0@570@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 163 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@553@01, 3)), $q0@570@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 3)) $q0@570@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 3)) $q0@570@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 3)) $q0@570@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@570@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 3)) $q0@570@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 3)) $q0@570@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 3)) $q0@570@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1530@11@1530@345-aux|)))
(assert (forall (($q0@570@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 3)) $q0@570@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 3)) $q0@570@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 3)) $q0@570@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1530@11@1530@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) }
;     ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $t@571@01 $Snap)
(assert (= $t@571@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) } ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int))
(declare-const $q0@572@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int) <= ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 3)): $Map[Int, Int]), $q0): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
; [eval] ($map_sum(($struct_get($struct_loc(self, 3)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 3)): $Map[Int, Int])
; [eval] $struct_loc(self, 3)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@572@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 3)) $q0@572@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 3))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 3)) $q0@572@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1531@11@1531@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@573@01 $Snap)
(assert (= $t@573@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q1@574@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) && ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(push) ; 4
; [then-branch: 164 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@553@01, 4)), $q1@574@01)) | live]
; [else-branch: 164 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@553@01, 4)), $q1@574@01) | live]
(push) ; 5
; [then-branch: 164 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@553@01, 4)), $q1@574@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 4)) $q1@574@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 164 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@553@01, 4)), $q1@574@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 4)) $q1@574@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 4)) $q1@574@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 4)) $q1@574@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@574@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 4)) $q1@574@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 4)) $q1@574@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 4)) $q1@574@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1532@11@1532@345-aux|)))
(assert (forall (($q1@574@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 4)) $q1@574@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 4)) $q1@574@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 4)) $q1@574@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1532@11@1532@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q1: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) }
;     ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $t@575@01 $Snap)
(assert (= $t@575@01 $Snap.unit))
; [eval] (forall $q1: Int :: { ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) } ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int))
(declare-const $q1@576@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int) <= ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 4)): $Map[Int, Int]), $q1): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
; [eval] ($map_sum(($struct_get($struct_loc(self, 4)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 4)): $Map[Int, Int])
; [eval] $struct_loc(self, 4)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@576@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 4)) $q1@576@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 4))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@553@01 4)) $q1@576@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageconvert.vy.vpr@1533@11@1533@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@577@01 $Snap)
(assert (= $t@577@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@553@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@578@01 $Snap)
(assert (= $t@578@01 ($Snap.combine ($Snap.first $t@578@01) ($Snap.second $t@578@01))))
(assert (= ($Snap.first $t@578@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@578@01) $Snap.unit))
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
(declare-const $t@579@01 $Snap)
(assert (= $t@579@01 ($Snap.combine ($Snap.first $t@579@01) ($Snap.second $t@579@01))))
(assert (= ($Snap.first $t@579@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@550@01 0))))
(assert (= ($Snap.second $t@579@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@550@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@580@01 $Snap)
(assert (= $t@580@01 ($Snap.combine ($Snap.first $t@580@01) ($Snap.second $t@580@01))))
(assert (= ($Snap.first $t@580@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@550@01 1))))
(assert (= ($Snap.second $t@580@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@550@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@581@01 $Snap)
(assert (= $t@581@01 ($Snap.combine ($Snap.first $t@581@01) ($Snap.second $t@581@01))))
(assert (= ($Snap.first $t@581@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@550@01 2))))
(assert (= ($Snap.second $t@581@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@550@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@582@01 $Snap)
(assert (= $t@582@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@550@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@583@01 $Snap)
(assert (= $t@583@01 ($Snap.combine ($Snap.first $t@583@01) ($Snap.second $t@583@01))))
(assert (= ($Snap.first $t@583@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@550@01 4))))
(assert (= ($Snap.second $t@583@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@550@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@584@01 $Snap)
(assert (= $t@584@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@550@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@585@01 $Snap)
(assert (= $t@585@01 ($Snap.combine ($Snap.first $t@585@01) ($Snap.second $t@585@01))))
(assert (= ($Snap.first $t@585@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@549@01 0))))
(assert (= ($Snap.second $t@585@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@549@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@586@01 $Snap)
(assert (= $t@586@01 ($Snap.combine ($Snap.first $t@586@01) ($Snap.second $t@586@01))))
(assert (= ($Snap.first $t@586@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@549@01 1))))
(assert (= ($Snap.second $t@586@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@549@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@587@01 $Snap)
(assert (= $t@587@01 ($Snap.combine ($Snap.first $t@587@01) ($Snap.second $t@587@01))))
(assert (= ($Snap.first $t@587@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@549@01 2))))
(assert (= ($Snap.second $t@587@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@549@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@588@01 $Snap)
(assert (= $t@588@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@549@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@589@01 $Snap)
(assert (= $t@589@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@549@01 0)) 0)))
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
; self := s$struct$self$init(0, 0, false, ($map_init(0): $Map[Int, Int]), ($map_init(0): $Map[Int, Int]),
;   false)
; [eval] s$struct$self$init(0, 0, false, ($map_init(0): $Map[Int, Int]), ($map_init(0): $Map[Int, Int]), false)
; [eval] ($map_init(0): $Map[Int, Int])
; [eval] ($map_init(0): $Map[Int, Int])
(declare-const self@590@01 $Struct)
(assert (=
  self@590@01
  (s$struct$self$init<$Struct> 0 0 false ($map_init<$Map<Int~_Int>> 0) ($map_init<$Map<Int~_Int>> 0) false)))
; [exec]
; inhale l$havoc >= 0
(declare-const $t@591@01 $Snap)
(assert (= $t@591@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@563@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@592@01 $Struct)
(assert (=
  self@592@01
  ($struct_set<$Struct> self@590@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@590@01 0))
    l$havoc@563@01))))
; [exec]
; inhale ($struct_get($struct_loc(msg, 1)): Int) == 0
(declare-const $t@593@01 $Snap)
(assert (= $t@593@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@549@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label return
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@564@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@564@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 165 | $out_of_gas@564@01 | live]
; [else-branch: 165 | !($out_of_gas@564@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 165 | $out_of_gas@564@01]
(assert $out_of_gas@564@01)
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
; [then-branch: 166 | True | live]
; [else-branch: 166 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 166 | True]
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
; [then-branch: 167 | True | live]
; [else-branch: 167 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 167 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@594@01 $Snap)
(assert (= $t@594@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@565@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@595@01 $Struct)
(assert (=
  self@595@01
  ($struct_set<$Struct> self@553@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@553@01 0))
    l$havoc$1@565@01))))
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
; [then-branch: 168 | True | live]
; [else-branch: 168 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 168 | True]
; [exec]
; $old_self := self
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 169 | False | dead]
; [else-branch: 169 | True | live]
(push) ; 6
; [else-branch: 169 | True]
(pop) ; 6
(pop) ; 5
; [then-branch: 170 | False | dead]
; [else-branch: 170 | True | live]
(push) ; 5
; [else-branch: 170 | True]
(pop) ; 5
(pop) ; 4
; [eval] !$first_public_state
; [then-branch: 171 | False | dead]
; [else-branch: 171 | True | live]
(push) ; 4
; [else-branch: 171 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 165 | !($out_of_gas@564@01)]
(assert (not $out_of_gas@564@01))
(pop) ; 3
; [eval] !$out_of_gas
(push) ; 3
(set-option :timeout 10)
(assert (not $out_of_gas@564@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not $out_of_gas@564@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 172 | !($out_of_gas@564@01) | live]
; [else-branch: 172 | $out_of_gas@564@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 172 | !($out_of_gas@564@01)]
(assert (not $out_of_gas@564@01))
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
; [then-branch: 173 | True | live]
; [else-branch: 173 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 173 | True]
; [exec]
; $old_self := self
; [eval] !$succ
; [then-branch: 174 | False | dead]
; [else-branch: 174 | True | live]
(push) ; 5
; [else-branch: 174 | True]
(pop) ; 5
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 175 | True | live]
; [else-branch: 175 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 175 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@596@01 $Snap)
(assert (= $t@596@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@565@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(self, 0)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 0)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(declare-const self@597@01 $Struct)
(assert (=
  self@597@01
  ($struct_set<$Struct> self@592@01 0 (+
    ($struct_get<Int> ($struct_loc<Int> self@592@01 0))
    l$havoc$1@565@01))))
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
; [then-branch: 176 | True | live]
; [else-branch: 176 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 176 | True]
; [exec]
; $old_self := self
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 177 | False | dead]
; [else-branch: 177 | True | live]
(push) ; 6
; [else-branch: 177 | True]
(pop) ; 6
(pop) ; 5
(pop) ; 4
; [eval] !$first_public_state
; [then-branch: 178 | False | dead]
; [else-branch: 178 | True | live]
(push) ; 4
; [else-branch: 178 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 172 | $out_of_gas@564@01]
(assert $out_of_gas@564@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
