(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 17:32:33
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
(declare-sort $StructOps<$Map<Int~_$Map<Int~_Int>>> 0)
(declare-sort s$struct$self 0)
(declare-sort $Struct 0)
(declare-sort s$resource$$creator 0)
(declare-sort $Contract 0)
(declare-sort $Blockchain 0)
(declare-sort $Convert 0)
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
(declare-sort $Map<Int~_$Map<Int~_Int>> 0)
(declare-sort $StructOps<$Struct> 0)
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
(declare-fun $SortWrappers.$StructOps<$Map<Int~_$Map<Int~_Int>>>To$Snap ($StructOps<$Map<Int~_$Map<Int~_Int>>>) $Snap)
(declare-fun $SortWrappers.$SnapTo$StructOps<$Map<Int~_$Map<Int~_Int>>> ($Snap) $StructOps<$Map<Int~_$Map<Int~_Int>>>)
(assert (forall ((x $StructOps<$Map<Int~_$Map<Int~_Int>>>)) (!
    (= x ($SortWrappers.$SnapTo$StructOps<$Map<Int~_$Map<Int~_Int>>>($SortWrappers.$StructOps<$Map<Int~_$Map<Int~_Int>>>To$Snap x)))
    :pattern (($SortWrappers.$StructOps<$Map<Int~_$Map<Int~_Int>>>To$Snap x))
    :qid |$Snap.$SnapTo$StructOps<$Map<Int~_$Map<Int~_Int>>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$StructOps<$Map<Int~_$Map<Int~_Int>>>To$Snap($SortWrappers.$SnapTo$StructOps<$Map<Int~_$Map<Int~_Int>>> x)))
    :pattern (($SortWrappers.$SnapTo$StructOps<$Map<Int~_$Map<Int~_Int>>> x))
    :qid |$Snap.$StructOps<$Map<Int~_$Map<Int~_Int>>>To$SnapTo$StructOps<$Map<Int~_$Map<Int~_Int>>>|
    )))
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
(declare-fun $SortWrappers.$Map<Int~_$Map<Int~_Int>>To$Snap ($Map<Int~_$Map<Int~_Int>>) $Snap)
(declare-fun $SortWrappers.$SnapTo$Map<Int~_$Map<Int~_Int>> ($Snap) $Map<Int~_$Map<Int~_Int>>)
(assert (forall ((x $Map<Int~_$Map<Int~_Int>>)) (!
    (= x ($SortWrappers.$SnapTo$Map<Int~_$Map<Int~_Int>>($SortWrappers.$Map<Int~_$Map<Int~_Int>>To$Snap x)))
    :pattern (($SortWrappers.$Map<Int~_$Map<Int~_Int>>To$Snap x))
    :qid |$Snap.$SnapTo$Map<Int~_$Map<Int~_Int>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$Map<Int~_$Map<Int~_Int>>To$Snap($SortWrappers.$SnapTo$Map<Int~_$Map<Int~_Int>> x)))
    :pattern (($SortWrappers.$SnapTo$Map<Int~_$Map<Int~_Int>> x))
    :qid |$Snap.$Map<Int~_$Map<Int~_Int>>To$SnapTo$Map<Int~_$Map<Int~_Int>>|
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
(declare-fun $map_init<$Map<Int~_$Map<Int~_Int>>> ($Map<Int~_Int>) $Map<Int~_$Map<Int~_Int>>)
(declare-fun $map_eq<Bool> ($Map<Int~_$Map<Int~_Int>> $Map<Int~_$Map<Int~_Int>>) Bool)
(declare-fun $map_get<$Map<Int~_Int>> ($Map<Int~_$Map<Int~_Int>> Int) $Map<Int~_Int>)
(declare-fun $map_set<$Map<Int~_$Map<Int~_Int>>> ($Map<Int~_$Map<Int~_Int>> Int $Map<Int~_Int>) $Map<Int~_$Map<Int~_Int>>)
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
(declare-fun s$struct$self$init<$Struct> ($Map<Int~_$Map<Int~_Int>> $Map<Int~_Int> Int Int Int Int Bool $Map<Int~_Int> $Map<Int~_Int> Bool) $Struct)
(declare-fun s$struct$self$eq<Bool> ($Struct $Struct) Bool)
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
(declare-fun $struct_get<$Map<Int~_$Map<Int~_Int>>> (Int) $Map<Int~_$Map<Int~_Int>>)
(declare-fun $struct_set<$Struct> ($Struct Int $Map<Int~_$Map<Int~_Int>>) $Struct)
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
(declare-fun $accessible$set%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$set_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$set2%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$set2_0%trigger ($Snap Int Int Int) Bool)
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
(assert (forall (($v $Map<Int~_Int>) ($k Int)) (!
  (= ($map_get<$Map<Int~_Int>> ($map_init<$Map<Int~_$Map<Int~_Int>>> $v) $k) $v)
  :pattern (($map_get<$Map<Int~_Int>> ($map_init<$Map<Int~_$Map<Int~_Int>>> $v) $k))
  :qid |prog.$map_init_ax|)))
(assert (forall (($m $Map<Int~_$Map<Int~_Int>>) ($n $Map<Int~_$Map<Int~_Int>>)) (!
  (and
    (= ($map_eq<Bool> $m $n) (= $m $n))
    (=
      ($map_eq<Bool> $m $n)
      (forall (($k Int)) (!
        (= ($map_get<$Map<Int~_Int>> $m $k) ($map_get<$Map<Int~_Int>> $n $k))
        :pattern (($map_get<$Map<Int~_Int>> $m $k) ($map_get<$Map<Int~_Int>> $n $k))
        ))))
  :pattern (($map_eq<Bool> $m $n))
  :qid |prog.$map_eq_ax|)))
(assert (forall (($m $Map<Int~_$Map<Int~_Int>>) ($k Int) ($v $Map<Int~_Int>) ($kk Int)) (!
  (=
    ($map_get<$Map<Int~_Int>> ($map_set<$Map<Int~_$Map<Int~_Int>>> $m $k $v) $kk)
    (ite (= $k $kk) $v ($map_get<$Map<Int~_Int>> $m $kk)))
  :pattern (($map_get<$Map<Int~_Int>> ($map_set<$Map<Int~_$Map<Int~_Int>>> $m $k $v) $kk))
  :qid |prog.$map_set_ax|)))
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
(assert (forall (($arg_0 $Map<Int~_$Map<Int~_Int>>) ($arg_1 $Map<Int~_Int>) ($arg_2 Int) ($arg_3 Int) ($arg_4 Int) ($arg_5 Int) ($arg_6 Bool) ($arg_7 $Map<Int~_Int>) ($arg_8 $Map<Int~_Int>) ($arg_9 Bool)) (!
  (and
    (=
      ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9) (- 0 1)))
      9122519725869122497593506884710)
    (and
      (=
        ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9) 0))
        $arg_0)
      (and
        (=
          ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9) 1))
          $arg_1)
        (and
          (=
            ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9) 2))
            $arg_2)
          (and
            (=
              ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9) 3))
              $arg_3)
            (and
              (=
                ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9) 4))
                $arg_4)
              (and
                (=
                  ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9) 5))
                  $arg_5)
                (and
                  (=
                    ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9) 6))
                    $arg_6)
                  (and
                    (=
                      ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9) 7))
                      $arg_7)
                    (and
                      (=
                        ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9) 8))
                        $arg_8)
                      (=
                        ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9) 9))
                        $arg_9)))))))))))
  :pattern ((s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9))
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
          ($map_eq<Bool> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $l 0)) ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $r 0)))
          (and
            ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 1)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 1)))
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
                      ($struct_get<Int> ($struct_loc<Int> $l 5))
                      ($struct_get<Int> ($struct_loc<Int> $r 5)))
                    (and
                      (=
                        ($struct_get<Bool> ($struct_loc<Int> $l 6))
                        ($struct_get<Bool> ($struct_loc<Int> $r 6)))
                      (and
                        ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 7)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 7)))
                        (and
                          ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 8)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 8)))
                          (=
                            ($struct_get<Bool> ($struct_loc<Int> $l 9))
                            ($struct_get<Bool> ($struct_loc<Int> $r 9)))))))))))))))
  :pattern ((s$struct$self$eq<Bool> $l $r))
  :qid |prog.s$struct$self$eq$ax|)))
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
(assert (forall (($s $Struct) ($m Int) ($t $Map<Int~_$Map<Int~_Int>>)) (!
  (=
    ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
    $t)
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $m $t) $m))
  :qid |prog.$get_set_0_ax|)))
(assert (forall (($s $Struct) ($m Int) ($n Int) ($t $Map<Int~_$Map<Int~_Int>>)) (!
  (=>
    (not (= $m $n))
    (=
      ($struct_loc<Int> $s $m)
      ($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m)))
  :pattern (($struct_loc<Int> ($struct_set<$Struct> $s $n $t) $m))
  :qid |prog.$get_set_1_ax|)))
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
  :qid |quant-u-1520|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  ($pure$success_get%stateless x@0@00)
  :pattern (($pure$success_get%limited s@$ x@0@00))
  :qid |quant-u-1521|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  (=>
    ($pure$success_get%precondition s@$ x@0@00)
    (=
      ($pure$success_get s@$ x@0@00)
      ($struct_get<Bool> ($struct_loc<Int> x@0@00 0))))
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-1526|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  true
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-1527|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (= ($pure$return_get%limited s@$ x@2@00) ($pure$return_get s@$ x@2@00))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1522|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  ($pure$return_get%stateless x@2@00)
  :pattern (($pure$return_get%limited s@$ x@2@00))
  :qid |quant-u-1523|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (=>
    ($pure$return_get%precondition s@$ x@2@00)
    (= ($pure$return_get s@$ x@2@00) ($struct_loc<Int> x@2@00 1)))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1528|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  true
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-1529|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  (= ($range_sum%limited s@$ $x@4@00 $y@5@00) ($range_sum s@$ $x@4@00 $y@5@00))
  :pattern (($range_sum s@$ $x@4@00 $y@5@00))
  :qid |quant-u-1524|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  ($range_sum%stateless $x@4@00 $y@5@00)
  :pattern (($range_sum%limited s@$ $x@4@00 $y@5@00))
  :qid |quant-u-1525|)))
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
  :qid |quant-u-1530|)))
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
  :qid |quant-u-1531|)))
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
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]),
;     $q0): $Map[Int, Int]) }
;     (forall $q1: Int ::
;       { ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) }
;       -170141183460469231731687303715884105728 <=
;       ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) &&
;       ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) <=
;       170141183460469231731687303715884105727))
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]) } (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727))
(declare-const $q0@9@01 Int)
(push) ; 3
; [eval] (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727)
(declare-const $q1@10@01 Int)
(push) ; 4
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc($self$0, 0)
(push) ; 5
; [then-branch: 0 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$0@0@01, 0)), $q0@9@01), $q1@10@01)) | live]
; [else-branch: 0 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$0@0@01, 0)), $q0@9@01), $q1@10@01) | live]
(push) ; 6
; [then-branch: 0 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$0@0@01, 0)), $q0@9@01), $q1@10@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01) $q1@10@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 0 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$0@0@01, 0)), $q0@9@01), $q1@10@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01) $q1@10@01)))
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc($self$0, 0)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01) $q1@10@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01) $q1@10@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@10@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01) $q1@10@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01) $q1@10@01))))
  :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01) $q1@10@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@606@134@606@609-aux|)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@9@01 Int)) (!
  (forall (($q1@10@01 Int)) (!
    (or
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01) $q1@10@01))
      (not
        (<=
          (- 0 170141183460469231731687303715884105728)
          ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01) $q1@10@01))))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01) $q1@10@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@606@134@606@609-aux|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@606@11@606@610-aux|)))
(assert (forall (($q0@9@01 Int)) (!
  (forall (($q1@10@01 Int)) (!
    (and
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01) $q1@10@01))
      (<=
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01) $q1@10@01)
        170141183460469231731687303715884105727))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01) $q1@10@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@606@134@606@609|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@0@01 0)) $q0@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@606@11@606@610|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) }
;     -170141183460469231731687303715884105728 <=
;     ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) <=
;     170141183460469231731687303715884105727)
(declare-const $t@11@01 $Snap)
(assert (= $t@11@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) } -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727)
(declare-const $q2@12@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 1)
(push) ; 4
; [then-branch: 1 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 1)), $q2@12@01)) | live]
; [else-branch: 1 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 1)), $q2@12@01) | live]
(push) ; 5
; [then-branch: 1 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 1)), $q2@12@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 1)) $q2@12@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 1)), $q2@12@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 1)) $q2@12@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 1)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 1)) $q2@12@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 1)) $q2@12@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@12@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 1)) $q2@12@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 1)) $q2@12@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 1)) $q2@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@607@11@607@354-aux|)))
(assert (forall (($q2@12@01 Int)) (!
  (and
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 1)) $q2@12@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 1)) $q2@12@01)
      170141183460469231731687303715884105727))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 1)) $q2@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@607@11@607@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 2)): Int) &&
