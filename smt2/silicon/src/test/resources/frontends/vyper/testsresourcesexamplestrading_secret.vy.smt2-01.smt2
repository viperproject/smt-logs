(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 14:24:53
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
(declare-fun s$struct$self$init<$Struct> (Int Int Int Seq<Int> Seq<Int> Seq<Int> Bool Bool Bool Bool Int Int Int Bool $Map<Int~_Int> $Map<Int~_Int> Bool) $Struct)
(declare-fun s$struct$self$eq<Bool> ($Struct $Struct) Bool)
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
(declare-fun $accessible$__init__%trigger ($Snap Int Int Int Int Int Seq<Int> Int) Bool)
(declare-fun $accessible$__init___0%trigger ($Snap Int Int Int Int Int Seq<Int> Int) Bool)
(declare-fun $accessible$confirm_key%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$confirm_key_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$pay%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$pay_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$set_data%trigger ($Snap Int Int Int Seq<Int>) Bool)
(declare-fun $accessible$set_data_0%trigger ($Snap Int Int Int Seq<Int>) Bool)
(declare-fun $accessible$confirm_data%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$confirm_data_0%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$reject_data%trigger ($Snap Int Int Int Seq<Int>) Bool)
(declare-fun $accessible$reject_data_0%trigger ($Snap Int Int Int Seq<Int>) Bool)
(declare-fun $accessible$withdraw%trigger ($Snap Int Int Int) Bool)
(declare-fun $accessible$withdraw_0%trigger ($Snap Int Int Int) Bool)
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
(assert (forall (($arg_0 Int) ($arg_1 Int) ($arg_2 Int) ($arg_3 Seq<Int>) ($arg_4 Seq<Int>) ($arg_5 Seq<Int>) ($arg_6 Bool) ($arg_7 Bool) ($arg_8 Bool) ($arg_9 Bool) ($arg_10 Int) ($arg_11 Int) ($arg_12 Int) ($arg_13 Bool) ($arg_14 $Map<Int~_Int>) ($arg_15 $Map<Int~_Int>) ($arg_16 Bool)) (!
  (and
    (=
      ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) (- 0 1)))
      9122519725869122497593506884710)
    (and
      (=
        ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 0))
        $arg_0)
      (and
        (=
          ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 1))
          $arg_1)
        (and
          (=
            ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 2))
            $arg_2)
          (and
            (Seq_equal
              ($struct_get<Seq<Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 3))
              $arg_3)
            (and
              (Seq_equal
                ($struct_get<Seq<Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 4))
                $arg_4)
              (and
                (Seq_equal
                  ($struct_get<Seq<Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 5))
                  $arg_5)
                (and
                  (=
                    ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 6))
                    $arg_6)
                  (and
                    (=
                      ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 7))
                      $arg_7)
                    (and
                      (=
                        ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 8))
                        $arg_8)
                      (and
                        (=
                          ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 9))
                          $arg_9)
                        (and
                          (=
                            ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 10))
                            $arg_10)
                          (and
                            (=
                              ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 11))
                              $arg_11)
                            (and
                              (=
                                ($struct_get<Int> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 12))
                                $arg_12)
                              (and
                                (=
                                  ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 13))
                                  $arg_13)
                                (and
                                  (=
                                    ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 14))
                                    $arg_14)
                                  (and
                                    (=
                                      ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 15))
                                      $arg_15)
                                    (=
                                      ($struct_get<Bool> ($struct_loc<Int> (s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16) 16))
                                      $arg_16))))))))))))))))))
  :pattern ((s$struct$self$init<$Struct> $arg_0 $arg_1 $arg_2 $arg_3 $arg_4 $arg_5 $arg_6 $arg_7 $arg_8 $arg_9 $arg_10 $arg_11 $arg_12 $arg_13 $arg_14 $arg_15 $arg_16))
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
                ($struct_get<Int> ($struct_loc<Int> $l 2))
                ($struct_get<Int> ($struct_loc<Int> $r 2)))
              (and
                (Seq_equal
                  ($struct_get<Seq<Int>> ($struct_loc<Int> $l 3))
                  ($struct_get<Seq<Int>> ($struct_loc<Int> $r 3)))
                (and
                  (Seq_equal
                    ($struct_get<Seq<Int>> ($struct_loc<Int> $l 4))
                    ($struct_get<Seq<Int>> ($struct_loc<Int> $r 4)))
                  (and
                    (Seq_equal
                      ($struct_get<Seq<Int>> ($struct_loc<Int> $l 5))
                      ($struct_get<Seq<Int>> ($struct_loc<Int> $r 5)))
                    (and
                      (=
                        ($struct_get<Bool> ($struct_loc<Int> $l 6))
                        ($struct_get<Bool> ($struct_loc<Int> $r 6)))
                      (and
                        (=
                          ($struct_get<Bool> ($struct_loc<Int> $l 7))
                          ($struct_get<Bool> ($struct_loc<Int> $r 7)))
                        (and
                          (=
                            ($struct_get<Bool> ($struct_loc<Int> $l 8))
                            ($struct_get<Bool> ($struct_loc<Int> $r 8)))
                          (and
                            (=
                              ($struct_get<Bool> ($struct_loc<Int> $l 9))
                              ($struct_get<Bool> ($struct_loc<Int> $r 9)))
                            (and
                              (=
                                ($struct_get<Int> ($struct_loc<Int> $l 10))
                                ($struct_get<Int> ($struct_loc<Int> $r 10)))
                              (and
                                (=
                                  ($struct_get<Int> ($struct_loc<Int> $l 11))
                                  ($struct_get<Int> ($struct_loc<Int> $r 11)))
                                (and
                                  (=
                                    ($struct_get<Int> ($struct_loc<Int> $l 12))
                                    ($struct_get<Int> ($struct_loc<Int> $r 12)))
                                  (and
                                    (=
                                      ($struct_get<Bool> ($struct_loc<Int> $l 13))
                                      ($struct_get<Bool> ($struct_loc<Int> $r 13)))
                                    (and
                                      ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 14)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 14)))
                                      (and
                                        ($map_eq<Bool> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $l 15)) ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $r 15)))
                                        (=
                                          ($struct_get<Bool> ($struct_loc<Int> $l 16))
                                          ($struct_get<Bool> ($struct_loc<Int> $r 16))))))))))))))))))))))
  :pattern ((s$struct$self$eq<Bool> $l $r))
  :qid |prog.s$struct$self$eq$ax|)))
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
  :qid |quant-u-741|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  ($pure$success_get%stateless x@0@00)
  :pattern (($pure$success_get%limited s@$ x@0@00))
  :qid |quant-u-742|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  (=>
    ($pure$success_get%precondition s@$ x@0@00)
    (=
      ($pure$success_get s@$ x@0@00)
      ($struct_get<Bool> ($struct_loc<Int> x@0@00 0))))
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-747|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Struct)) (!
  true
  :pattern (($pure$success_get s@$ x@0@00))
  :qid |quant-u-748|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (= ($pure$return_get%limited s@$ x@2@00) ($pure$return_get s@$ x@2@00))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-743|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  ($pure$return_get%stateless x@2@00)
  :pattern (($pure$return_get%limited s@$ x@2@00))
  :qid |quant-u-744|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  (=>
    ($pure$return_get%precondition s@$ x@2@00)
    (= ($pure$return_get s@$ x@2@00) ($struct_loc<Int> x@2@00 1)))
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-749|)))
(assert (forall ((s@$ $Snap) (x@2@00 $Struct)) (!
  true
  :pattern (($pure$return_get s@$ x@2@00))
  :qid |quant-u-750|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  (= ($range_sum%limited s@$ $x@4@00 $y@5@00) ($range_sum s@$ $x@4@00 $y@5@00))
  :pattern (($range_sum s@$ $x@4@00 $y@5@00))
  :qid |quant-u-745|)))
(assert (forall ((s@$ $Snap) ($x@4@00 Int) ($y@5@00 Int)) (!
  ($range_sum%stateless $x@4@00 $y@5@00)
  :pattern (($range_sum%limited s@$ $x@4@00 $y@5@00))
  :qid |quant-u-746|)))
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
  :qid |quant-u-751|)))
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
  :qid |quant-u-752|)))
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
;   1461501637330902918203684832716283019655932542975
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (= ($Snap.first $t@8@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 0))))
(assert (= ($Snap.second $t@8@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 1)): Int) &&
;   ($struct_get($struct_loc($self$0, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 ($Snap.combine ($Snap.first $t@9@01) ($Snap.second $t@9@01))))
(assert (= ($Snap.first $t@9@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))))
(assert (= ($Snap.second $t@9@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 2)): Int) &&
;   ($struct_get($struct_loc($self$0, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (= ($Snap.first $t@10@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 2))))
(assert (= ($Snap.second $t@10@01) $Snap.unit))
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
; inhale |($struct_get($struct_loc($self$0, 3)): Seq[Int])| <= 4096
(declare-const $t@11@01 $Snap)
(assert (= $t@11@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$0, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc($self$0, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$0, 3)): Seq[Int])
; [eval] $struct_loc($self$0, 3)
(assert (<= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@0@01 3))) 4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$0, 4)): Seq[Int])| == 32
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$0, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc($self$0, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$0, 4)): Seq[Int])
; [eval] $struct_loc($self$0, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@0@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$0, 5)): Seq[Int])| == 32
(declare-const $t@13@01 $Snap)
(assert (= $t@13@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$0, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc($self$0, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$0, 5)): Seq[Int])
; [eval] $struct_loc($self$0, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@0@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 10)): Int) &&
;   ($struct_get($struct_loc($self$0, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 ($Snap.combine ($Snap.first $t@14@01) ($Snap.second $t@14@01))))
(assert (= ($Snap.first $t@14@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 10)): Int)
; [eval] ($struct_get($struct_loc($self$0, 10)): Int)
; [eval] $struct_loc($self$0, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 10))))
(assert (= ($Snap.second $t@14@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 10)): Int)
; [eval] $struct_loc($self$0, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 11)): Int) &&
;   ($struct_get($struct_loc($self$0, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@15@01 $Snap)
(assert (= $t@15@01 ($Snap.combine ($Snap.first $t@15@01) ($Snap.second $t@15@01))))
(assert (= ($Snap.first $t@15@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 11)): Int)
; [eval] ($struct_get($struct_loc($self$0, 11)): Int)
; [eval] $struct_loc($self$0, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 11))))
(assert (= ($Snap.second $t@15@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 11)): Int)
; [eval] $struct_loc($self$0, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 12)): Int) &&
;   ($struct_get($struct_loc($self$0, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 ($Snap.combine ($Snap.first $t@16@01) ($Snap.second $t@16@01))))
(assert (= ($Snap.first $t@16@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 12)): Int)
; [eval] $struct_loc($self$0, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 12))))
(assert (= ($Snap.second $t@16@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 12)): Int)
; [eval] $struct_loc($self$0, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@0@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@17@01 $Snap)
(assert (= $t@17@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@18@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 14)
(push) ; 4
; [then-branch: 0 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 14)), $q3@18@01)) | live]
; [else-branch: 0 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 14)), $q3@18@01) | live]
(push) ; 5
; [then-branch: 0 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 14)), $q3@18@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 14)) $q3@18@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 14)), $q3@18@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 14)) $q3@18@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 14)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 14)) $q3@18@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 14)) $q3@18@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@18@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 14)) $q3@18@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 14)) $q3@18@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 14)) $q3@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@631@11@631@357-aux|)))
(assert (forall (($q3@18@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 14)) $q3@18@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 14)) $q3@18@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 14)) $q3@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@631@11@631@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])): Int))
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])): Int))
(declare-const $q3@20@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 14)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@20@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 14)) $q3@20@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 14)) $q3@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@632@11@632@265|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@22@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 15)
(push) ; 4
; [then-branch: 1 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 15)), $q4@22@01)) | live]
; [else-branch: 1 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 15)), $q4@22@01) | live]
(push) ; 5
; [then-branch: 1 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 15)), $q4@22@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 15)) $q4@22@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@0@01, 15)), $q4@22@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 15)) $q4@22@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 15)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 15)) $q4@22@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 15)) $q4@22@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@22@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 15)) $q4@22@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 15)) $q4@22@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 15)) $q4@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@633@11@633@357-aux|)))
(assert (forall (($q4@22@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 15)) $q4@22@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 15)) $q4@22@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 15)) $q4@22@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@633@11@633@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])): Int))
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])): Int))
(declare-const $q4@24@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 15)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 15)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@24@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 15)) $q4@24@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 15)) $q4@24@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@634@11@634@265|)))
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
; inhale 0 <= ($struct_get($struct_loc($self$1, 0)): Int) &&
;   ($struct_get($struct_loc($self$1, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@26@01 $Snap)
(assert (= $t@26@01 ($Snap.combine ($Snap.first $t@26@01) ($Snap.second $t@26@01))))
(assert (= ($Snap.first $t@26@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 0))))
(assert (= ($Snap.second $t@26@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 1)): Int) &&
;   ($struct_get($struct_loc($self$1, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 ($Snap.combine ($Snap.first $t@27@01) ($Snap.second $t@27@01))))
(assert (= ($Snap.first $t@27@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))))
(assert (= ($Snap.second $t@27@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 2)): Int) &&
;   ($struct_get($struct_loc($self$1, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 ($Snap.combine ($Snap.first $t@28@01) ($Snap.second $t@28@01))))
(assert (= ($Snap.first $t@28@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 2))))
(assert (= ($Snap.second $t@28@01) $Snap.unit))
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
; inhale |($struct_get($struct_loc($self$1, 3)): Seq[Int])| <= 4096
(declare-const $t@29@01 $Snap)
(assert (= $t@29@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$1, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc($self$1, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$1, 3)): Seq[Int])
; [eval] $struct_loc($self$1, 3)
(assert (<= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@2@01 3))) 4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$1, 4)): Seq[Int])| == 32
(declare-const $t@30@01 $Snap)
(assert (= $t@30@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$1, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc($self$1, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$1, 4)): Seq[Int])
; [eval] $struct_loc($self$1, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@2@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$1, 5)): Seq[Int])| == 32
(declare-const $t@31@01 $Snap)
(assert (= $t@31@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$1, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc($self$1, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$1, 5)): Seq[Int])
; [eval] $struct_loc($self$1, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@2@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 10)): Int) &&
;   ($struct_get($struct_loc($self$1, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@32@01 $Snap)
(assert (= $t@32@01 ($Snap.combine ($Snap.first $t@32@01) ($Snap.second $t@32@01))))
(assert (= ($Snap.first $t@32@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 10)): Int)
; [eval] ($struct_get($struct_loc($self$1, 10)): Int)
; [eval] $struct_loc($self$1, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 10))))
(assert (= ($Snap.second $t@32@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 10)): Int)
; [eval] $struct_loc($self$1, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 11)): Int) &&
;   ($struct_get($struct_loc($self$1, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@33@01 $Snap)
(assert (= $t@33@01 ($Snap.combine ($Snap.first $t@33@01) ($Snap.second $t@33@01))))
(assert (= ($Snap.first $t@33@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 11)): Int)
; [eval] ($struct_get($struct_loc($self$1, 11)): Int)
; [eval] $struct_loc($self$1, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 11))))
(assert (= ($Snap.second $t@33@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 11)): Int)
; [eval] $struct_loc($self$1, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 12)): Int) &&
;   ($struct_get($struct_loc($self$1, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(assert (= ($Snap.first $t@34@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 12)): Int)
; [eval] $struct_loc($self$1, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 12))))
(assert (= ($Snap.second $t@34@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 12)): Int)
; [eval] $struct_loc($self$1, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@2@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@36@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 14)
(push) ; 4
; [then-branch: 2 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 14)), $q3@36@01)) | live]
; [else-branch: 2 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 14)), $q3@36@01) | live]
(push) ; 5
; [then-branch: 2 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 14)), $q3@36@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $q3@36@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 14)), $q3@36@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $q3@36@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 14)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $q3@36@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $q3@36@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@36@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $q3@36@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $q3@36@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $q3@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@645@11@645@357-aux|)))
(assert (forall (($q3@36@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $q3@36@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $q3@36@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $q3@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@645@11@645@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])): Int))
(declare-const $t@37@01 $Snap)
(assert (= $t@37@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])): Int))
(declare-const $q3@38@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 14)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@38@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $q3@38@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $q3@38@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@646@11@646@265|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@40@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 15)
(push) ; 4
; [then-branch: 3 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 15)), $q4@40@01)) | live]
; [else-branch: 3 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 15)), $q4@40@01) | live]
(push) ; 5
; [then-branch: 3 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 15)), $q4@40@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 15)) $q4@40@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@2@01, 15)), $q4@40@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 15)) $q4@40@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 15)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 15)) $q4@40@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 15)) $q4@40@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@40@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 15)) $q4@40@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 15)) $q4@40@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 15)) $q4@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@647@11@647@357-aux|)))
(assert (forall (($q4@40@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 15)) $q4@40@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 15)) $q4@40@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 15)) $q4@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@647@11@647@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])): Int))
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])): Int))
(declare-const $q4@42@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 15)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 15)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@42@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 15)) $q4@42@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 15)) $q4@42@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@648@11@648@265|)))
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
; inhale 0 <= ($struct_get($struct_loc($self$2, 0)): Int) &&
;   ($struct_get($struct_loc($self$2, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 ($Snap.combine ($Snap.first $t@44@01) ($Snap.second $t@44@01))))
(assert (= ($Snap.first $t@44@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] $struct_loc($self$2, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 0))))
(assert (= ($Snap.second $t@44@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$2, 0)): Int)
; [eval] $struct_loc($self$2, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$2, 1)): Int) &&
;   ($struct_get($struct_loc($self$2, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@45@01 $Snap)
(assert (= $t@45@01 ($Snap.combine ($Snap.first $t@45@01) ($Snap.second $t@45@01))))
(assert (= ($Snap.first $t@45@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))))
(assert (= ($Snap.second $t@45@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$2, 1)): Int)
; [eval] $struct_loc($self$2, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$2, 2)): Int) &&
;   ($struct_get($struct_loc($self$2, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@46@01 $Snap)
(assert (= $t@46@01 ($Snap.combine ($Snap.first $t@46@01) ($Snap.second $t@46@01))))
(assert (= ($Snap.first $t@46@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] ($struct_get($struct_loc($self$2, 2)): Int)
; [eval] $struct_loc($self$2, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 2))))
(assert (= ($Snap.second $t@46@01) $Snap.unit))
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
; inhale |($struct_get($struct_loc($self$2, 3)): Seq[Int])| <= 4096
(declare-const $t@47@01 $Snap)
(assert (= $t@47@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$2, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc($self$2, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$2, 3)): Seq[Int])
; [eval] $struct_loc($self$2, 3)
(assert (<= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$2@4@01 3))) 4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$2, 4)): Seq[Int])| == 32
(declare-const $t@48@01 $Snap)
(assert (= $t@48@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$2, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc($self$2, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$2, 4)): Seq[Int])
; [eval] $struct_loc($self$2, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$2@4@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$2, 5)): Seq[Int])| == 32
(declare-const $t@49@01 $Snap)
(assert (= $t@49@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$2, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc($self$2, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$2, 5)): Seq[Int])
; [eval] $struct_loc($self$2, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$2@4@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$2, 10)): Int) &&
;   ($struct_get($struct_loc($self$2, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@50@01 $Snap)
(assert (= $t@50@01 ($Snap.combine ($Snap.first $t@50@01) ($Snap.second $t@50@01))))
(assert (= ($Snap.first $t@50@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 10)): Int)
; [eval] ($struct_get($struct_loc($self$2, 10)): Int)
; [eval] $struct_loc($self$2, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 10))))
(assert (= ($Snap.second $t@50@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$2, 10)): Int)
; [eval] $struct_loc($self$2, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$2, 11)): Int) &&
;   ($struct_get($struct_loc($self$2, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@51@01 $Snap)
(assert (= $t@51@01 ($Snap.combine ($Snap.first $t@51@01) ($Snap.second $t@51@01))))
(assert (= ($Snap.first $t@51@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$2, 11)): Int)
; [eval] ($struct_get($struct_loc($self$2, 11)): Int)
; [eval] $struct_loc($self$2, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 11))))
(assert (= ($Snap.second $t@51@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$2, 11)): Int)
; [eval] $struct_loc($self$2, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$2, 12)): Int) &&
;   ($struct_get($struct_loc($self$2, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@52@01 $Snap)
(assert (= $t@52@01 ($Snap.combine ($Snap.first $t@52@01) ($Snap.second $t@52@01))))
(assert (= ($Snap.first $t@52@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$2, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$2, 12)): Int)
; [eval] $struct_loc($self$2, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 12))))
(assert (= ($Snap.second $t@52@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$2, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$2, 12)): Int)
; [eval] $struct_loc($self$2, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$2@4@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@54@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$2, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 14)
(push) ; 4
; [then-branch: 4 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 14)), $q3@54@01)) | live]
; [else-branch: 4 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 14)), $q3@54@01) | live]
(push) ; 5
; [then-branch: 4 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 14)), $q3@54@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14)) $q3@54@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 14)), $q3@54@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14)) $q3@54@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$2, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 14)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14)) $q3@54@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14)) $q3@54@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@54@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14)) $q3@54@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14)) $q3@54@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14)) $q3@54@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@659@11@659@357-aux|)))
(assert (forall (($q3@54@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14)) $q3@54@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14)) $q3@54@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14)) $q3@54@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@659@11@659@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int])): Int))
(declare-const $t@55@01 $Snap)
(assert (= $t@55@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int])): Int))
(declare-const $q3@56@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$2, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 14)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@56@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14)) $q3@56@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14)) $q3@56@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@660@11@660@265|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@57@01 $Snap)
(assert (= $t@57@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@58@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$2, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 15)
(push) ; 4
; [then-branch: 5 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 15)), $q4@58@01)) | live]
; [else-branch: 5 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 15)), $q4@58@01) | live]
(push) ; 5
; [then-branch: 5 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 15)), $q4@58@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 15)) $q4@58@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$2@4@01, 15)), $q4@58@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 15)) $q4@58@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$2, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 15)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 15)) $q4@58@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 15)) $q4@58@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@58@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 15)) $q4@58@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 15)) $q4@58@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 15)) $q4@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@661@11@661@357-aux|)))
(assert (forall (($q4@58@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 15)) $q4@58@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 15)) $q4@58@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 15)) $q4@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@661@11@661@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int])): Int))
(declare-const $t@59@01 $Snap)
(assert (= $t@59@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int])): Int))
(declare-const $q4@60@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$2, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 15)
; [eval] ($map_sum(($struct_get($struct_loc($self$2, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$2, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 15)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@60@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 15)) $q4@60@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 15)) $q4@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@662@11@662@265|)))
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
;     { ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int))
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int))
(declare-const $a@69@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 14)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int))
(declare-const $t@70@01 $Snap)
(assert (= $t@70@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int))
(declare-const $a@71@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 14)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@71@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $a@71@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@0@01 14)) $a@71@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $a@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@671@11@671@266|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int))
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int))
(declare-const $a@73@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$2, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$2, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$2, 14)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@73@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14)) $a@73@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@2@01 14)) $a@73@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$2@4@01 14)) $a@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@672@11@672@266|)))
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
; inhale 0 <= ($struct_get($struct_loc($self$0, 0)): Int) &&
;   ($struct_get($struct_loc($self$0, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 ($Snap.combine ($Snap.first $t@80@01) ($Snap.second $t@80@01))))
(assert (= ($Snap.first $t@80@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 0))))
(assert (= ($Snap.second $t@80@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$0, 0)): Int)
; [eval] $struct_loc($self$0, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 1)): Int) &&
;   ($struct_get($struct_loc($self$0, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@81@01 $Snap)
(assert (= $t@81@01 ($Snap.combine ($Snap.first $t@81@01) ($Snap.second $t@81@01))))
(assert (= ($Snap.first $t@81@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 1))))
(assert (= ($Snap.second $t@81@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$0, 1)): Int)
; [eval] $struct_loc($self$0, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 2)): Int) &&
;   ($struct_get($struct_loc($self$0, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@82@01 $Snap)
(assert (= $t@82@01 ($Snap.combine ($Snap.first $t@82@01) ($Snap.second $t@82@01))))
(assert (= ($Snap.first $t@82@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 2))))
(assert (= ($Snap.second $t@82@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 2)): Int)
; [eval] $struct_loc($self$0, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$0, 3)): Seq[Int])| <= 4096
(declare-const $t@83@01 $Snap)
(assert (= $t@83@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$0, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc($self$0, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$0, 3)): Seq[Int])
; [eval] $struct_loc($self$0, 3)
(assert (<= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@74@01 3))) 4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$0, 4)): Seq[Int])| == 32
(declare-const $t@84@01 $Snap)
(assert (= $t@84@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$0, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc($self$0, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$0, 4)): Seq[Int])
; [eval] $struct_loc($self$0, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@74@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$0, 5)): Seq[Int])| == 32
(declare-const $t@85@01 $Snap)
(assert (= $t@85@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$0, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc($self$0, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$0, 5)): Seq[Int])
; [eval] $struct_loc($self$0, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$0@74@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 10)): Int) &&
;   ($struct_get($struct_loc($self$0, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 ($Snap.combine ($Snap.first $t@86@01) ($Snap.second $t@86@01))))
(assert (= ($Snap.first $t@86@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 10)): Int)
; [eval] ($struct_get($struct_loc($self$0, 10)): Int)
; [eval] $struct_loc($self$0, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 10))))
(assert (= ($Snap.second $t@86@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 10)): Int)
; [eval] $struct_loc($self$0, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$0, 11)): Int) &&
;   ($struct_get($struct_loc($self$0, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@87@01 $Snap)
(assert (= $t@87@01 ($Snap.combine ($Snap.first $t@87@01) ($Snap.second $t@87@01))))
(assert (= ($Snap.first $t@87@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$0, 11)): Int)
; [eval] ($struct_get($struct_loc($self$0, 11)): Int)
; [eval] $struct_loc($self$0, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 11))))
(assert (= ($Snap.second $t@87@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$0, 11)): Int)
; [eval] $struct_loc($self$0, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$0, 12)): Int) &&
;   ($struct_get($struct_loc($self$0, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@88@01 $Snap)
(assert (= $t@88@01 ($Snap.combine ($Snap.first $t@88@01) ($Snap.second $t@88@01))))
(assert (= ($Snap.first $t@88@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$0, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$0, 12)): Int)
; [eval] $struct_loc($self$0, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 12))))
(assert (= ($Snap.second $t@88@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$0, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$0, 12)): Int)
; [eval] $struct_loc($self$0, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$0@74@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@90@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 14)
(push) ; 4
; [then-branch: 6 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 14)), $q3@90@01)) | live]
; [else-branch: 6 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 14)), $q3@90@01) | live]
(push) ; 5
; [then-branch: 6 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 14)), $q3@90@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 14)) $q3@90@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 14)), $q3@90@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 14)) $q3@90@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 14)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 14)) $q3@90@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 14)) $q3@90@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@90@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 14)) $q3@90@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 14)) $q3@90@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 14)) $q3@90@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@692@11@692@357-aux|)))
(assert (forall (($q3@90@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 14)) $q3@90@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 14)) $q3@90@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 14)) $q3@90@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@692@11@692@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])): Int))
(declare-const $t@91@01 $Snap)
(assert (= $t@91@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])): Int))
(declare-const $q3@92@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 14)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@92@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 14)) $q3@92@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 14)) $q3@92@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@693@11@693@265|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@93@01 $Snap)
(assert (= $t@93@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@94@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 15)
(push) ; 4
; [then-branch: 7 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 15)), $q4@94@01)) | live]
; [else-branch: 7 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 15)), $q4@94@01) | live]
(push) ; 5
; [then-branch: 7 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 15)), $q4@94@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 15)) $q4@94@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$0@74@01, 15)), $q4@94@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 15)) $q4@94@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 15)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 15)) $q4@94@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 15)) $q4@94@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@94@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 15)) $q4@94@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 15)) $q4@94@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 15)) $q4@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@694@11@694@357-aux|)))
(assert (forall (($q4@94@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 15)) $q4@94@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 15)) $q4@94@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 15)) $q4@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@694@11@694@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])): Int))
(declare-const $t@95@01 $Snap)
(assert (= $t@95@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])): Int))
(declare-const $q4@96@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 15)
; [eval] ($map_sum(($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$0, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 15)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@96@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 15)) $q4@96@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 15)) $q4@96@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@695@11@695@265|)))
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
; inhale 0 <= ($struct_get($struct_loc($self$1, 0)): Int) &&
;   ($struct_get($struct_loc($self$1, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@98@01 $Snap)
(assert (= $t@98@01 ($Snap.combine ($Snap.first $t@98@01) ($Snap.second $t@98@01))))
(assert (= ($Snap.first $t@98@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 0))))
(assert (= ($Snap.second $t@98@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$1, 0)): Int)
; [eval] $struct_loc($self$1, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 1)): Int) &&
;   ($struct_get($struct_loc($self$1, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@99@01 $Snap)
(assert (= $t@99@01 ($Snap.combine ($Snap.first $t@99@01) ($Snap.second $t@99@01))))
(assert (= ($Snap.first $t@99@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 1))))
(assert (= ($Snap.second $t@99@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($self$1, 1)): Int)
; [eval] $struct_loc($self$1, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 2)): Int) &&
;   ($struct_get($struct_loc($self$1, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@100@01 $Snap)
(assert (= $t@100@01 ($Snap.combine ($Snap.first $t@100@01) ($Snap.second $t@100@01))))
(assert (= ($Snap.first $t@100@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 2))))
(assert (= ($Snap.second $t@100@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 2)): Int)
; [eval] $struct_loc($self$1, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$1, 3)): Seq[Int])| <= 4096
(declare-const $t@101@01 $Snap)
(assert (= $t@101@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$1, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc($self$1, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$1, 3)): Seq[Int])
; [eval] $struct_loc($self$1, 3)
(assert (<= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@76@01 3))) 4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$1, 4)): Seq[Int])| == 32
(declare-const $t@102@01 $Snap)
(assert (= $t@102@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$1, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc($self$1, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$1, 4)): Seq[Int])
; [eval] $struct_loc($self$1, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@76@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($self$1, 5)): Seq[Int])| == 32
(declare-const $t@103@01 $Snap)
(assert (= $t@103@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($self$1, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc($self$1, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc($self$1, 5)): Seq[Int])
; [eval] $struct_loc($self$1, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $self$1@76@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 10)): Int) &&
;   ($struct_get($struct_loc($self$1, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@104@01 $Snap)
(assert (= $t@104@01 ($Snap.combine ($Snap.first $t@104@01) ($Snap.second $t@104@01))))
(assert (= ($Snap.first $t@104@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 10)): Int)
; [eval] ($struct_get($struct_loc($self$1, 10)): Int)
; [eval] $struct_loc($self$1, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 10))))
(assert (= ($Snap.second $t@104@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 10)): Int)
; [eval] $struct_loc($self$1, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($self$1, 11)): Int) &&
;   ($struct_get($struct_loc($self$1, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 ($Snap.combine ($Snap.first $t@105@01) ($Snap.second $t@105@01))))
(assert (= ($Snap.first $t@105@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($self$1, 11)): Int)
; [eval] ($struct_get($struct_loc($self$1, 11)): Int)
; [eval] $struct_loc($self$1, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 11))))
(assert (= ($Snap.second $t@105@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($self$1, 11)): Int)
; [eval] $struct_loc($self$1, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($self$1, 12)): Int) &&
;   ($struct_get($struct_loc($self$1, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@106@01 $Snap)
(assert (= $t@106@01 ($Snap.combine ($Snap.first $t@106@01) ($Snap.second $t@106@01))))
(assert (= ($Snap.first $t@106@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($self$1, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($self$1, 12)): Int)
; [eval] $struct_loc($self$1, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 12))))
(assert (= ($Snap.second $t@106@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($self$1, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($self$1, 12)): Int)
; [eval] $struct_loc($self$1, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $self$1@76@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@108@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 14)
(push) ; 4
; [then-branch: 8 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 14)), $q3@108@01)) | live]
; [else-branch: 8 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 14)), $q3@108@01) | live]
(push) ; 5
; [then-branch: 8 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 14)), $q3@108@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14)) $q3@108@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 8 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 14)), $q3@108@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14)) $q3@108@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 14)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14)) $q3@108@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14)) $q3@108@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@108@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14)) $q3@108@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14)) $q3@108@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14)) $q3@108@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@706@11@706@357-aux|)))
(assert (forall (($q3@108@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14)) $q3@108@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14)) $q3@108@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14)) $q3@108@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@706@11@706@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])): Int))
(declare-const $t@109@01 $Snap)
(assert (= $t@109@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])): Int))
(declare-const $q3@110@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 14)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@110@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14)) $q3@110@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14)) $q3@110@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@707@11@707@265|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@111@01 $Snap)
(assert (= $t@111@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@112@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 15)
(push) ; 4
; [then-branch: 9 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 15)), $q4@112@01)) | live]
; [else-branch: 9 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 15)), $q4@112@01) | live]
(push) ; 5
; [then-branch: 9 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 15)), $q4@112@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 15)) $q4@112@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($self$1@76@01, 15)), $q4@112@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 15)) $q4@112@01)))
; [eval] ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 15)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 15)) $q4@112@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 15)) $q4@112@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@112@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 15)) $q4@112@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 15)) $q4@112@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 15)) $q4@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@708@11@708@357-aux|)))
(assert (forall (($q4@112@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 15)) $q4@112@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 15)) $q4@112@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 15)) $q4@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@708@11@708@357|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])): Int))
(declare-const $t@113@01 $Snap)
(assert (= $t@113@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])): Int))
(declare-const $q4@114@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 15)
; [eval] ($map_sum(($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($self$1, 15)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 15)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@114@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 15)) $q4@114@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 15)) $q4@114@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@709@11@709@265|)))
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
;     { ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int))
(declare-const $t@122@01 $Snap)
(assert (= $t@122@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int))
(declare-const $a@123@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc($self$1, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$1, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$1, 14)
; [eval] ($map_get(($struct_get($struct_loc($self$0, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($self$0, 14)): $Map[Int, Int])
; [eval] $struct_loc($self$0, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@123@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14)) $a@123@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$0@74@01 14)) $a@123@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $self$1@76@01 14)) $a@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@717@11@717@266|)))
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
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@131@01 $Snap)
(assert (= $t@131@01 ($Snap.combine ($Snap.first $t@131@01) ($Snap.second $t@131@01))))
(assert (= ($Snap.first $t@131@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@124@01 0))))
(assert (= ($Snap.second $t@131@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@124@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@132@01 $Snap)
(assert (= $t@132@01 ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01))))
(assert (= ($Snap.first $t@132@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@124@01 1))))
(assert (= ($Snap.second $t@132@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@124@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@133@01 $Snap)
(assert (= $t@133@01 ($Snap.combine ($Snap.first $t@133@01) ($Snap.second $t@133@01))))
(assert (= ($Snap.first $t@133@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@124@01 2))))
(assert (= ($Snap.second $t@133@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@124@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 3)): Seq[Int])
; [eval] $struct_loc(self, 3)
(assert (<= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@124@01 3))) 4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
(declare-const $t@135@01 $Snap)
(assert (= $t@135@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $struct_loc(self, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@124@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
(declare-const $t@136@01 $Snap)
(assert (= $t@136@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 5)): Seq[Int])
; [eval] $struct_loc(self, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@124@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 10)): Int) &&
;   ($struct_get($struct_loc(self, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@137@01 $Snap)
(assert (= $t@137@01 ($Snap.combine ($Snap.first $t@137@01) ($Snap.second $t@137@01))))
(assert (= ($Snap.first $t@137@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@124@01 10))))
(assert (= ($Snap.second $t@137@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@124@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 11)): Int) &&
;   ($struct_get($struct_loc(self, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@138@01 $Snap)
(assert (= $t@138@01 ($Snap.combine ($Snap.first $t@138@01) ($Snap.second $t@138@01))))
(assert (= ($Snap.first $t@138@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 11)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@124@01 11))))
(assert (= ($Snap.second $t@138@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@124@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 12)): Int) &&
;   ($struct_get($struct_loc(self, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@139@01 $Snap)
(assert (= $t@139@01 ($Snap.combine ($Snap.first $t@139@01) ($Snap.second $t@139@01))))
(assert (= ($Snap.first $t@139@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@124@01 12))))
(assert (= ($Snap.second $t@139@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@124@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@140@01 $Snap)
(assert (= $t@140@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@141@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(push) ; 4
; [then-branch: 10 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 14)), $q3@141@01)) | live]
; [else-branch: 10 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 14)), $q3@141@01) | live]
(push) ; 5
; [then-branch: 10 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 14)), $q3@141@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 14)) $q3@141@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 14)), $q3@141@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 14)) $q3@141@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 14)) $q3@141@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 14)) $q3@141@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@141@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 14)) $q3@141@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 14)) $q3@141@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 14)) $q3@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@738@11@738@348-aux|)))
(assert (forall (($q3@141@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 14)) $q3@141@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 14)) $q3@141@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 14)) $q3@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@738@11@738@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $t@142@01 $Snap)
(assert (= $t@142@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $q3@143@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@143@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 14)) $q3@143@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 14)) $q3@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@739@11@739@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@144@01 $Snap)
(assert (= $t@144@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@145@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(push) ; 4
; [then-branch: 11 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 15)), $q4@145@01)) | live]
; [else-branch: 11 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 15)), $q4@145@01) | live]
(push) ; 5
; [then-branch: 11 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 15)), $q4@145@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 15)) $q4@145@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 11 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@124@01, 15)), $q4@145@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 15)) $q4@145@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 15)) $q4@145@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 15)) $q4@145@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@145@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 15)) $q4@145@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 15)) $q4@145@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 15)) $q4@145@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@740@11@740@348-aux|)))
(assert (forall (($q4@145@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 15)) $q4@145@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 15)) $q4@145@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 15)) $q4@145@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@740@11@740@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $t@146@01 $Snap)
(assert (= $t@146@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $q4@147@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
; [eval] ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@147@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 15)) $q4@147@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@124@01 15)) $q4@147@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@741@11@741@256|)))
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
; inhale 0 <= ($struct_get($struct_loc($pre_self, 0)): Int) &&
;   ($struct_get($struct_loc($pre_self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@149@01 $Snap)
(assert (= $t@149@01 ($Snap.combine ($Snap.first $t@149@01) ($Snap.second $t@149@01))))
(assert (= ($Snap.first $t@149@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 0))))
(assert (= ($Snap.second $t@149@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($pre_self, 0)): Int)
; [eval] $struct_loc($pre_self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 1)): Int) &&
;   ($struct_get($struct_loc($pre_self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@150@01 $Snap)
(assert (= $t@150@01 ($Snap.combine ($Snap.first $t@150@01) ($Snap.second $t@150@01))))
(assert (= ($Snap.first $t@150@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 1))))
(assert (= ($Snap.second $t@150@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc($pre_self, 1)): Int)
; [eval] $struct_loc($pre_self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 2)): Int) &&
;   ($struct_get($struct_loc($pre_self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@151@01 $Snap)
(assert (= $t@151@01 ($Snap.combine ($Snap.first $t@151@01) ($Snap.second $t@151@01))))
(assert (= ($Snap.first $t@151@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 2))))
(assert (= ($Snap.second $t@151@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 2)): Int)
; [eval] $struct_loc($pre_self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($pre_self, 3)): Seq[Int])| <= 4096
(declare-const $t@152@01 $Snap)
(assert (= $t@152@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($pre_self, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc($pre_self, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc($pre_self, 3)): Seq[Int])
; [eval] $struct_loc($pre_self, 3)
(assert (<=
  (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $pre_self@126@01 3)))
  4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($pre_self, 4)): Seq[Int])| == 32