;   ($struct_get($struct_loc($self$0, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@13@01 $Snap)
(assert (= $t@13@01 ($Snap.combine ($Snap.first $t@13@01) ($Snap.second $t@13@01))))
(assert (= ($Snap.first $t@13@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 2))))
(assert (= ($Snap.second $t@13@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 3)): Int) &&
;   ($struct_get($struct_loc($self$0, 3)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 ($Snap.combine ($Snap.first $t@14@01) ($Snap.second $t@14@01))))
(assert (= ($Snap.first $t@14@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 3))))
(assert (= ($Snap.second $t@14@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 3)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 3))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 4)): Int) &&
;   ($struct_get($struct_loc($self$0, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@15@01 $Snap)
(assert (= $t@15@01 ($Snap.combine ($Snap.first $t@15@01) ($Snap.second $t@15@01))))
(assert (= ($Snap.first $t@15@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 4)): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): Int)
; [eval] $struct_loc($self$0, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 4))))
(assert (= ($Snap.second $t@15@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 4)): Int)
; [eval] $struct_loc($self$0, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 5)): Int) &&
;   ($struct_get($struct_loc($self$0, 5)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 ($Snap.combine ($Snap.first $t@16@01) ($Snap.second $t@16@01))))
(assert (= ($Snap.first $t@16@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 5)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 5)): Int)
; [eval] $struct_loc($self$0, 5)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 5))))
(assert (= ($Snap.second $t@16@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 5)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 5)): Int)
; [eval] $struct_loc($self$0, 5)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 5))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@17@01 $Snap)
(assert (= $t@17@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@18@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
(push) ; 4
; [then-branch: 2 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 7)), $q3@18@01)) | live]
; [else-branch: 2 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 7)), $q3@18@01) | live]
(push) ; 5
; [then-branch: 2 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 7)), $q3@18@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q3@18@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 7)), $q3@18@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q3@18@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q3@18@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q3@18@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@18@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q3@18@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q3@18@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q3@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@612@11@612@354-aux|)))
(assert (forall (($q3@18@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q3@18@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q3@18@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q3@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@612@11@612@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int))
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int))
(declare-const $q3@20@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@20@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q3@20@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $q3@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@613@11@613@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@22@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 8)
(push) ; 4
; [then-branch: 3 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 8)), $q4@22@01)) | live]
; [else-branch: 3 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 8)), $q4@22@01) | live]
(push) ; 5
; [then-branch: 3 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 8)), $q4@22@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 8)) $q4@22@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 8)), $q4@22@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 8)) $q4@22@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 8)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 8)) $q4@22@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 8)) $q4@22@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@22@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 8)) $q4@22@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 8)) $q4@22@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 8)) $q4@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@614@11@614@354-aux|)))
(assert (forall (($q4@22@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 8)) $q4@22@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 8)) $q4@22@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 8)) $q4@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@614@11@614@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])): Int))
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])): Int))
(declare-const $q4@24@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 8)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 8)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@24@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 8)) $q4@24@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 8))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 8)) $q4@24@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@615@11@615@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 $Snap.unit))
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
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]),
;     $q0): $Map[Int, Int]) }
;     (forall $q1: Int ::
;       { ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) }
;       -170141183460469231731687303715884105728 <=
;       ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) &&
;       ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) <=
;       170141183460469231731687303715884105727))
(declare-const $t@26@01 $Snap)
(assert (= $t@26@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]) } (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727))
(declare-const $q0@27@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727)
(declare-const $q1@28@01 Int)
(push) ; 4
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc($self$1, 0)
(push) ; 5
; [then-branch: 4 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$1@2@01, 0)), $q0@27@01), $q1@28@01)) | live]
; [else-branch: 4 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$1@2@01, 0)), $q0@27@01), $q1@28@01) | live]
(push) ; 6
; [then-branch: 4 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$1@2@01, 0)), $q0@27@01), $q1@28@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01) $q1@28@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 4 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$1@2@01, 0)), $q0@27@01), $q1@28@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01) $q1@28@01)))
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc($self$1, 0)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01) $q1@28@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01) $q1@28@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@28@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01) $q1@28@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01) $q1@28@01))))
  :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01) $q1@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@617@134@617@609-aux|)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@27@01 Int)) (!
  (forall (($q1@28@01 Int)) (!
    (or
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01) $q1@28@01))
      (not
        (<=
          (- 0 170141183460469231731687303715884105728)
          ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01) $q1@28@01))))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01) $q1@28@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@617@134@617@609-aux|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@617@11@617@610-aux|)))
(assert (forall (($q0@27@01 Int)) (!
  (forall (($q1@28@01 Int)) (!
    (and
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01) $q1@28@01))
      (<=
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01) $q1@28@01)
        170141183460469231731687303715884105727))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01) $q1@28@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@617@134@617@609|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@2@01 0)) $q0@27@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@617@11@617@610|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) }
;     -170141183460469231731687303715884105728 <=
;     ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) <=
;     170141183460469231731687303715884105727)
(declare-const $t@29@01 $Snap)
(assert (= $t@29@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) } -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727)
(declare-const $q2@30@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 1)
(push) ; 4
; [then-branch: 5 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 1)), $q2@30@01)) | live]
; [else-branch: 5 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 1)), $q2@30@01) | live]
(push) ; 5
; [then-branch: 5 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 1)), $q2@30@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 1)) $q2@30@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 1)), $q2@30@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 1)) $q2@30@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 1)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 1)) $q2@30@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 1)) $q2@30@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@30@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 1)) $q2@30@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 1)) $q2@30@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 1)) $q2@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@618@11@618@354-aux|)))
(assert (forall (($q2@30@01 Int)) (!
  (and
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 1)) $q2@30@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 1)) $q2@30@01)
      170141183460469231731687303715884105727))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 1)) $q2@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@618@11@618@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 2)): Int) &&
;   ($struct_get($struct_loc($self$1, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@31@01 $Snap)
(assert (= $t@31@01 ($Snap.combine ($Snap.first $t@31@01) ($Snap.second $t@31@01))))
(assert (= ($Snap.first $t@31@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 2))))
(assert (= ($Snap.second $t@31@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 3)): Int) &&
;   ($struct_get($struct_loc($self$1, 3)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@32@01 $Snap)
(assert (= $t@32@01 ($Snap.combine ($Snap.first $t@32@01) ($Snap.second $t@32@01))))
(assert (= ($Snap.first $t@32@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 3))))
(assert (= ($Snap.second $t@32@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 3)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 3))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 4)): Int) &&
;   ($struct_get($struct_loc($self$1, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@33@01 $Snap)
(assert (= $t@33@01 ($Snap.combine ($Snap.first $t@33@01) ($Snap.second $t@33@01))))
(assert (= ($Snap.first $t@33@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 4)): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): Int)
; [eval] $struct_loc($self$1, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 4))))
(assert (= ($Snap.second $t@33@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 4)): Int)
; [eval] $struct_loc($self$1, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 5)): Int) &&
;   ($struct_get($struct_loc($self$1, 5)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(assert (= ($Snap.first $t@34@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 5)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 5)): Int)
; [eval] $struct_loc($self$1, 5)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 5))))
(assert (= ($Snap.second $t@34@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 5)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 5)): Int)
; [eval] $struct_loc($self$1, 5)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 5))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@36@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
(push) ; 4
; [then-branch: 6 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 7)), $q3@36@01)) | live]
; [else-branch: 6 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 7)), $q3@36@01) | live]
(push) ; 5
; [then-branch: 6 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 7)), $q3@36@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q3@36@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 7)), $q3@36@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q3@36@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q3@36@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q3@36@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@36@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q3@36@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q3@36@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q3@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@623@11@623@354-aux|)))
(assert (forall (($q3@36@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q3@36@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q3@36@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q3@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@623@11@623@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int))
(declare-const $t@37@01 $Snap)
(assert (= $t@37@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int))
(declare-const $q3@38@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@38@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q3@38@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $q3@38@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@624@11@624@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@40@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 8)
(push) ; 4
; [then-branch: 7 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 8)), $q4@40@01)) | live]
; [else-branch: 7 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 8)), $q4@40@01) | live]
(push) ; 5
; [then-branch: 7 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 8)), $q4@40@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 8)) $q4@40@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 8)), $q4@40@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 8)) $q4@40@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 8)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 8)) $q4@40@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 8)) $q4@40@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@40@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 8)) $q4@40@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 8)) $q4@40@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 8)) $q4@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@625@11@625@354-aux|)))
(assert (forall (($q4@40@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 8)) $q4@40@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 8)) $q4@40@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 8)) $q4@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@625@11@625@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])): Int))
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])): Int))
(declare-const $q4@42@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 8)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 8)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@42@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 8)) $q4@42@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 8))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 8)) $q4@42@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@626@11@626@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@43@01 $Snap)
(assert (= $t@43@01 $Snap.unit))
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
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]),
;     $q0): $Map[Int, Int]) }
;     (forall $q1: Int ::
;       { ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) }
;       -170141183460469231731687303715884105728 <=
;       ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) &&
;       ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) <=
;       170141183460469231731687303715884105727))
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]) } (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727))
(declare-const $q0@45@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727)
(declare-const $q1@46@01 Int)
(push) ; 4
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc($self$2, 0)
(push) ; 5
; [then-branch: 8 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$2@4@01, 0)), $q0@45@01), $q1@46@01)) | live]
; [else-branch: 8 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$2@4@01, 0)), $q0@45@01), $q1@46@01) | live]
(push) ; 6
; [then-branch: 8 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$2@4@01, 0)), $q0@45@01), $q1@46@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01) $q1@46@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 8 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$2@4@01, 0)), $q0@45@01), $q1@46@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01) $q1@46@01)))
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc($self$2, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc($self$2, 0)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01) $q1@46@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01) $q1@46@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@46@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01) $q1@46@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01) $q1@46@01))))
  :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01) $q1@46@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@628@134@628@609-aux|)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@45@01 Int)) (!
  (forall (($q1@46@01 Int)) (!
    (or
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01) $q1@46@01))
      (not
        (<=
          (- 0 170141183460469231731687303715884105728)
          ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01) $q1@46@01))))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01) $q1@46@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@628@134@628@609-aux|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@628@11@628@610-aux|)))
(assert (forall (($q0@45@01 Int)) (!
  (forall (($q1@46@01 Int)) (!
    (and
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01) $q1@46@01))
      (<=
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01) $q1@46@01)
        170141183460469231731687303715884105727))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01) $q1@46@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@628@134@628@609|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$2@4@01 0)) $q0@45@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@628@11@628@610|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 1)): $Map[Int, Int]), $q2): Int) }
;     -170141183460469231731687303715884105728 <=
;     ($map_get(($struct_get($struct_loc($self$2, 1)): $Map[Int, Int]), $q2): Int) &&
;     ($map_get(($struct_get($struct_loc($self$2, 1)): $Map[Int, Int]), $q2): Int) <=
;     170141183460469231731687303715884105727)
(declare-const $t@47@01 $Snap)
(assert (= $t@47@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$2, 1)): $Map[Int, Int]), $q2): Int) } -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$2, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc($self$2, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727)
(declare-const $q2@48@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$2, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc($self$2, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$2, 1)): $Map[Int, Int]), $q2): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($struct_get($struct_loc($self$2, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$2, 1)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 1)
(push) ; 4
; [then-branch: 9 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 1)), $q2@48@01)) | live]
; [else-branch: 9 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 1)), $q2@48@01) | live]
(push) ; 5
; [then-branch: 9 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 1)), $q2@48@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 1)) $q2@48@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 1)), $q2@48@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 1)) $q2@48@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$2, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($struct_get($struct_loc($self$2, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$2, 1)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 1)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 1)) $q2@48@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 1)) $q2@48@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@48@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 1)) $q2@48@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 1)) $q2@48@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 1)) $q2@48@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@629@11@629@354-aux|)))
(assert (forall (($q2@48@01 Int)) (!
  (and
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 1)) $q2@48@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 1)) $q2@48@01)
      170141183460469231731687303715884105727))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 1)) $q2@48@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@629@11@629@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$2, 2)): Int) &&