(declare-const $t@153@01 $Snap)
(assert (= $t@153@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($pre_self, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc($pre_self, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc($pre_self, 4)): Seq[Int])
; [eval] $struct_loc($pre_self, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $pre_self@126@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc($pre_self, 5)): Seq[Int])| == 32
(declare-const $t@154@01 $Snap)
(assert (= $t@154@01 $Snap.unit))
; [eval] |($struct_get($struct_loc($pre_self, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc($pre_self, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc($pre_self, 5)): Seq[Int])
; [eval] $struct_loc($pre_self, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> $pre_self@126@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 10)): Int) &&
;   ($struct_get($struct_loc($pre_self, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@155@01 $Snap)
(assert (= $t@155@01 ($Snap.combine ($Snap.first $t@155@01) ($Snap.second $t@155@01))))
(assert (= ($Snap.first $t@155@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 10)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 10)): Int)
; [eval] $struct_loc($pre_self, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 10))))
(assert (= ($Snap.second $t@155@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 10)): Int)
; [eval] $struct_loc($pre_self, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc($pre_self, 11)): Int) &&
;   ($struct_get($struct_loc($pre_self, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@156@01 $Snap)
(assert (= $t@156@01 ($Snap.combine ($Snap.first $t@156@01) ($Snap.second $t@156@01))))
(assert (= ($Snap.first $t@156@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc($pre_self, 11)): Int)
; [eval] ($struct_get($struct_loc($pre_self, 11)): Int)
; [eval] $struct_loc($pre_self, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 11))))
(assert (= ($Snap.second $t@156@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc($pre_self, 11)): Int)
; [eval] $struct_loc($pre_self, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc($pre_self, 12)): Int) &&
;   ($struct_get($struct_loc($pre_self, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@157@01 $Snap)
(assert (= $t@157@01 ($Snap.combine ($Snap.first $t@157@01) ($Snap.second $t@157@01))))
(assert (= ($Snap.first $t@157@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc($pre_self, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc($pre_self, 12)): Int)
; [eval] $struct_loc($pre_self, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 12))))
(assert (= ($Snap.second $t@157@01) $Snap.unit))
; [eval] ($struct_get($struct_loc($pre_self, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc($pre_self, 12)): Int)
; [eval] $struct_loc($pre_self, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> $pre_self@126@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@158@01 $Snap)
(assert (= $t@158@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@159@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 14)
(push) ; 4
; [then-branch: 12 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 14)), $q3@159@01)) | live]
; [else-branch: 12 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 14)), $q3@159@01) | live]
(push) ; 5
; [then-branch: 12 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 14)), $q3@159@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 14)) $q3@159@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 14)), $q3@159@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 14)) $q3@159@01)))
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 14)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 14)) $q3@159@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 14)) $q3@159@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@159@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 14)) $q3@159@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 14)) $q3@159@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 14)) $q3@159@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@752@11@752@363-aux|)))
(assert (forall (($q3@159@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 14)) $q3@159@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 14)) $q3@159@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 14)) $q3@159@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@752@11@752@363|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int])): Int))
(declare-const $t@160@01 $Snap)
(assert (= $t@160@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int])): Int))
(declare-const $q3@161@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 14)
; [eval] ($map_sum(($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($pre_self, 14)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@161@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 14)) $q3@161@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 14)) $q3@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@753@11@753@271|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@162@01 $Snap)
(assert (= $t@162@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@163@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 15)
(push) ; 4
; [then-branch: 13 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 15)), $q4@163@01)) | live]
; [else-branch: 13 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 15)), $q4@163@01) | live]
(push) ; 5
; [then-branch: 13 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 15)), $q4@163@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 15)) $q4@163@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 13 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int]($pre_self@126@01, 15)), $q4@163@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 15)) $q4@163@01)))
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 15)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 15)) $q4@163@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 15)) $q4@163@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@163@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 15)) $q4@163@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 15)) $q4@163@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 15)) $q4@163@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@754@11@754@363-aux|)))
(assert (forall (($q4@163@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 15)) $q4@163@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 15)) $q4@163@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 15)) $q4@163@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@754@11@754@363|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int])): Int))
(declare-const $t@164@01 $Snap)
(assert (= $t@164@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int])): Int))
(declare-const $q4@165@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 15)
; [eval] ($map_sum(($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc($pre_self, 15)): $Map[Int, Int])
; [eval] $struct_loc($pre_self, 15)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@165@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 15)) $q4@165@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> $pre_self@126@01 15)) $q4@165@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@755@11@755@271|)))
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
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $t@174@01 $Snap)
(assert (= $t@174@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $a@175@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
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
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   $havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + $havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + $havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@176@01 $Struct)
(assert (=
  self@176@01
  ($struct_set<$Struct> self@124@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@124@01 11))
    $havoc@129@01))))