;   ($struct_get($struct_loc($self$2, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@49@01 $Snap)
(assert (= $t@49@01 ($Snap.combine ($Snap.first $t@49@01) ($Snap.second $t@49@01))))
(assert (= ($Snap.first $t@49@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] $struct_loc($self$2, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 2))))
(assert (= ($Snap.second $t@49@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] $struct_loc($self$2, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$2, 3)): Int) &&
;   ($struct_get($struct_loc($self$2, 3)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@50@01 $Snap)
(assert (= $t@50@01 ($Snap.combine ($Snap.first $t@50@01) ($Snap.second $t@50@01))))
(assert (= ($Snap.first $t@50@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 3)): Int)
; [eval] ($struct_get($struct_loc($self$2, 3)): Int)
; [eval] $struct_loc($self$2, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 3))))
(assert (= ($Snap.second $t@50@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 3)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$2, 3)): Int)
; [eval] $struct_loc($self$2, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 3))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$2, 4)): Int) &&
;   ($struct_get($struct_loc($self$2, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@51@01 $Snap)
(assert (= $t@51@01 ($Snap.combine ($Snap.first $t@51@01) ($Snap.second $t@51@01))))
(assert (= ($Snap.first $t@51@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 4)): Int)
; [eval] ($struct_get($struct_loc($self$2, 4)): Int)
; [eval] $struct_loc($self$2, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 4))))
(assert (= ($Snap.second $t@51@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$2, 4)): Int)
; [eval] $struct_loc($self$2, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$2, 5)): Int) &&
;   ($struct_get($struct_loc($self$2, 5)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@52@01 $Snap)
(assert (= $t@52@01 ($Snap.combine ($Snap.first $t@52@01) ($Snap.second $t@52@01))))
(assert (= ($Snap.first $t@52@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$2, 5)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$2, 5)): Int)
; [eval] $struct_loc($self$2, 5)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 5))))
(assert (= ($Snap.second $t@52@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 5)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$2, 5)): Int)
; [eval] $struct_loc($self$2, 5)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 5))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@54@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 7)
(push) ; 4
; [then-branch: 10 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 7)), $q3@54@01)) | live]
; [else-branch: 10 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 7)), $q3@54@01) | live]
(push) ; 5
; [then-branch: 10 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 7)), $q3@54@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q3@54@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 7)), $q3@54@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q3@54@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 7)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q3@54@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q3@54@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@54@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q3@54@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q3@54@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q3@54@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@634@11@634@354-aux|)))
(assert (forall (($q3@54@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q3@54@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q3@54@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q3@54@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@634@11@634@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])): Int))
(declare-const $t@55@01 $Snap)
(assert (= $t@55@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])): Int))
(declare-const $q3@56@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 7)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@56@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q3@56@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $q3@56@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@635@11@635@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@57@01 $Snap)
(assert (= $t@57@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@58@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$2, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 8)
(push) ; 4
; [then-branch: 11 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 8)), $q4@58@01)) | live]
; [else-branch: 11 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 8)), $q4@58@01) | live]
(push) ; 5
; [then-branch: 11 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 8)), $q4@58@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 8)) $q4@58@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 11 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 8)), $q4@58@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 8)) $q4@58@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$2, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 8)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 8)) $q4@58@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 8)) $q4@58@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@58@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 8)) $q4@58@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 8)) $q4@58@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 8)) $q4@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@636@11@636@354-aux|)))
(assert (forall (($q4@58@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 8)) $q4@58@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 8)) $q4@58@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 8)) $q4@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@636@11@636@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int])): Int))
(declare-const $t@59@01 $Snap)
(assert (= $t@59@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int])): Int))
(declare-const $q4@60@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$2, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 8)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 8)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 8)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@60@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 8)) $q4@60@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 8))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 8)) $q4@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@637@11@637@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$2, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@61@01 $Snap)
(assert (= $t@61@01 $Snap.unit))
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
(declare-const $t@62@01 $Snap)
(assert (= $t@62@01 ($Snap.combine ($Snap.first $t@62@01) ($Snap.second $t@62@01))))
(assert (= ($Snap.first $t@62@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 0))))
(assert (= ($Snap.second $t@62@01) $Snap.unit))
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
(declare-const $t@63@01 $Snap)
(assert (= $t@63@01 ($Snap.combine ($Snap.first $t@63@01) ($Snap.second $t@63@01))))
(assert (= ($Snap.first $t@63@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 1))))
(assert (= ($Snap.second $t@63@01) $Snap.unit))
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
(declare-const $t@64@01 $Snap)
(assert (= $t@64@01 ($Snap.combine ($Snap.first $t@64@01) ($Snap.second $t@64@01))))
(assert (= ($Snap.first $t@64@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 2))))
(assert (= ($Snap.second $t@64@01) $Snap.unit))
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
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 $Snap.unit))
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
(declare-const $t@66@01 $Snap)
(assert (= $t@66@01 ($Snap.combine ($Snap.first $t@66@01) ($Snap.second $t@66@01))))
(assert (= ($Snap.first $t@66@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@6@01 4))))
(assert (= ($Snap.second $t@66@01) $Snap.unit))
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
(declare-const $t@67@01 $Snap)
(assert (= $t@67@01 $Snap.unit))
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
;     { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int))
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int))
(declare-const $a@69@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int))
(declare-const $t@70@01 $Snap)
(assert (= $t@70@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int))
(declare-const $a@71@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@71@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $a@71@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 7)) $a@71@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $a@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@646@11@646@263|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int))
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int))
(declare-const $a@73@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$2, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 7)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@73@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $a@73@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 7)) $a@73@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 7)) $a@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@647@11@647@263|)))
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
(declare-const $self$0@74@01 $Struct)
; [exec]
; var $$contracts$0: $Map[Int, $Struct]
(declare-const $$contracts$0@75@01 $Map<Int~_$Struct>)
; [exec]
; var $self$1: $Struct
(declare-const $self$1@76@01 $Struct)
; [exec]
; var $$contracts$1: $Map[Int, $Struct]
(declare-const $$contracts$1@77@01 $Map<Int~_$Struct>)
; [exec]
; var block: $Struct
(declare-const block@78@01 $Struct)
; [exec]
; var $post: Bool
(declare-const $post@79@01 Bool)
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]),
;     $q0): $Map[Int, Int]) }
;     (forall $q1: Int ::
;       { ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) }
;       -170141183460469231731687303715884105728 <=
;       ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) &&
;       ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) <=
;       170141183460469231731687303715884105727))
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]) } (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727))
(declare-const $q0@81@01 Int)
(push) ; 3
; [eval] (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727)
(declare-const $q1@82@01 Int)
(push) ; 4
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc($self$0, 0)
(push) ; 5
; [then-branch: 12 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$0@74@01, 0)), $q0@81@01), $q1@82@01)) | live]
; [else-branch: 12 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$0@74@01, 0)), $q0@81@01), $q1@82@01) | live]
(push) ; 6
; [then-branch: 12 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$0@74@01, 0)), $q0@81@01), $q1@82@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01) $q1@82@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 12 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$0@74@01, 0)), $q0@81@01), $q1@82@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01) $q1@82@01)))
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc($self$0, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc($self$0, 0)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01) $q1@82@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01) $q1@82@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@82@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01) $q1@82@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01) $q1@82@01))))
  :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01) $q1@82@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@658@134@658@609-aux|)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@81@01 Int)) (!
  (forall (($q1@82@01 Int)) (!
    (or
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01) $q1@82@01))
      (not
        (<=
          (- 0 170141183460469231731687303715884105728)
          ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01) $q1@82@01))))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01) $q1@82@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@658@134@658@609-aux|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@658@11@658@610-aux|)))
(assert (forall (($q0@81@01 Int)) (!
  (forall (($q1@82@01 Int)) (!
    (and
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01) $q1@82@01))
      (<=
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01) $q1@82@01)
        170141183460469231731687303715884105727))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01) $q1@82@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@658@134@658@609|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$0@74@01 0)) $q0@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@658@11@658@610|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) }
;     -170141183460469231731687303715884105728 <=
;     ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) <=
;     170141183460469231731687303715884105727)
(declare-const $t@83@01 $Snap)
(assert (= $t@83@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) } -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727)
(declare-const $q2@84@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 1)
(push) ; 4
; [then-branch: 13 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 1)), $q2@84@01)) | live]
; [else-branch: 13 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 1)), $q2@84@01) | live]
(push) ; 5
; [then-branch: 13 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 1)), $q2@84@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 1)) $q2@84@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 13 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 1)), $q2@84@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 1)) $q2@84@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($struct_get($struct_loc($self$0, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 1)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 1)) $q2@84@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 1)) $q2@84@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@84@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 1)) $q2@84@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 1)) $q2@84@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 1)) $q2@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@659@11@659@354-aux|)))
(assert (forall (($q2@84@01 Int)) (!
  (and
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 1)) $q2@84@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 1)) $q2@84@01)
      170141183460469231731687303715884105727))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 1)) $q2@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@659@11@659@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 2)): Int) &&
;   ($struct_get($struct_loc($self$0, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@85@01 $Snap)
(assert (= $t@85@01 ($Snap.combine ($Snap.first $t@85@01) ($Snap.second $t@85@01))))
(assert (= ($Snap.first $t@85@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 2))))
(assert (= ($Snap.second $t@85@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 3)): Int) &&
;   ($struct_get($struct_loc($self$0, 3)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 ($Snap.combine ($Snap.first $t@86@01) ($Snap.second $t@86@01))))
(assert (= ($Snap.first $t@86@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 3))))
(assert (= ($Snap.second $t@86@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 3)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$0, 3)): Int)
; [eval] $struct_loc($self$0, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 3))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 4)): Int) &&
;   ($struct_get($struct_loc($self$0, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@87@01 $Snap)
(assert (= $t@87@01 ($Snap.combine ($Snap.first $t@87@01) ($Snap.second $t@87@01))))
(assert (= ($Snap.first $t@87@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 4)): Int)
; [eval] ($struct_get($struct_loc($self$0, 4)): Int)
; [eval] $struct_loc($self$0, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 4))))
(assert (= ($Snap.second $t@87@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 4)): Int)
; [eval] $struct_loc($self$0, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 5)): Int) &&
;   ($struct_get($struct_loc($self$0, 5)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@88@01 $Snap)
(assert (= $t@88@01 ($Snap.combine ($Snap.first $t@88@01) ($Snap.second $t@88@01))))
(assert (= ($Snap.first $t@88@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 5)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 5)): Int)
; [eval] $struct_loc($self$0, 5)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 5))))
(assert (= ($Snap.second $t@88@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 5)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 5)): Int)
; [eval] $struct_loc($self$0, 5)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 5))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@90@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
(push) ; 4
; [then-branch: 14 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 7)), $q3@90@01)) | live]
; [else-branch: 14 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 7)), $q3@90@01) | live]
(push) ; 5
; [then-branch: 14 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 7)), $q3@90@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 7)) $q3@90@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 14 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 7)), $q3@90@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 7)) $q3@90@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 7)) $q3@90@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 7)) $q3@90@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@90@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 7)) $q3@90@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 7)) $q3@90@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 7)) $q3@90@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@664@11@664@354-aux|)))
(assert (forall (($q3@90@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 7)) $q3@90@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 7)) $q3@90@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 7)) $q3@90@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@664@11@664@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int))
(declare-const $t@91@01 $Snap)
(assert (= $t@91@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int))
(declare-const $q3@92@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@92@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 7)) $q3@92@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 7)) $q3@92@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@665@11@665@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@93@01 $Snap)
(assert (= $t@93@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@94@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 8)
(push) ; 4
; [then-branch: 15 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 8)), $q4@94@01)) | live]
; [else-branch: 15 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 8)), $q4@94@01) | live]
(push) ; 5
; [then-branch: 15 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 8)), $q4@94@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 8)) $q4@94@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 8)), $q4@94@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 8)) $q4@94@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 8)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 8)) $q4@94@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 8)) $q4@94@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@94@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 8)) $q4@94@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 8)) $q4@94@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 8)) $q4@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@666@11@666@354-aux|)))
(assert (forall (($q4@94@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 8)) $q4@94@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 8)) $q4@94@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 8)) $q4@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@666@11@666@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])): Int))
(declare-const $t@95@01 $Snap)
(assert (= $t@95@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])): Int))
(declare-const $q4@96@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 8)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 8)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@96@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 8)) $q4@96@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 8))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 8)) $q4@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@667@11@667@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$0, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$0, -1)): Int)
; [eval] $struct_loc($self$0, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]),
;     $q0): $Map[Int, Int]) }
;     (forall $q1: Int ::
;       { ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) }
;       -170141183460469231731687303715884105728 <=
;       ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) &&
;       ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) <=
;       170141183460469231731687303715884105727))
(declare-const $t@98@01 $Snap)
(assert (= $t@98@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]) } (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727))
(declare-const $q0@99@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727)
(declare-const $q1@100@01 Int)
(push) ; 4
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc($self$1, 0)
(push) ; 5
; [then-branch: 16 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$1@76@01, 0)), $q0@99@01), $q1@100@01)) | live]
; [else-branch: 16 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$1@76@01, 0)), $q0@99@01), $q1@100@01) | live]
(push) ; 6
; [then-branch: 16 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$1@76@01, 0)), $q0@99@01), $q1@100@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01) $q1@100@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 16 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($self$1@76@01, 0)), $q0@99@01), $q1@100@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01) $q1@100@01)))
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc($self$1, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc($self$1, 0)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01) $q1@100@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01) $q1@100@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@100@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01) $q1@100@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01) $q1@100@01))))
  :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01) $q1@100@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@669@134@669@609-aux|)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@99@01 Int)) (!
  (forall (($q1@100@01 Int)) (!
    (or
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01) $q1@100@01))
      (not
        (<=
          (- 0 170141183460469231731687303715884105728)
          ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01) $q1@100@01))))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01) $q1@100@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@669@134@669@609-aux|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@669@11@669@610-aux|)))
(assert (forall (($q0@99@01 Int)) (!
  (forall (($q1@100@01 Int)) (!
    (and
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01) $q1@100@01))
      (<=
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01) $q1@100@01)
        170141183460469231731687303715884105727))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01) $q1@100@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@669@134@669@609|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $self$1@76@01 0)) $q0@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@669@11@669@610|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) }
;     -170141183460469231731687303715884105728 <=
;     ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) <=
;     170141183460469231731687303715884105727)
(declare-const $t@101@01 $Snap)
(assert (= $t@101@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) } -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727)
(declare-const $q2@102@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 1)
(push) ; 4
; [then-branch: 17 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 1)), $q2@102@01)) | live]
; [else-branch: 17 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 1)), $q2@102@01) | live]
(push) ; 5
; [then-branch: 17 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 1)), $q2@102@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 1)) $q2@102@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 17 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 1)), $q2@102@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 1)) $q2@102@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($struct_get($struct_loc($self$1, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 1)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 1)) $q2@102@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 1)) $q2@102@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@102@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 1)) $q2@102@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 1)) $q2@102@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 1)) $q2@102@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@670@11@670@354-aux|)))
(assert (forall (($q2@102@01 Int)) (!
  (and
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 1)) $q2@102@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 1)) $q2@102@01)
      170141183460469231731687303715884105727))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 1)) $q2@102@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@670@11@670@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 2)): Int) &&
;   ($struct_get($struct_loc($self$1, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@103@01 $Snap)
(assert (= $t@103@01 ($Snap.combine ($Snap.first $t@103@01) ($Snap.second $t@103@01))))
(assert (= ($Snap.first $t@103@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 2))))
(assert (= ($Snap.second $t@103@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 3)): Int) &&
;   ($struct_get($struct_loc($self$1, 3)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@104@01 $Snap)
(assert (= $t@104@01 ($Snap.combine ($Snap.first $t@104@01) ($Snap.second $t@104@01))))
(assert (= ($Snap.first $t@104@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 3))))
(assert (= ($Snap.second $t@104@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 3)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$1, 3)): Int)
; [eval] $struct_loc($self$1, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 3))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 4)): Int) &&
;   ($struct_get($struct_loc($self$1, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 ($Snap.combine ($Snap.first $t@105@01) ($Snap.second $t@105@01))))
(assert (= ($Snap.first $t@105@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 4)): Int)
; [eval] ($struct_get($struct_loc($self$1, 4)): Int)
; [eval] $struct_loc($self$1, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 4))))
(assert (= ($Snap.second $t@105@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 4)): Int)
; [eval] $struct_loc($self$1, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 5)): Int) &&
;   ($struct_get($struct_loc($self$1, 5)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@106@01 $Snap)
(assert (= $t@106@01 ($Snap.combine ($Snap.first $t@106@01) ($Snap.second $t@106@01))))
(assert (= ($Snap.first $t@106@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 5)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 5)): Int)
; [eval] $struct_loc($self$1, 5)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 5))))
(assert (= ($Snap.second $t@106@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 5)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 5)): Int)
; [eval] $struct_loc($self$1, 5)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 5))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@108@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
(push) ; 4
; [then-branch: 18 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 7)), $q3@108@01)) | live]
; [else-branch: 18 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 7)), $q3@108@01) | live]
(push) ; 5
; [then-branch: 18 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 7)), $q3@108@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7)) $q3@108@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 7)), $q3@108@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7)) $q3@108@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7)) $q3@108@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7)) $q3@108@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@108@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7)) $q3@108@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7)) $q3@108@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7)) $q3@108@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@675@11@675@354-aux|)))
(assert (forall (($q3@108@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7)) $q3@108@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7)) $q3@108@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7)) $q3@108@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@675@11@675@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int))
(declare-const $t@109@01 $Snap)
(assert (= $t@109@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int))
(declare-const $q3@110@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@110@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7)) $q3@110@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7)) $q3@110@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@676@11@676@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@111@01 $Snap)
(assert (= $t@111@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@112@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 8)
(push) ; 4
; [then-branch: 19 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 8)), $q4@112@01)) | live]
; [else-branch: 19 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 8)), $q4@112@01) | live]
(push) ; 5
; [then-branch: 19 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 8)), $q4@112@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 8)) $q4@112@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 19 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 8)), $q4@112@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 8)) $q4@112@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 8)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 8)) $q4@112@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 8)) $q4@112@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@112@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 8)) $q4@112@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 8)) $q4@112@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 8)) $q4@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@677@11@677@354-aux|)))
(assert (forall (($q4@112@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 8)) $q4@112@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 8)) $q4@112@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 8)) $q4@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@677@11@677@354|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])): Int))
(declare-const $t@113@01 $Snap)
(assert (= $t@113@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])): Int))
(declare-const $q4@114@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 8)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 8)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 8)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@114@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 8)) $q4@114@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 8))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 8)) $q4@114@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@678@11@678@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($self$1, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@115@01 $Snap)
(assert (= $t@115@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($self$1, -1)): Int)
; [eval] $struct_loc($self$1, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@116@01 $Snap)
(assert (= $t@116@01 ($Snap.combine ($Snap.first $t@116@01) ($Snap.second $t@116@01))))
(assert (= ($Snap.first $t@116@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@78@01 0))))
(assert (= ($Snap.second $t@116@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@78@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@117@01 $Snap)
(assert (= $t@117@01 ($Snap.combine ($Snap.first $t@117@01) ($Snap.second $t@117@01))))
(assert (= ($Snap.first $t@117@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@78@01 1))))
(assert (= ($Snap.second $t@117@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@78@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@118@01 $Snap)
(assert (= $t@118@01 ($Snap.combine ($Snap.first $t@118@01) ($Snap.second $t@118@01))))
(assert (= ($Snap.first $t@118@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@78@01 2))))
(assert (= ($Snap.second $t@118@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@78@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@119@01 $Snap)
(assert (= $t@119@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@78@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@120@01 $Snap)
(assert (= $t@120@01 ($Snap.combine ($Snap.first $t@120@01) ($Snap.second $t@120@01))))
(assert (= ($Snap.first $t@120@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@78@01 4))))
(assert (= ($Snap.second $t@120@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@78@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@121@01 $Snap)
(assert (= $t@121@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@78@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int))
(declare-const $t@122@01 $Snap)
(assert (= $t@122@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int))
(declare-const $a@123@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 7)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 7)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@123@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7)) $a@123@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 7)) $a@123@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 7)) $a@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@686@11@686@263|)))
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
(declare-const self@124@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@125@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@126@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@127@01 $Map<Int~_$Struct>)
; [exec]
; var $post: Bool
(declare-const $post@128@01 Bool)
; [exec]
; var $havoc: Int
(declare-const $havoc@129@01 Int)
; [exec]
; var block: $Struct
(declare-const block@130@01 $Struct)
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;     $q0): $Map[Int, Int]) }
;     (forall $q1: Int ::
;       { ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) }
;       -170141183460469231731687303715884105728 <=
;       ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) &&
;       ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) <=
;       170141183460469231731687303715884105727))
(declare-const $t@131@01 $Snap)
(assert (= $t@131@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]) } (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727))
(declare-const $q0@132@01 Int)
(push) ; 3
; [eval] (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727)
(declare-const $q1@133@01 Int)
(push) ; 4
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc(self, 0)
(push) ; 5
; [then-branch: 20 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@124@01, 0)), $q0@132@01), $q1@133@01)) | live]
; [else-branch: 20 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@124@01, 0)), $q0@132@01), $q1@133@01) | live]
(push) ; 6
; [then-branch: 20 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@124@01, 0)), $q0@132@01), $q1@133@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01) $q1@133@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 20 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@124@01, 0)), $q0@132@01), $q1@133@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01) $q1@133@01)))
; [eval] ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc(self, 0)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01) $q1@133@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01) $q1@133@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@133@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01) $q1@133@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01) $q1@133@01))))
  :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01) $q1@133@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@698@131@698@597-aux|)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@132@01 Int)) (!
  (forall (($q1@133@01 Int)) (!
    (or
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01) $q1@133@01))
      (not
        (<=
          (- 0 170141183460469231731687303715884105728)
          ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01) $q1@133@01))))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01) $q1@133@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@698@131@698@597-aux|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@698@11@698@598-aux|)))
(assert (forall (($q0@132@01 Int)) (!
  (forall (($q1@133@01 Int)) (!
    (and
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01) $q1@133@01))
      (<=
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01) $q1@133@01)
        170141183460469231731687303715884105727))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01) $q1@133@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@698@131@698@597|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@124@01 0)) $q0@132@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@698@11@698@598|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) }
;     -170141183460469231731687303715884105728 <=
;     ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <=
;     170141183460469231731687303715884105727)
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) } -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727)
(declare-const $q2@135@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 1)): $Map[Int, Int])
; [eval] $struct_loc(self, 1)
(push) ; 4
; [then-branch: 21 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 1)), $q2@135@01)) | live]
; [else-branch: 21 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 1)), $q2@135@01) | live]
(push) ; 5
; [then-branch: 21 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 1)), $q2@135@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 1)) $q2@135@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 21 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 1)), $q2@135@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 1)) $q2@135@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 1)): $Map[Int, Int])
; [eval] $struct_loc(self, 1)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 1)) $q2@135@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 1)) $q2@135@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@135@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 1)) $q2@135@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 1)) $q2@135@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 1)) $q2@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@699@11@699@345-aux|)))
(assert (forall (($q2@135@01 Int)) (!
  (and
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 1)) $q2@135@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 1)) $q2@135@01)
      170141183460469231731687303715884105727))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 1)) $q2@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@699@11@699@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@136@01 $Snap)