(pop) ; 2
(pop) ; 1
; ---------- f$__init__ ----------
(declare-const l$_buyer@177@01 Int)
(declare-const l$_price@178@01 $Int)
(declare-const l$_key_hash@179@01 Seq<Int>)
(declare-const l$duration@180@01 $Int)
(declare-const $succ@181@01 Bool)
(declare-const l$_buyer@182@01 Int)
(declare-const l$_price@183@01 $Int)
(declare-const l$_key_hash@184@01 Seq<Int>)
(declare-const l$duration@185@01 $Int)
(declare-const $succ@186@01 Bool)
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
(declare-const msg@187@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@188@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@189@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@190@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@191@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@192@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@193@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@194@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@195@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@196@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@197@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@198@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@199@01 Bool)
; [exec]
; var $first_public_state: Bool
(declare-const $first_public_state@200@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@201@01 Int)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@202@01 Bool)
; [exec]
; var l$havoc$1: Int
(declare-const l$havoc$1@203@01 Int)
; [exec]
; var l$havoc$2: $Map[Int, $Struct]
(declare-const l$havoc$2@204@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@205@01 $Snap)
(assert (= $t@205@01 ($Snap.combine ($Snap.first $t@205@01) ($Snap.second $t@205@01))))
(assert (= ($Snap.first $t@205@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@191@01 0))))
(assert (= ($Snap.second $t@205@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@191@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@206@01 $Snap)
(assert (= $t@206@01 ($Snap.combine ($Snap.first $t@206@01) ($Snap.second $t@206@01))))
(assert (= ($Snap.first $t@206@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@191@01 1))))
(assert (= ($Snap.second $t@206@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@191@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@207@01 $Snap)
(assert (= $t@207@01 ($Snap.combine ($Snap.first $t@207@01) ($Snap.second $t@207@01))))
(assert (= ($Snap.first $t@207@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@191@01 2))))
(assert (= ($Snap.second $t@207@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@191@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
(declare-const $t@208@01 $Snap)
(assert (= $t@208@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 3)): Seq[Int])
; [eval] $struct_loc(self, 3)
(assert (<= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@191@01 3))) 4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
(declare-const $t@209@01 $Snap)
(assert (= $t@209@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $struct_loc(self, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@191@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
(declare-const $t@210@01 $Snap)
(assert (= $t@210@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 5)): Seq[Int])
; [eval] $struct_loc(self, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@191@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 10)): Int) &&
;   ($struct_get($struct_loc(self, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@211@01 $Snap)
(assert (= $t@211@01 ($Snap.combine ($Snap.first $t@211@01) ($Snap.second $t@211@01))))
(assert (= ($Snap.first $t@211@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@191@01 10))))
(assert (= ($Snap.second $t@211@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@191@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 11)): Int) &&
;   ($struct_get($struct_loc(self, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@212@01 $Snap)
(assert (= $t@212@01 ($Snap.combine ($Snap.first $t@212@01) ($Snap.second $t@212@01))))
(assert (= ($Snap.first $t@212@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 11)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@191@01 11))))
(assert (= ($Snap.second $t@212@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@191@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 12)): Int) &&
;   ($struct_get($struct_loc(self, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@213@01 $Snap)
(assert (= $t@213@01 ($Snap.combine ($Snap.first $t@213@01) ($Snap.second $t@213@01))))
(assert (= ($Snap.first $t@213@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@191@01 12))))
(assert (= ($Snap.second $t@213@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@191@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@214@01 $Snap)
(assert (= $t@214@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@215@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(push) ; 4
; [then-branch: 14 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@191@01, 14)), $q3@215@01)) | live]
; [else-branch: 14 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@191@01, 14)), $q3@215@01) | live]
(push) ; 5
; [then-branch: 14 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@191@01, 14)), $q3@215@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 14)) $q3@215@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 14 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@191@01, 14)), $q3@215@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 14)) $q3@215@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 14)) $q3@215@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 14)) $q3@215@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@215@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 14)) $q3@215@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 14)) $q3@215@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 14)) $q3@215@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@801@11@801@348-aux|)))
(assert (forall (($q3@215@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 14)) $q3@215@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 14)) $q3@215@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 14)) $q3@215@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@801@11@801@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $t@216@01 $Snap)
(assert (= $t@216@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $q3@217@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@217@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 14)) $q3@217@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 14)) $q3@217@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@802@11@802@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@218@01 $Snap)
(assert (= $t@218@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@219@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(push) ; 4
; [then-branch: 15 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@191@01, 15)), $q4@219@01)) | live]
; [else-branch: 15 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@191@01, 15)), $q4@219@01) | live]
(push) ; 5
; [then-branch: 15 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@191@01, 15)), $q4@219@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 15)) $q4@219@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@191@01, 15)), $q4@219@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 15)) $q4@219@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 15)) $q4@219@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 15)) $q4@219@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@219@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 15)) $q4@219@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 15)) $q4@219@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 15)) $q4@219@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@803@11@803@348-aux|)))
(assert (forall (($q4@219@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 15)) $q4@219@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 15)) $q4@219@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 15)) $q4@219@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@803@11@803@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $t@220@01 $Snap)
(assert (= $t@220@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $q4@221@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
; [eval] ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@221@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 15)) $q4@221@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@191@01 15)) $q4@221@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@804@11@804@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@222@01 $Snap)
(assert (= $t@222@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@191@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@223@01 $Snap)
(assert (= $t@223@01 ($Snap.combine ($Snap.first $t@223@01) ($Snap.second $t@223@01))))
(assert (= ($Snap.first $t@223@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@223@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= l$_buyer &&
;   l$_buyer <= 1461501637330902918203684832716283019655932542975
(declare-const $t@224@01 $Snap)
(assert (= $t@224@01 ($Snap.combine ($Snap.first $t@224@01) ($Snap.second $t@224@01))))
(assert (= ($Snap.first $t@224@01) $Snap.unit))
; [eval] 0 <= l$_buyer
(assert (<= 0 l$_buyer@182@01))
(assert (= ($Snap.second $t@224@01) $Snap.unit))
; [eval] l$_buyer <= 1461501637330902918203684832716283019655932542975
(assert (<= l$_buyer@182@01 1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$_price) &&
;   $unwrap(l$_price) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@225@01 $Snap)
(assert (= $t@225@01 ($Snap.combine ($Snap.first $t@225@01) ($Snap.second $t@225@01))))
(assert (= ($Snap.first $t@225@01) $Snap.unit))
; [eval] 0 <= $unwrap(l$_price)
; [eval] $unwrap(l$_price)
(assert (<= 0 ($unwrap<Int> l$_price@183@01)))
(assert (= ($Snap.second $t@225@01) $Snap.unit))
; [eval] $unwrap(l$_price) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $unwrap(l$_price)
(assert (<=
  ($unwrap<Int> l$_price@183@01)
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |l$_key_hash| == 32
(declare-const $t@226@01 $Snap)
(assert (= $t@226@01 $Snap.unit))
; [eval] |l$_key_hash| == 32
; [eval] |l$_key_hash|
(assert (= (Seq_length l$_key_hash@184@01) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $unwrap(l$duration) &&
;   $unwrap(l$duration) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@227@01 $Snap)
(assert (= $t@227@01 ($Snap.combine ($Snap.first $t@227@01) ($Snap.second $t@227@01))))
(assert (= ($Snap.first $t@227@01) $Snap.unit))
; [eval] 0 <= $unwrap(l$duration)
; [eval] $unwrap(l$duration)
(assert (<= 0 ($unwrap<Int> l$duration@185@01)))
(assert (= ($Snap.second $t@227@01) $Snap.unit))
; [eval] $unwrap(l$duration) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] $unwrap(l$duration)
(assert (<=
  ($unwrap<Int> l$duration@185@01)
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@228@01 $Snap)
(assert (= $t@228@01 ($Snap.combine ($Snap.first $t@228@01) ($Snap.second $t@228@01))))
(assert (= ($Snap.first $t@228@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@188@01 0))))
(assert (= ($Snap.second $t@228@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@188@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@229@01 $Snap)
(assert (= $t@229@01 ($Snap.combine ($Snap.first $t@229@01) ($Snap.second $t@229@01))))
(assert (= ($Snap.first $t@229@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@188@01 1))))
(assert (= ($Snap.second $t@229@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@188@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@230@01 $Snap)
(assert (= $t@230@01 ($Snap.combine ($Snap.first $t@230@01) ($Snap.second $t@230@01))))
(assert (= ($Snap.first $t@230@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@188@01 2))))
(assert (= ($Snap.second $t@230@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@188@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@231@01 $Snap)
(assert (= $t@231@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@188@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@232@01 $Snap)
(assert (= $t@232@01 ($Snap.combine ($Snap.first $t@232@01) ($Snap.second $t@232@01))))
(assert (= ($Snap.first $t@232@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@188@01 4))))
(assert (= ($Snap.second $t@232@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@233@01 $Snap)
(assert (= $t@233@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@188@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@234@01 $Snap)
(assert (= $t@234@01 ($Snap.combine ($Snap.first $t@234@01) ($Snap.second $t@234@01))))
(assert (= ($Snap.first $t@234@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@187@01 0))))
(assert (= ($Snap.second $t@234@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@187@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@235@01 $Snap)
(assert (= $t@235@01 ($Snap.combine ($Snap.first $t@235@01) ($Snap.second $t@235@01))))
(assert (= ($Snap.first $t@235@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@187@01 1))))
(assert (= ($Snap.second $t@235@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@187@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@236@01 $Snap)
(assert (= $t@236@01 ($Snap.combine ($Snap.first $t@236@01) ($Snap.second $t@236@01))))
(assert (= ($Snap.first $t@236@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@187@01 2))))
(assert (= ($Snap.second $t@236@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@187@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@237@01 $Snap)
(assert (= $t@237@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@187@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@238@01 $Snap)
(assert (= $t@238@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@187@01 0)) 0)))
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
; self := s$struct$self$init(0, 0, 0, Seq[Int](), ($array_init(0, 32): Seq[Int]),
;   ($array_init(0, 32): Seq[Int]), false, false, false, false, 0, 0, 0, false,
;   ($map_init(0): $Map[Int, Int]), ($map_init(0): $Map[Int, Int]), false)
; [eval] s$struct$self$init(0, 0, 0, Seq[Int](), ($array_init(0, 32): Seq[Int]), ($array_init(0, 32): Seq[Int]), false, false, false, false, 0, 0, 0, false, ($map_init(0): $Map[Int, Int]), ($map_init(0): $Map[Int, Int]), false)
; [eval] Seq[Int]()
; [eval] ($array_init(0, 32): Seq[Int])
; [eval] ($array_init(0, 32): Seq[Int])
; [eval] ($map_init(0): $Map[Int, Int])
; [eval] ($map_init(0): $Map[Int, Int])
(declare-const self@239@01 $Struct)
(assert (=
  self@239@01
  (s$struct$self$init<$Struct> 0 0 0 (as Seq_empty  Seq<Int>) ($array_init<Seq<Int>> 0 32) ($array_init<Seq<Int>> 0 32) false false false false 0 0 0 false ($map_init<$Map<Int~_Int>> 0) ($map_init<$Map<Int~_Int>> 0) false)))
; [exec]
; inhale l$havoc >= 0
(declare-const $t@240@01 $Snap)
(assert (= $t@240@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@201@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@241@01 $Struct)
(assert (=
  self@241@01
  ($struct_set<$Struct> self@239@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@239@01 11))
    l$havoc@201@01))))
; [exec]
; inhale ($struct_get($struct_loc(msg, 1)): Int) == 0
(declare-const $t@242@01 $Snap)
(assert (= $t@242@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@187@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 0, ($struct_get($struct_loc(msg, 0)): Int)): $Struct)
; [eval] ($struct_set(self, 0, ($struct_get($struct_loc(msg, 0)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const self@243@01 $Struct)
(assert (=
  self@243@01
  ($struct_set<$Struct> self@241@01 0 ($struct_get<Int> ($struct_loc<Int> msg@187@01 0)))))
; [exec]
; self := ($struct_set(self, 1, l$_buyer): $Struct)
; [eval] ($struct_set(self, 1, l$_buyer): $Struct)
(declare-const self@244@01 $Struct)
(assert (= self@244@01 ($struct_set<$Struct> self@243@01 1 l$_buyer@182@01)))
; [exec]
; self := ($struct_set(self, 2, $unwrap(l$_price)): $Struct)
; [eval] ($struct_set(self, 2, $unwrap(l$_price)): $Struct)
; [eval] $unwrap(l$_price)
(declare-const self@245@01 $Struct)
(assert (=
  self@245@01
  ($struct_set<$Struct> self@244@01 2 ($unwrap<Int> l$_price@183@01))))
; [exec]
; self := ($struct_set(self, 4, l$_key_hash): $Struct)
; [eval] ($struct_set(self, 4, l$_key_hash): $Struct)
(declare-const self@246@01 $Struct)
(assert (= self@246@01 ($struct_set<$Struct> self@245@01 4 l$_key_hash@184@01)))
; [eval] ($struct_get($struct_loc(block, 4)): Int) + $unwrap(l$duration) < 0
; [eval] ($struct_get($struct_loc(block, 4)): Int) + $unwrap(l$duration)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
; [eval] $unwrap(l$duration)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (<
    (+
      ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
      ($unwrap<Int> l$duration@185@01))
    0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | $struct_get[Int]($struct_loc[Int](block@188@01, 4)) + $unwrap[Int](l$duration@185@01) < 0 | dead]
; [else-branch: 16 | !($struct_get[Int]($struct_loc[Int](block@188@01, 4)) + $unwrap[Int](l$duration@185@01) < 0) | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 16 | !($struct_get[Int]($struct_loc[Int](block@188@01, 4)) + $unwrap[Int](l$duration@185@01) < 0)]
(assert (not
  (<
    (+
      ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
      ($unwrap<Int> l$duration@185@01))
    0)))
(pop) ; 3
; [eval] !(($struct_get($struct_loc(block, 4)): Int) + $unwrap(l$duration) < 0)
; [eval] ($struct_get($struct_loc(block, 4)): Int) + $unwrap(l$duration) < 0
; [eval] ($struct_get($struct_loc(block, 4)): Int) + $unwrap(l$duration)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
; [eval] $unwrap(l$duration)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  (+
    ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
    ($unwrap<Int> l$duration@185@01))
  0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (<
    (+
      ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
      ($unwrap<Int> l$duration@185@01))
    0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | !($struct_get[Int]($struct_loc[Int](block@188@01, 4)) + $unwrap[Int](l$duration@185@01) < 0) | live]
; [else-branch: 17 | $struct_get[Int]($struct_loc[Int](block@188@01, 4)) + $unwrap[Int](l$duration@185@01) < 0 | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 17 | !($struct_get[Int]($struct_loc[Int](block@188@01, 4)) + $unwrap[Int](l$duration@185@01) < 0)]
(assert (not
  (<
    (+
      ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
      ($unwrap<Int> l$duration@185@01))
    0)))
; [eval] ($struct_get($struct_loc(block, 4)): Int) + $unwrap(l$duration) > 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int) + $unwrap(l$duration)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
; [eval] $unwrap(l$duration)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (>
    (+
      ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
      ($unwrap<Int> l$duration@185@01))
    115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (>
  (+
    ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
    ($unwrap<Int> l$duration@185@01))
  115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | $struct_get[Int]($struct_loc[Int](block@188@01, 4)) + $unwrap[Int](l$duration@185@01) > 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
; [else-branch: 18 | !($struct_get[Int]($struct_loc[Int](block@188@01, 4)) + $unwrap[Int](l$duration@185@01) > 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 18 | $struct_get[Int]($struct_loc[Int](block@188@01, 4)) + $unwrap[Int](l$duration@185@01) > 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (>
  (+
    ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
    ($unwrap<Int> l$duration@185@01))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
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
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | True | live]
; [else-branch: 19 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 19 | True]
; [exec]
; $old_self := self
; [eval] !$succ
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | True | live]
; [else-branch: 20 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 20 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@247@01 $Snap)
(assert (= $t@247@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@203@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@248@01 $Struct)
(assert (=
  self@248@01
  ($struct_set<$Struct> self@191@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@191@01 11))
    l$havoc$1@203@01))))
; [exec]
; $contracts := l$havoc$2
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | True | live]
; [else-branch: 21 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 21 | True]
; [exec]
; $old_self := self
(pop) ; 7
; [eval] !$first_public_state
; [then-branch: 22 | False | dead]
; [else-branch: 22 | True | live]
(push) ; 7
; [else-branch: 22 | True]
(pop) ; 7
(pop) ; 6
; [then-branch: 23 | False | dead]
; [else-branch: 23 | True | live]
(push) ; 6
; [else-branch: 23 | True]
(pop) ; 6
(pop) ; 5
; [eval] !$first_public_state
; [then-branch: 24 | False | dead]
; [else-branch: 24 | True | live]
(push) ; 5
; [else-branch: 24 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 18 | !($struct_get[Int]($struct_loc[Int](block@188@01, 4)) + $unwrap[Int](l$duration@185@01) > 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (>
    (+
      ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
      ($unwrap<Int> l$duration@185@01))
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(pop) ; 4
; [eval] !(($struct_get($struct_loc(block, 4)): Int) + $unwrap(l$duration) > 115792089237316195423570985008687907853269984665640564039457584007913129639935)
; [eval] ($struct_get($struct_loc(block, 4)): Int) + $unwrap(l$duration) > 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int) + $unwrap(l$duration)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
; [eval] $unwrap(l$duration)
(push) ; 4
(set-option :timeout 10)
(assert (not (>
  (+
    ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
    ($unwrap<Int> l$duration@185@01))
  115792089237316195423570985008687907853269984665640564039457584007913129639935)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (>
    (+
      ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
      ($unwrap<Int> l$duration@185@01))
    115792089237316195423570985008687907853269984665640564039457584007913129639935))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | !($struct_get[Int]($struct_loc[Int](block@188@01, 4)) + $unwrap[Int](l$duration@185@01) > 115792089237316195423570985008687907853269984665640564039457584007913129639935) | live]
; [else-branch: 25 | $struct_get[Int]($struct_loc[Int](block@188@01, 4)) + $unwrap[Int](l$duration@185@01) > 115792089237316195423570985008687907853269984665640564039457584007913129639935 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 25 | !($struct_get[Int]($struct_loc[Int](block@188@01, 4)) + $unwrap[Int](l$duration@185@01) > 115792089237316195423570985008687907853269984665640564039457584007913129639935)]
(assert (not
  (>
    (+
      ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
      ($unwrap<Int> l$duration@185@01))
    115792089237316195423570985008687907853269984665640564039457584007913129639935)))
; [exec]
; self := ($struct_set(self, 10, $unwrap($wrap(($struct_get($struct_loc(block,
;   4)): Int) +
;   $unwrap(l$duration)))): $Struct)
; [eval] ($struct_set(self, 10, $unwrap($wrap(($struct_get($struct_loc(block, 4)): Int) + $unwrap(l$duration)))): $Struct)
; [eval] $unwrap($wrap(($struct_get($struct_loc(block, 4)): Int) + $unwrap(l$duration)))
; [eval] $wrap(($struct_get($struct_loc(block, 4)): Int) + $unwrap(l$duration))
; [eval] ($struct_get($struct_loc(block, 4)): Int) + $unwrap(l$duration)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
; [eval] $unwrap(l$duration)
(declare-const self@249@01 $Struct)
(assert (=
  self@249@01
  ($struct_set<$Struct> self@246@01 10 ($unwrap<Int> ($wrap<$Int> (+
    ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
    ($unwrap<Int> l$duration@185@01)))))))
; [exec]
; label return
(push) ; 5
(set-option :timeout 10)
(assert (not (not $out_of_gas@202@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not $out_of_gas@202@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | $out_of_gas@202@01 | live]
; [else-branch: 26 | !($out_of_gas@202@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 26 | $out_of_gas@202@01]
(assert $out_of_gas@202@01)
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
; [exec]
; $old_self := self
; [eval] !$succ
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 28 | True | live]
; [else-branch: 28 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 28 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@250@01 $Snap)
(assert (= $t@250@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@203@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@251@01 $Struct)
(assert (=
  self@251@01
  ($struct_set<$Struct> self@191@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@191@01 11))
    l$havoc$1@203@01))))
; [exec]
; $contracts := l$havoc$2
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 29 | True | live]
; [else-branch: 29 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 29 | True]
; [exec]
; $old_self := self
(pop) ; 8
; [eval] !$first_public_state
; [then-branch: 30 | False | dead]
; [else-branch: 30 | True | live]
(push) ; 8
; [else-branch: 30 | True]
(pop) ; 8
(pop) ; 7
; [then-branch: 31 | False | dead]
; [else-branch: 31 | True | live]
(push) ; 7
; [else-branch: 31 | True]
(pop) ; 7
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 32 | False | dead]
; [else-branch: 32 | True | live]
(push) ; 6
; [else-branch: 32 | True]
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 26 | !($out_of_gas@202@01)]
(assert (not $out_of_gas@202@01))
(pop) ; 5
; [eval] !$out_of_gas
(push) ; 5
(set-option :timeout 10)
(assert (not $out_of_gas@202@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not $out_of_gas@202@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | !($out_of_gas@202@01) | live]
; [else-branch: 33 | $out_of_gas@202@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 33 | !($out_of_gas@202@01)]
(assert (not $out_of_gas@202@01))
; [exec]
; label end
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | True | live]
; [else-branch: 34 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 34 | True]
; [exec]
; $old_self := self
; [eval] !$succ
; [then-branch: 35 | False | dead]
; [else-branch: 35 | True | live]
(push) ; 7
; [else-branch: 35 | True]
(pop) ; 7
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | True | live]
; [else-branch: 36 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 36 | True]
; [exec]
; inhale l$havoc$1 >= 0
(declare-const $t@252@01 $Snap)
(assert (= $t@252@01 $Snap.unit))
; [eval] l$havoc$1 >= 0
(assert (>= l$havoc$1@203@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$1): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$1): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$1
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@253@01 $Struct)
(assert (=
  self@253@01
  ($struct_set<$Struct> self@249@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@249@01 11))
    l$havoc$1@203@01))))
; [exec]
; $contracts := l$havoc$2
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | True | live]
; [else-branch: 37 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 37 | True]
; [exec]
; $old_self := self
(pop) ; 8
; [eval] !$first_public_state
; [then-branch: 38 | False | dead]
; [else-branch: 38 | True | live]
(push) ; 8
; [else-branch: 38 | True]
(pop) ; 8
(pop) ; 7
(pop) ; 6
; [eval] !$first_public_state
; [then-branch: 39 | False | dead]
; [else-branch: 39 | True | live]
(push) ; 6
; [else-branch: 39 | True]
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 33 | $out_of_gas@202@01]
(assert $out_of_gas@202@01)
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 25 | $struct_get[Int]($struct_loc[Int](block@188@01, 4)) + $unwrap[Int](l$duration@185@01) > 115792089237316195423570985008687907853269984665640564039457584007913129639935]
(assert (>
  (+
    ($struct_get<Int> ($struct_loc<Int> block@188@01 4))
    ($unwrap<Int> l$duration@185@01))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$confirm_key ----------
(declare-const $succ@254@01 Bool)
(declare-const $succ@255@01 Bool)
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
(declare-const msg@256@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@257@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@258@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@259@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@260@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@261@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@262@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@263@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@264@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@265@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@266@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@267@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@268@01 Bool)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@269@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@270@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@271@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@272@01 $Snap)
(assert (= $t@272@01 ($Snap.combine ($Snap.first $t@272@01) ($Snap.second $t@272@01))))
(assert (= ($Snap.first $t@272@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@260@01 0))))
(assert (= ($Snap.second $t@272@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@260@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@273@01 $Snap)
(assert (= $t@273@01 ($Snap.combine ($Snap.first $t@273@01) ($Snap.second $t@273@01))))
(assert (= ($Snap.first $t@273@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@260@01 1))))
(assert (= ($Snap.second $t@273@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@260@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@274@01 $Snap)
(assert (= $t@274@01 ($Snap.combine ($Snap.first $t@274@01) ($Snap.second $t@274@01))))
(assert (= ($Snap.first $t@274@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@260@01 2))))
(assert (= ($Snap.second $t@274@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@260@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
(declare-const $t@275@01 $Snap)
(assert (= $t@275@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 3)): Seq[Int])
; [eval] $struct_loc(self, 3)
(assert (<= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@260@01 3))) 4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
(declare-const $t@276@01 $Snap)
(assert (= $t@276@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $struct_loc(self, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@260@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
(declare-const $t@277@01 $Snap)
(assert (= $t@277@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 5)): Seq[Int])
; [eval] $struct_loc(self, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@260@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 10)): Int) &&
;   ($struct_get($struct_loc(self, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@278@01 $Snap)
(assert (= $t@278@01 ($Snap.combine ($Snap.first $t@278@01) ($Snap.second $t@278@01))))
(assert (= ($Snap.first $t@278@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@260@01 10))))
(assert (= ($Snap.second $t@278@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@260@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 11)): Int) &&
;   ($struct_get($struct_loc(self, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@279@01 $Snap)
(assert (= $t@279@01 ($Snap.combine ($Snap.first $t@279@01) ($Snap.second $t@279@01))))
(assert (= ($Snap.first $t@279@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 11)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@260@01 11))))
(assert (= ($Snap.second $t@279@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@260@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 12)): Int) &&
;   ($struct_get($struct_loc(self, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@280@01 $Snap)
(assert (= $t@280@01 ($Snap.combine ($Snap.first $t@280@01) ($Snap.second $t@280@01))))
(assert (= ($Snap.first $t@280@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@260@01 12))))
(assert (= ($Snap.second $t@280@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@260@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@281@01 $Snap)
(assert (= $t@281@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@282@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(push) ; 4
; [then-branch: 40 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@260@01, 14)), $q3@282@01)) | live]
; [else-branch: 40 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@260@01, 14)), $q3@282@01) | live]
(push) ; 5
; [then-branch: 40 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@260@01, 14)), $q3@282@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 14)) $q3@282@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 40 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@260@01, 14)), $q3@282@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 14)) $q3@282@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 14)) $q3@282@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 14)) $q3@282@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@282@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 14)) $q3@282@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 14)) $q3@282@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 14)) $q3@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@911@11@911@348-aux|)))
(assert (forall (($q3@282@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 14)) $q3@282@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 14)) $q3@282@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 14)) $q3@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@911@11@911@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $t@283@01 $Snap)
(assert (= $t@283@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $q3@284@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@284@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 14)) $q3@284@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 14)) $q3@284@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@912@11@912@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@285@01 $Snap)
(assert (= $t@285@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@286@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(push) ; 4
; [then-branch: 41 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@260@01, 15)), $q4@286@01)) | live]
; [else-branch: 41 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@260@01, 15)), $q4@286@01) | live]
(push) ; 5
; [then-branch: 41 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@260@01, 15)), $q4@286@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 15)) $q4@286@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 41 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@260@01, 15)), $q4@286@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 15)) $q4@286@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 15)) $q4@286@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 15)) $q4@286@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@286@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 15)) $q4@286@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 15)) $q4@286@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 15)) $q4@286@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@913@11@913@348-aux|)))
(assert (forall (($q4@286@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 15)) $q4@286@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 15)) $q4@286@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 15)) $q4@286@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@913@11@913@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $t@287@01 $Snap)
(assert (= $t@287@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $q4@288@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
; [eval] ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@288@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 15)) $q4@288@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@260@01 15)) $q4@288@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@914@11@914@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@289@01 $Snap)
(assert (= $t@289@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@260@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@290@01 $Snap)
(assert (= $t@290@01 ($Snap.combine ($Snap.first $t@290@01) ($Snap.second $t@290@01))))
(assert (= ($Snap.first $t@290@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@290@01) $Snap.unit))
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
(declare-const $t@291@01 $Snap)
(assert (= $t@291@01 ($Snap.combine ($Snap.first $t@291@01) ($Snap.second $t@291@01))))
(assert (= ($Snap.first $t@291@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@257@01 0))))
(assert (= ($Snap.second $t@291@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@257@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@292@01 $Snap)
(assert (= $t@292@01 ($Snap.combine ($Snap.first $t@292@01) ($Snap.second $t@292@01))))
(assert (= ($Snap.first $t@292@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@257@01 1))))
(assert (= ($Snap.second $t@292@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@257@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@293@01 $Snap)
(assert (= $t@293@01 ($Snap.combine ($Snap.first $t@293@01) ($Snap.second $t@293@01))))
(assert (= ($Snap.first $t@293@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@257@01 2))))
(assert (= ($Snap.second $t@293@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@257@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@294@01 $Snap)
(assert (= $t@294@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@257@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@295@01 $Snap)
(assert (= $t@295@01 ($Snap.combine ($Snap.first $t@295@01) ($Snap.second $t@295@01))))
(assert (= ($Snap.first $t@295@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@257@01 4))))
(assert (= ($Snap.second $t@295@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@257@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@296@01 $Snap)
(assert (= $t@296@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@257@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@297@01 $Snap)
(assert (= $t@297@01 ($Snap.combine ($Snap.first $t@297@01) ($Snap.second $t@297@01))))
(assert (= ($Snap.first $t@297@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@256@01 0))))
(assert (= ($Snap.second $t@297@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@256@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@298@01 $Snap)
(assert (= $t@298@01 ($Snap.combine ($Snap.first $t@298@01) ($Snap.second $t@298@01))))
(assert (= ($Snap.first $t@298@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@256@01 1))))
(assert (= ($Snap.second $t@298@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@256@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@299@01 $Snap)
(assert (= $t@299@01 ($Snap.combine ($Snap.first $t@299@01) ($Snap.second $t@299@01))))
(assert (= ($Snap.first $t@299@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@256@01 2))))
(assert (= ($Snap.second $t@299@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@256@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@300@01 $Snap)
(assert (= $t@300@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@256@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@301@01 $Snap)
(assert (= $t@301@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@256@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $t@302@01 $Snap)
(assert (= $t@302@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $a@303@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
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
(declare-const $t@304@01 $Snap)
(assert (= $t@304@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@256@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] !(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@256@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@260@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@256@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@260@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 42 | $struct_get[Int]($struct_loc[Int](msg@256@01, 0)) != $struct_get[Int]($struct_loc[Int](self@260@01, 1)) | live]
; [else-branch: 42 | $struct_get[Int]($struct_loc[Int](msg@256@01, 0)) == $struct_get[Int]($struct_loc[Int](self@260@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 42 | $struct_get[Int]($struct_loc[Int](msg@256@01, 0)) != $struct_get[Int]($struct_loc[Int](self@260@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@256@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@260@01 1)))))
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
; 0.00s
; (get-info :all-statistics)
; [then-branch: 43 | True | live]
; [else-branch: 43 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 43 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@305@01 $Snap)
(assert (= $t@305@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@270@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@306@01 $Struct)
(assert (=
  self@306@01
  ($struct_set<$Struct> self@260@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@260@01 11))
    l$havoc@270@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 4
; [then-branch: 44 | False | dead]
; [else-branch: 44 | True | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 44 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 42 | $struct_get[Int]($struct_loc[Int](msg@256@01, 0)) == $struct_get[Int]($struct_loc[Int](self@260@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@256@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@260@01 1))))
(pop) ; 3
; [eval] !!(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] !(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@256@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@260@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@256@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@260@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 45 | $struct_get[Int]($struct_loc[Int](msg@256@01, 0)) == $struct_get[Int]($struct_loc[Int](self@260@01, 1)) | live]
; [else-branch: 45 | $struct_get[Int]($struct_loc[Int](msg@256@01, 0)) != $struct_get[Int]($struct_loc[Int](self@260@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 45 | $struct_get[Int]($struct_loc[Int](msg@256@01, 0)) == $struct_get[Int]($struct_loc[Int](self@260@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@256@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@260@01 1))))
; [exec]
; self := ($struct_set(self, 6, true): $Struct)
; [eval] ($struct_set(self, 6, true): $Struct)
(declare-const self@307@01 $Struct)
(assert (= self@307@01 ($struct_set<$Struct> self@260@01 6 true)))
; [exec]
; label return
(push) ; 4
(set-option :timeout 10)
(assert (not (not $out_of_gas@269@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not $out_of_gas@269@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 46 | $out_of_gas@269@01 | live]
; [else-branch: 46 | !($out_of_gas@269@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 46 | $out_of_gas@269@01]
(assert $out_of_gas@269@01)
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
; [then-branch: 47 | True | live]
; [else-branch: 47 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 47 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@308@01 $Snap)
(assert (= $t@308@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@270@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@309@01 $Struct)
(assert (=
  self@309@01
  ($struct_set<$Struct> self@260@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@260@01 11))
    l$havoc@270@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 5
; [then-branch: 48 | False | dead]
; [else-branch: 48 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 48 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 46 | !($out_of_gas@269@01)]
(assert (not $out_of_gas@269@01))
(pop) ; 4
; [eval] !$out_of_gas
(push) ; 4
(set-option :timeout 10)
(assert (not $out_of_gas@269@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not $out_of_gas@269@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 49 | !($out_of_gas@269@01) | live]
; [else-branch: 49 | $out_of_gas@269@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 49 | !($out_of_gas@269@01)]
(assert (not $out_of_gas@269@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 50 | False | dead]
; [else-branch: 50 | True | live]
(push) ; 5
; [else-branch: 50 | True]
(pop) ; 5
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 51 | True | live]
; [else-branch: 51 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 51 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@310@01 $Snap)
(assert (= $t@310@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@270@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@311@01 $Struct)
(assert (=
  self@311@01
  ($struct_set<$Struct> self@307@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@307@01 11))
    l$havoc@270@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 5
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 49 | $out_of_gas@269@01]
(assert $out_of_gas@269@01)
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 45 | $struct_get[Int]($struct_loc[Int](msg@256@01, 0)) != $struct_get[Int]($struct_loc[Int](self@260@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@256@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@260@01 1)))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$pay ----------
(declare-const $succ@312@01 Bool)
(declare-const $succ@313@01 Bool)
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
(declare-const msg@314@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@315@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@316@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@317@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@318@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@319@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@320@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@321@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@322@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@323@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@324@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@325@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@326@01 Bool)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@327@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@328@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@329@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@330@01 $Snap)
(assert (= $t@330@01 ($Snap.combine ($Snap.first $t@330@01) ($Snap.second $t@330@01))))
(assert (= ($Snap.first $t@330@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@318@01 0))))
(assert (= ($Snap.second $t@330@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@318@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@331@01 $Snap)
(assert (= $t@331@01 ($Snap.combine ($Snap.first $t@331@01) ($Snap.second $t@331@01))))
(assert (= ($Snap.first $t@331@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@318@01 1))))
(assert (= ($Snap.second $t@331@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@318@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@332@01 $Snap)
(assert (= $t@332@01 ($Snap.combine ($Snap.first $t@332@01) ($Snap.second $t@332@01))))
(assert (= ($Snap.first $t@332@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@318@01 2))))
(assert (= ($Snap.second $t@332@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@318@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
(declare-const $t@333@01 $Snap)
(assert (= $t@333@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 3)): Seq[Int])
; [eval] $struct_loc(self, 3)
(assert (<= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@318@01 3))) 4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
(declare-const $t@334@01 $Snap)
(assert (= $t@334@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $struct_loc(self, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@318@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
(declare-const $t@335@01 $Snap)
(assert (= $t@335@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 5)): Seq[Int])
; [eval] $struct_loc(self, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@318@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 10)): Int) &&
;   ($struct_get($struct_loc(self, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@336@01 $Snap)
(assert (= $t@336@01 ($Snap.combine ($Snap.first $t@336@01) ($Snap.second $t@336@01))))
(assert (= ($Snap.first $t@336@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@318@01 10))))
(assert (= ($Snap.second $t@336@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@318@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 11)): Int) &&
;   ($struct_get($struct_loc(self, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@337@01 $Snap)
(assert (= $t@337@01 ($Snap.combine ($Snap.first $t@337@01) ($Snap.second $t@337@01))))
(assert (= ($Snap.first $t@337@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 11)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@318@01 11))))
(assert (= ($Snap.second $t@337@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@318@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 12)): Int) &&
;   ($struct_get($struct_loc(self, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@338@01 $Snap)
(assert (= $t@338@01 ($Snap.combine ($Snap.first $t@338@01) ($Snap.second $t@338@01))))
(assert (= ($Snap.first $t@338@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@318@01 12))))
(assert (= ($Snap.second $t@338@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@318@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@339@01 $Snap)
(assert (= $t@339@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@340@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(push) ; 4
; [then-branch: 52 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@318@01, 14)), $q3@340@01)) | live]
; [else-branch: 52 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@318@01, 14)), $q3@340@01) | live]
(push) ; 5
; [then-branch: 52 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@318@01, 14)), $q3@340@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 14)) $q3@340@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 52 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@318@01, 14)), $q3@340@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 14)) $q3@340@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 14)) $q3@340@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 14)) $q3@340@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@340@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 14)) $q3@340@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 14)) $q3@340@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 14)) $q3@340@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1000@11@1000@348-aux|)))
(assert (forall (($q3@340@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 14)) $q3@340@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 14)) $q3@340@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 14)) $q3@340@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1000@11@1000@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $t@341@01 $Snap)
(assert (= $t@341@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $q3@342@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@342@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 14)) $q3@342@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 14)) $q3@342@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1001@11@1001@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@343@01 $Snap)
(assert (= $t@343@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@344@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(push) ; 4
; [then-branch: 53 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@318@01, 15)), $q4@344@01)) | live]
; [else-branch: 53 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@318@01, 15)), $q4@344@01) | live]
(push) ; 5
; [then-branch: 53 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@318@01, 15)), $q4@344@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 15)) $q4@344@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 53 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@318@01, 15)), $q4@344@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 15)) $q4@344@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 15)) $q4@344@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 15)) $q4@344@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@344@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 15)) $q4@344@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 15)) $q4@344@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 15)) $q4@344@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1002@11@1002@348-aux|)))
(assert (forall (($q4@344@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 15)) $q4@344@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 15)) $q4@344@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 15)) $q4@344@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1002@11@1002@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $t@345@01 $Snap)
(assert (= $t@345@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $q4@346@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
; [eval] ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@346@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 15)) $q4@346@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@318@01 15)) $q4@346@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1003@11@1003@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@347@01 $Snap)
(assert (= $t@347@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@318@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@348@01 $Snap)
(assert (= $t@348@01 ($Snap.combine ($Snap.first $t@348@01) ($Snap.second $t@348@01))))
(assert (= ($Snap.first $t@348@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@348@01) $Snap.unit))
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
(declare-const $t@349@01 $Snap)
(assert (= $t@349@01 ($Snap.combine ($Snap.first $t@349@01) ($Snap.second $t@349@01))))
(assert (= ($Snap.first $t@349@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@315@01 0))))
(assert (= ($Snap.second $t@349@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@315@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@350@01 $Snap)
(assert (= $t@350@01 ($Snap.combine ($Snap.first $t@350@01) ($Snap.second $t@350@01))))
(assert (= ($Snap.first $t@350@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@315@01 1))))
(assert (= ($Snap.second $t@350@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@315@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@351@01 $Snap)
(assert (= $t@351@01 ($Snap.combine ($Snap.first $t@351@01) ($Snap.second $t@351@01))))
(assert (= ($Snap.first $t@351@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@315@01 2))))
(assert (= ($Snap.second $t@351@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@315@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@352@01 $Snap)
(assert (= $t@352@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@315@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@353@01 $Snap)
(assert (= $t@353@01 ($Snap.combine ($Snap.first $t@353@01) ($Snap.second $t@353@01))))
(assert (= ($Snap.first $t@353@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@315@01 4))))
(assert (= ($Snap.second $t@353@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@315@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@354@01 $Snap)
(assert (= $t@354@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@315@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@355@01 $Snap)
(assert (= $t@355@01 ($Snap.combine ($Snap.first $t@355@01) ($Snap.second $t@355@01))))
(assert (= ($Snap.first $t@355@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@314@01 0))))
(assert (= ($Snap.second $t@355@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@314@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@356@01 $Snap)
(assert (= $t@356@01 ($Snap.combine ($Snap.first $t@356@01) ($Snap.second $t@356@01))))
(assert (= ($Snap.first $t@356@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@314@01 1))))
(assert (= ($Snap.second $t@356@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@314@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@357@01 $Snap)
(assert (= $t@357@01 ($Snap.combine ($Snap.first $t@357@01) ($Snap.second $t@357@01))))
(assert (= ($Snap.first $t@357@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@314@01 2))))
(assert (= ($Snap.second $t@357@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@314@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@358@01 $Snap)
(assert (= $t@358@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@314@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@359@01 $Snap)
(assert (= $t@359@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@314@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $t@360@01 $Snap)
(assert (= $t@360@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $a@361@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
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
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   ($struct_get($struct_loc(msg, 1)): Int)): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + ($struct_get($struct_loc(msg, 1)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(declare-const self@362@01 $Struct)
(assert (=
  self@362@01
  ($struct_set<$Struct> self@318@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@318@01 11))
    ($struct_get<Int> ($struct_loc<Int> msg@314@01 1))))))
; [exec]
; self := ($struct_set(self, 15, ($map_set(($struct_get($struct_loc(self, 15)): $Map[Int, Int]),
;   ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self,
;   15)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) +
;   ($struct_get($struct_loc(msg, 1)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 15, ($map_set(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(msg, 1)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(msg, 1)): Int)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(declare-const self@363@01 $Struct)
(assert (=
  self@363@01
  ($struct_set<$Struct> self@362@01 15 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@362@01 15)) ($struct_get<Int> ($struct_loc<Int> msg@314@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@362@01 15)) ($struct_get<Int> ($struct_loc<Int> msg@314@01 0)))
    ($struct_get<Int> ($struct_loc<Int> msg@314@01 1)))))))
; [eval] !(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@314@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@363@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@314@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@363@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 54 | $struct_get[Int]($struct_loc[Int](msg@314@01, 0)) != $struct_get[Int]($struct_loc[Int](self@363@01, 1)) | live]
; [else-branch: 54 | $struct_get[Int]($struct_loc[Int](msg@314@01, 0)) == $struct_get[Int]($struct_loc[Int](self@363@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 54 | $struct_get[Int]($struct_loc[Int](msg@314@01, 0)) != $struct_get[Int]($struct_loc[Int](self@363@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@314@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@363@01 1)))))
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
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | True | live]
; [else-branch: 55 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 55 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@364@01 $Snap)
(assert (= $t@364@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@328@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@365@01 $Struct)
(assert (=
  self@365@01
  ($struct_set<$Struct> self@318@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@318@01 11))
    l$havoc@328@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 4
; [then-branch: 56 | False | dead]
; [else-branch: 56 | True | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 56 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 54 | $struct_get[Int]($struct_loc[Int](msg@314@01, 0)) == $struct_get[Int]($struct_loc[Int](self@363@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@314@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@363@01 1))))
(pop) ; 3
; [eval] !!(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] !(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@314@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@363@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@314@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@363@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | $struct_get[Int]($struct_loc[Int](msg@314@01, 0)) == $struct_get[Int]($struct_loc[Int](self@363@01, 1)) | live]
; [else-branch: 57 | $struct_get[Int]($struct_loc[Int](msg@314@01, 0)) != $struct_get[Int]($struct_loc[Int](self@363@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 57 | $struct_get[Int]($struct_loc[Int](msg@314@01, 0)) == $struct_get[Int]($struct_loc[Int](self@363@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@314@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@363@01 1))))
; [eval] !(($struct_get($struct_loc(msg, 1)): Int) == ($struct_get($struct_loc(self, 2)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@314@01 1))
  ($struct_get<Int> ($struct_loc<Int> self@363@01 2)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@314@01 1))
    ($struct_get<Int> ($struct_loc<Int> self@363@01 2))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 58 | $struct_get[Int]($struct_loc[Int](msg@314@01, 1)) != $struct_get[Int]($struct_loc[Int](self@363@01, 2)) | live]
; [else-branch: 58 | $struct_get[Int]($struct_loc[Int](msg@314@01, 1)) == $struct_get[Int]($struct_loc[Int](self@363@01, 2)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 58 | $struct_get[Int]($struct_loc[Int](msg@314@01, 1)) != $struct_get[Int]($struct_loc[Int](self@363@01, 2))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@314@01 1))
    ($struct_get<Int> ($struct_loc<Int> self@363@01 2)))))
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
; [then-branch: 59 | True | live]
; [else-branch: 59 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 59 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@366@01 $Snap)
(assert (= $t@366@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@328@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@367@01 $Struct)
(assert (=
  self@367@01
  ($struct_set<$Struct> self@318@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@318@01 11))
    l$havoc@328@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 5
; [then-branch: 60 | False | dead]
; [else-branch: 60 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 60 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 58 | $struct_get[Int]($struct_loc[Int](msg@314@01, 1)) == $struct_get[Int]($struct_loc[Int](self@363@01, 2))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@314@01 1))
  ($struct_get<Int> ($struct_loc<Int> self@363@01 2))))
(pop) ; 4
; [eval] !!(($struct_get($struct_loc(msg, 1)): Int) == ($struct_get($struct_loc(self, 2)): Int))
; [eval] !(($struct_get($struct_loc(msg, 1)): Int) == ($struct_get($struct_loc(self, 2)): Int))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@314@01 1))
    ($struct_get<Int> ($struct_loc<Int> self@363@01 2))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@314@01 1))
  ($struct_get<Int> ($struct_loc<Int> self@363@01 2)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 61 | $struct_get[Int]($struct_loc[Int](msg@314@01, 1)) == $struct_get[Int]($struct_loc[Int](self@363@01, 2)) | live]
; [else-branch: 61 | $struct_get[Int]($struct_loc[Int](msg@314@01, 1)) != $struct_get[Int]($struct_loc[Int](self@363@01, 2)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 61 | $struct_get[Int]($struct_loc[Int](msg@314@01, 1)) == $struct_get[Int]($struct_loc[Int](self@363@01, 2))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@314@01 1))
  ($struct_get<Int> ($struct_loc<Int> self@363@01 2))))
; [eval] !($struct_get($struct_loc(self, 6)): Bool)
; [eval] ($struct_get($struct_loc(self, 6)): Bool)
; [eval] $struct_loc(self, 6)
(push) ; 5
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 6))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 6)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 62 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 6))) | live]
; [else-branch: 62 | $struct_get[Bool]($struct_loc[Int](self@363@01, 6)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 62 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 6)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 6))))
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
; 0.00s
; (get-info :all-statistics)
; [then-branch: 63 | True | live]
; [else-branch: 63 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 63 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@368@01 $Snap)
(assert (= $t@368@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@328@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@369@01 $Struct)
(assert (=
  self@369@01
  ($struct_set<$Struct> self@318@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@318@01 11))
    l$havoc@328@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 6
; [then-branch: 64 | False | dead]
; [else-branch: 64 | True | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 64 | True]
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 62 | $struct_get[Bool]($struct_loc[Int](self@363@01, 6))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@363@01 6)))
(pop) ; 5
; [eval] !!($struct_get($struct_loc(self, 6)): Bool)
; [eval] !($struct_get($struct_loc(self, 6)): Bool)
; [eval] ($struct_get($struct_loc(self, 6)): Bool)
; [eval] $struct_loc(self, 6)
(push) ; 5
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 6)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 6))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 65 | $struct_get[Bool]($struct_loc[Int](self@363@01, 6)) | live]
; [else-branch: 65 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 6))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 65 | $struct_get[Bool]($struct_loc[Int](self@363@01, 6))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@363@01 6)))
; [exec]
; self := ($struct_set(self, 7, true): $Struct)
; [eval] ($struct_set(self, 7, true): $Struct)
(declare-const self@370@01 $Struct)
(assert (= self@370@01 ($struct_set<$Struct> self@363@01 7 true)))
; [exec]
; label return
(push) ; 6
(set-option :timeout 10)
(assert (not (not $out_of_gas@327@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not $out_of_gas@327@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 66 | $out_of_gas@327@01 | live]
; [else-branch: 66 | !($out_of_gas@327@01) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 66 | $out_of_gas@327@01]
(assert $out_of_gas@327@01)
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
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 67 | True | live]
; [else-branch: 67 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 67 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@371@01 $Snap)
(assert (= $t@371@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@328@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@372@01 $Struct)
(assert (=
  self@372@01
  ($struct_set<$Struct> self@318@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@318@01 11))
    l$havoc@328@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 7
; [then-branch: 68 | False | dead]
; [else-branch: 68 | True | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 68 | True]
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 66 | !($out_of_gas@327@01)]
(assert (not $out_of_gas@327@01))
(pop) ; 6
; [eval] !$out_of_gas
(push) ; 6
(set-option :timeout 10)
(assert (not $out_of_gas@327@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not $out_of_gas@327@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 69 | !($out_of_gas@327@01) | live]
; [else-branch: 69 | $out_of_gas@327@01 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 69 | !($out_of_gas@327@01)]
(assert (not $out_of_gas@327@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 70 | False | dead]
; [else-branch: 70 | True | live]
(push) ; 7
; [else-branch: 70 | True]
(pop) ; 7
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
; [exec]
; inhale l$havoc >= 0
(declare-const $t@373@01 $Snap)
(assert (= $t@373@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@328@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@374@01 $Struct)
(assert (=
  self@374@01
  ($struct_set<$Struct> self@370@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@370@01 11))
    l$havoc@328@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 7
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 69 | $out_of_gas@327@01]
(assert $out_of_gas@327@01)
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 65 | !($struct_get[Bool]($struct_loc[Int](self@363@01, 6)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@363@01 6))))
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 61 | $struct_get[Int]($struct_loc[Int](msg@314@01, 1)) != $struct_get[Int]($struct_loc[Int](self@363@01, 2))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@314@01 1))
    ($struct_get<Int> ($struct_loc<Int> self@363@01 2)))))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 57 | $struct_get[Int]($struct_loc[Int](msg@314@01, 0)) != $struct_get[Int]($struct_loc[Int](self@363@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@314@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@363@01 1)))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$set_data ----------