(assert (= $t@136@01 ($Snap.combine ($Snap.first $t@136@01) ($Snap.second $t@136@01))))
(assert (= ($Snap.first $t@136@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@124@01 2))))
(assert (= ($Snap.second $t@136@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@124@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@137@01 $Snap)
(assert (= $t@137@01 ($Snap.combine ($Snap.first $t@137@01) ($Snap.second $t@137@01))))
(assert (= ($Snap.first $t@137@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@124@01 3))))
(assert (= ($Snap.second $t@137@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@124@01 3))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 4)): Int) &&
;   ($struct_get($struct_loc(self, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@138@01 $Snap)
(assert (= $t@138@01 ($Snap.combine ($Snap.first $t@138@01) ($Snap.second $t@138@01))))
(assert (= ($Snap.first $t@138@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 4)): Int)
; [eval] ($struct_get($struct_loc(self, 4)): Int)
; [eval] $struct_loc(self, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@124@01 4))))
(assert (= ($Snap.second $t@138@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 4)): Int)
; [eval] $struct_loc(self, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@124@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 5)): Int) &&
;   ($struct_get($struct_loc(self, 5)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@139@01 $Snap)
(assert (= $t@139@01 ($Snap.combine ($Snap.first $t@139@01) ($Snap.second $t@139@01))))
(assert (= ($Snap.first $t@139@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 5)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 5)): Int)
; [eval] $struct_loc(self, 5)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@124@01 5))))
(assert (= ($Snap.second $t@139@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 5)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 5)): Int)
; [eval] $struct_loc(self, 5)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@124@01 5))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@140@01 $Snap)
(assert (= $t@140@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@141@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(push) ; 4
; [then-branch: 22 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 7)), $q3@141@01)) | live]
; [else-branch: 22 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 7)), $q3@141@01) | live]
(push) ; 5
; [then-branch: 22 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 7)), $q3@141@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 7)) $q3@141@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 22 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 7)), $q3@141@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 7)) $q3@141@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 7)) $q3@141@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 7)) $q3@141@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@141@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 7)) $q3@141@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 7)) $q3@141@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 7)) $q3@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@704@11@704@345-aux|)))
(assert (forall (($q3@141@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 7)) $q3@141@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 7)) $q3@141@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 7)) $q3@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@704@11@704@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $t@142@01 $Snap)
(assert (= $t@142@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $q3@143@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
; [eval] ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@143@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 7)) $q3@143@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 7)) $q3@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@705@11@705@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@144@01 $Snap)
(assert (= $t@144@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@145@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
(push) ; 4
; [then-branch: 23 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 8)), $q4@145@01)) | live]
; [else-branch: 23 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 8)), $q4@145@01) | live]
(push) ; 5
; [then-branch: 23 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 8)), $q4@145@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 8)) $q4@145@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 23 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 8)), $q4@145@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 8)) $q4@145@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 8)) $q4@145@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 8)) $q4@145@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@145@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 8)) $q4@145@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 8)) $q4@145@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 8)) $q4@145@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@706@11@706@345-aux|)))
(assert (forall (($q4@145@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 8)) $q4@145@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 8)) $q4@145@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 8)) $q4@145@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@706@11@706@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int))
(declare-const $t@146@01 $Snap)
(assert (= $t@146@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int))
(declare-const $q4@147@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
; [eval] ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@147@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 8)) $q4@147@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 8))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 8)) $q4@147@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@707@11@707@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@148@01 $Snap)
(assert (= $t@148@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@124@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]),
;     $q0): $Map[Int, Int]) }
;     (forall $q1: Int ::
;       { ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) }
;       -170141183460469231731687303715884105728 <=
;       ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) &&
;       ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) <=
;       170141183460469231731687303715884105727))
(declare-const $t@149@01 $Snap)
(assert (= $t@149@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]) } (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727))
(declare-const $q0@150@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727)
(declare-const $q1@151@01 Int)
(push) ; 4
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc($pre_self, 0)
(push) ; 5
; [then-branch: 24 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($pre_self@126@01, 0)), $q0@150@01), $q1@151@01)) | live]
; [else-branch: 24 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($pre_self@126@01, 0)), $q0@150@01), $q1@151@01) | live]
(push) ; 6
; [then-branch: 24 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($pre_self@126@01, 0)), $q0@150@01), $q1@151@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01) $q1@151@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 24 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int]($pre_self@126@01, 0)), $q0@150@01), $q1@151@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01) $q1@151@01)))
; [eval] ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc($pre_self, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc($pre_self, 0)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01) $q1@151@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01) $q1@151@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@151@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01) $q1@151@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01) $q1@151@01))))
  :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01) $q1@151@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@709@136@709@617-aux|)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@150@01 Int)) (!
  (forall (($q1@151@01 Int)) (!
    (or
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01) $q1@151@01))
      (not
        (<=
          (- 0 170141183460469231731687303715884105728)
          ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01) $q1@151@01))))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01) $q1@151@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@709@136@709@617-aux|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@709@11@709@618-aux|)))
(assert (forall (($q0@150@01 Int)) (!
  (forall (($q1@151@01 Int)) (!
    (and
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01) $q1@151@01))
      (<=
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01) $q1@151@01)
        170141183460469231731687303715884105727))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01) $q1@151@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@709@136@709@617|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> $pre_self@126@01 0)) $q0@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@709@11@709@618|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 1)): $Map[Int, Int]), $q2): Int) }
;     -170141183460469231731687303715884105728 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 1)): $Map[Int, Int]), $q2): Int) &&
;     ($map_get(($struct_get($struct_loc($pre_self, 1)): $Map[Int, Int]), $q2): Int) <=
;     170141183460469231731687303715884105727)
(declare-const $t@152@01 $Snap)
(assert (= $t@152@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 1)): $Map[Int, Int]), $q2): Int) } -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($pre_self, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc($pre_self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727)
(declare-const $q2@153@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($pre_self, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc($pre_self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc($pre_self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($pre_self, 1)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 1)
(push) ; 4
; [then-branch: 25 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 1)), $q2@153@01)) | live]
; [else-branch: 25 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 1)), $q2@153@01) | live]
(push) ; 5
; [then-branch: 25 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 1)), $q2@153@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 1)) $q2@153@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 25 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 1)), $q2@153@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 1)) $q2@153@01)))
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc($pre_self, 1)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 1)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 1)) $q2@153@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 1)) $q2@153@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@153@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 1)) $q2@153@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 1)) $q2@153@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 1)) $q2@153@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@710@11@710@360-aux|)))
(assert (forall (($q2@153@01 Int)) (!
  (and
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 1)) $q2@153@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 1)) $q2@153@01)
      170141183460469231731687303715884105727))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 1)) $q2@153@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@710@11@710@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($pre_self, 2)): Int) &&
;   ($struct_get($struct_loc($pre_self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@154@01 $Snap)
(assert (= $t@154@01 ($Snap.combine ($Snap.first $t@154@01) ($Snap.second $t@154@01))))
(assert (= ($Snap.first $t@154@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 2))))
(assert (= ($Snap.second $t@154@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 3)): Int) &&
;   ($struct_get($struct_loc($pre_self, 3)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@155@01 $Snap)
(assert (= $t@155@01 ($Snap.combine ($Snap.first $t@155@01) ($Snap.second $t@155@01))))
(assert (= ($Snap.first $t@155@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 3)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 3)): Int)
; [eval] $struct_loc($pre_self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 3))))
(assert (= ($Snap.second $t@155@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 3)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($pre_self, 3)): Int)
; [eval] $struct_loc($pre_self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 3))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 4)): Int) &&
;   ($struct_get($struct_loc($pre_self, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@156@01 $Snap)
(assert (= $t@156@01 ($Snap.combine ($Snap.first $t@156@01) ($Snap.second $t@156@01))))
(assert (= ($Snap.first $t@156@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 4)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 4)): Int)
; [eval] $struct_loc($pre_self, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 4))))
(assert (= ($Snap.second $t@156@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 4)): Int)
; [eval] $struct_loc($pre_self, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($pre_self, 5)): Int) &&
;   ($struct_get($struct_loc($pre_self, 5)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@157@01 $Snap)
(assert (= $t@157@01 ($Snap.combine ($Snap.first $t@157@01) ($Snap.second $t@157@01))))
(assert (= ($Snap.first $t@157@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($pre_self, 5)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($pre_self, 5)): Int)
; [eval] $struct_loc($pre_self, 5)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 5))))
(assert (= ($Snap.second $t@157@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 5)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($pre_self, 5)): Int)
; [eval] $struct_loc($pre_self, 5)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 5))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@158@01 $Snap)
(assert (= $t@158@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@159@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 7)
(push) ; 4
; [then-branch: 26 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 7)), $q3@159@01)) | live]
; [else-branch: 26 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 7)), $q3@159@01) | live]
(push) ; 5
; [then-branch: 26 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 7)), $q3@159@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 7)) $q3@159@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 26 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 7)), $q3@159@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 7)) $q3@159@01)))
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 7)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 7)) $q3@159@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 7)) $q3@159@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@159@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 7)) $q3@159@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 7)) $q3@159@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 7)) $q3@159@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@715@11@715@360-aux|)))
(assert (forall (($q3@159@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 7)) $q3@159@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 7)) $q3@159@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 7)) $q3@159@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@715@11@715@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])): Int))
(declare-const $t@160@01 $Snap)
(assert (= $t@160@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])): Int))
(declare-const $q3@161@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 7)
; [eval] ($map_sum(($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($pre_self, 7)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@161@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 7)) $q3@161@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 7)) $q3@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@716@11@716@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@162@01 $Snap)
(assert (= $t@162@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@163@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 8)
(push) ; 4
; [then-branch: 27 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 8)), $q4@163@01)) | live]
; [else-branch: 27 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 8)), $q4@163@01) | live]
(push) ; 5
; [then-branch: 27 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 8)), $q4@163@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 8)) $q4@163@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 27 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 8)), $q4@163@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 8)) $q4@163@01)))
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 8)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 8)) $q4@163@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 8)) $q4@163@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@163@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 8)) $q4@163@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 8)) $q4@163@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 8)) $q4@163@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@717@11@717@360-aux|)))
(assert (forall (($q4@163@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 8)) $q4@163@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 8)) $q4@163@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 8)) $q4@163@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@717@11@717@360|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int])): Int))
(declare-const $t@164@01 $Snap)
(assert (= $t@164@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int])): Int))
(declare-const $q4@165@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 8)
; [eval] ($map_sum(($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($pre_self, 8)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 8)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@165@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 8)) $q4@165@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 8))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 8)) $q4@165@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@718@11@718@268|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc($pre_self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@166@01 $Snap)
(assert (= $t@166@01 $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc($pre_self, -1)): Int)
; [eval] $struct_loc($pre_self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@167@01 $Snap)
(assert (= $t@167@01 ($Snap.combine ($Snap.first $t@167@01) ($Snap.second $t@167@01))))
(assert (= ($Snap.first $t@167@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@130@01 0))))
(assert (= ($Snap.second $t@167@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@130@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@168@01 $Snap)
(assert (= $t@168@01 ($Snap.combine ($Snap.first $t@168@01) ($Snap.second $t@168@01))))
(assert (= ($Snap.first $t@168@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@130@01 1))))
(assert (= ($Snap.second $t@168@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@130@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@169@01 $Snap)
(assert (= $t@169@01 ($Snap.combine ($Snap.first $t@169@01) ($Snap.second $t@169@01))))
(assert (= ($Snap.first $t@169@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@130@01 2))))
(assert (= ($Snap.second $t@169@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@130@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@170@01 $Snap)
(assert (= $t@170@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@130@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@171@01 $Snap)
(assert (= $t@171@01 ($Snap.combine ($Snap.first $t@171@01) ($Snap.second $t@171@01))))
(assert (= ($Snap.first $t@171@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@130@01 4))))
(assert (= ($Snap.second $t@171@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@130@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@172@01 $Snap)
(assert (= $t@172@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@130@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale $havoc >= 0
(declare-const $t@173@01 $Snap)
(assert (= $t@173@01 $Snap.unit))
; [eval] $havoc >= 0
(assert (>= $havoc@129@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int))
(declare-const $t@174@01 $Snap)
(assert (= $t@174@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int))
(declare-const $a@175@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
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
; self := ($struct_set(self, 4, ($struct_get($struct_loc(self, 4)): Int) +
;   $havoc): $Struct)
; [eval] ($struct_set(self, 4, ($struct_get($struct_loc(self, 4)): Int) + $havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 4)): Int) + $havoc
; [eval] ($struct_get($struct_loc(self, 4)): Int)
; [eval] $struct_loc(self, 4)
(declare-const self@176@01 $Struct)
(assert (=
  self@176@01
  ($struct_set<$Struct> self@124@01 4 (+
    ($struct_get<Int> ($struct_loc<Int> self@124@01 4))
    $havoc@129@01))))
(pop) ; 2
(pop) ; 1
; ---------- f$set ----------
(declare-const $succ@177@01 Bool)
(declare-const $succ@178@01 Bool)
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
(declare-const msg@179@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@180@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@181@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@182@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@183@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@184@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@185@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@186@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@187@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@188@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@189@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@190@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@191@01 Bool)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@192@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@193@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@194@01 $Map<Int~_$Struct>)
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;     $q0): $Map[Int, Int]) }
;     (forall $q1: Int ::
;       { ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) }
;       -170141183460469231731687303715884105728 <=
;       ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) &&
;       ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) <=
;       170141183460469231731687303715884105727))
(declare-const $t@195@01 $Snap)
(assert (= $t@195@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]) } (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727))
(declare-const $q0@196@01 Int)
(push) ; 3
; [eval] (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727)
(declare-const $q1@197@01 Int)
(push) ; 4
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc(self, 0)
(push) ; 5
; [then-branch: 28 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@183@01, 0)), $q0@196@01), $q1@197@01)) | live]
; [else-branch: 28 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@183@01, 0)), $q0@196@01), $q1@197@01) | live]
(push) ; 6
; [then-branch: 28 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@183@01, 0)), $q0@196@01), $q1@197@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01) $q1@197@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 28 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@183@01, 0)), $q0@196@01), $q1@197@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01) $q1@197@01)))
; [eval] ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc(self, 0)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01) $q1@197@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01) $q1@197@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@197@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01) $q1@197@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01) $q1@197@01))))
  :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01) $q1@197@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@753@131@753@597-aux|)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@196@01 Int)) (!
  (forall (($q1@197@01 Int)) (!
    (or
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01) $q1@197@01))
      (not
        (<=
          (- 0 170141183460469231731687303715884105728)
          ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01) $q1@197@01))))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01) $q1@197@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@753@131@753@597-aux|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@753@11@753@598-aux|)))
(assert (forall (($q0@196@01 Int)) (!
  (forall (($q1@197@01 Int)) (!
    (and
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01) $q1@197@01))
      (<=
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01) $q1@197@01)
        170141183460469231731687303715884105727))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01) $q1@197@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@753@131@753@597|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@183@01 0)) $q0@196@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@753@11@753@598|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) }