(declare-const l$_data@375@01 Seq<Int>)
(declare-const $succ@376@01 Bool)
(declare-const l$_data@377@01 Seq<Int>)
(declare-const $succ@378@01 Bool)
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
(declare-const msg@379@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@380@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@381@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@382@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@383@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@384@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@385@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@386@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@387@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@388@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@389@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@390@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@391@01 Bool)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@392@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@393@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@394@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@395@01 $Snap)
(assert (= $t@395@01 ($Snap.combine ($Snap.first $t@395@01) ($Snap.second $t@395@01))))
(assert (= ($Snap.first $t@395@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@383@01 0))))
(assert (= ($Snap.second $t@395@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@383@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@396@01 $Snap)
(assert (= $t@396@01 ($Snap.combine ($Snap.first $t@396@01) ($Snap.second $t@396@01))))
(assert (= ($Snap.first $t@396@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@383@01 1))))
(assert (= ($Snap.second $t@396@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@383@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@397@01 $Snap)
(assert (= $t@397@01 ($Snap.combine ($Snap.first $t@397@01) ($Snap.second $t@397@01))))
(assert (= ($Snap.first $t@397@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@383@01 2))))
(assert (= ($Snap.second $t@397@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@383@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
(declare-const $t@398@01 $Snap)
(assert (= $t@398@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 3)): Seq[Int])
; [eval] $struct_loc(self, 3)
(assert (<= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@383@01 3))) 4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
(declare-const $t@399@01 $Snap)
(assert (= $t@399@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $struct_loc(self, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@383@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
(declare-const $t@400@01 $Snap)
(assert (= $t@400@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 5)): Seq[Int])
; [eval] $struct_loc(self, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@383@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 10)): Int) &&
;   ($struct_get($struct_loc(self, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@401@01 $Snap)
(assert (= $t@401@01 ($Snap.combine ($Snap.first $t@401@01) ($Snap.second $t@401@01))))
(assert (= ($Snap.first $t@401@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@383@01 10))))
(assert (= ($Snap.second $t@401@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@383@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 11)): Int) &&
;   ($struct_get($struct_loc(self, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@402@01 $Snap)
(assert (= $t@402@01 ($Snap.combine ($Snap.first $t@402@01) ($Snap.second $t@402@01))))
(assert (= ($Snap.first $t@402@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 11)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@383@01 11))))
(assert (= ($Snap.second $t@402@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@383@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 12)): Int) &&
;   ($struct_get($struct_loc(self, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@403@01 $Snap)
(assert (= $t@403@01 ($Snap.combine ($Snap.first $t@403@01) ($Snap.second $t@403@01))))
(assert (= ($Snap.first $t@403@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@383@01 12))))
(assert (= ($Snap.second $t@403@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@383@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@404@01 $Snap)
(assert (= $t@404@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@405@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(push) ; 4
; [then-branch: 72 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@383@01, 14)), $q3@405@01)) | live]
; [else-branch: 72 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@383@01, 14)), $q3@405@01) | live]
(push) ; 5
; [then-branch: 72 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@383@01, 14)), $q3@405@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 14)) $q3@405@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 72 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@383@01, 14)), $q3@405@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 14)) $q3@405@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 14)) $q3@405@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 14)) $q3@405@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@405@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 14)) $q3@405@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 14)) $q3@405@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 14)) $q3@405@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1096@11@1096@348-aux|)))
(assert (forall (($q3@405@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 14)) $q3@405@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 14)) $q3@405@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 14)) $q3@405@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1096@11@1096@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $t@406@01 $Snap)
(assert (= $t@406@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $q3@407@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@407@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 14)) $q3@407@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 14)) $q3@407@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1097@11@1097@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@408@01 $Snap)
(assert (= $t@408@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@409@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(push) ; 4
; [then-branch: 73 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@383@01, 15)), $q4@409@01)) | live]
; [else-branch: 73 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@383@01, 15)), $q4@409@01) | live]
(push) ; 5
; [then-branch: 73 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@383@01, 15)), $q4@409@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 15)) $q4@409@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 73 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@383@01, 15)), $q4@409@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 15)) $q4@409@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 15)) $q4@409@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 15)) $q4@409@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@409@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 15)) $q4@409@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 15)) $q4@409@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 15)) $q4@409@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1098@11@1098@348-aux|)))
(assert (forall (($q4@409@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 15)) $q4@409@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 15)) $q4@409@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 15)) $q4@409@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1098@11@1098@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $t@410@01 $Snap)
(assert (= $t@410@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $q4@411@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
; [eval] ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@411@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 15)) $q4@411@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@383@01 15)) $q4@411@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1099@11@1099@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@412@01 $Snap)
(assert (= $t@412@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@383@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@413@01 $Snap)
(assert (= $t@413@01 ($Snap.combine ($Snap.first $t@413@01) ($Snap.second $t@413@01))))
(assert (= ($Snap.first $t@413@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@413@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |l$_data| <= 4096
(declare-const $t@414@01 $Snap)
(assert (= $t@414@01 $Snap.unit))
; [eval] |l$_data| <= 4096
; [eval] |l$_data|
(assert (<= (Seq_length l$_data@377@01) 4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@415@01 $Snap)
(assert (= $t@415@01 ($Snap.combine ($Snap.first $t@415@01) ($Snap.second $t@415@01))))
(assert (= ($Snap.first $t@415@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@380@01 0))))
(assert (= ($Snap.second $t@415@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@380@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@416@01 $Snap)
(assert (= $t@416@01 ($Snap.combine ($Snap.first $t@416@01) ($Snap.second $t@416@01))))
(assert (= ($Snap.first $t@416@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@380@01 1))))
(assert (= ($Snap.second $t@416@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@380@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@417@01 $Snap)
(assert (= $t@417@01 ($Snap.combine ($Snap.first $t@417@01) ($Snap.second $t@417@01))))
(assert (= ($Snap.first $t@417@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@380@01 2))))
(assert (= ($Snap.second $t@417@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@380@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@418@01 $Snap)
(assert (= $t@418@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@380@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@419@01 $Snap)
(assert (= $t@419@01 ($Snap.combine ($Snap.first $t@419@01) ($Snap.second $t@419@01))))
(assert (= ($Snap.first $t@419@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@380@01 4))))
(assert (= ($Snap.second $t@419@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@380@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@420@01 $Snap)
(assert (= $t@420@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@380@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@421@01 $Snap)
(assert (= $t@421@01 ($Snap.combine ($Snap.first $t@421@01) ($Snap.second $t@421@01))))
(assert (= ($Snap.first $t@421@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@379@01 0))))
(assert (= ($Snap.second $t@421@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@379@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@422@01 $Snap)
(assert (= $t@422@01 ($Snap.combine ($Snap.first $t@422@01) ($Snap.second $t@422@01))))
(assert (= ($Snap.first $t@422@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@379@01 1))))
(assert (= ($Snap.second $t@422@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@379@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@423@01 $Snap)
(assert (= $t@423@01 ($Snap.combine ($Snap.first $t@423@01) ($Snap.second $t@423@01))))
(assert (= ($Snap.first $t@423@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@379@01 2))))
(assert (= ($Snap.second $t@423@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@379@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@424@01 $Snap)
(assert (= $t@424@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@379@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@425@01 $Snap)
(assert (= $t@425@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@379@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $t@426@01 $Snap)
(assert (= $t@426@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $a@427@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
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
(declare-const $t@428@01 $Snap)
(assert (= $t@428@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@379@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] !(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@379@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@383@01 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@379@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@383@01 0))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 74 | $struct_get[Int]($struct_loc[Int](msg@379@01, 0)) != $struct_get[Int]($struct_loc[Int](self@383@01, 0)) | live]
; [else-branch: 74 | $struct_get[Int]($struct_loc[Int](msg@379@01, 0)) == $struct_get[Int]($struct_loc[Int](self@383@01, 0)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 74 | $struct_get[Int]($struct_loc[Int](msg@379@01, 0)) != $struct_get[Int]($struct_loc[Int](self@383@01, 0))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@379@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@383@01 0)))))
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
; 0.00s
; (get-info :all-statistics)
; [then-branch: 75 | True | live]
; [else-branch: 75 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 75 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@429@01 $Snap)
(assert (= $t@429@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@393@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@430@01 $Struct)
(assert (=
  self@430@01
  ($struct_set<$Struct> self@383@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@383@01 11))
    l$havoc@393@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 4
; [then-branch: 76 | False | dead]
; [else-branch: 76 | True | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 76 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 74 | $struct_get[Int]($struct_loc[Int](msg@379@01, 0)) == $struct_get[Int]($struct_loc[Int](self@383@01, 0))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@379@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@383@01 0))))
(pop) ; 3
; [eval] !!(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 0)): Int))
; [eval] !(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@379@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@383@01 0))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@379@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@383@01 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 77 | $struct_get[Int]($struct_loc[Int](msg@379@01, 0)) == $struct_get[Int]($struct_loc[Int](self@383@01, 0)) | live]
; [else-branch: 77 | $struct_get[Int]($struct_loc[Int](msg@379@01, 0)) != $struct_get[Int]($struct_loc[Int](self@383@01, 0)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 77 | $struct_get[Int]($struct_loc[Int](msg@379@01, 0)) == $struct_get[Int]($struct_loc[Int](self@383@01, 0))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@379@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@383@01 0))))
; [eval] !($struct_get($struct_loc(self, 7)): Bool)
; [eval] ($struct_get($struct_loc(self, 7)): Bool)
; [eval] $struct_loc(self, 7)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@383@01 7))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@383@01 7)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 78 | !($struct_get[Bool]($struct_loc[Int](self@383@01, 7))) | live]
; [else-branch: 78 | $struct_get[Bool]($struct_loc[Int](self@383@01, 7)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 78 | !($struct_get[Bool]($struct_loc[Int](self@383@01, 7)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@383@01 7))))
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
; [then-branch: 79 | True | live]
; [else-branch: 79 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 79 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@431@01 $Snap)
(assert (= $t@431@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@393@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@432@01 $Struct)
(assert (=
  self@432@01
  ($struct_set<$Struct> self@383@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@383@01 11))
    l$havoc@393@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 5
; [then-branch: 80 | False | dead]
; [else-branch: 80 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 80 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 78 | $struct_get[Bool]($struct_loc[Int](self@383@01, 7))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@383@01 7)))
(pop) ; 4
; [eval] !!($struct_get($struct_loc(self, 7)): Bool)
; [eval] !($struct_get($struct_loc(self, 7)): Bool)
; [eval] ($struct_get($struct_loc(self, 7)): Bool)
; [eval] $struct_loc(self, 7)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@383@01 7)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@383@01 7))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 81 | $struct_get[Bool]($struct_loc[Int](self@383@01, 7)) | live]
; [else-branch: 81 | !($struct_get[Bool]($struct_loc[Int](self@383@01, 7))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 81 | $struct_get[Bool]($struct_loc[Int](self@383@01, 7))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@383@01 7)))
; [exec]
; self := ($struct_set(self, 3, l$_data): $Struct)
; [eval] ($struct_set(self, 3, l$_data): $Struct)
(declare-const self@433@01 $Struct)
(assert (= self@433@01 ($struct_set<$Struct> self@383@01 3 l$_data@377@01)))
; [exec]
; self := ($struct_set(self, 8, true): $Struct)
; [eval] ($struct_set(self, 8, true): $Struct)
(declare-const self@434@01 $Struct)
(assert (= self@434@01 ($struct_set<$Struct> self@433@01 8 true)))
; [exec]
; label return
(push) ; 5
(set-option :timeout 10)
(assert (not (not $out_of_gas@392@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not $out_of_gas@392@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 82 | $out_of_gas@392@01 | live]
; [else-branch: 82 | !($out_of_gas@392@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 82 | $out_of_gas@392@01]
(assert $out_of_gas@392@01)
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
; 0.00s
; (get-info :all-statistics)
; [then-branch: 83 | True | live]
; [else-branch: 83 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 83 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@435@01 $Snap)
(assert (= $t@435@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@393@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@436@01 $Struct)
(assert (=
  self@436@01
  ($struct_set<$Struct> self@383@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@383@01 11))
    l$havoc@393@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 6
; [then-branch: 84 | False | dead]
; [else-branch: 84 | True | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 84 | True]
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 82 | !($out_of_gas@392@01)]
(assert (not $out_of_gas@392@01))
(pop) ; 5
; [eval] !$out_of_gas
(push) ; 5
(set-option :timeout 10)
(assert (not $out_of_gas@392@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not $out_of_gas@392@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 85 | !($out_of_gas@392@01) | live]
; [else-branch: 85 | $out_of_gas@392@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 85 | !($out_of_gas@392@01)]
(assert (not $out_of_gas@392@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 86 | False | dead]
; [else-branch: 86 | True | live]
(push) ; 6
; [else-branch: 86 | True]
(pop) ; 6
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 87 | True | live]
; [else-branch: 87 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 87 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@437@01 $Snap)
(assert (= $t@437@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@393@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@438@01 $Struct)
(assert (=
  self@438@01
  ($struct_set<$Struct> self@434@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@434@01 11))
    l$havoc@393@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 6
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 85 | $out_of_gas@392@01]
(assert $out_of_gas@392@01)
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 81 | !($struct_get[Bool]($struct_loc[Int](self@383@01, 7)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@383@01 7))))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 77 | $struct_get[Int]($struct_loc[Int](msg@379@01, 0)) != $struct_get[Int]($struct_loc[Int](self@383@01, 0))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@379@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@383@01 0)))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$confirm_data ----------
(declare-const $succ@439@01 Bool)
(declare-const $succ@440@01 Bool)
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
(declare-const msg@441@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@442@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@443@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@444@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@445@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@446@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@447@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@448@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@449@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@450@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@451@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@452@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@453@01 Bool)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@454@01 Bool)
; [exec]
; var l$havoc: Int
(declare-const l$havoc@455@01 Int)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@456@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@457@01 $Snap)
(assert (= $t@457@01 ($Snap.combine ($Snap.first $t@457@01) ($Snap.second $t@457@01))))
(assert (= ($Snap.first $t@457@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@445@01 0))))
(assert (= ($Snap.second $t@457@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@445@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@458@01 $Snap)
(assert (= $t@458@01 ($Snap.combine ($Snap.first $t@458@01) ($Snap.second $t@458@01))))
(assert (= ($Snap.first $t@458@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@445@01 1))))
(assert (= ($Snap.second $t@458@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@445@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@459@01 $Snap)
(assert (= $t@459@01 ($Snap.combine ($Snap.first $t@459@01) ($Snap.second $t@459@01))))
(assert (= ($Snap.first $t@459@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@445@01 2))))
(assert (= ($Snap.second $t@459@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@445@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
(declare-const $t@460@01 $Snap)
(assert (= $t@460@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 3)): Seq[Int])
; [eval] $struct_loc(self, 3)
(assert (<= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@445@01 3))) 4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
(declare-const $t@461@01 $Snap)
(assert (= $t@461@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $struct_loc(self, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@445@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
(declare-const $t@462@01 $Snap)
(assert (= $t@462@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 5)): Seq[Int])
; [eval] $struct_loc(self, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@445@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 10)): Int) &&
;   ($struct_get($struct_loc(self, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@463@01 $Snap)
(assert (= $t@463@01 ($Snap.combine ($Snap.first $t@463@01) ($Snap.second $t@463@01))))
(assert (= ($Snap.first $t@463@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@445@01 10))))
(assert (= ($Snap.second $t@463@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@445@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 11)): Int) &&
;   ($struct_get($struct_loc(self, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@464@01 $Snap)
(assert (= $t@464@01 ($Snap.combine ($Snap.first $t@464@01) ($Snap.second $t@464@01))))
(assert (= ($Snap.first $t@464@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 11)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@445@01 11))))
(assert (= ($Snap.second $t@464@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@445@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 12)): Int) &&
;   ($struct_get($struct_loc(self, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@465@01 $Snap)
(assert (= $t@465@01 ($Snap.combine ($Snap.first $t@465@01) ($Snap.second $t@465@01))))
(assert (= ($Snap.first $t@465@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@445@01 12))))
(assert (= ($Snap.second $t@465@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@445@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@466@01 $Snap)
(assert (= $t@466@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@467@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(push) ; 4
; [then-branch: 88 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@445@01, 14)), $q3@467@01)) | live]
; [else-branch: 88 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@445@01, 14)), $q3@467@01) | live]
(push) ; 5
; [then-branch: 88 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@445@01, 14)), $q3@467@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 14)) $q3@467@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 88 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@445@01, 14)), $q3@467@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 14)) $q3@467@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 14)) $q3@467@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 14)) $q3@467@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@467@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 14)) $q3@467@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 14)) $q3@467@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 14)) $q3@467@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1191@11@1191@348-aux|)))
(assert (forall (($q3@467@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 14)) $q3@467@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 14)) $q3@467@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 14)) $q3@467@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1191@11@1191@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $t@468@01 $Snap)
(assert (= $t@468@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $q3@469@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@469@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 14)) $q3@469@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 14)) $q3@469@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1192@11@1192@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@470@01 $Snap)
(assert (= $t@470@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@471@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(push) ; 4
; [then-branch: 89 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@445@01, 15)), $q4@471@01)) | live]
; [else-branch: 89 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@445@01, 15)), $q4@471@01) | live]
(push) ; 5
; [then-branch: 89 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@445@01, 15)), $q4@471@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 15)) $q4@471@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 89 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@445@01, 15)), $q4@471@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 15)) $q4@471@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 15)) $q4@471@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 15)) $q4@471@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@471@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 15)) $q4@471@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 15)) $q4@471@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 15)) $q4@471@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1193@11@1193@348-aux|)))
(assert (forall (($q4@471@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 15)) $q4@471@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 15)) $q4@471@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 15)) $q4@471@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1193@11@1193@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $t@472@01 $Snap)
(assert (= $t@472@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $q4@473@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
; [eval] ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@473@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 15)) $q4@473@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@445@01 15)) $q4@473@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1194@11@1194@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@474@01 $Snap)
(assert (= $t@474@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@445@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@475@01 $Snap)
(assert (= $t@475@01 ($Snap.combine ($Snap.first $t@475@01) ($Snap.second $t@475@01))))
(assert (= ($Snap.first $t@475@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@475@01) $Snap.unit))
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
(declare-const $t@476@01 $Snap)
(assert (= $t@476@01 ($Snap.combine ($Snap.first $t@476@01) ($Snap.second $t@476@01))))
(assert (= ($Snap.first $t@476@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@442@01 0))))
(assert (= ($Snap.second $t@476@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@442@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@477@01 $Snap)
(assert (= $t@477@01 ($Snap.combine ($Snap.first $t@477@01) ($Snap.second $t@477@01))))
(assert (= ($Snap.first $t@477@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@442@01 1))))
(assert (= ($Snap.second $t@477@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@442@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@478@01 $Snap)
(assert (= $t@478@01 ($Snap.combine ($Snap.first $t@478@01) ($Snap.second $t@478@01))))
(assert (= ($Snap.first $t@478@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@442@01 2))))
(assert (= ($Snap.second $t@478@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@442@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@479@01 $Snap)
(assert (= $t@479@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@442@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@480@01 $Snap)
(assert (= $t@480@01 ($Snap.combine ($Snap.first $t@480@01) ($Snap.second $t@480@01))))
(assert (= ($Snap.first $t@480@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@442@01 4))))
(assert (= ($Snap.second $t@480@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@442@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@481@01 $Snap)
(assert (= $t@481@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@442@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@482@01 $Snap)
(assert (= $t@482@01 ($Snap.combine ($Snap.first $t@482@01) ($Snap.second $t@482@01))))
(assert (= ($Snap.first $t@482@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@441@01 0))))
(assert (= ($Snap.second $t@482@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@441@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@483@01 $Snap)
(assert (= $t@483@01 ($Snap.combine ($Snap.first $t@483@01) ($Snap.second $t@483@01))))
(assert (= ($Snap.first $t@483@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@441@01 1))))
(assert (= ($Snap.second $t@483@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@441@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@484@01 $Snap)
(assert (= $t@484@01 ($Snap.combine ($Snap.first $t@484@01) ($Snap.second $t@484@01))))
(assert (= ($Snap.first $t@484@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@441@01 2))))
(assert (= ($Snap.second $t@484@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@441@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@485@01 $Snap)
(assert (= $t@485@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@441@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@486@01 $Snap)
(assert (= $t@486@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@441@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $t@487@01 $Snap)
(assert (= $t@487@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $a@488@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
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
(declare-const $t@489@01 $Snap)
(assert (= $t@489@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@441@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] !(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@441@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@445@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@441@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@445@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 90 | $struct_get[Int]($struct_loc[Int](msg@441@01, 0)) != $struct_get[Int]($struct_loc[Int](self@445@01, 1)) | live]
; [else-branch: 90 | $struct_get[Int]($struct_loc[Int](msg@441@01, 0)) == $struct_get[Int]($struct_loc[Int](self@445@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 90 | $struct_get[Int]($struct_loc[Int](msg@441@01, 0)) != $struct_get[Int]($struct_loc[Int](self@445@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@441@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@445@01 1)))))
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
; 0.00s
; (get-info :all-statistics)
; [then-branch: 91 | True | live]
; [else-branch: 91 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 91 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@490@01 $Snap)
(assert (= $t@490@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@455@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@491@01 $Struct)
(assert (=
  self@491@01
  ($struct_set<$Struct> self@445@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@445@01 11))
    l$havoc@455@01))))
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
; [else-branch: 90 | $struct_get[Int]($struct_loc[Int](msg@441@01, 0)) == $struct_get[Int]($struct_loc[Int](self@445@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@441@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@445@01 1))))
(pop) ; 3
; [eval] !!(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] !(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@441@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@445@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@441@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@445@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 93 | $struct_get[Int]($struct_loc[Int](msg@441@01, 0)) == $struct_get[Int]($struct_loc[Int](self@445@01, 1)) | live]
; [else-branch: 93 | $struct_get[Int]($struct_loc[Int](msg@441@01, 0)) != $struct_get[Int]($struct_loc[Int](self@445@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 93 | $struct_get[Int]($struct_loc[Int](msg@441@01, 0)) == $struct_get[Int]($struct_loc[Int](self@445@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@441@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@445@01 1))))
; [eval] !($struct_get($struct_loc(self, 8)): Bool)
; [eval] ($struct_get($struct_loc(self, 8)): Bool)
; [eval] $struct_loc(self, 8)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@445@01 8))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@445@01 8)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 94 | !($struct_get[Bool]($struct_loc[Int](self@445@01, 8))) | live]
; [else-branch: 94 | $struct_get[Bool]($struct_loc[Int](self@445@01, 8)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 94 | !($struct_get[Bool]($struct_loc[Int](self@445@01, 8)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@445@01 8))))
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
; [then-branch: 95 | True | live]
; [else-branch: 95 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 95 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@492@01 $Snap)
(assert (= $t@492@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@455@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@493@01 $Struct)
(assert (=
  self@493@01
  ($struct_set<$Struct> self@445@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@445@01 11))
    l$havoc@455@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 5
; [then-branch: 96 | False | dead]
; [else-branch: 96 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 96 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 94 | $struct_get[Bool]($struct_loc[Int](self@445@01, 8))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@445@01 8)))
(pop) ; 4
; [eval] !!($struct_get($struct_loc(self, 8)): Bool)
; [eval] !($struct_get($struct_loc(self, 8)): Bool)
; [eval] ($struct_get($struct_loc(self, 8)): Bool)
; [eval] $struct_loc(self, 8)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@445@01 8)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@445@01 8))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 97 | $struct_get[Bool]($struct_loc[Int](self@445@01, 8)) | live]
; [else-branch: 97 | !($struct_get[Bool]($struct_loc[Int](self@445@01, 8))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 97 | $struct_get[Bool]($struct_loc[Int](self@445@01, 8))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@445@01 8)))
; [exec]
; self := ($struct_set(self, 9, true): $Struct)
; [eval] ($struct_set(self, 9, true): $Struct)
(declare-const self@494@01 $Struct)
(assert (= self@494@01 ($struct_set<$Struct> self@445@01 9 true)))
; [exec]
; label return
(push) ; 5
(set-option :timeout 10)
(assert (not (not $out_of_gas@454@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not $out_of_gas@454@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 98 | $out_of_gas@454@01 | live]
; [else-branch: 98 | !($out_of_gas@454@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 98 | $out_of_gas@454@01]
(assert $out_of_gas@454@01)
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
; 0.00s
; (get-info :all-statistics)
; [then-branch: 99 | True | live]
; [else-branch: 99 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 99 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@495@01 $Snap)
(assert (= $t@495@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@455@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@496@01 $Struct)
(assert (=
  self@496@01
  ($struct_set<$Struct> self@445@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@445@01 11))
    l$havoc@455@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 6
; [then-branch: 100 | False | dead]
; [else-branch: 100 | True | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 100 | True]
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 98 | !($out_of_gas@454@01)]
(assert (not $out_of_gas@454@01))
(pop) ; 5
; [eval] !$out_of_gas
(push) ; 5
(set-option :timeout 10)
(assert (not $out_of_gas@454@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not $out_of_gas@454@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 101 | !($out_of_gas@454@01) | live]
; [else-branch: 101 | $out_of_gas@454@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 101 | !($out_of_gas@454@01)]
(assert (not $out_of_gas@454@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 102 | False | dead]
; [else-branch: 102 | True | live]
(push) ; 6
; [else-branch: 102 | True]
(pop) ; 6
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 103 | True | live]
; [else-branch: 103 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 103 | True]
; [exec]
; inhale l$havoc >= 0
(declare-const $t@497@01 $Snap)
(assert (= $t@497@01 $Snap.unit))
; [eval] l$havoc >= 0
(assert (>= l$havoc@455@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@498@01 $Struct)
(assert (=
  self@498@01
  ($struct_set<$Struct> self@494@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@494@01 11))
    l$havoc@455@01))))
; [exec]
; $contracts := l$havoc$1
(pop) ; 6
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 101 | $out_of_gas@454@01]
(assert $out_of_gas@454@01)
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 97 | !($struct_get[Bool]($struct_loc[Int](self@445@01, 8)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@445@01 8))))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 93 | $struct_get[Int]($struct_loc[Int](msg@441@01, 0)) != $struct_get[Int]($struct_loc[Int](self@445@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@441@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@445@01 1)))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$reject_data ----------
(declare-const l$_key@499@01 Seq<Int>)
(declare-const $succ@500@01 Bool)
(declare-const l$_key@501@01 Seq<Int>)
(declare-const $succ@502@01 Bool)
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
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@516@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@517@01 Bool)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@518@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@519@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@520@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@521@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@522@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@523@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@524@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@525@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@526@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@527@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@528@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@529@01 $Snap)
(assert (= $t@529@01 ($Snap.combine ($Snap.first $t@529@01) ($Snap.second $t@529@01))))
(assert (= ($Snap.first $t@529@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@507@01 0))))
(assert (= ($Snap.second $t@529@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@507@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@530@01 $Snap)
(assert (= $t@530@01 ($Snap.combine ($Snap.first $t@530@01) ($Snap.second $t@530@01))))
(assert (= ($Snap.first $t@530@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@507@01 1))))
(assert (= ($Snap.second $t@530@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@507@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@531@01 $Snap)
(assert (= $t@531@01 ($Snap.combine ($Snap.first $t@531@01) ($Snap.second $t@531@01))))
(assert (= ($Snap.first $t@531@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@507@01 2))))
(assert (= ($Snap.second $t@531@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@507@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
(declare-const $t@532@01 $Snap)
(assert (= $t@532@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 3)): Seq[Int])
; [eval] $struct_loc(self, 3)
(assert (<= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@507@01 3))) 4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
(declare-const $t@533@01 $Snap)
(assert (= $t@533@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $struct_loc(self, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@507@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
(declare-const $t@534@01 $Snap)
(assert (= $t@534@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 5)): Seq[Int])
; [eval] $struct_loc(self, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@507@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 10)): Int) &&
;   ($struct_get($struct_loc(self, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@535@01 $Snap)
(assert (= $t@535@01 ($Snap.combine ($Snap.first $t@535@01) ($Snap.second $t@535@01))))
(assert (= ($Snap.first $t@535@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@507@01 10))))
(assert (= ($Snap.second $t@535@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@507@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 11)): Int) &&
;   ($struct_get($struct_loc(self, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@536@01 $Snap)
(assert (= $t@536@01 ($Snap.combine ($Snap.first $t@536@01) ($Snap.second $t@536@01))))
(assert (= ($Snap.first $t@536@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 11)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@507@01 11))))
(assert (= ($Snap.second $t@536@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@507@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 12)): Int) &&
;   ($struct_get($struct_loc(self, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@537@01 $Snap)
(assert (= $t@537@01 ($Snap.combine ($Snap.first $t@537@01) ($Snap.second $t@537@01))))
(assert (= ($Snap.first $t@537@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@507@01 12))))
(assert (= ($Snap.second $t@537@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@507@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@538@01 $Snap)
(assert (= $t@538@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@539@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(push) ; 4
; [then-branch: 104 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 14)), $q3@539@01)) | live]
; [else-branch: 104 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 14)), $q3@539@01) | live]
(push) ; 5
; [then-branch: 104 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 14)), $q3@539@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 14)) $q3@539@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 104 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 14)), $q3@539@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 14)) $q3@539@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 14)) $q3@539@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 14)) $q3@539@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@539@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 14)) $q3@539@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 14)) $q3@539@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 14)) $q3@539@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1293@11@1293@348-aux|)))
(assert (forall (($q3@539@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 14)) $q3@539@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 14)) $q3@539@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 14)) $q3@539@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1293@11@1293@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $t@540@01 $Snap)
(assert (= $t@540@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $q3@541@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@541@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 14)) $q3@541@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 14)) $q3@541@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1294@11@1294@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@542@01 $Snap)
(assert (= $t@542@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@543@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(push) ; 4
; [then-branch: 105 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 15)), $q4@543@01)) | live]
; [else-branch: 105 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 15)), $q4@543@01) | live]
(push) ; 5
; [then-branch: 105 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 15)), $q4@543@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 15)) $q4@543@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 105 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@507@01, 15)), $q4@543@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 15)) $q4@543@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 15)) $q4@543@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 15)) $q4@543@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@543@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 15)) $q4@543@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 15)) $q4@543@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 15)) $q4@543@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1295@11@1295@348-aux|)))
(assert (forall (($q4@543@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 15)) $q4@543@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 15)) $q4@543@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 15)) $q4@543@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1295@11@1295@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $t@544@01 $Snap)
(assert (= $t@544@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $q4@545@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
; [eval] ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@545@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 15)) $q4@545@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@507@01 15)) $q4@545@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1296@11@1296@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@546@01 $Snap)
(assert (= $t@546@01 $Snap.unit))
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
(declare-const $t@547@01 $Snap)
(assert (= $t@547@01 ($Snap.combine ($Snap.first $t@547@01) ($Snap.second $t@547@01))))
(assert (= ($Snap.first $t@547@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@547@01) $Snap.unit))
; [eval] $self_address() <= 1461501637330902918203684832716283019655932542975
; [eval] $self_address()
(assert (<=
  (as $self_address<Int>  Int)
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |l$_key| == 32
(declare-const $t@548@01 $Snap)
(assert (= $t@548@01 $Snap.unit))
; [eval] |l$_key| == 32
; [eval] |l$_key|
(assert (= (Seq_length l$_key@501@01) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 0)): Int) &&
;   ($struct_get($struct_loc(block, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@549@01 $Snap)
(assert (= $t@549@01 ($Snap.combine ($Snap.first $t@549@01) ($Snap.second $t@549@01))))
(assert (= ($Snap.first $t@549@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@504@01 0))))
(assert (= ($Snap.second $t@549@01) $Snap.unit))
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
(declare-const $t@550@01 $Snap)
(assert (= $t@550@01 ($Snap.combine ($Snap.first $t@550@01) ($Snap.second $t@550@01))))
(assert (= ($Snap.first $t@550@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@504@01 1))))
(assert (= ($Snap.second $t@550@01) $Snap.unit))
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
(declare-const $t@551@01 $Snap)
(assert (= $t@551@01 ($Snap.combine ($Snap.first $t@551@01) ($Snap.second $t@551@01))))
(assert (= ($Snap.first $t@551@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@504@01 2))))
(assert (= ($Snap.second $t@551@01) $Snap.unit))
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
(declare-const $t@552@01 $Snap)
(assert (= $t@552@01 $Snap.unit))
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
(declare-const $t@553@01 $Snap)
(assert (= $t@553@01 ($Snap.combine ($Snap.first $t@553@01) ($Snap.second $t@553@01))))
(assert (= ($Snap.first $t@553@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@504@01 4))))
(assert (= ($Snap.second $t@553@01) $Snap.unit))
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
(declare-const $t@554@01 $Snap)
(assert (= $t@554@01 $Snap.unit))
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
(declare-const $t@555@01 $Snap)
(assert (= $t@555@01 ($Snap.combine ($Snap.first $t@555@01) ($Snap.second $t@555@01))))
(assert (= ($Snap.first $t@555@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@503@01 0))))
(assert (= ($Snap.second $t@555@01) $Snap.unit))
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
(declare-const $t@556@01 $Snap)
(assert (= $t@556@01 ($Snap.combine ($Snap.first $t@556@01) ($Snap.second $t@556@01))))
(assert (= ($Snap.first $t@556@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@503@01 1))))
(assert (= ($Snap.second $t@556@01) $Snap.unit))
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
(declare-const $t@557@01 $Snap)
(assert (= $t@557@01 ($Snap.combine ($Snap.first $t@557@01) ($Snap.second $t@557@01))))
(assert (= ($Snap.first $t@557@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@503@01 2))))
(assert (= ($Snap.second $t@557@01) $Snap.unit))
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
(declare-const $t@558@01 $Snap)
(assert (= $t@558@01 $Snap.unit))
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
(declare-const $t@559@01 $Snap)
(assert (= $t@559@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@503@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $t@560@01 $Snap)
(assert (= $t@560@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $a@561@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
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
(declare-const $t@562@01 $Snap)
(assert (= $t@562@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@503@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] !(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@503@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@507@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@503@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@507@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 106 | $struct_get[Int]($struct_loc[Int](msg@503@01, 0)) != $struct_get[Int]($struct_loc[Int](self@507@01, 1)) | live]
; [else-branch: 106 | $struct_get[Int]($struct_loc[Int](msg@503@01, 0)) == $struct_get[Int]($struct_loc[Int](self@507@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 106 | $struct_get[Int]($struct_loc[Int](msg@503@01, 0)) != $struct_get[Int]($struct_loc[Int](self@507@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@503@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@507@01 1)))))
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
; 0.00s
; (get-info :all-statistics)
; [then-branch: 107 | True | live]
; [else-branch: 107 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 107 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@563@01 $Snap)
(assert (= $t@563@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@527@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@564@01 $Struct)
(assert (=
  self@564@01
  ($struct_set<$Struct> self@507@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@507@01 11))
    l$havoc$6@527@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 4
; [then-branch: 108 | False | dead]
; [else-branch: 108 | True | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 108 | True]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 106 | $struct_get[Int]($struct_loc[Int](msg@503@01, 0)) == $struct_get[Int]($struct_loc[Int](self@507@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@503@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@507@01 1))))
(pop) ; 3
; [eval] !!(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] !(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@503@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@507@01 1))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@503@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@507@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 109 | $struct_get[Int]($struct_loc[Int](msg@503@01, 0)) == $struct_get[Int]($struct_loc[Int](self@507@01, 1)) | live]
; [else-branch: 109 | $struct_get[Int]($struct_loc[Int](msg@503@01, 0)) != $struct_get[Int]($struct_loc[Int](self@507@01, 1)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 109 | $struct_get[Int]($struct_loc[Int](msg@503@01, 0)) == $struct_get[Int]($struct_loc[Int](self@507@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@503@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@507@01 1))))
; [eval] !($struct_get($struct_loc(self, 8)): Bool)
; [eval] ($struct_get($struct_loc(self, 8)): Bool)
; [eval] $struct_loc(self, 8)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@507@01 8))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@507@01 8)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 110 | !($struct_get[Bool]($struct_loc[Int](self@507@01, 8))) | live]
; [else-branch: 110 | $struct_get[Bool]($struct_loc[Int](self@507@01, 8)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 110 | !($struct_get[Bool]($struct_loc[Int](self@507@01, 8)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@507@01 8))))
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
; [then-branch: 111 | True | live]
; [else-branch: 111 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 111 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@565@01 $Snap)
(assert (= $t@565@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@527@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@566@01 $Struct)
(assert (=
  self@566@01
  ($struct_set<$Struct> self@507@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@507@01 11))
    l$havoc$6@527@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 5
; [then-branch: 112 | False | dead]
; [else-branch: 112 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 112 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 110 | $struct_get[Bool]($struct_loc[Int](self@507@01, 8))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@507@01 8)))
(pop) ; 4
; [eval] !!($struct_get($struct_loc(self, 8)): Bool)
; [eval] !($struct_get($struct_loc(self, 8)): Bool)
; [eval] ($struct_get($struct_loc(self, 8)): Bool)
; [eval] $struct_loc(self, 8)
(push) ; 4
(set-option :timeout 10)
(assert (not (not ($struct_get<Bool> ($struct_loc<Int> self@507@01 8)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@507@01 8))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 113 | $struct_get[Bool]($struct_loc[Int](self@507@01, 8)) | live]
; [else-branch: 113 | !($struct_get[Bool]($struct_loc[Int](self@507@01, 8))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 113 | $struct_get[Bool]($struct_loc[Int](self@507@01, 8))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@507@01 8)))
; [eval] !($sha256(l$_key) == ($struct_get($struct_loc(self, 4)): Seq[Int]))
; [eval] $sha256(l$_key) == ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $sha256(l$_key)
; [eval] ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $struct_loc(self, 4)
(push) ; 5
(set-option :timeout 10)
(assert (not (Seq_equal
  ($sha256<Seq<Int>> l$_key@501@01)
  ($struct_get<Seq<Int>> ($struct_loc<Int> self@507@01 4)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (Seq_equal
    ($sha256<Seq<Int>> l$_key@501@01)
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@507@01 4))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 114 | !($sha256[Seq[Int]](l$_key@501@01) === $struct_get[Seq[Int]]($struct_loc[Int](self@507@01, 4))) | live]
; [else-branch: 114 | $sha256[Seq[Int]](l$_key@501@01) === $struct_get[Seq[Int]]($struct_loc[Int](self@507@01, 4)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 114 | !($sha256[Seq[Int]](l$_key@501@01) === $struct_get[Seq[Int]]($struct_loc[Int](self@507@01, 4)))]
(assert (not
  (Seq_equal
    ($sha256<Seq<Int>> l$_key@501@01)
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@507@01 4)))))
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
; 0.00s
; (get-info :all-statistics)
; [then-branch: 115 | True | live]
; [else-branch: 115 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 115 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@567@01 $Snap)
(assert (= $t@567@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@527@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@568@01 $Struct)
(assert (=
  self@568@01
  ($struct_set<$Struct> self@507@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@507@01 11))
    l$havoc$6@527@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 6
; [then-branch: 116 | False | dead]
; [else-branch: 116 | True | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 116 | True]
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 114 | $sha256[Seq[Int]](l$_key@501@01) === $struct_get[Seq[Int]]($struct_loc[Int](self@507@01, 4))]
(assert (Seq_equal
  ($sha256<Seq<Int>> l$_key@501@01)
  ($struct_get<Seq<Int>> ($struct_loc<Int> self@507@01 4))))
(pop) ; 5
; [eval] !!($sha256(l$_key) == ($struct_get($struct_loc(self, 4)): Seq[Int]))
; [eval] !($sha256(l$_key) == ($struct_get($struct_loc(self, 4)): Seq[Int]))
; [eval] $sha256(l$_key) == ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $sha256(l$_key)
; [eval] ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $struct_loc(self, 4)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (Seq_equal
    ($sha256<Seq<Int>> l$_key@501@01)
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@507@01 4))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (Seq_equal
  ($sha256<Seq<Int>> l$_key@501@01)
  ($struct_get<Seq<Int>> ($struct_loc<Int> self@507@01 4)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 117 | $sha256[Seq[Int]](l$_key@501@01) === $struct_get[Seq[Int]]($struct_loc[Int](self@507@01, 4)) | live]
; [else-branch: 117 | !($sha256[Seq[Int]](l$_key@501@01) === $struct_get[Seq[Int]]($struct_loc[Int](self@507@01, 4))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 117 | $sha256[Seq[Int]](l$_key@501@01) === $struct_get[Seq[Int]]($struct_loc[Int](self@507@01, 4))]
(assert (Seq_equal
  ($sha256<Seq<Int>> l$_key@501@01)
  ($struct_get<Seq<Int>> ($struct_loc<Int> self@507@01 4))))
; [exec]
; self := ($struct_set(self, 5, l$_key): $Struct)
; [eval] ($struct_set(self, 5, l$_key): $Struct)
(declare-const self@569@01 $Struct)
(assert (= self@569@01 ($struct_set<$Struct> self@507@01 5 l$_key@501@01)))
; [eval] ($struct_get($struct_loc(self, 11)): Int) < ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@569@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@569@01 2))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@569@01 11))
  ($struct_get<Int> ($struct_loc<Int> self@569@01 2)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 118 | $struct_get[Int]($struct_loc[Int](self@569@01, 11)) < $struct_get[Int]($struct_loc[Int](self@569@01, 2)) | live]
; [else-branch: 118 | !($struct_get[Int]($struct_loc[Int](self@569@01, 11)) < $struct_get[Int]($struct_loc[Int](self@569@01, 2))) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 118 | $struct_get[Int]($struct_loc[Int](self@569@01, 11)) < $struct_get[Int]($struct_loc[Int](self@569@01, 2))]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@569@01 11))
  ($struct_get<Int> ($struct_loc<Int> self@569@01 2))))
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
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 119 | True | live]
; [else-branch: 119 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 119 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@570@01 $Snap)
(assert (= $t@570@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@527@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@571@01 $Struct)
(assert (=
  self@571@01
  ($struct_set<$Struct> self@507@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@507@01 11))
    l$havoc$6@527@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 7
; [then-branch: 120 | False | dead]
; [else-branch: 120 | True | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 120 | True]
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 118 | !($struct_get[Int]($struct_loc[Int](self@569@01, 11)) < $struct_get[Int]($struct_loc[Int](self@569@01, 2)))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@569@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@569@01 2)))))
(pop) ; 6
; [eval] !(($struct_get($struct_loc(self, 11)): Int) < ($struct_get($struct_loc(self, 2)): Int))
; [eval] ($struct_get($struct_loc(self, 11)): Int) < ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@569@01 11))
  ($struct_get<Int> ($struct_loc<Int> self@569@01 2)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@569@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@569@01 2))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 121 | !($struct_get[Int]($struct_loc[Int](self@569@01, 11)) < $struct_get[Int]($struct_loc[Int](self@569@01, 2))) | live]