;     -170141183460469231731687303715884105728 <=
;     ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <=
;     170141183460469231731687303715884105727)
(declare-const $t@198@01 $Snap)
(assert (= $t@198@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) } -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727)
(declare-const $q2@199@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 1)): $Map[Int, Int])
; [eval] $struct_loc(self, 1)
(push) ; 4
; [then-branch: 29 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@183@01, 1)), $q2@199@01)) | live]
; [else-branch: 29 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@183@01, 1)), $q2@199@01) | live]
(push) ; 5
; [then-branch: 29 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@183@01, 1)), $q2@199@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 1)) $q2@199@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 29 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@183@01, 1)), $q2@199@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 1)) $q2@199@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 1)): $Map[Int, Int])
; [eval] $struct_loc(self, 1)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 1)) $q2@199@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 1)) $q2@199@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@199@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 1)) $q2@199@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 1)) $q2@199@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 1)) $q2@199@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@754@11@754@345-aux|)))
(assert (forall (($q2@199@01 Int)) (!
  (and
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 1)) $q2@199@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 1)) $q2@199@01)
      170141183460469231731687303715884105727))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 1)) $q2@199@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@754@11@754@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@200@01 $Snap)
(assert (= $t@200@01 ($Snap.combine ($Snap.first $t@200@01) ($Snap.second $t@200@01))))
(assert (= ($Snap.first $t@200@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@183@01 2))))
(assert (= ($Snap.second $t@200@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@183@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@201@01 $Snap)
(assert (= $t@201@01 ($Snap.combine ($Snap.first $t@201@01) ($Snap.second $t@201@01))))
(assert (= ($Snap.first $t@201@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@183@01 3))))
(assert (= ($Snap.second $t@201@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@183@01 3))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 4)): Int) &&
;   ($struct_get($struct_loc(self, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@202@01 $Snap)
(assert (= $t@202@01 ($Snap.combine ($Snap.first $t@202@01) ($Snap.second $t@202@01))))
(assert (= ($Snap.first $t@202@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 4)): Int)
; [eval] ($struct_get($struct_loc(self, 4)): Int)
; [eval] $struct_loc(self, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@183@01 4))))
(assert (= ($Snap.second $t@202@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 4)): Int)
; [eval] $struct_loc(self, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@183@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 5)): Int) &&
;   ($struct_get($struct_loc(self, 5)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@203@01 $Snap)
(assert (= $t@203@01 ($Snap.combine ($Snap.first $t@203@01) ($Snap.second $t@203@01))))
(assert (= ($Snap.first $t@203@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 5)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 5)): Int)
; [eval] $struct_loc(self, 5)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@183@01 5))))
(assert (= ($Snap.second $t@203@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 5)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 5)): Int)
; [eval] $struct_loc(self, 5)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@183@01 5))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@204@01 $Snap)
(assert (= $t@204@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@205@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(push) ; 4
; [then-branch: 30 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@183@01, 7)), $q3@205@01)) | live]
; [else-branch: 30 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@183@01, 7)), $q3@205@01) | live]
(push) ; 5
; [then-branch: 30 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@183@01, 7)), $q3@205@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 7)) $q3@205@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 30 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@183@01, 7)), $q3@205@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 7)) $q3@205@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 7)) $q3@205@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 7)) $q3@205@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@205@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 7)) $q3@205@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 7)) $q3@205@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 7)) $q3@205@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@759@11@759@345-aux|)))
(assert (forall (($q3@205@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 7)) $q3@205@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 7)) $q3@205@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 7)) $q3@205@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@759@11@759@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $t@206@01 $Snap)
(assert (= $t@206@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $q3@207@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
; [eval] ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@207@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 7)) $q3@207@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 7)) $q3@207@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@760@11@760@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@208@01 $Snap)
(assert (= $t@208@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@209@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
(push) ; 4
; [then-branch: 31 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@183@01, 8)), $q4@209@01)) | live]
; [else-branch: 31 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@183@01, 8)), $q4@209@01) | live]
(push) ; 5
; [then-branch: 31 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@183@01, 8)), $q4@209@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 8)) $q4@209@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 31 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@183@01, 8)), $q4@209@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 8)) $q4@209@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 8)) $q4@209@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 8)) $q4@209@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@209@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 8)) $q4@209@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 8)) $q4@209@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 8)) $q4@209@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@761@11@761@345-aux|)))
(assert (forall (($q4@209@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 8)) $q4@209@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 8)) $q4@209@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 8)) $q4@209@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@761@11@761@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int))
(declare-const $t@210@01 $Snap)
(assert (= $t@210@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int))
(declare-const $q4@211@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
; [eval] ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@211@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 8)) $q4@211@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 8))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@183@01 8)) $q4@211@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@762@11@762@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@212@01 $Snap)
(assert (= $t@212@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@183@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@213@01 $Snap)
(assert (= $t@213@01 ($Snap.combine ($Snap.first $t@213@01) ($Snap.second $t@213@01))))
(assert (= ($Snap.first $t@213@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@213@01) $Snap.unit))
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
(declare-const $t@214@01 $Snap)
(assert (= $t@214@01 ($Snap.combine ($Snap.first $t@214@01) ($Snap.second $t@214@01))))
(assert (= ($Snap.first $t@214@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@180@01 0))))
(assert (= ($Snap.second $t@214@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@180@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@215@01 $Snap)
(assert (= $t@215@01 ($Snap.combine ($Snap.first $t@215@01) ($Snap.second $t@215@01))))
(assert (= ($Snap.first $t@215@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@180@01 1))))
(assert (= ($Snap.second $t@215@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@180@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@216@01 $Snap)
(assert (= $t@216@01 ($Snap.combine ($Snap.first $t@216@01) ($Snap.second $t@216@01))))
(assert (= ($Snap.first $t@216@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@180@01 2))))
(assert (= ($Snap.second $t@216@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@180@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@217@01 $Snap)
(assert (= $t@217@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@180@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@218@01 $Snap)
(assert (= $t@218@01 ($Snap.combine ($Snap.first $t@218@01) ($Snap.second $t@218@01))))
(assert (= ($Snap.first $t@218@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@180@01 4))))
(assert (= ($Snap.second $t@218@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@180@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@219@01 $Snap)
(assert (= $t@219@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@180@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@220@01 $Snap)
(assert (= $t@220@01 ($Snap.combine ($Snap.first $t@220@01) ($Snap.second $t@220@01))))
(assert (= ($Snap.first $t@220@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@179@01 0))))
(assert (= ($Snap.second $t@220@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@179@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@221@01 $Snap)
(assert (= $t@221@01 ($Snap.combine ($Snap.first $t@221@01) ($Snap.second $t@221@01))))
(assert (= ($Snap.first $t@221@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@179@01 1))))
(assert (= ($Snap.second $t@221@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@179@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@222@01 $Snap)
(assert (= $t@222@01 ($Snap.combine ($Snap.first $t@222@01) ($Snap.second $t@222@01))))
(assert (= ($Snap.first $t@222@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@179@01 2))))
(assert (= ($Snap.second $t@222@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@179@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@223@01 $Snap)
(assert (= $t@223@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@179@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@224@01 $Snap)
(assert (= $t@224@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@179@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int))
(declare-const $t@225@01 $Snap)
(assert (= $t@225@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int))
(declare-const $a@226@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
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
(declare-const $t@227@01 $Snap)
(assert (= $t@227@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@179@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, 0): $Struct)
; [eval] ($struct_set(self, 2, 0): $Struct)
(declare-const self@228@01 $Struct)
(assert (= self@228@01 ($struct_set<$Struct> self@183@01 2 0)))
; [exec]
; self := ($struct_set(self, 3, 0): $Struct)
; [eval] ($struct_set(self, 3, 0): $Struct)
(declare-const self@229@01 $Struct)
(assert (= self@229@01 ($struct_set<$Struct> self@228@01 3 0)))
; [exec]
; self := ($struct_set(self, 1, ($map_set(($struct_get($struct_loc(self, 1)): $Map[Int, Int]),
;   ($struct_get($struct_loc(self, 3)): Int), 0): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 1, ($map_set(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), ($struct_get($struct_loc(self, 3)): Int), 0): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), ($struct_get($struct_loc(self, 3)): Int), 0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 1)): $Map[Int, Int])
; [eval] $struct_loc(self, 1)
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(declare-const self@230@01 $Struct)
(assert (=
  self@230@01
  ($struct_set<$Struct> self@229@01 1 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@229@01 1)) ($struct_get<Int> ($struct_loc<Int> self@229@01 3)) 0))))
; [exec]
; self := ($struct_set(self, 0, ($map_set(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;   10, ($map_set(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;   10): $Map[Int, Int]), 10000, 0): $Map[Int, Int])): $Map[Int, $Map[Int, Int]])): $Struct)
; [eval] ($struct_set(self, 0, ($map_set(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), 10, ($map_set(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), 10): $Map[Int, Int]), 10000, 0): $Map[Int, Int])): $Map[Int, $Map[Int, Int]])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), 10, ($map_set(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), 10): $Map[Int, Int]), 10000, 0): $Map[Int, Int])): $Map[Int, $Map[Int, Int]])
; [eval] ($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc(self, 0)
; [eval] ($map_set(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), 10): $Map[Int, Int]), 10000, 0): $Map[Int, Int])
; [eval] ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), 10): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc(self, 0)
(declare-const self@231@01 $Struct)
(assert (=
  self@231@01
  ($struct_set<$Struct> self@230@01 0 ($map_set<$Map<Int~_$Map<Int~_Int>>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@230@01 0)) 10 ($map_set<$Map<Int~_Int>> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@230@01 0)) 10) 10000 0)))))
; [exec]
; label return
; [exec]
; label end
; [exec]
; exhale ($struct_get($struct_loc(self, 2)): Int) == 0
; [eval] ($struct_get($struct_loc(self, 2)): Int) == 0
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 3
(assert (not (= ($struct_get<Int> ($struct_loc<Int> self@231@01 2)) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($struct_get<Int> ($struct_loc<Int> self@231@01 2)) 0))
; [exec]
; exhale ($struct_get($struct_loc(self, 3)): Int) == 0
; [eval] ($struct_get($struct_loc(self, 3)): Int) == 0
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(push) ; 3
(assert (not (= ($struct_get<Int> ($struct_loc<Int> self@231@01 3)) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($struct_get<Int> ($struct_loc<Int> self@231@01 3)) 0))
; [exec]
; exhale ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), ($struct_get($struct_loc(self,
;   3)): Int)): Int) ==
;   0
; [eval] ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), ($struct_get($struct_loc(self, 3)): Int)): Int) == 0
; [eval] ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), ($struct_get($struct_loc(self, 3)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): $Map[Int, Int])
; [eval] $struct_loc(self, 1)
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(push) ; 3
(assert (not (=
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@231@01 1)) ($struct_get<Int> ($struct_loc<Int> self@231@01 3)))
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@231@01 1)) ($struct_get<Int> ($struct_loc<Int> self@231@01 3)))
  0))
; [exec]
; exhale ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;   10): $Map[Int, Int]), 10000): Int) ==
;   0
; [eval] ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), 10): $Map[Int, Int]), 10000): Int) == 0
; [eval] ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), 10): $Map[Int, Int]), 10000): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), 10): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc(self, 0)
(push) ; 3
(assert (not (=
  ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@231@01 0)) 10) 10000)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@231@01 0)) 10) 10000)
  0))
; [eval] !$succ
; [then-branch: 32 | False | dead]
; [else-branch: 32 | True | live]
(push) ; 3
; [else-branch: 32 | True]
(pop) ; 3
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | True | live]
; [else-branch: 33 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 33 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@232@01 $Snap)
(assert (= $t@232@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@193@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 4, ($struct_get($struct_loc(self, 4)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 4, ($struct_get($struct_loc(self, 4)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 4)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 4)): Int)
; [eval] $struct_loc(self, 4)
(declare-const self@233@01 $Struct)
(assert (=
  self@233@01
  ($struct_set<$Struct> self@231@01 4 (+
    ($struct_get<Int> ($struct_loc<Int> self@231@01 4))
    l$havoc@193@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$set2 ----------
(declare-const $succ@234@01 Bool)
(declare-const $succ@235@01 Bool)
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
; var $out_of_gas: Bool
(declare-const $out_of_gas@249@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@250@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@251@01 $Map<Int~_$Struct>)
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;     $q0): $Map[Int, Int]) }
;     (forall $q1: Int ::
;       { ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) }
;       -170141183460469231731687303715884105728 <=
;       ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) &&
;       ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) <=
;       170141183460469231731687303715884105727))
(declare-const $t@252@01 $Snap)
(assert (= $t@252@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]) } (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727))
(declare-const $q0@253@01 Int)
(push) ; 3
; [eval] (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727)
(declare-const $q1@254@01 Int)
(push) ; 4
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc(self, 0)
(push) ; 5
; [then-branch: 34 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@240@01, 0)), $q0@253@01), $q1@254@01)) | live]
; [else-branch: 34 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@240@01, 0)), $q0@253@01), $q1@254@01) | live]
(push) ; 6
; [then-branch: 34 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@240@01, 0)), $q0@253@01), $q1@254@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01) $q1@254@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 34 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@240@01, 0)), $q0@253@01), $q1@254@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01) $q1@254@01)))
; [eval] ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc(self, 0)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01) $q1@254@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01) $q1@254@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@254@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01) $q1@254@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01) $q1@254@01))))
  :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01) $q1@254@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@841@131@841@597-aux|)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@253@01 Int)) (!
  (forall (($q1@254@01 Int)) (!
    (or
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01) $q1@254@01))
      (not
        (<=
          (- 0 170141183460469231731687303715884105728)
          ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01) $q1@254@01))))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01) $q1@254@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@841@131@841@597-aux|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@841@11@841@598-aux|)))