; [else-branch: 121 | $struct_get[Int]($struct_loc[Int](self@569@01, 11)) < $struct_get[Int]($struct_loc[Int](self@569@01, 2)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 121 | !($struct_get[Int]($struct_loc[Int](self@569@01, 11)) < $struct_get[Int]($struct_loc[Int](self@569@01, 2)))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@569@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@569@01 2)))))
; [exec]
; self := ($struct_set(self, 14, ($map_set(($struct_get($struct_loc(self, 14)): $Map[Int, Int]),
;   ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self,
;   14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) +
;   ($struct_get($struct_loc(self, 2)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 14, ($map_set(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 2)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 2)): Int)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@572@01 $Struct)
(assert (=
  self@572@01
  ($struct_set<$Struct> self@569@01 14 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@569@01 14)) ($struct_get<Int> ($struct_loc<Int> msg@503@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@569@01 14)) ($struct_get<Int> ($struct_loc<Int> msg@503@01 0)))
    ($struct_get<Int> ($struct_loc<Int> self@569@01 2)))))))
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) -
;   ($struct_get($struct_loc(self, 2)): Int)): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) - ($struct_get($struct_loc(self, 2)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) - ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@573@01 $Struct)
(assert (=
  self@573@01
  ($struct_set<$Struct> self@572@01 11 (-
    ($struct_get<Int> ($struct_loc<Int> self@572@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@572@01 2))))))
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc
(push) ; 7
(set-option :timeout 10)
(assert (not (not l$send_fail@517@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not l$send_fail@517@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 122 | l$send_fail@517@01 | live]
; [else-branch: 122 | !(l$send_fail@517@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 122 | l$send_fail@517@01]
(assert l$send_fail@517@01)
; [exec]
; inhale acc($failed(($struct_get($struct_loc(msg, 0)): Int)), write)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const $t@574@01 $Snap)
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
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 123 | True | live]
; [else-branch: 123 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 123 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@575@01 $Snap)
(assert (= $t@575@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@527@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@576@01 $Struct)
(assert (=
  self@576@01
  ($struct_set<$Struct> self@507@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@507@01 11))
    l$havoc$6@527@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 8
; [then-branch: 124 | False | dead]
; [else-branch: 124 | True | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 124 | True]
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 122 | !(l$send_fail@517@01)]
(assert (not l$send_fail@517@01))
(pop) ; 7
; [eval] !l$send_fail
(push) ; 7
(set-option :timeout 10)
(assert (not l$send_fail@517@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not l$send_fail@517@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 125 | !(l$send_fail@517@01) | live]
; [else-branch: 125 | l$send_fail@517@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 125 | !(l$send_fail@517@01)]
(assert (not l$send_fail@517@01))
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
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@577@01 $Snap)
(assert (= $t@577@01 ($Snap.combine ($Snap.first $t@577@01) ($Snap.second $t@577@01))))
(assert (= ($Snap.first $t@577@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@521@01 0))))
(assert (= ($Snap.second $t@577@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@521@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@578@01 $Snap)
(assert (= $t@578@01 ($Snap.combine ($Snap.first $t@578@01) ($Snap.second $t@578@01))))
(assert (= ($Snap.first $t@578@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@521@01 1))))
(assert (= ($Snap.second $t@578@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@521@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@579@01 $Snap)
(assert (= $t@579@01 ($Snap.combine ($Snap.first $t@579@01) ($Snap.second $t@579@01))))
(assert (= ($Snap.first $t@579@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@521@01 2))))
(assert (= ($Snap.second $t@579@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@521@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
(declare-const $t@580@01 $Snap)
(assert (= $t@580@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 3)): Seq[Int])
; [eval] $struct_loc(self, 3)
(assert (<=
  (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@521@01 3)))
  4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
(declare-const $t@581@01 $Snap)
(assert (= $t@581@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $struct_loc(self, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@521@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
(declare-const $t@582@01 $Snap)
(assert (= $t@582@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 5)): Seq[Int])
; [eval] $struct_loc(self, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@521@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 10)): Int) &&
;   ($struct_get($struct_loc(self, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@583@01 $Snap)
(assert (= $t@583@01 ($Snap.combine ($Snap.first $t@583@01) ($Snap.second $t@583@01))))
(assert (= ($Snap.first $t@583@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@521@01 10))))
(assert (= ($Snap.second $t@583@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@521@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 11)): Int) &&
;   ($struct_get($struct_loc(self, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@584@01 $Snap)
(assert (= $t@584@01 ($Snap.combine ($Snap.first $t@584@01) ($Snap.second $t@584@01))))
(assert (= ($Snap.first $t@584@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 11)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@521@01 11))))
(assert (= ($Snap.second $t@584@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@521@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 12)): Int) &&
;   ($struct_get($struct_loc(self, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@585@01 $Snap)
(assert (= $t@585@01 ($Snap.combine ($Snap.first $t@585@01) ($Snap.second $t@585@01))))
(assert (= ($Snap.first $t@585@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@521@01 12))))
(assert (= ($Snap.second $t@585@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@521@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@586@01 $Snap)
(assert (= $t@586@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@587@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(push) ; 9
; [then-branch: 126 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@521@01, 14)), $q3@587@01)) | live]
; [else-branch: 126 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@521@01, 14)), $q3@587@01) | live]
(push) ; 10
; [then-branch: 126 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@521@01, 14)), $q3@587@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14)) $q3@587@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 126 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@521@01, 14)), $q3@587@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14)) $q3@587@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14)) $q3@587@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14)) $q3@587@01)))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@587@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14)) $q3@587@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14)) $q3@587@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14)) $q3@587@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1376@11@1376@348-aux|)))
(assert (forall (($q3@587@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14)) $q3@587@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14)) $q3@587@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14)) $q3@587@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1376@11@1376@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $t@588@01 $Snap)
(assert (= $t@588@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $q3@589@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@589@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14)) $q3@589@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14)) $q3@589@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1377@11@1377@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@590@01 $Snap)
(assert (= $t@590@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@591@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(push) ; 9
; [then-branch: 127 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@521@01, 15)), $q4@591@01)) | live]
; [else-branch: 127 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@521@01, 15)), $q4@591@01) | live]
(push) ; 10
; [then-branch: 127 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@521@01, 15)), $q4@591@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 15)) $q4@591@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 127 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@521@01, 15)), $q4@591@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 15)) $q4@591@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 15)) $q4@591@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 15)) $q4@591@01)))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@591@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 15)) $q4@591@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 15)) $q4@591@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 15)) $q4@591@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1378@11@1378@348-aux|)))
(assert (forall (($q4@591@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 15)) $q4@591@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 15)) $q4@591@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 15)) $q4@591@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1378@11@1378@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $t@592@01 $Snap)
(assert (= $t@592@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $q4@593@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
; [eval] ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@593@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 15)) $q4@593@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 15)) $q4@593@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1379@11@1379@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@594@01 $Snap)
(assert (= $t@594@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@521@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $t@595@01 $Snap)
(assert (= $t@595@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $a@596@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 14)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 14)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@596@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14)) $a@596@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@573@01 14)) $a@596@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@521@01 14)) $a@596@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1382@11@1382@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@523@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not l$no_reentrant_call@523@01))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 128 | l$no_reentrant_call@523@01 | live]
; [else-branch: 128 | !(l$no_reentrant_call@523@01) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 128 | l$no_reentrant_call@523@01]
(assert l$no_reentrant_call@523@01)
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
(push) ; 9
(set-option :timeout 10)
(assert (not (not $out_of_gas@526@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not $out_of_gas@526@01))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 129 | $out_of_gas@526@01 | live]
; [else-branch: 129 | !($out_of_gas@526@01) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 129 | $out_of_gas@526@01]
(assert $out_of_gas@526@01)
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
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 130 | True | live]
; [else-branch: 130 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 130 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@597@01 $Snap)
(assert (= $t@597@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@527@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@598@01 $Struct)
(assert (=
  self@598@01
  ($struct_set<$Struct> self@507@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@507@01 11))
    l$havoc$6@527@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 10
; [then-branch: 131 | False | dead]
; [else-branch: 131 | True | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 131 | True]
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 129 | !($out_of_gas@526@01)]
(assert (not $out_of_gas@526@01))
(pop) ; 9
; [eval] !$out_of_gas
(push) ; 9
(set-option :timeout 10)
(assert (not $out_of_gas@526@01))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not $out_of_gas@526@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 132 | !($out_of_gas@526@01) | live]
; [else-branch: 132 | $out_of_gas@526@01 | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 132 | !($out_of_gas@526@01)]
(assert (not $out_of_gas@526@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 133 | False | dead]
; [else-branch: 133 | True | live]
(push) ; 10
; [else-branch: 133 | True]
(pop) ; 10
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 134 | True | live]
; [else-branch: 134 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 134 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@599@01 $Snap)
(assert (= $t@599@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@527@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@600@01 $Struct)
(assert (=
  self@600@01
  ($struct_set<$Struct> self@573@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@573@01 11))
    l$havoc$6@527@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 10
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 132 | $out_of_gas@526@01]
(assert $out_of_gas@526@01)
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 128 | !(l$no_reentrant_call@523@01)]
(assert (not l$no_reentrant_call@523@01))
(pop) ; 8
; [eval] !l$no_reentrant_call
(push) ; 8
(set-option :timeout 10)
(assert (not l$no_reentrant_call@523@01))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@523@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 135 | !(l$no_reentrant_call@523@01) | live]
; [else-branch: 135 | l$no_reentrant_call@523@01 | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 135 | !(l$no_reentrant_call@523@01)]
(assert (not l$no_reentrant_call@523@01))
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
(push) ; 9
(set-option :timeout 10)
(assert (not (not $out_of_gas@526@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not $out_of_gas@526@01))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 136 | $out_of_gas@526@01 | live]
; [else-branch: 136 | !($out_of_gas@526@01) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 136 | $out_of_gas@526@01]
(assert $out_of_gas@526@01)
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
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 137 | True | live]
; [else-branch: 137 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 137 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@601@01 $Snap)
(assert (= $t@601@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@527@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@602@01 $Struct)
(assert (=
  self@602@01
  ($struct_set<$Struct> self@507@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@507@01 11))
    l$havoc$6@527@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 10
; [then-branch: 138 | False | dead]
; [else-branch: 138 | True | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 138 | True]
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 136 | !($out_of_gas@526@01)]
(assert (not $out_of_gas@526@01))
(pop) ; 9
; [eval] !$out_of_gas
(push) ; 9
(set-option :timeout 10)
(assert (not $out_of_gas@526@01))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not $out_of_gas@526@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 139 | !($out_of_gas@526@01) | live]
; [else-branch: 139 | $out_of_gas@526@01 | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 139 | !($out_of_gas@526@01)]
(assert (not $out_of_gas@526@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 140 | False | dead]
; [else-branch: 140 | True | live]
(push) ; 10
; [else-branch: 140 | True]
(pop) ; 10
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 141 | True | live]
; [else-branch: 141 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 141 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@603@01 $Snap)
(assert (= $t@603@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@527@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@604@01 $Struct)
(assert (=
  self@604@01
  ($struct_set<$Struct> l$havoc$2@521@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@521@01 11))
    l$havoc$6@527@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 10
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 139 | $out_of_gas@526@01]
(assert $out_of_gas@526@01)
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 135 | l$no_reentrant_call@523@01]
(assert l$no_reentrant_call@523@01)
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 125 | l$send_fail@517@01]
(assert l$send_fail@517@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 121 | $struct_get[Int]($struct_loc[Int](self@569@01, 11)) < $struct_get[Int]($struct_loc[Int](self@569@01, 2))]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@569@01 11))
  ($struct_get<Int> ($struct_loc<Int> self@569@01 2))))
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 117 | !($sha256[Seq[Int]](l$_key@501@01) === $struct_get[Seq[Int]]($struct_loc[Int](self@507@01, 4)))]
(assert (not
  (Seq_equal
    ($sha256<Seq<Int>> l$_key@501@01)
    ($struct_get<Seq<Int>> ($struct_loc<Int> self@507@01 4)))))
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 113 | !($struct_get[Bool]($struct_loc[Int](self@507@01, 8)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@507@01 8))))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 109 | $struct_get[Int]($struct_loc[Int](msg@503@01, 0)) != $struct_get[Int]($struct_loc[Int](self@507@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@503@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@507@01 1)))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f$withdraw ----------
(declare-const $succ@605@01 Bool)
(declare-const $succ@606@01 Bool)
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
(declare-const msg@607@01 $Struct)
; [exec]
; var block: $Struct
(declare-const block@608@01 $Struct)
; [exec]
; var chain: $Struct
(declare-const chain@609@01 $Struct)
; [exec]
; var tx: $Struct
(declare-const tx@610@01 $Struct)
; [exec]
; var self: $Struct
(declare-const self@611@01 $Struct)
; [exec]
; var $contracts: $Map[Int, $Struct]
(declare-const $contracts@612@01 $Map<Int~_$Struct>)
; [exec]
; var $old_self: $Struct
(declare-const $old_self@613@01 $Struct)
; [exec]
; var $old_$contracts: $Map[Int, $Struct]
(declare-const $old_$contracts@614@01 $Map<Int~_$Struct>)
; [exec]
; var $pre_self: $Struct
(declare-const $pre_self@615@01 $Struct)
; [exec]
; var $pre_$contracts: $Map[Int, $Struct]
(declare-const $pre_$contracts@616@01 $Map<Int~_$Struct>)
; [exec]
; var $issued_self: $Struct
(declare-const $issued_self@617@01 $Struct)
; [exec]
; var $issued_$contracts: $Map[Int, $Struct]
(declare-const $issued_$contracts@618@01 $Map<Int~_$Struct>)
; [exec]
; var $overflow: Bool
(declare-const $overflow@619@01 Bool)
; [exec]
; var l$havoc: $Map[Int, $Struct]
(declare-const l$havoc@620@01 $Map<Int~_$Struct>)
; [exec]
; var l$send_fail: Bool
(declare-const l$send_fail@621@01 Bool)
; [exec]
; var i0$$pre_self: $Struct
(declare-const i0$$pre_self@622@01 $Struct)
; [exec]
; var i0$$pre_$contracts: $Map[Int, $Struct]
(declare-const i0$$pre_$contracts@623@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$1: $Map[Int, $Struct]
(declare-const l$havoc$1@624@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$2: $Struct
(declare-const l$havoc$2@625@01 $Struct)
; [exec]
; var l$havoc$3: $Map[Int, $Struct]
(declare-const l$havoc$3@626@01 $Map<Int~_$Struct>)
; [exec]
; var l$no_reentrant_call: Bool
(declare-const l$no_reentrant_call@627@01 Bool)
; [exec]
; var l$havoc$4: $Map[Int, $Struct]
(declare-const l$havoc$4@628@01 $Map<Int~_$Struct>)
; [exec]
; var l$havoc$5: $Map[Int, $Struct]
(declare-const l$havoc$5@629@01 $Map<Int~_$Struct>)
; [exec]
; var $out_of_gas: Bool
(declare-const $out_of_gas@630@01 Bool)
; [exec]
; var l$havoc$6: Int
(declare-const l$havoc$6@631@01 Int)
; [exec]
; var l$havoc$7: $Map[Int, $Struct]
(declare-const l$havoc$7@632@01 $Map<Int~_$Struct>)
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@633@01 $Snap)
(assert (= $t@633@01 ($Snap.combine ($Snap.first $t@633@01) ($Snap.second $t@633@01))))
(assert (= ($Snap.first $t@633@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@611@01 0))))
(assert (= ($Snap.second $t@633@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@611@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@634@01 $Snap)
(assert (= $t@634@01 ($Snap.combine ($Snap.first $t@634@01) ($Snap.second $t@634@01))))
(assert (= ($Snap.first $t@634@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@611@01 1))))
(assert (= ($Snap.second $t@634@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@611@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@635@01 $Snap)
(assert (= $t@635@01 ($Snap.combine ($Snap.first $t@635@01) ($Snap.second $t@635@01))))
(assert (= ($Snap.first $t@635@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@611@01 2))))
(assert (= ($Snap.second $t@635@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@611@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
(declare-const $t@636@01 $Snap)
(assert (= $t@636@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 3)): Seq[Int])
; [eval] $struct_loc(self, 3)
(assert (<= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@611@01 3))) 4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
(declare-const $t@637@01 $Snap)
(assert (= $t@637@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $struct_loc(self, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@611@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
(declare-const $t@638@01 $Snap)
(assert (= $t@638@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 5)): Seq[Int])
; [eval] $struct_loc(self, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> self@611@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 10)): Int) &&
;   ($struct_get($struct_loc(self, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@639@01 $Snap)
(assert (= $t@639@01 ($Snap.combine ($Snap.first $t@639@01) ($Snap.second $t@639@01))))
(assert (= ($Snap.first $t@639@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@611@01 10))))
(assert (= ($Snap.second $t@639@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@611@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 11)): Int) &&
;   ($struct_get($struct_loc(self, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@640@01 $Snap)
(assert (= $t@640@01 ($Snap.combine ($Snap.first $t@640@01) ($Snap.second $t@640@01))))
(assert (= ($Snap.first $t@640@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 11)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> self@611@01 11))))
(assert (= ($Snap.second $t@640@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 12)): Int) &&
;   ($struct_get($struct_loc(self, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@641@01 $Snap)
(assert (= $t@641@01 ($Snap.combine ($Snap.first $t@641@01) ($Snap.second $t@641@01))))
(assert (= ($Snap.first $t@641@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> self@611@01 12))))
(assert (= ($Snap.second $t@641@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> self@611@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@642@01 $Snap)
(assert (= $t@642@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@643@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(push) ; 4
; [then-branch: 142 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@611@01, 14)), $q3@643@01)) | live]
; [else-branch: 142 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@611@01, 14)), $q3@643@01) | live]
(push) ; 5
; [then-branch: 142 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@611@01, 14)), $q3@643@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) $q3@643@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 142 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@611@01, 14)), $q3@643@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) $q3@643@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) $q3@643@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) $q3@643@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@643@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) $q3@643@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) $q3@643@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) $q3@643@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1465@11@1465@348-aux|)))
(assert (forall (($q3@643@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) $q3@643@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) $q3@643@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) $q3@643@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1465@11@1465@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $t@644@01 $Snap)
(assert (= $t@644@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $q3@645@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@645@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) $q3@645@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) $q3@645@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1466@11@1466@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@646@01 $Snap)
(assert (= $t@646@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@647@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(push) ; 4
; [then-branch: 143 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@611@01, 15)), $q4@647@01)) | live]
; [else-branch: 143 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@611@01, 15)), $q4@647@01) | live]
(push) ; 5
; [then-branch: 143 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@611@01, 15)), $q4@647@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 15)) $q4@647@01))))
(pop) ; 5
(push) ; 5
; [else-branch: 143 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](self@611@01, 15)), $q4@647@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 15)) $q4@647@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 15)) $q4@647@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 15)) $q4@647@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@647@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 15)) $q4@647@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 15)) $q4@647@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 15)) $q4@647@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1467@11@1467@348-aux|)))
(assert (forall (($q4@647@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 15)) $q4@647@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 15)) $q4@647@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 15)) $q4@647@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1467@11@1467@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $t@648@01 $Snap)
(assert (= $t@648@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $q4@649@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
; [eval] ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@649@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 15)) $q4@649@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 15)) $q4@649@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1468@11@1468@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@650@01 $Snap)
(assert (= $t@650@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> self@611@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= $self_address() &&
;   $self_address() <= 1461501637330902918203684832716283019655932542975
(declare-const $t@651@01 $Snap)
(assert (= $t@651@01 ($Snap.combine ($Snap.first $t@651@01) ($Snap.second $t@651@01))))
(assert (= ($Snap.first $t@651@01) $Snap.unit))
; [eval] 0 <= $self_address()
; [eval] $self_address()
(assert (<= 0 (as $self_address<Int>  Int)))
(assert (= ($Snap.second $t@651@01) $Snap.unit))
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
(declare-const $t@652@01 $Snap)
(assert (= $t@652@01 ($Snap.combine ($Snap.first $t@652@01) ($Snap.second $t@652@01))))
(assert (= ($Snap.first $t@652@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 0)): Int)
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@608@01 0))))
(assert (= ($Snap.second $t@652@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(block, 0)): Int)
; [eval] $struct_loc(block, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@608@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 1)): Int) &&
;   ($struct_get($struct_loc(block, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@653@01 $Snap)
(assert (= $t@653@01 ($Snap.combine ($Snap.first $t@653@01) ($Snap.second $t@653@01))))
(assert (= ($Snap.first $t@653@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 1)): Int)
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@608@01 1))))
(assert (= ($Snap.second $t@653@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 1)): Int)
; [eval] $struct_loc(block, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@608@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 2)): Int) &&
;   ($struct_get($struct_loc(block, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@654@01 $Snap)
(assert (= $t@654@01 ($Snap.combine ($Snap.first $t@654@01) ($Snap.second $t@654@01))))
(assert (= ($Snap.first $t@654@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 2)): Int)
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@608@01 2))))
(assert (= ($Snap.second $t@654@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 2)): Int)
; [eval] $struct_loc(block, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@608@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
(declare-const $t@655@01 $Snap)
(assert (= $t@655@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(block, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(block, 3)): Seq[Int])
; [eval] $struct_loc(block, 3)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> block@608@01 3))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(block, 4)): Int) &&
;   ($struct_get($struct_loc(block, 4)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@656@01 $Snap)
(assert (= $t@656@01 ($Snap.combine ($Snap.first $t@656@01) ($Snap.second $t@656@01))))
(assert (= ($Snap.first $t@656@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(block, 4)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> block@608@01 4))))
(assert (= ($Snap.second $t@656@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(block, 4)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(block, -1)): Int) ==
;   2335365049822495359383864865678187
(declare-const $t@657@01 $Snap)
(assert (= $t@657@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(block, -1)): Int) == 2335365049822495359383864865678187
; [eval] ($struct_get($struct_loc(block, -1)): Int)
; [eval] $struct_loc(block, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> block@608@01 (- 0 1)))
  2335365049822495359383864865678187))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 0)): Int) &&