(assert (forall (($q0@253@01 Int)) (!
  (forall (($q1@254@01 Int)) (!
    (and
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01) $q1@254@01))
      (<=
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01) $q1@254@01)
        170141183460469231731687303715884105727))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01) $q1@254@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@841@131@841@597|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@240@01 0)) $q0@253@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@841@11@841@598|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) }
;     -170141183460469231731687303715884105728 <=
;     ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <=
;     170141183460469231731687303715884105727)
(declare-const $t@255@01 $Snap)
(assert (= $t@255@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) } -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727)
(declare-const $q2@256@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 1)): $Map[Int, Int])
; [eval] $struct_loc(self, 1)
(push) ; 4
; [then-branch: 35 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 1)), $q2@256@01)) | live]
; [else-branch: 35 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 1)), $q2@256@01) | live]
(push) ; 5
; [then-branch: 35 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 1)), $q2@256@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 1)) $q2@256@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 35 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 1)), $q2@256@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 1)) $q2@256@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 1)): $Map[Int, Int])
; [eval] $struct_loc(self, 1)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 1)) $q2@256@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 1)) $q2@256@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@256@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 1)) $q2@256@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 1)) $q2@256@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 1)) $q2@256@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@842@11@842@345-aux|)))
(assert (forall (($q2@256@01 Int)) (!
  (and
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 1)) $q2@256@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 1)) $q2@256@01)
      170141183460469231731687303715884105727))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 1)) $q2@256@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@842@11@842@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@257@01 $Snap)
(assert (= $t@257@01 ($Snap.combine ($Snap.first $t@257@01) ($Snap.second $t@257@01))))
(assert (= ($Snap.first $t@257@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@240@01 2))))
(assert (= ($Snap.second $t@257@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@240@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@258@01 $Snap)
(assert (= $t@258@01 ($Snap.combine ($Snap.first $t@258@01) ($Snap.second $t@258@01))))
(assert (= ($Snap.first $t@258@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@240@01 3))))
(assert (= ($Snap.second $t@258@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@240@01 3))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 4)): Int) &&
;   ($struct_get($struct_loc(self, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@259@01 $Snap)
(assert (= $t@259@01 ($Snap.combine ($Snap.first $t@259@01) ($Snap.second $t@259@01))))
(assert (= ($Snap.first $t@259@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 4)): Int)
; [eval] ($struct_get($struct_loc(self, 4)): Int)
; [eval] $struct_loc(self, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@240@01 4))))
(assert (= ($Snap.second $t@259@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 4)): Int)
; [eval] $struct_loc(self, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@240@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 5)): Int) &&
;   ($struct_get($struct_loc(self, 5)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@260@01 $Snap)
(assert (= $t@260@01 ($Snap.combine ($Snap.first $t@260@01) ($Snap.second $t@260@01))))
(assert (= ($Snap.first $t@260@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 5)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 5)): Int)
; [eval] $struct_loc(self, 5)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@240@01 5))))
(assert (= ($Snap.second $t@260@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 5)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 5)): Int)
; [eval] $struct_loc(self, 5)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@240@01 5))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@261@01 $Snap)
(assert (= $t@261@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@262@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(push) ; 4
; [then-branch: 36 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 7)), $q3@262@01)) | live]
; [else-branch: 36 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 7)), $q3@262@01) | live]
(push) ; 5
; [then-branch: 36 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 7)), $q3@262@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 7)) $q3@262@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 36 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 7)), $q3@262@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 7)) $q3@262@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 7)) $q3@262@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 7)) $q3@262@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@262@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 7)) $q3@262@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 7)) $q3@262@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 7)) $q3@262@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@847@11@847@345-aux|)))
(assert (forall (($q3@262@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 7)) $q3@262@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 7)) $q3@262@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 7)) $q3@262@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@847@11@847@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $t@263@01 $Snap)
(assert (= $t@263@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $q3@264@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
; [eval] ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@264@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 7)) $q3@264@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 7)) $q3@264@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@848@11@848@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@265@01 $Snap)
(assert (= $t@265@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@266@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
(push) ; 4
; [then-branch: 37 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 8)), $q4@266@01)) | live]
; [else-branch: 37 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 8)), $q4@266@01) | live]
(push) ; 5
; [then-branch: 37 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 8)), $q4@266@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 8)) $q4@266@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 37 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@240@01, 8)), $q4@266@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 8)) $q4@266@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 8)) $q4@266@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 8)) $q4@266@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@266@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 8)) $q4@266@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 8)) $q4@266@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 8)) $q4@266@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@849@11@849@345-aux|)))
(assert (forall (($q4@266@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 8)) $q4@266@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 8)) $q4@266@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 8)) $q4@266@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@849@11@849@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int))
(declare-const $t@267@01 $Snap)
(assert (= $t@267@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int))
(declare-const $q4@268@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
; [eval] ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@268@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 8)) $q4@268@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 8))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@240@01 8)) $q4@268@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@850@11@850@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@269@01 $Snap)
(assert (= $t@269@01 $Snap.unit))
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
(declare-const $t@270@01 $Snap)
(assert (= $t@270@01 ($Snap.combine ($Snap.first $t@270@01) ($Snap.second $t@270@01))))
(assert (= ($Snap.first $t@270@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@270@01) $Snap.unit))
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
(declare-const $t@271@01 $Snap)
(assert (= $t@271@01 ($Snap.combine ($Snap.first $t@271@01) ($Snap.second $t@271@01))))
(assert (= ($Snap.first $t@271@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@237@01 0))))
(assert (= ($Snap.second $t@271@01) $Snap.unit))
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
(declare-const $t@272@01 $Snap)
(assert (= $t@272@01 ($Snap.combine ($Snap.first $t@272@01) ($Snap.second $t@272@01))))
(assert (= ($Snap.first $t@272@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@237@01 1))))
(assert (= ($Snap.second $t@272@01) $Snap.unit))
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
(declare-const $t@273@01 $Snap)
(assert (= $t@273@01 ($Snap.combine ($Snap.first $t@273@01) ($Snap.second $t@273@01))))
(assert (= ($Snap.first $t@273@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@237@01 2))))
(assert (= ($Snap.second $t@273@01) $Snap.unit))
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
(declare-const $t@274@01 $Snap)
(assert (= $t@274@01 $Snap.unit))
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
(declare-const $t@275@01 $Snap)
(assert (= $t@275@01 ($Snap.combine ($Snap.first $t@275@01) ($Snap.second $t@275@01))))
(assert (= ($Snap.first $t@275@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@237@01 4))))
(assert (= ($Snap.second $t@275@01) $Snap.unit))
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
(declare-const $t@276@01 $Snap)
(assert (= $t@276@01 $Snap.unit))
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
(declare-const $t@277@01 $Snap)
(assert (= $t@277@01 ($Snap.combine ($Snap.first $t@277@01) ($Snap.second $t@277@01))))
(assert (= ($Snap.first $t@277@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@236@01 0))))
(assert (= ($Snap.second $t@277@01) $Snap.unit))
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
(declare-const $t@278@01 $Snap)
(assert (= $t@278@01 ($Snap.combine ($Snap.first $t@278@01) ($Snap.second $t@278@01))))
(assert (= ($Snap.first $t@278@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@236@01 1))))
(assert (= ($Snap.second $t@278@01) $Snap.unit))
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
(declare-const $t@279@01 $Snap)
(assert (= $t@279@01 ($Snap.combine ($Snap.first $t@279@01) ($Snap.second $t@279@01))))
(assert (= ($Snap.first $t@279@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@236@01 2))))
(assert (= ($Snap.second $t@279@01) $Snap.unit))
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
(declare-const $t@280@01 $Snap)
(assert (= $t@280@01 $Snap.unit))
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
(declare-const $t@281@01 $Snap)
(assert (= $t@281@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@236@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int))
(declare-const $t@282@01 $Snap)
(assert (= $t@282@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int))
(declare-const $a@283@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
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
(declare-const $t@284@01 $Snap)
(assert (= $t@284@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@236@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 2, 12): $Struct)
; [eval] ($struct_set(self, 2, 12): $Struct)
(declare-const self@285@01 $Struct)
(assert (= self@285@01 ($struct_set<$Struct> self@240@01 2 12)))
; [exec]
; self := ($struct_set(self, 2, 0): $Struct)
; [eval] ($struct_set(self, 2, 0): $Struct)
(declare-const self@286@01 $Struct)
(assert (= self@286@01 ($struct_set<$Struct> self@285@01 2 0)))
; [exec]
; label return
; [exec]
; label end
; [exec]
; exhale ($struct_get($struct_loc(self, 2)): Int) == 12
; [eval] ($struct_get($struct_loc(self, 2)): Int) == 12
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 3
(assert (not (= ($struct_get<Int> ($struct_loc<Int> self@286@01 2)) 12)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 2)): Int) == 12
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 3
(assert (not (= ($struct_get<Int> ($struct_loc<Int> self@286@01 2)) 12)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 2)): Int) == 12
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 3
(assert (not (= ($struct_get<Int> ($struct_loc<Int> self@286@01 2)) 12)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(self, 2)): Int) == 12
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(set-option :timeout 0)
(push) ; 3
(assert (not (= ($struct_get<Int> ($struct_loc<Int> self@286@01 2)) 12)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- f$__init__ ----------
(declare-const $succ@287@01 Bool)
(declare-const $succ@288@01 Bool)
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
(declare-const msg@289@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@290@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@291@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@292@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@293@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@294@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@295@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@296@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@297@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@298@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@299@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@300@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@301@01 Bool)
; [exec]
; var $first_public_state: Bool
(declare-const $first_public_state@302@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@303@01 Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@304@01 Bool)
; [exec]
; var l$havoc$1: Int
(declare-const l$havoc$1@305@01 Int)
; [exec]
; var l$havoc$2: $Map[Int, $Struct]
(declare-const l$havoc$2@306@01 $Map<Int~_$Struct>)
; [exec]
; inhale (forall $q0: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;     $q0): $Map[Int, Int]) }
;     (forall $q1: Int ::
;       { ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) }
;       -170141183460469231731687303715884105728 <=
;       ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) &&
;       ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]),
;       $q0): $Map[Int, Int]), $q1): Int) <=
;       170141183460469231731687303715884105727))
(declare-const $t@307@01 $Snap)
(assert (= $t@307@01 $Snap.unit))
; [eval] (forall $q0: Int :: { ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]) } (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727))
(declare-const $q0@308@01 Int)
(push) ; 3
; [eval] (forall $q1: Int :: { ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) } -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727)
(declare-const $q1@309@01 Int)
(push) ; 4
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) && ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc(self, 0)
(push) ; 5
; [then-branch: 38 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@293@01, 0)), $q0@308@01), $q1@309@01)) | live]
; [else-branch: 38 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@293@01, 0)), $q0@308@01), $q1@309@01) | live]
(push) ; 6
; [then-branch: 38 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@293@01, 0)), $q0@308@01), $q1@309@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01) $q1@309@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 38 | -170141183460469231731687303715884105728 <= $map_get[Int]($map_get[$Map[Int, Int]]($struct_get[$Map[Int, $Map[Int, Int]]]($struct_loc[Int](self@293@01, 0)), $q0@308@01), $q1@309@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01) $q1@309@01)))
; [eval] ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int]), $q1): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]]), $q0): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 0)): $Map[Int, $Map[Int, Int]])
; [eval] $struct_loc(self, 0)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01) $q1@309@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01) $q1@309@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q1@309@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01) $q1@309@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01) $q1@309@01))))
  :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01) $q1@309@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@926@131@926@597-aux|)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q0@308@01 Int)) (!
  (forall (($q1@309@01 Int)) (!
    (or
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01) $q1@309@01))
      (not
        (<=
          (- 0 170141183460469231731687303715884105728)
          ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01) $q1@309@01))))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01) $q1@309@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@926@131@926@597-aux|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@926@11@926@598-aux|)))