;   ($struct_get($struct_loc(msg, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@658@01 $Snap)
(assert (= $t@658@01 ($Snap.combine ($Snap.first $t@658@01) ($Snap.second $t@658@01))))
(assert (= ($Snap.first $t@658@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))))
(assert (= ($Snap.second $t@658@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 1)): Int) &&
;   ($struct_get($struct_loc(msg, 1)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@659@01 $Snap)
(assert (= $t@659@01 ($Snap.combine ($Snap.first $t@659@01) ($Snap.second $t@659@01))))
(assert (= ($Snap.first $t@659@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@607@01 1))))
(assert (= ($Snap.second $t@659@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@607@01 1))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(msg, 2)): Int) &&
;   ($struct_get($struct_loc(msg, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@660@01 $Snap)
(assert (= $t@660@01 ($Snap.combine ($Snap.first $t@660@01) ($Snap.second $t@660@01))))
(assert (= ($Snap.first $t@660@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(msg, 2)): Int)
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> msg@607@01 2))))
(assert (= ($Snap.second $t@660@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(msg, 2)): Int)
; [eval] $struct_loc(msg, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> msg@607@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, -1)): Int) ==
;   35634842679176259756224246631
(declare-const $t@661@01 $Snap)
(assert (= $t@661@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, -1)): Int) == 35634842679176259756224246631
; [eval] ($struct_get($struct_loc(msg, -1)): Int)
; [eval] $struct_loc(msg, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@607@01 (- 0 1)))
  35634842679176259756224246631))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(msg, 0)): Int) != 0
(declare-const $t@662@01 $Snap)
(assert (= $t@662@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) != 0
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(assert (not (= ($struct_get<Int> ($struct_loc<Int> msg@607@01 0)) 0)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $t@663@01 $Snap)
(assert (= $t@663@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $a@664@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
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
(declare-const $t@665@01 $Snap)
(assert (= $t@665@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(msg, 1)): Int) == 0
; [eval] ($struct_get($struct_loc(msg, 1)): Int)
; [eval] $struct_loc(msg, 1)
(assert (= ($struct_get<Int> ($struct_loc<Int> msg@607@01 1)) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 0))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 144 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) == $struct_get[Int]($struct_loc[Int](self@611@01, 0)) | live]
; [else-branch: 144 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) != $struct_get[Int]($struct_loc[Int](self@611@01, 0)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 144 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) == $struct_get[Int]($struct_loc[Int](self@611@01, 0))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 0))))
; [eval] !(($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int) && ($struct_get($struct_loc(self, 8)): Bool) || ($struct_get($struct_loc(self, 9)): Bool))
; [eval] ($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int) && ($struct_get($struct_loc(self, 8)): Bool) || ($struct_get($struct_loc(self, 9)): Bool)
; [eval] ($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int) && ($struct_get($struct_loc(self, 8)): Bool)
; [eval] ($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(push) ; 4
; [then-branch: 145 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10))) | live]
; [else-branch: 145 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) | live]
(push) ; 5
; [then-branch: 145 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)))]
(assert (not
  (>
    ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))))
(pop) ; 5
(push) ; 5
; [else-branch: 145 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10))]
(assert (>
  ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 10))))
; [eval] ($struct_get($struct_loc(self, 8)): Bool)
; [eval] $struct_loc(self, 8)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (>
    ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
  (not
    (>
      ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
      ($struct_get<Int> ($struct_loc<Int> self@611@01 10))))))
(push) ; 4
; [then-branch: 146 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8)) | live]
; [else-branch: 146 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8))) | live]
(push) ; 5
; [then-branch: 146 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8))]
(assert (and
  (>
    ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
  ($struct_get<Bool> ($struct_loc<Int> self@611@01 8))))
(pop) ; 5
(push) ; 5
; [else-branch: 146 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8)))]
(assert (not
  (and
    (>
      ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
      ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))))
; [eval] ($struct_get($struct_loc(self, 9)): Bool)
; [eval] $struct_loc(self, 9)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (>
        ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
        ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
      ($struct_get<Bool> ($struct_loc<Int> self@611@01 8))))
  (and
    (>
      ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
      ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))))
(push) ; 4
(set-option :timeout 10)
(assert (not (or
  (and
    (>
      ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
      ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))
  ($struct_get<Bool> ($struct_loc<Int> self@611@01 9)))))
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
    (and
      (>
        ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
        ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
      ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 9))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 147 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8)) || $struct_get[Bool]($struct_loc[Int](self@611@01, 9))) | live]
; [else-branch: 147 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8)) || $struct_get[Bool]($struct_loc[Int](self@611@01, 9)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 147 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8)) || $struct_get[Bool]($struct_loc[Int](self@611@01, 9)))]
(assert (not
  (or
    (and
      (>
        ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
        ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
      ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 9)))))
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
; [then-branch: 148 | True | live]
; [else-branch: 148 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 148 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@666@01 $Snap)
(assert (= $t@666@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@667@01 $Struct)
(assert (=
  self@667@01
  ($struct_set<$Struct> self@611@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 5
; [then-branch: 149 | False | dead]
; [else-branch: 149 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 149 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 147 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8)) || $struct_get[Bool]($struct_loc[Int](self@611@01, 9))]
(assert (or
  (and
    (>
      ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
      ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))
  ($struct_get<Bool> ($struct_loc<Int> self@611@01 9))))
(pop) ; 4
; [eval] !!(($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int) && ($struct_get($struct_loc(self, 8)): Bool) || ($struct_get($struct_loc(self, 9)): Bool))
; [eval] !(($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int) && ($struct_get($struct_loc(self, 8)): Bool) || ($struct_get($struct_loc(self, 9)): Bool))
; [eval] ($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int) && ($struct_get($struct_loc(self, 8)): Bool) || ($struct_get($struct_loc(self, 9)): Bool)
; [eval] ($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int) && ($struct_get($struct_loc(self, 8)): Bool)
; [eval] ($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(push) ; 4
; [then-branch: 150 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10))) | live]
; [else-branch: 150 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) | live]
(push) ; 5
; [then-branch: 150 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)))]
(assert (not
  (>
    ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))))
(pop) ; 5
(push) ; 5
; [else-branch: 150 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10))]
(assert (>
  ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 10))))
; [eval] ($struct_get($struct_loc(self, 8)): Bool)
; [eval] $struct_loc(self, 8)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
; [then-branch: 151 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8)) | live]
; [else-branch: 151 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8))) | live]
(push) ; 5
; [then-branch: 151 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8))]
(assert (and
  (>
    ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
  ($struct_get<Bool> ($struct_loc<Int> self@611@01 8))))
(pop) ; 5
(push) ; 5
; [else-branch: 151 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8)))]
(assert (not
  (and
    (>
      ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
      ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))))
; [eval] ($struct_get($struct_loc(self, 9)): Bool)
; [eval] $struct_loc(self, 9)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (or
    (and
      (>
        ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
        ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
      ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 9))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (or
  (and
    (>
      ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
      ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))
  ($struct_get<Bool> ($struct_loc<Int> self@611@01 9)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 152 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8)) || $struct_get[Bool]($struct_loc[Int](self@611@01, 9)) | live]
; [else-branch: 152 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8)) || $struct_get[Bool]($struct_loc[Int](self@611@01, 9))) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 152 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8)) || $struct_get[Bool]($struct_loc[Int](self@611@01, 9))]
(assert (or
  (and
    (>
      ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
      ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))
  ($struct_get<Bool> ($struct_loc<Int> self@611@01 9))))
; [eval] ($struct_get($struct_loc(self, 11)): Int) < ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 2))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 2)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 153 | $struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2)) | live]
; [else-branch: 153 | !($struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 153 | $struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2))]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 2))))
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
; 0.00s
; (get-info :all-statistics)
; [then-branch: 154 | True | live]
; [else-branch: 154 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 154 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@668@01 $Snap)
(assert (= $t@668@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@669@01 $Struct)
(assert (=
  self@669@01
  ($struct_set<$Struct> self@611@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 6
; [then-branch: 155 | False | dead]
; [else-branch: 155 | True | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 155 | True]
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 153 | !($struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2)))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 2)))))
(pop) ; 5
; [eval] !(($struct_get($struct_loc(self, 11)): Int) < ($struct_get($struct_loc(self, 2)): Int))
; [eval] ($struct_get($struct_loc(self, 11)): Int) < ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 2)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 2))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 156 | !($struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2))) | live]
; [else-branch: 156 | $struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 156 | !($struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2)))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 2)))))
; [exec]
; self := ($struct_set(self, 14, ($map_set(($struct_get($struct_loc(self, 14)): $Map[Int, Int]),
;   ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self,
;   14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) +
;   ($struct_get($struct_loc(self, 2)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 14, ($map_set(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 2)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 2)): Int)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@670@01 $Struct)
(assert (=
  self@670@01
  ($struct_set<$Struct> self@611@01 14 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) ($struct_get<Int> ($struct_loc<Int> msg@607@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) ($struct_get<Int> ($struct_loc<Int> msg@607@01 0)))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 2)))))))
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) -
;   ($struct_get($struct_loc(self, 2)): Int)): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) - ($struct_get($struct_loc(self, 2)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) - ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@671@01 $Struct)
(assert (=
  self@671@01
  ($struct_set<$Struct> self@670@01 11 (-
    ($struct_get<Int> ($struct_loc<Int> self@670@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@670@01 2))))))
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc
(push) ; 6
(set-option :timeout 10)
(assert (not (not l$send_fail@621@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not l$send_fail@621@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 157 | l$send_fail@621@01 | live]
; [else-branch: 157 | !(l$send_fail@621@01) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 157 | l$send_fail@621@01]
(assert l$send_fail@621@01)
; [exec]
; inhale acc($failed(($struct_get($struct_loc(msg, 0)): Int)), write)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const $t@672@01 $Snap)
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
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 158 | True | live]
; [else-branch: 158 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 158 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@673@01 $Snap)
(assert (= $t@673@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@674@01 $Struct)
(assert (=
  self@674@01
  ($struct_set<$Struct> self@611@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 7
; [then-branch: 159 | False | dead]
; [else-branch: 159 | True | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 159 | True]
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 157 | !(l$send_fail@621@01)]
(assert (not l$send_fail@621@01))
(pop) ; 6
; [eval] !l$send_fail
(push) ; 6
(set-option :timeout 10)
(assert (not l$send_fail@621@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not l$send_fail@621@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 160 | !(l$send_fail@621@01) | live]
; [else-branch: 160 | l$send_fail@621@01 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 160 | !(l$send_fail@621@01)]
(assert (not l$send_fail@621@01))
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
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@675@01 $Snap)
(assert (= $t@675@01 ($Snap.combine ($Snap.first $t@675@01) ($Snap.second $t@675@01))))
(assert (= ($Snap.first $t@675@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 0))))
(assert (= ($Snap.second $t@675@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@676@01 $Snap)
(assert (= $t@676@01 ($Snap.combine ($Snap.first $t@676@01) ($Snap.second $t@676@01))))
(assert (= ($Snap.first $t@676@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 1))))
(assert (= ($Snap.second $t@676@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@677@01 $Snap)
(assert (= $t@677@01 ($Snap.combine ($Snap.first $t@677@01) ($Snap.second $t@677@01))))
(assert (= ($Snap.first $t@677@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 2))))
(assert (= ($Snap.second $t@677@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
(declare-const $t@678@01 $Snap)
(assert (= $t@678@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 3)): Seq[Int])
; [eval] $struct_loc(self, 3)
(assert (<=
  (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@625@01 3)))
  4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
(declare-const $t@679@01 $Snap)
(assert (= $t@679@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $struct_loc(self, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@625@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
(declare-const $t@680@01 $Snap)
(assert (= $t@680@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 5)): Seq[Int])
; [eval] $struct_loc(self, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@625@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 10)): Int) &&
;   ($struct_get($struct_loc(self, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@681@01 $Snap)
(assert (= $t@681@01 ($Snap.combine ($Snap.first $t@681@01) ($Snap.second $t@681@01))))
(assert (= ($Snap.first $t@681@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 10))))
(assert (= ($Snap.second $t@681@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 11)): Int) &&
;   ($struct_get($struct_loc(self, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@682@01 $Snap)
(assert (= $t@682@01 ($Snap.combine ($Snap.first $t@682@01) ($Snap.second $t@682@01))))
(assert (= ($Snap.first $t@682@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 11)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 11))))
(assert (= ($Snap.second $t@682@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 12)): Int) &&
;   ($struct_get($struct_loc(self, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@683@01 $Snap)
(assert (= $t@683@01 ($Snap.combine ($Snap.first $t@683@01) ($Snap.second $t@683@01))))
(assert (= ($Snap.first $t@683@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 12))))
(assert (= ($Snap.second $t@683@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@684@01 $Snap)
(assert (= $t@684@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@685@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(push) ; 8
; [then-branch: 161 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 14)), $q3@685@01)) | live]
; [else-branch: 161 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 14)), $q3@685@01) | live]
(push) ; 9
; [then-branch: 161 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 14)), $q3@685@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@685@01))))
(pop) ; 9
(push) ; 9
; [else-branch: 161 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 14)), $q3@685@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@685@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@685@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@685@01)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@685@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@685@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@685@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@685@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1547@11@1547@348-aux|)))
(assert (forall (($q3@685@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@685@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@685@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@685@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1547@11@1547@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $t@686@01 $Snap)
(assert (= $t@686@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $q3@687@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@687@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@687@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@687@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1548@11@1548@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@688@01 $Snap)
(assert (= $t@688@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@689@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(push) ; 8
; [then-branch: 162 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 15)), $q4@689@01)) | live]
; [else-branch: 162 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 15)), $q4@689@01) | live]
(push) ; 9
; [then-branch: 162 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 15)), $q4@689@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@689@01))))
(pop) ; 9
(push) ; 9
; [else-branch: 162 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 15)), $q4@689@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@689@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@689@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@689@01)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@689@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@689@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@689@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@689@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1549@11@1549@348-aux|)))
(assert (forall (($q4@689@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@689@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@689@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@689@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1549@11@1549@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $t@690@01 $Snap)
(assert (= $t@690@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $q4@691@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
; [eval] ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@691@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@691@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@691@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1550@11@1550@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@692@01 $Snap)
(assert (= $t@692@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $t@693@01 $Snap)
(assert (= $t@693@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $a@694@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 14)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 14)
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@694@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $a@694@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@671@01 14)) $a@694@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $a@694@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1553@11@1553@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@627@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not l$no_reentrant_call@627@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 163 | l$no_reentrant_call@627@01 | live]
; [else-branch: 163 | !(l$no_reentrant_call@627@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 163 | l$no_reentrant_call@627@01]
(assert l$no_reentrant_call@627@01)
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
(push) ; 8
(set-option :timeout 10)
(assert (not (not $out_of_gas@630@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not $out_of_gas@630@01))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 164 | $out_of_gas@630@01 | live]
; [else-branch: 164 | !($out_of_gas@630@01) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 164 | $out_of_gas@630@01]
(assert $out_of_gas@630@01)
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
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 165 | True | live]
; [else-branch: 165 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 165 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@695@01 $Snap)
(assert (= $t@695@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@696@01 $Struct)
(assert (=
  self@696@01
  ($struct_set<$Struct> self@611@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 9
; [then-branch: 166 | False | dead]
; [else-branch: 166 | True | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 166 | True]
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 164 | !($out_of_gas@630@01)]
(assert (not $out_of_gas@630@01))
(pop) ; 8
; [eval] !$out_of_gas
(push) ; 8
(set-option :timeout 10)
(assert (not $out_of_gas@630@01))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not $out_of_gas@630@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 167 | !($out_of_gas@630@01) | live]
; [else-branch: 167 | $out_of_gas@630@01 | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 167 | !($out_of_gas@630@01)]
(assert (not $out_of_gas@630@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 168 | False | dead]
; [else-branch: 168 | True | live]
(push) ; 9
; [else-branch: 168 | True]
(pop) ; 9
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 169 | True | live]
; [else-branch: 169 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 169 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@697@01 $Snap)
(assert (= $t@697@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@698@01 $Struct)
(assert (=
  self@698@01
  ($struct_set<$Struct> self@671@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@671@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 9
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 167 | $out_of_gas@630@01]
(assert $out_of_gas@630@01)
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 163 | !(l$no_reentrant_call@627@01)]
(assert (not l$no_reentrant_call@627@01))
(pop) ; 7
; [eval] !l$no_reentrant_call
(push) ; 7
(set-option :timeout 10)
(assert (not l$no_reentrant_call@627@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@627@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 170 | !(l$no_reentrant_call@627@01) | live]
; [else-branch: 170 | l$no_reentrant_call@627@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 170 | !(l$no_reentrant_call@627@01)]
(assert (not l$no_reentrant_call@627@01))
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
(push) ; 8
(set-option :timeout 10)
(assert (not (not $out_of_gas@630@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not $out_of_gas@630@01))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 171 | $out_of_gas@630@01 | live]
; [else-branch: 171 | !($out_of_gas@630@01) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 171 | $out_of_gas@630@01]
(assert $out_of_gas@630@01)
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
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 172 | True | live]
; [else-branch: 172 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 172 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@699@01 $Snap)
(assert (= $t@699@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@700@01 $Struct)
(assert (=
  self@700@01
  ($struct_set<$Struct> self@611@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 9
; [then-branch: 173 | False | dead]
; [else-branch: 173 | True | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 173 | True]
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 171 | !($out_of_gas@630@01)]
(assert (not $out_of_gas@630@01))
(pop) ; 8
; [eval] !$out_of_gas
(push) ; 8
(set-option :timeout 10)
(assert (not $out_of_gas@630@01))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not $out_of_gas@630@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 174 | !($out_of_gas@630@01) | live]
; [else-branch: 174 | $out_of_gas@630@01 | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 174 | !($out_of_gas@630@01)]
(assert (not $out_of_gas@630@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 175 | False | dead]
; [else-branch: 175 | True | live]
(push) ; 9
; [else-branch: 175 | True]
(pop) ; 9
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 176 | True | live]
; [else-branch: 176 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 176 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@701@01 $Snap)
(assert (= $t@701@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@702@01 $Struct)
(assert (=
  self@702@01
  ($struct_set<$Struct> l$havoc$2@625@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 9
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 174 | $out_of_gas@630@01]
(assert $out_of_gas@630@01)
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 170 | l$no_reentrant_call@627@01]
(assert l$no_reentrant_call@627@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 160 | l$send_fail@621@01]
(assert l$send_fail@621@01)
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 156 | $struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2))]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 2))))
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 152 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 8)) || $struct_get[Bool]($struct_loc[Int](self@611@01, 9)))]
(assert (not
  (or
    (and
      (>
        ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
        ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
      ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 9)))))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 144 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) != $struct_get[Int]($struct_loc[Int](self@611@01, 0))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 0)))))
(pop) ; 3
; [eval] !(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 0)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 0))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 177 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) != $struct_get[Int]($struct_loc[Int](self@611@01, 0)) | live]
; [else-branch: 177 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) == $struct_get[Int]($struct_loc[Int](self@611@01, 0)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 177 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) != $struct_get[Int]($struct_loc[Int](self@611@01, 0))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 0)))))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 1))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 178 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) == $struct_get[Int]($struct_loc[Int](self@611@01, 1)) | live]
; [else-branch: 178 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) != $struct_get[Int]($struct_loc[Int](self@611@01, 1)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 178 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) == $struct_get[Int]($struct_loc[Int](self@611@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 1))))
; [eval] !(($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int) && (($struct_get($struct_loc(self, 7)): Bool) && !($struct_get($struct_loc(self, 8)): Bool)))
; [eval] ($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int) && (($struct_get($struct_loc(self, 7)): Bool) && !($struct_get($struct_loc(self, 8)): Bool))
; [eval] ($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(push) ; 5
; [then-branch: 179 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10))) | live]
; [else-branch: 179 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) | live]
(push) ; 6
; [then-branch: 179 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)))]
(assert (not
  (>
    ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))))