(assert (forall (($q0@308@01 Int)) (!
  (forall (($q1@309@01 Int)) (!
    (and
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01) $q1@309@01))
      (<=
        ($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01) $q1@309@01)
        170141183460469231731687303715884105727))
    :pattern (($map_get<Int> ($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01) $q1@309@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@926@131@926@597|))
  :pattern (($map_get<$Map<Int~_Int>> ($struct_get<$Map<Int~_$Map<Int~_Int>>> ($struct_loc<Int> self@293@01 0)) $q0@308@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@926@11@926@598|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q2: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) }
;     -170141183460469231731687303715884105728 <=
;     ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <=
;     170141183460469231731687303715884105727)
(declare-const $t@310@01 $Snap)
(assert (= $t@310@01 $Snap.unit))
; [eval] (forall $q2: Int :: { ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) } -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727)
(declare-const $q2@311@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) && ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] -170141183460469231731687303715884105728 <= ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 1)): $Map[Int, Int])
; [eval] $struct_loc(self, 1)
(push) ; 4
; [then-branch: 39 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@293@01, 1)), $q2@311@01)) | live]
; [else-branch: 39 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@293@01, 1)), $q2@311@01) | live]
(push) ; 5
; [then-branch: 39 | !(-170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@293@01, 1)), $q2@311@01))]
(assert (not
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 1)) $q2@311@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 39 | -170141183460469231731687303715884105728 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@293@01, 1)), $q2@311@01)]
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 1)) $q2@311@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int) <= 170141183460469231731687303715884105727
; [eval] ($map_get(($struct_get($struct_loc(self, 1)): $Map[Int, Int]), $q2): Int)
; [eval] ($struct_get($struct_loc(self, 1)): $Map[Int, Int])
; [eval] $struct_loc(self, 1)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    (- 0 170141183460469231731687303715884105728)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 1)) $q2@311@01))
  (not
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 1)) $q2@311@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q2@311@01 Int)) (!
  (or
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 1)) $q2@311@01))
    (not
      (<=
        (- 0 170141183460469231731687303715884105728)
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 1)) $q2@311@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 1)) $q2@311@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@927@11@927@345-aux|)))
(assert (forall (($q2@311@01 Int)) (!
  (and
    (<=
      (- 0 170141183460469231731687303715884105728)
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 1)) $q2@311@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 1)) $q2@311@01)
      170141183460469231731687303715884105727))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 1)) $q2@311@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@927@11@927@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@312@01 $Snap)
(assert (= $t@312@01 ($Snap.combine ($Snap.first $t@312@01) ($Snap.second $t@312@01))))
(assert (= ($Snap.first $t@312@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@293@01 2))))
(assert (= ($Snap.second $t@312@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@293@01 2))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 3)): Int) &&
;   ($struct_get($struct_loc(self, 3)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@313@01 $Snap)
(assert (= $t@313@01 ($Snap.combine ($Snap.first $t@313@01) ($Snap.second $t@313@01))))
(assert (= ($Snap.first $t@313@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 3)): Int)
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@293@01 3))))
(assert (= ($Snap.second $t@313@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 3)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 3)): Int)
; [eval] $struct_loc(self, 3)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@293@01 3))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 4)): Int) &&
;   ($struct_get($struct_loc(self, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@314@01 $Snap)
(assert (= $t@314@01 ($Snap.combine ($Snap.first $t@314@01) ($Snap.second $t@314@01))))
(assert (= ($Snap.first $t@314@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 4)): Int)
; [eval] ($struct_get($struct_loc(self, 4)): Int)
; [eval] $struct_loc(self, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@293@01 4))))
(assert (= ($Snap.second $t@314@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 4)): Int)
; [eval] $struct_loc(self, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@293@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 5)): Int) &&
;   ($struct_get($struct_loc(self, 5)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@315@01 $Snap)
(assert (= $t@315@01 ($Snap.combine ($Snap.first $t@315@01) ($Snap.second $t@315@01))))
(assert (= ($Snap.first $t@315@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 5)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 5)): Int)
; [eval] $struct_loc(self, 5)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@293@01 5))))
(assert (= ($Snap.second $t@315@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 5)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 5)): Int)
; [eval] $struct_loc(self, 5)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@293@01 5))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@316@01 $Snap)
(assert (= $t@316@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@317@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(push) ; 4
; [then-branch: 40 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@293@01, 7)), $q3@317@01)) | live]
; [else-branch: 40 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@293@01, 7)), $q3@317@01) | live]
(push) ; 5
; [then-branch: 40 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@293@01, 7)), $q3@317@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 7)) $q3@317@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 40 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@293@01, 7)), $q3@317@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 7)) $q3@317@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 7)) $q3@317@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 7)) $q3@317@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@317@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 7)) $q3@317@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 7)) $q3@317@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 7)) $q3@317@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@932@11@932@345-aux|)))
(assert (forall (($q3@317@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 7)) $q3@317@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 7)) $q3@317@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 7)) $q3@317@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@932@11@932@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $t@318@01 $Snap)
(assert (= $t@318@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int))
(declare-const $q3@319@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 7)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
; [eval] ($map_sum(($struct_get($struct_loc(self, 7)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 7)): $Map[Int, Int])
; [eval] $struct_loc(self, 7)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@319@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 7)) $q3@319@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 7))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 7)) $q3@319@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@933@11@933@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@320@01 $Snap)
(assert (= $t@320@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@321@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
(push) ; 4
; [then-branch: 41 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@293@01, 8)), $q4@321@01)) | live]
; [else-branch: 41 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@293@01, 8)), $q4@321@01) | live]
(push) ; 5
; [then-branch: 41 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@293@01, 8)), $q4@321@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 8)) $q4@321@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 41 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@293@01, 8)), $q4@321@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 8)) $q4@321@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 8)) $q4@321@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 8)) $q4@321@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@321@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 8)) $q4@321@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 8)) $q4@321@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 8)) $q4@321@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@934@11@934@345-aux|)))
(assert (forall (($q4@321@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 8)) $q4@321@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 8)) $q4@321@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 8)) $q4@321@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@934@11@934@345|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int))
(declare-const $t@322@01 $Snap)
(assert (= $t@322@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int))
(declare-const $q4@323@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 8)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
; [eval] ($map_sum(($struct_get($struct_loc(self, 8)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 8)): $Map[Int, Int])
; [eval] $struct_loc(self, 8)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@323@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 8)) $q4@323@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 8))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@293@01 8)) $q4@323@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourceslanguageclear.vy.vpr@935@11@935@253|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@324@01 $Snap)
(assert (= $t@324@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@293@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@325@01 $Snap)
(assert (= $t@325@01 ($Snap.combine ($Snap.first $t@325@01) ($Snap.second $t@325@01))))
(assert (= ($Snap.first $t@325@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@325@01) $Snap.unit))
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
(declare-const $t@326@01 $Snap)
(assert (= $t@326@01 ($Snap.combine ($Snap.first $t@326@01) ($Snap.second $t@326@01))))
(assert (= ($Snap.first $t@326@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@290@01 0))))
(assert (= ($Snap.second $t@326@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@290@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@327@01 $Snap)
(assert (= $t@327@01 ($Snap.combine ($Snap.first $t@327@01) ($Snap.second $t@327@01))))
(assert (= ($Snap.first $t@327@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@290@01 1))))
(assert (= ($Snap.second $t@327@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@290@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@328@01 $Snap)
(assert (= $t@328@01 ($Snap.combine ($Snap.first $t@328@01) ($Snap.second $t@328@01))))
(assert (= ($Snap.first $t@328@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@290@01 2))))
(assert (= ($Snap.second $t@328@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@290@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@329@01 $Snap)
(assert (= $t@329@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@290@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@330@01 $Snap)
(assert (= $t@330@01 ($Snap.combine ($Snap.first $t@330@01) ($Snap.second $t@330@01))))
(assert (= ($Snap.first $t@330@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@290@01 4))))
(assert (= ($Snap.second $t@330@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@290@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@331@01 $Snap)
(assert (= $t@331@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@290@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@332@01 $Snap)
(assert (= $t@332@01 ($Snap.combine ($Snap.first $t@332@01) ($Snap.second $t@332@01))))
(assert (= ($Snap.first $t@332@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@289@01 0))))
(assert (= ($Snap.second $t@332@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@289@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@333@01 $Snap)
(assert (= $t@333@01 ($Snap.combine ($Snap.first $t@333@01) ($Snap.second $t@333@01))))
(assert (= ($Snap.first $t@333@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@289@01 1))))
(assert (= ($Snap.second $t@333@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@289@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@334@01 $Snap)
(assert (= $t@334@01 ($Snap.combine ($Snap.first $t@334@01) ($Snap.second $t@334@01))))
(assert (= ($Snap.first $t@334@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@289@01 2))))
(assert (= ($Snap.second $t@334@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@289@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@335@01 $Snap)
(assert (= $t@335@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@289@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@336@01 $Snap)
(assert (= $t@336@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@289@01 0)) 0)))
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
; self := s$struct$self$init(($map_init(($map_init(0): $Map[Int, Int])): $Map[Int, $Map[Int, Int]]),
;   ($map_init(0): $Map[Int, Int]), 0, 0, 0, 0, false, ($map_init(0): $Map[Int, Int]),
;   ($map_init(0): $Map[Int, Int]), false)
; [eval] s$struct$self$init(($map_init(($map_init(0): $Map[Int, Int])): $Map[Int, $Map[Int, Int]]), ($map_init(0): $Map[Int, Int]), 0, 0, 0, 0, false, ($map_init(0): $Map[Int, Int]), ($map_init(0): $Map[Int, Int]), false)
; [eval] ($map_init(($map_init(0): $Map[Int, Int])): $Map[Int, $Map[Int, Int]])
; [eval] ($map_init(0): $Map[Int, Int])
; [eval] ($map_init(0): $Map[Int, Int])
; [eval] ($map_init(0): $Map[Int, Int])
; [eval] ($map_init(0): $Map[Int, Int])
(declare-const self@337@01 $Struct)
(assert (=
  self@337@01
  (s$struct$self$init<$Struct> ($map_init<$Map<Int~_$Map<Int~_Int>>> ($map_init<$Map<Int~_Int>> 0)) ($map_init<$Map<Int~_Int>> 0) 0 0 0 0 false ($map_init<$Map<Int~_Int>> 0) ($map_init<$Map<Int~_Int>> 0) false)))
; [exec]
; inhale l$havoc >= 0
(declare-const $t@338@01 $Snap)
(assert (= $t@338@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@303@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 4, ($struct_get($struct_loc(self, 4)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 4, ($struct_get($struct_loc(self, 4)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 4)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 4)): Int)
; [eval] $struct_loc(self, 4)
(declare-const self@339@01 $Struct)
(assert (=
  self@339@01
  ($struct_set<$Struct> self@337@01 4 (+
    ($struct_get<Int> ($struct_loc<Int> self@337@01 4))
    l$havoc@303@01))))
; [exec]
; inhale ($struct_get($struct_loc(msg, 1)): Int) == 0
(declare-const $t@340@01 $Snap)
(assert (= $t@340@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@289@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label return
; [exec]
; label end
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 42 | True | live]
; [else-branch: 42 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 42 | True]
; [exec]
; $old_self := self
; [eval] !$succ
; [then-branch: 43 | False | dead]
; [else-branch: 43 | True | live]
(push) ; 4
; [else-branch: 43 | True]
(pop) ; 4
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 44 | True | live]
; [else-branch: 44 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 44 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@341@01 $Snap)
(assert (= $t@341@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@305@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 4, ($struct_get($struct_loc(self, 4)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 4, ($struct_get($struct_loc(self, 4)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 4)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 4)): Int)
; [eval] $struct_loc(self, 4)
(declare-const self@342@01 $Struct)
(assert (=
  self@342@01
  ($struct_set<$Struct> self@339@01 4 (+
    ($struct_get<Int> ($struct_loc<Int> self@339@01 4))
    l$havoc$1@305@01))))
; [exec]
; $contracts := l$havoc$2
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 45 | True | live]
; [else-branch: 45 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 45 | True]
; [exec]
; $old_self := self
(pop) ; 5
; [eval] !$first_public_state
; [then-branch: 46 | False | dead]
; [else-branch: 46 | True | live]
(push) ; 5
; [else-branch: 46 | True]
(pop) ; 5
(pop) ; 4
(pop) ; 3
; [eval] !$first_public_state
; [then-branch: 47 | False | dead]
; [else-branch: 47 | True | live]
(push) ; 3
; [else-branch: 47 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