(pop) ; 6
(push) ; 6
; [else-branch: 179 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10))]
(assert (>
  ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 10))))
; [eval] ($struct_get($struct_loc(self, 7)): Bool)
; [eval] $struct_loc(self, 7)
(push) ; 7
; [then-branch: 180 | !($struct_get[Bool]($struct_loc[Int](self@611@01, 7))) | live]
; [else-branch: 180 | $struct_get[Bool]($struct_loc[Int](self@611@01, 7)) | live]
(push) ; 8
; [then-branch: 180 | !($struct_get[Bool]($struct_loc[Int](self@611@01, 7)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@611@01 7))))
(pop) ; 8
(push) ; 8
; [else-branch: 180 | $struct_get[Bool]($struct_loc[Int](self@611@01, 7))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@611@01 7)))
; [eval] !($struct_get($struct_loc(self, 8)): Bool)
; [eval] ($struct_get($struct_loc(self, 8)): Bool)
; [eval] $struct_loc(self, 8)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@611@01 7))
  (not ($struct_get<Bool> ($struct_loc<Int> self@611@01 7)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>
    ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
  (and
    (>
      ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
      ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
    (or
      ($struct_get<Bool> ($struct_loc<Int> self@611@01 7))
      (not ($struct_get<Bool> ($struct_loc<Int> self@611@01 7)))))))
(assert (or
  (>
    ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
  (not
    (>
      ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
      ($struct_get<Int> ($struct_loc<Int> self@611@01 10))))))
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (>
    ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 7))
    (not ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (and
    (>
      ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
      ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
    (and
      ($struct_get<Bool> ($struct_loc<Int> self@611@01 7))
      (not ($struct_get<Bool> ($struct_loc<Int> self@611@01 8))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 181 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 7)) && !($struct_get[Bool]($struct_loc[Int](self@611@01, 8)))) | live]
; [else-branch: 181 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 7)) && !($struct_get[Bool]($struct_loc[Int](self@611@01, 8))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 181 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 7)) && !($struct_get[Bool]($struct_loc[Int](self@611@01, 8))))]
(assert (not
  (and
    (>
      ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
      ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
    (and
      ($struct_get<Bool> ($struct_loc<Int> self@611@01 7))
      (not ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))))))
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
; 0.00s
; (get-info :all-statistics)
; [then-branch: 182 | True | live]
; [else-branch: 182 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 182 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@703@01 $Snap)
(assert (= $t@703@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@704@01 $Struct)
(assert (=
  self@704@01
  ($struct_set<$Struct> self@611@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 6
; [then-branch: 183 | False | dead]
; [else-branch: 183 | True | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 183 | True]
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 181 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 7)) && !($struct_get[Bool]($struct_loc[Int](self@611@01, 8)))]
(assert (and
  (>
    ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 7))
    (not ($struct_get<Bool> ($struct_loc<Int> self@611@01 8))))))
(pop) ; 5
; [eval] !!(($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int) && (($struct_get($struct_loc(self, 7)): Bool) && !($struct_get($struct_loc(self, 8)): Bool)))
; [eval] !(($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int) && (($struct_get($struct_loc(self, 7)): Bool) && !($struct_get($struct_loc(self, 8)): Bool)))
; [eval] ($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int) && (($struct_get($struct_loc(self, 7)): Bool) && !($struct_get($struct_loc(self, 8)): Bool))
; [eval] ($struct_get($struct_loc(block, 4)): Int) > ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(block, 4)): Int)
; [eval] $struct_loc(block, 4)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(push) ; 5
; [then-branch: 184 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10))) | live]
; [else-branch: 184 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) | live]
(push) ; 6
; [then-branch: 184 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)))]
(assert (not
  (>
    ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))))
(pop) ; 6
(push) ; 6
; [else-branch: 184 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10))]
(assert (>
  ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 10))))
; [eval] ($struct_get($struct_loc(self, 7)): Bool)
; [eval] $struct_loc(self, 7)
(push) ; 7
; [then-branch: 185 | !($struct_get[Bool]($struct_loc[Int](self@611@01, 7))) | live]
; [else-branch: 185 | $struct_get[Bool]($struct_loc[Int](self@611@01, 7)) | live]
(push) ; 8
; [then-branch: 185 | !($struct_get[Bool]($struct_loc[Int](self@611@01, 7)))]
(assert (not ($struct_get<Bool> ($struct_loc<Int> self@611@01 7))))
(pop) ; 8
(push) ; 8
; [else-branch: 185 | $struct_get[Bool]($struct_loc[Int](self@611@01, 7))]
(assert ($struct_get<Bool> ($struct_loc<Int> self@611@01 7)))
; [eval] !($struct_get($struct_loc(self, 8)): Bool)
; [eval] ($struct_get($struct_loc(self, 8)): Bool)
; [eval] $struct_loc(self, 8)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  ($struct_get<Bool> ($struct_loc<Int> self@611@01 7))
  (not ($struct_get<Bool> ($struct_loc<Int> self@611@01 7)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (and
    (>
      ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
      ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
    (and
      ($struct_get<Bool> ($struct_loc<Int> self@611@01 7))
      (not ($struct_get<Bool> ($struct_loc<Int> self@611@01 8))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (>
    ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 7))
    (not ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 186 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 7)) && !($struct_get[Bool]($struct_loc[Int](self@611@01, 8))) | live]
; [else-branch: 186 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 7)) && !($struct_get[Bool]($struct_loc[Int](self@611@01, 8)))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 186 | $struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 7)) && !($struct_get[Bool]($struct_loc[Int](self@611@01, 8)))]
(assert (and
  (>
    ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
  (and
    ($struct_get<Bool> ($struct_loc<Int> self@611@01 7))
    (not ($struct_get<Bool> ($struct_loc<Int> self@611@01 8))))))
; [eval] ($struct_get($struct_loc(self, 11)): Int) < ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 2))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 2)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 187 | $struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2)) | live]
; [else-branch: 187 | !($struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2))) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 187 | $struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2))]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 2))))
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
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 188 | True | live]
; [else-branch: 188 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 188 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@705@01 $Snap)
(assert (= $t@705@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@706@01 $Struct)
(assert (=
  self@706@01
  ($struct_set<$Struct> self@611@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 7
; [then-branch: 189 | False | dead]
; [else-branch: 189 | True | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 189 | True]
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 187 | !($struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2)))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 2)))))
(pop) ; 6
; [eval] !(($struct_get($struct_loc(self, 11)): Int) < ($struct_get($struct_loc(self, 2)): Int))
; [eval] ($struct_get($struct_loc(self, 11)): Int) < ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(push) ; 6
(set-option :timeout 10)
(assert (not (<
  ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 2)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 2))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 190 | !($struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2))) | live]
; [else-branch: 190 | $struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2)) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 190 | !($struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2)))]
(assert (not
  (<
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 2)))))
; [exec]
; self := ($struct_set(self, 14, ($map_set(($struct_get($struct_loc(self, 14)): $Map[Int, Int]),
;   ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self,
;   14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) +
;   ($struct_get($struct_loc(self, 2)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($struct_set(self, 14, ($map_set(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 2)): Int)): $Map[Int, Int])): $Struct)
; [eval] ($map_set(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int), ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 2)): Int)): $Map[Int, Int])
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int) + ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), ($struct_get($struct_loc(msg, 0)): Int)): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@707@01 $Struct)
(assert (=
  self@707@01
  ($struct_set<$Struct> self@611@01 14 ($map_set<$Map<Int~_Int>> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) ($struct_get<Int> ($struct_loc<Int> msg@607@01 0)) (+
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@611@01 14)) ($struct_get<Int> ($struct_loc<Int> msg@607@01 0)))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 2)))))))
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) -
;   ($struct_get($struct_loc(self, 2)): Int)): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) - ($struct_get($struct_loc(self, 2)): Int)): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) - ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(declare-const self@708@01 $Struct)
(assert (=
  self@708@01
  ($struct_set<$Struct> self@707@01 11 (-
    ($struct_get<Int> ($struct_loc<Int> self@707@01 11))
    ($struct_get<Int> ($struct_loc<Int> self@707@01 2))))))
; [exec]
; $old_$contracts := $contracts
; [exec]
; $contracts := l$havoc
(push) ; 7
(set-option :timeout 10)
(assert (not (not l$send_fail@621@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not l$send_fail@621@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 191 | l$send_fail@621@01 | live]
; [else-branch: 191 | !(l$send_fail@621@01) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 191 | l$send_fail@621@01]
(assert l$send_fail@621@01)
; [exec]
; inhale acc($failed(($struct_get($struct_loc(msg, 0)): Int)), write)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
(declare-const $t@709@01 $Snap)
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
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 192 | True | live]
; [else-branch: 192 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 192 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@710@01 $Snap)
(assert (= $t@710@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@711@01 $Struct)
(assert (=
  self@711@01
  ($struct_set<$Struct> self@611@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 8
; [then-branch: 193 | False | dead]
; [else-branch: 193 | True | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 193 | True]
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 191 | !(l$send_fail@621@01)]
(assert (not l$send_fail@621@01))
(pop) ; 7
; [eval] !l$send_fail
(push) ; 7
(set-option :timeout 10)
(assert (not l$send_fail@621@01))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not l$send_fail@621@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 194 | !(l$send_fail@621@01) | live]
; [else-branch: 194 | l$send_fail@621@01 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 194 | !(l$send_fail@621@01)]
(assert (not l$send_fail@621@01))
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
; inhale 0 <= ($struct_get($struct_loc(self, 0)): Int) &&
;   ($struct_get($struct_loc(self, 0)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@712@01 $Snap)
(assert (= $t@712@01 ($Snap.combine ($Snap.first $t@712@01) ($Snap.second $t@712@01))))
(assert (= ($Snap.first $t@712@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 0)): Int)
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 0))))
(assert (= ($Snap.second $t@712@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 0)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 0)): Int)
; [eval] $struct_loc(self, 0)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 0))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 1)): Int) &&
;   ($struct_get($struct_loc(self, 1)): Int) <=
;   1461501637330902918203684832716283019655932542975
(declare-const $t@713@01 $Snap)
(assert (= $t@713@01 ($Snap.combine ($Snap.first $t@713@01) ($Snap.second $t@713@01))))
(assert (= ($Snap.first $t@713@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 1))))
(assert (= ($Snap.second $t@713@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 1)): Int) <= 1461501637330902918203684832716283019655932542975
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 1))
  1461501637330902918203684832716283019655932542975))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 2)): Int) &&
;   ($struct_get($struct_loc(self, 2)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@714@01 $Snap)
(assert (= $t@714@01 ($Snap.combine ($Snap.first $t@714@01) ($Snap.second $t@714@01))))
(assert (= ($Snap.first $t@714@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 2)): Int)
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 2))))
(assert (= ($Snap.second $t@714@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 2)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 2)): Int)
; [eval] $struct_loc(self, 2)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 2))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
(declare-const $t@715@01 $Snap)
(assert (= $t@715@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])| <= 4096
; [eval] |($struct_get($struct_loc(self, 3)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 3)): Seq[Int])
; [eval] $struct_loc(self, 3)
(assert (<=
  (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@625@01 3)))
  4096))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
(declare-const $t@716@01 $Snap)
(assert (= $t@716@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 4)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 4)): Seq[Int])
; [eval] $struct_loc(self, 4)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@625@01 4))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
(declare-const $t@717@01 $Snap)
(assert (= $t@717@01 $Snap.unit))
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])| == 32
; [eval] |($struct_get($struct_loc(self, 5)): Seq[Int])|
; [eval] ($struct_get($struct_loc(self, 5)): Seq[Int])
; [eval] $struct_loc(self, 5)
(assert (= (Seq_length ($struct_get<Seq<Int>> ($struct_loc<Int> l$havoc$2@625@01 5))) 32))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 10)): Int) &&
;   ($struct_get($struct_loc(self, 10)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@718@01 $Snap)
(assert (= $t@718@01 ($Snap.combine ($Snap.first $t@718@01) ($Snap.second $t@718@01))))
(assert (= ($Snap.first $t@718@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 10)): Int)
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 10))))
(assert (= ($Snap.second $t@718@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 10)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 10)): Int)
; [eval] $struct_loc(self, 10)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 10))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 0 <= ($struct_get($struct_loc(self, 11)): Int) &&
;   ($struct_get($struct_loc(self, 11)): Int) <=
;   115792089237316195423570985008687907853269984665640564039457584007913129639935
(declare-const $t@719@01 $Snap)
(assert (= $t@719@01 ($Snap.combine ($Snap.first $t@719@01) ($Snap.second $t@719@01))))
(assert (= ($Snap.first $t@719@01) $Snap.unit))
; [eval] 0 <= ($struct_get($struct_loc(self, 11)): Int)
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<= 0 ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 11))))
(assert (= ($Snap.second $t@719@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 11)): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 11))
  115792089237316195423570985008687907853269984665640564039457584007913129639935))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale -170141183460469231731687303715884105728 <=
;   ($struct_get($struct_loc(self, 12)): Int) &&
;   ($struct_get($struct_loc(self, 12)): Int) <=
;   170141183460469231731687303715884105727
(declare-const $t@720@01 $Snap)
(assert (= $t@720@01 ($Snap.combine ($Snap.first $t@720@01) ($Snap.second $t@720@01))))
(assert (= ($Snap.first $t@720@01) $Snap.unit))
; [eval] -170141183460469231731687303715884105728 <= ($struct_get($struct_loc(self, 12)): Int)
; [eval] -170141183460469231731687303715884105728
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  (- 0 170141183460469231731687303715884105728)
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 12))))
(assert (= ($Snap.second $t@720@01) $Snap.unit))
; [eval] ($struct_get($struct_loc(self, 12)): Int) <= 170141183460469231731687303715884105727
; [eval] ($struct_get($struct_loc(self, 12)): Int)
; [eval] $struct_loc(self, 12)
(assert (<=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 12))
  170141183460469231731687303715884105727))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@721@01 $Snap)
(assert (= $t@721@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q3@722@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) && ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(push) ; 9
; [then-branch: 195 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 14)), $q3@722@01)) | live]
; [else-branch: 195 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 14)), $q3@722@01) | live]
(push) ; 10
; [then-branch: 195 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 14)), $q3@722@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@722@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 195 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 14)), $q3@722@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@722@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@722@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@722@01)))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@722@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@722@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@722@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@722@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1547@11@1547@348-aux|)))
(assert (forall (($q3@722@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@722@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@722@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@722@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1547@11@1547@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q3: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $t@723@01 $Snap)
(assert (= $t@723@01 $Snap.unit))
; [eval] (forall $q3: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int))
(declare-const $q3@724@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int) <= ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $q3): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_sum(($struct_get($struct_loc(self, 14)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q3@724@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@724@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $q3@724@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1548@11@1548@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     0 <=
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) &&
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $t@725@01 $Snap)
(assert (= $t@725@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935)
(declare-const $q4@726@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) && ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] 0 <= ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(push) ; 9
; [then-branch: 196 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 15)), $q4@726@01)) | live]
; [else-branch: 196 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 15)), $q4@726@01) | live]
(push) ; 10
; [then-branch: 196 | !(0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 15)), $q4@726@01))]
(assert (not
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@726@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 196 | 0 <= $map_get[Int]($struct_get[$Map[Int, Int]]($struct_loc[Int](l$havoc$2@625@01, 15)), $q4@726@01)]
(assert (<=
  0
  ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@726@01)))
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= 115792089237316195423570985008687907853269984665640564039457584007913129639935
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (<=
    0
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@726@01))
  (not
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@726@01)))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@726@01 Int)) (!
  (or
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@726@01))
    (not
      (<=
        0
        ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@726@01))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@726@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1549@11@1549@348-aux|)))
(assert (forall (($q4@726@01 Int)) (!
  (and
    (<=
      0
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@726@01))
    (<=
      ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@726@01)
      115792089237316195423570985008687907853269984665640564039457584007913129639935))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@726@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1549@11@1549@348|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall $q4: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) }
;     ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <=
;     ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $t@727@01 $Snap)
(assert (= $t@727@01 $Snap.unit))
; [eval] (forall $q4: Int :: { ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) } ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int))
(declare-const $q4@728@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int) <= ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 15)): $Map[Int, Int]), $q4): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
; [eval] ($map_sum(($struct_get($struct_loc(self, 15)): $Map[Int, Int])): Int)
; [eval] ($struct_get($struct_loc(self, 15)): $Map[Int, Int])
; [eval] $struct_loc(self, 15)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($q4@728@01 Int)) (!
  (<=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@728@01)
    ($map_sum<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15))))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 15)) $q4@728@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1550@11@1550@256|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale ($struct_get($struct_loc(self, -1)): Int) ==
;   9122519725869122497593506884710
(declare-const $t@729@01 $Snap)
(assert (= $t@729@01 $Snap.unit))
; [eval] ($struct_get($struct_loc(self, -1)): Int) == 9122519725869122497593506884710
; [eval] ($struct_get($struct_loc(self, -1)): Int)
; [eval] $struct_loc(self, -1)
; [eval] -1
(assert (=
  ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 (- 0 1)))
  9122519725869122497593506884710))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall $a: Int ::
;     { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) }
;     ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >=
;     ($map_get(($struct_get($struct_loc($old_self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $t@730@01 $Snap)
(assert (= $t@730@01 $Snap.unit))
; [eval] (forall $a: Int :: { ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) } ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 14)): $Map[Int, Int]), $a): Int))
(declare-const $a@731@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int) >= ($map_get(($struct_get($struct_loc($old_self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($map_get(($struct_get($struct_loc(self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc(self, 14)): $Map[Int, Int])
; [eval] $struct_loc(self, 14)
; [eval] ($map_get(($struct_get($struct_loc($old_self, 14)): $Map[Int, Int]), $a): Int)
; [eval] ($struct_get($struct_loc($old_self, 14)): $Map[Int, Int])
; [eval] $struct_loc($old_self, 14)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall (($a@731@01 Int)) (!
  (>=
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $a@731@01)
    ($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> self@708@01 14)) $a@731@01))
  :pattern (($map_get<Int> ($struct_get<$Map<Int~_Int>> ($struct_loc<Int> l$havoc$2@625@01 14)) $a@731@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/vyper/testsresourcesexamplestrading_secret.vy.vpr@1553@11@1553@262|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@627@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not l$no_reentrant_call@627@01))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 197 | l$no_reentrant_call@627@01 | live]
; [else-branch: 197 | !(l$no_reentrant_call@627@01) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 197 | l$no_reentrant_call@627@01]
(assert l$no_reentrant_call@627@01)
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
(push) ; 9
(set-option :timeout 10)
(assert (not (not $out_of_gas@630@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not $out_of_gas@630@01))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 198 | $out_of_gas@630@01 | live]
; [else-branch: 198 | !($out_of_gas@630@01) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 198 | $out_of_gas@630@01]
(assert $out_of_gas@630@01)
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
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 199 | True | live]
; [else-branch: 199 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 199 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@732@01 $Snap)
(assert (= $t@732@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@733@01 $Struct)
(assert (=
  self@733@01
  ($struct_set<$Struct> self@611@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 10
; [then-branch: 200 | False | dead]
; [else-branch: 200 | True | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 200 | True]
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 198 | !($out_of_gas@630@01)]
(assert (not $out_of_gas@630@01))
(pop) ; 9
; [eval] !$out_of_gas
(push) ; 9
(set-option :timeout 10)
(assert (not $out_of_gas@630@01))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not $out_of_gas@630@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 201 | !($out_of_gas@630@01) | live]
; [else-branch: 201 | $out_of_gas@630@01 | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 201 | !($out_of_gas@630@01)]
(assert (not $out_of_gas@630@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 202 | False | dead]
; [else-branch: 202 | True | live]
(push) ; 10
; [else-branch: 202 | True]
(pop) ; 10
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 203 | True | live]
; [else-branch: 203 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 203 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@734@01 $Snap)
(assert (= $t@734@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@735@01 $Struct)
(assert (=
  self@735@01
  ($struct_set<$Struct> self@708@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@708@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 10
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 201 | $out_of_gas@630@01]
(assert $out_of_gas@630@01)
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 197 | !(l$no_reentrant_call@627@01)]
(assert (not l$no_reentrant_call@627@01))
(pop) ; 8
; [eval] !l$no_reentrant_call
(push) ; 8
(set-option :timeout 10)
(assert (not l$no_reentrant_call@627@01))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not l$no_reentrant_call@627@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 204 | !(l$no_reentrant_call@627@01) | live]
; [else-branch: 204 | l$no_reentrant_call@627@01 | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 204 | !(l$no_reentrant_call@627@01)]
(assert (not l$no_reentrant_call@627@01))
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
(push) ; 9
(set-option :timeout 10)
(assert (not (not $out_of_gas@630@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not $out_of_gas@630@01))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 205 | $out_of_gas@630@01 | live]
; [else-branch: 205 | !($out_of_gas@630@01) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 205 | $out_of_gas@630@01]
(assert $out_of_gas@630@01)
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
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 206 | True | live]
; [else-branch: 206 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 206 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@736@01 $Snap)
(assert (= $t@736@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@737@01 $Struct)
(assert (=
  self@737@01
  ($struct_set<$Struct> self@611@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 10
; [then-branch: 207 | False | dead]
; [else-branch: 207 | True | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 207 | True]
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 205 | !($out_of_gas@630@01)]
(assert (not $out_of_gas@630@01))
(pop) ; 9
; [eval] !$out_of_gas
(push) ; 9
(set-option :timeout 10)
(assert (not $out_of_gas@630@01))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not $out_of_gas@630@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 208 | !($out_of_gas@630@01) | live]
; [else-branch: 208 | $out_of_gas@630@01 | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 208 | !($out_of_gas@630@01)]
(assert (not $out_of_gas@630@01))
; [exec]
; label end
; [eval] !$succ
; [then-branch: 209 | False | dead]
; [else-branch: 209 | True | live]
(push) ; 10
; [else-branch: 209 | True]
(pop) ; 10
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 210 | True | live]
; [else-branch: 210 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 210 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@738@01 $Snap)
(assert (= $t@738@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@739@01 $Struct)
(assert (=
  self@739@01
  ($struct_set<$Struct> l$havoc$2@625@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> l$havoc$2@625@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 10
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 208 | $out_of_gas@630@01]
(assert $out_of_gas@630@01)
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 204 | l$no_reentrant_call@627@01]
(assert l$no_reentrant_call@627@01)
(pop) ; 8
(pop) ; 7
(push) ; 7
; [else-branch: 194 | l$send_fail@621@01]
(assert l$send_fail@621@01)
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 190 | $struct_get[Int]($struct_loc[Int](self@611@01, 11)) < $struct_get[Int]($struct_loc[Int](self@611@01, 2))]
(assert (<
  ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 2))))
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 186 | !($struct_get[Int]($struct_loc[Int](block@608@01, 4)) > $struct_get[Int]($struct_loc[Int](self@611@01, 10)) && $struct_get[Bool]($struct_loc[Int](self@611@01, 7)) && !($struct_get[Bool]($struct_loc[Int](self@611@01, 8))))]
(assert (not
  (and
    (>
      ($struct_get<Int> ($struct_loc<Int> block@608@01 4))
      ($struct_get<Int> ($struct_loc<Int> self@611@01 10)))
    (and
      ($struct_get<Bool> ($struct_loc<Int> self@611@01 7))
      (not ($struct_get<Bool> ($struct_loc<Int> self@611@01 8)))))))
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 178 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) != $struct_get[Int]($struct_loc[Int](self@611@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 1)))))
(pop) ; 4
; [eval] !(($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int))
; [eval] ($struct_get($struct_loc(msg, 0)): Int) == ($struct_get($struct_loc(self, 1)): Int)
; [eval] ($struct_get($struct_loc(msg, 0)): Int)
; [eval] $struct_loc(msg, 0)
; [eval] ($struct_get($struct_loc(self, 1)): Int)
; [eval] $struct_loc(self, 1)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 1))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 211 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) != $struct_get[Int]($struct_loc[Int](self@611@01, 1)) | live]
; [else-branch: 211 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) == $struct_get[Int]($struct_loc[Int](self@611@01, 1)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 211 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) != $struct_get[Int]($struct_loc[Int](self@611@01, 1))]
(assert (not
  (=
    ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
    ($struct_get<Int> ($struct_loc<Int> self@611@01 1)))))
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
; [then-branch: 212 | True | live]
; [else-branch: 212 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 212 | True]
; [exec]
; inhale l$havoc$6 >= 0
(declare-const $t@740@01 $Snap)
(assert (= $t@740@01 $Snap.unit))
; [eval] l$havoc$6 >= 0
(assert (>= l$havoc$6@631@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self := ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) +
;   l$havoc$6): $Struct)
; [eval] ($struct_set(self, 11, ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6): $Struct)
; [eval] ($struct_get($struct_loc(self, 11)): Int) + l$havoc$6
; [eval] ($struct_get($struct_loc(self, 11)): Int)
; [eval] $struct_loc(self, 11)
(declare-const self@741@01 $Struct)
(assert (=
  self@741@01
  ($struct_set<$Struct> self@611@01 11 (+
    ($struct_get<Int> ($struct_loc<Int> self@611@01 11))
    l$havoc$6@631@01))))
; [exec]
; $contracts := l$havoc$7
(pop) ; 5
; [then-branch: 213 | False | dead]
; [else-branch: 213 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 213 | True]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 211 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) == $struct_get[Int]($struct_loc[Int](self@611@01, 1))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 1))))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 177 | $struct_get[Int]($struct_loc[Int](msg@607@01, 0)) == $struct_get[Int]($struct_loc[Int](self@611@01, 0))]
(assert (=
  ($struct_get<Int> ($struct_loc<Int> msg@607@01 0))
  ($struct_get<Int> ($struct_loc<Int> self@611@01 0))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
